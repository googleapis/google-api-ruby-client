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
    module AuthorizedbuyersmarketplaceV1alpha
      
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
      
      # Settings for controlling access to a curated package.
      class AccessControlSettings
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. The list of media planners that are explicitly granted
        # access to the curated package. Eligible media planners can be found in the
        # mediaPlanners.list method. Only a single media planner may be allowlisted at
        # this time. Format: `mediaPlanners/`mediaPlannerAccountId``
        # Corresponds to the JSON property `allowlistedMediaPlanners`
        # @return [Array<String>]
        attr_accessor :allowlisted_media_planners
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowlisted_media_planners = args[:allowlisted_media_planners] if args.key?(:allowlisted_media_planners)
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
      
      # Request message for ActivateCuratedPackage.
      class ActivateCuratedPackageRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for activating a data segment
      class ActivateDataSegmentRequest
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
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::Note]
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
      
        # Output only. If set, this field contains the DSP specific seat id set by the
        # media planner account that is considered the owner of this deal. The seat ID
        # is in the calling DSP's namespace.
        # Corresponds to the JSON property `dealOwnerSeatId`
        # @return [String]
        attr_accessor :deal_owner_seat_id
      
        # Output only. A description of the auction package.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The display_name assigned to the auction package.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. If set, this field identifies a seat that the media planner
        # selected as the owner of this auction package. This is a seat ID in the DSP's
        # namespace that was provided to the media planner.
        # Corresponds to the JSON property `eligibleSeatIds`
        # @return [Array<String>]
        attr_accessor :eligible_seat_ids
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `floorPriceCpm`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::Money]
        attr_accessor :floor_price_cpm
      
        # Immutable. The unique identifier for the auction package. Format: `buyers/`
        # accountId`/auctionPackages/`auctionPackageId`` The auction_package_id part of
        # name is sent in the BidRequest to all RTB bidders and is returned as deal_id
        # by the bidder in the BidResponse.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The list of buyers that are subscribed to the AuctionPackage.
        # This field is only populated when calling as a bidder. Format: `buyers/`
        # buyerAccountId``
        # Corresponds to the JSON property `subscribedBuyers`
        # @return [Array<String>]
        attr_accessor :subscribed_buyers
      
        # Output only. When calling as a buyer, the list of clients of the current buyer
        # that are subscribed to the AuctionPackage. When calling as a bidder, the list
        # of clients that are subscribed to the AuctionPackage owned by the bidder or
        # its buyers. Format: `buyers/`buyerAccountId`/clients/`clientAccountId``
        # Corresponds to the JSON property `subscribedClients`
        # @return [Array<String>]
        attr_accessor :subscribed_clients
      
        # Output only. The list of media planners that are subscribed to the
        # AuctionPackage. This field is only populated when calling as a bidder.
        # Corresponds to the JSON property `subscribedMediaPlanners`
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1alpha::MediaPlanner>]
        attr_accessor :subscribed_media_planners
      
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
          @deal_owner_seat_id = args[:deal_owner_seat_id] if args.key?(:deal_owner_seat_id)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @eligible_seat_ids = args[:eligible_seat_ids] if args.key?(:eligible_seat_ids)
          @floor_price_cpm = args[:floor_price_cpm] if args.key?(:floor_price_cpm)
          @name = args[:name] if args.key?(:name)
          @subscribed_buyers = args[:subscribed_buyers] if args.key?(:subscribed_buyers)
          @subscribed_clients = args[:subscribed_clients] if args.key?(:subscribed_clients)
          @subscribed_media_planners = args[:subscribed_media_planners] if args.key?(:subscribed_media_planners)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Request message for batch updating deals.
      class BatchUpdateDealsRequest
        include Google::Apis::Core::Hashable
      
        # Required. List of request messages to update deals.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1alpha::UpdateDealRequest>]
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
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1alpha::Deal>]
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
      
      # Represents a curated package of inventory created and managed by a Curator.
      class CuratedPackage
        include Google::Apis::Core::Hashable
      
        # Settings for controlling access to a curated package.
        # Corresponds to the JSON property `accessSettings`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::AccessControlSettings]
        attr_accessor :access_settings
      
        # Output only. The timestamp when the curated package was created. Can be used
        # to filter the response of the curatedPackages.list method.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. A description of the curated package, provided by the curator.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The display name assigned to the curated package by the curator. Can
        # be used to filter the response of the curatedPackages.list method.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `feeCpm`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::Money]
        attr_accessor :fee_cpm
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `floorPriceCpm`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::Money]
        attr_accessor :floor_price_cpm
      
        # Identifier. The unique resource name for the curated package. Format: `
        # curators/`accountId`/curatedPackages/`curatedPackageId``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The state of the curated package. Can be used to filter the
        # response of the curatedPackages.list method.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Targeting criteria for curated and auction packages.
        # Corresponds to the JSON property `targeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::PackageTargeting]
        attr_accessor :targeting
      
        # Output only. The timestamp when the curated package was last updated. Can be
        # used to filter the response of the curatedPackages.list method.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_settings = args[:access_settings] if args.key?(:access_settings)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @fee_cpm = args[:fee_cpm] if args.key?(:fee_cpm)
          @floor_price_cpm = args[:floor_price_cpm] if args.key?(:floor_price_cpm)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @targeting = args[:targeting] if args.key?(:targeting)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Defines an identifier for a segment of inventory that can be targeted by
      # curators or media planners in the deals or auction packages UI. Curation of
      # inventory is done by curators on external platforms.
      class DataSegment
        include Google::Apis::Core::Hashable
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `cpmFee`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::Money]
        attr_accessor :cpm_fee
      
        # Output only. Time the data segment was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Immutable. Identifier. The unique identifier for the data segment. Account ID
        # corresponds to the account ID that created the segment. v1alpha format: `
        # buyers/`accountId`/dataSegments/`curatorDataSegmentId`` v1beta format: `
        # curators/`curatorAccountId`/dataSegments/`curatorDataSegmentId``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The state of the data segment.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Time the data segment was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpm_fee = args[:cpm_fee] if args.key?(:cpm_fee)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
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
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::TimeOfDay]
        attr_accessor :end_time
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `startTime`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::TimeOfDay]
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
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1alpha::DayPart>]
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
      
      # Request message for DeactivateCuratedPackage.
      class DeactivateCuratedPackageRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for deactivating a data segment
      class DeactivateDataSegmentRequest
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
        # value as buyer; when the deal belongs to a media planner account, this field
        # will be empty. Format : `buyers/`buyerAccountId``
        # Corresponds to the JSON property `billedBuyer`
        # @return [String]
        attr_accessor :billed_buyer
      
        # Output only. Refers to a buyer in Real-time Bidding API's Buyer resource.
        # Format: `buyers/`buyerAccountId``
        # Corresponds to the JSON property `buyer`
        # @return [String]
        attr_accessor :buyer
      
        # Output only. The buyer permission type of the deal.
        # Corresponds to the JSON property `buyerPermissionType`
        # @return [String]
        attr_accessor :buyer_permission_type
      
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
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::CreativeRequirements]
        attr_accessor :creative_requirements
      
        # Output only. Type of deal.
        # Corresponds to the JSON property `dealType`
        # @return [String]
        attr_accessor :deal_type
      
        # Message contains details about how the deal will be paced.
        # Corresponds to the JSON property `deliveryControl`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::DeliveryControl]
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
      
        # Output only. If set, this field contains the list of DSP specific seat ids set
        # by media planners that are eligible to transact on this deal. The seat ID is
        # in the calling DSP's namespace.
        # Corresponds to the JSON property `eligibleSeatIds`
        # @return [Array<String>]
        attr_accessor :eligible_seat_ids
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `estimatedGrossSpend`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::Money]
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
      
        # Represents a media planner account.
        # Corresponds to the JSON property `mediaPlanner`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::MediaPlanner]
        attr_accessor :media_planner
      
        # Immutable. The unique identifier of the deal. Auto-generated by the server
        # when a deal is created. Format: buyers/`accountId`/proposals/`proposalId`/
        # deals/`dealId`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Pricing terms for Preferred Deals.
        # Corresponds to the JSON property `preferredDealTerms`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::PreferredDealTerms]
        attr_accessor :preferred_deal_terms
      
        # Pricing terms for Private Auctions.
        # Corresponds to the JSON property `privateAuctionTerms`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::PrivateAuctionTerms]
        attr_accessor :private_auction_terms
      
        # Pricing terms for Programmatic Guaranteed Deals.
        # Corresponds to the JSON property `programmaticGuaranteedTerms`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::ProgrammaticGuaranteedTerms]
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
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::TimeZone]
        attr_accessor :seller_time_zone
      
        # Targeting represents different criteria that can be used to target deals or
        # auction packages. For example, they can choose to target inventory only if the
        # user is in the US. Multiple types of targeting are always applied as a logical
        # AND, unless noted otherwise.
        # Corresponds to the JSON property `targeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::MarketplaceTargeting]
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
          @buyer_permission_type = args[:buyer_permission_type] if args.key?(:buyer_permission_type)
          @client = args[:client] if args.key?(:client)
          @create_time = args[:create_time] if args.key?(:create_time)
          @creative_requirements = args[:creative_requirements] if args.key?(:creative_requirements)
          @deal_type = args[:deal_type] if args.key?(:deal_type)
          @delivery_control = args[:delivery_control] if args.key?(:delivery_control)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @eligible_seat_ids = args[:eligible_seat_ids] if args.key?(:eligible_seat_ids)
          @estimated_gross_spend = args[:estimated_gross_spend] if args.key?(:estimated_gross_spend)
          @flight_end_time = args[:flight_end_time] if args.key?(:flight_end_time)
          @flight_start_time = args[:flight_start_time] if args.key?(:flight_start_time)
          @media_planner = args[:media_planner] if args.key?(:media_planner)
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
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1alpha::FrequencyCap>]
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
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::Deal]
        attr_accessor :deal
      
        # Information related to deal pausing.
        # Corresponds to the JSON property `dealPausingInfo`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::DealPausingInfo]
        attr_accessor :deal_pausing_info
      
        # Serving status of the deal.
        # Corresponds to the JSON property `dealServingStatus`
        # @return [String]
        attr_accessor :deal_serving_status
      
        # The resource name of the finalized deal. Format: `buyers/`accountId`/
        # finalizedDeals/`finalizedDealId``
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
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::RtbMetrics]
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
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1alpha::AdSize>]
        attr_accessor :excluded_inventory_sizes
      
        # A list of inventory sizes to be included.
        # Corresponds to the JSON property `targetedInventorySizes`
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1alpha::AdSize>]
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
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1alpha::AuctionPackage>]
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
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1alpha::ClientUser>]
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
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1alpha::Client>]
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
      
      # Response message for ListCuratedPackages.
      class ListCuratedPackagesResponse
        include Google::Apis::Core::Hashable
      
        # The list of curated packages.
        # Corresponds to the JSON property `curatedPackages`
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1alpha::CuratedPackage>]
        attr_accessor :curated_packages
      
        # A token to retrieve the next page of results. Pass this value in the
        # ListCuratedPackagesRequest.pageToken field in the subsequent call to `
        # ListCuratedPackages` method to retrieve the next page of results. If empty,
        # then there are no more results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @curated_packages = args[:curated_packages] if args.key?(:curated_packages)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for listing data segments.
      class ListDataSegmentsResponse
        include Google::Apis::Core::Hashable
      
        # The list of data segments.
        # Corresponds to the JSON property `dataSegments`
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1alpha::DataSegment>]
        attr_accessor :data_segments
      
        # Continuation token for fetching the next page of results. Pass this value in
        # the ListDataSegmentsRequest.pageToken field in the subsequent call to the `
        # ListDataSegments` method to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_segments = args[:data_segments] if args.key?(:data_segments)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for listing deals in a proposal.
      class ListDealsResponse
        include Google::Apis::Core::Hashable
      
        # The list of deals.
        # Corresponds to the JSON property `deals`
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1alpha::Deal>]
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
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1alpha::FinalizedDeal>]
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
      
      # A response containing media planner account information.
      class ListMediaPlannersResponse
        include Google::Apis::Core::Hashable
      
        # List of media planners.
        # Corresponds to the JSON property `mediaPlanners`
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1alpha::MediaPlanner>]
        attr_accessor :media_planners
      
        # A token which can be passed to a subsequent call to the `ListMediaPlanners`
        # method to retrieve the next page of results in ListMediaPlannersRequest.
        # pageToken.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @media_planners = args[:media_planners] if args.key?(:media_planners)
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
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1alpha::Proposal>]
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
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1alpha::PublisherProfile>]
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
      
      # Targeting represents different criteria that can be used to target deals or
      # auction packages. For example, they can choose to target inventory only if the
      # user is in the US. Multiple types of targeting are always applied as a logical
      # AND, unless noted otherwise.
      class MarketplaceTargeting
        include Google::Apis::Core::Hashable
      
        # Represents Daypart targeting.
        # Corresponds to the JSON property `daypartTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::DayPartTargeting]
        attr_accessor :daypart_targeting
      
        # Output only. The sensitive content category label IDs excluded. Refer to this
        # file https://storage.googleapis.com/adx-rtb-dictionaries/content-labels.txt
        # for category IDs.
        # Corresponds to the JSON property `excludedSensitiveCategoryIds`
        # @return [Array<Fixnum>]
        attr_accessor :excluded_sensitive_category_ids
      
        # Generic targeting used for targeting dimensions that contains a list of
        # included and excluded numeric IDs. This cannot be filtered using list filter
        # syntax.
        # Corresponds to the JSON property `geoTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::CriteriaTargeting]
        attr_accessor :geo_targeting
      
        # Represents the size of an ad unit that can be targeted on a bid request.
        # Corresponds to the JSON property `inventorySizeTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::InventorySizeTargeting]
        attr_accessor :inventory_size_targeting
      
        # Targeting of the inventory types a bid request can originate from.
        # Corresponds to the JSON property `inventoryTypeTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::InventoryTypeTargeting]
        attr_accessor :inventory_type_targeting
      
        # Represents targeting about where the ads can appear, for example, certain
        # sites or mobile applications. Different placement targeting types will be
        # logically OR'ed.
        # Corresponds to the JSON property `placementTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::PlacementTargeting]
        attr_accessor :placement_targeting
      
        # Represents targeting about various types of technology.
        # Corresponds to the JSON property `technologyTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::TechnologyTargeting]
        attr_accessor :technology_targeting
      
        # Generic targeting used for targeting dimensions that contains a list of
        # included and excluded numeric IDs. This cannot be filtered using list filter
        # syntax.
        # Corresponds to the JSON property `userListTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::CriteriaTargeting]
        attr_accessor :user_list_targeting
      
        # Generic targeting used for targeting dimensions that contains a list of
        # included and excluded numeric IDs. This cannot be filtered using list filter
        # syntax.
        # Corresponds to the JSON property `verticalTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::CriteriaTargeting]
        attr_accessor :vertical_targeting
      
        # Represents targeting information about video.
        # Corresponds to the JSON property `videoTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::VideoTargeting]
        attr_accessor :video_targeting
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @daypart_targeting = args[:daypart_targeting] if args.key?(:daypart_targeting)
          @excluded_sensitive_category_ids = args[:excluded_sensitive_category_ids] if args.key?(:excluded_sensitive_category_ids)
          @geo_targeting = args[:geo_targeting] if args.key?(:geo_targeting)
          @inventory_size_targeting = args[:inventory_size_targeting] if args.key?(:inventory_size_targeting)
          @inventory_type_targeting = args[:inventory_type_targeting] if args.key?(:inventory_type_targeting)
          @placement_targeting = args[:placement_targeting] if args.key?(:placement_targeting)
          @technology_targeting = args[:technology_targeting] if args.key?(:technology_targeting)
          @user_list_targeting = args[:user_list_targeting] if args.key?(:user_list_targeting)
          @vertical_targeting = args[:vertical_targeting] if args.key?(:vertical_targeting)
          @video_targeting = args[:video_targeting] if args.key?(:video_targeting)
        end
      end
      
      # Represents a media planner account.
      class MediaPlanner
        include Google::Apis::Core::Hashable
      
        # Output only. Account ID of the media planner.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Output only. The ancestor names of the media planner. Format: `mediaPlanners/`
        # mediaPlannerAccountId`` Can be used to filter the response of the
        # mediaPlanners.list method.
        # Corresponds to the JSON property `ancestorNames`
        # @return [Array<String>]
        attr_accessor :ancestor_names
      
        # Output only. The display name of the media planner. Can be used to filter the
        # response of the mediaPlanners.list method.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Identifier. The unique resource name of the media planner. Format: `
        # mediaPlanners/`mediaPlannerAccountId`` Can be used to filter the response of
        # the mediaPlanners.list method.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @ancestor_names = args[:ancestor_names] if args.key?(:ancestor_names)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
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
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::FirstPartyMobileApplicationTargeting]
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
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::CriteriaTargeting]
        attr_accessor :operating_system_criteria
      
        # Generic targeting used for targeting dimensions that contains a list of
        # included and excluded numeric IDs. This cannot be filtered using list filter
        # syntax.
        # Corresponds to the JSON property `operatingSystemVersionCriteria`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::CriteriaTargeting]
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
      
      # Represents targeting about where the ads can appear, for example, certain
      # sites or mobile applications. Different placement targeting types will be
      # logically OR'ed.
      class PackagePlacementTargeting
        include Google::Apis::Core::Hashable
      
        # Optional. The list of targeted mobile app categories.
        # Corresponds to the JSON property `includedMobileAppCategoryTargeting`
        # @return [Array<Fixnum>]
        attr_accessor :included_mobile_app_category_targeting
      
        # Generic targeting with string values.
        # Corresponds to the JSON property `mobileAppTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::StringTargetingDimension]
        attr_accessor :mobile_app_targeting
      
        # Generic targeting with string values.
        # Corresponds to the JSON property `uriTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::StringTargetingDimension]
        attr_accessor :uri_targeting
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @included_mobile_app_category_targeting = args[:included_mobile_app_category_targeting] if args.key?(:included_mobile_app_category_targeting)
          @mobile_app_targeting = args[:mobile_app_targeting] if args.key?(:mobile_app_targeting)
          @uri_targeting = args[:uri_targeting] if args.key?(:uri_targeting)
        end
      end
      
      # Represents targeting about publisher provided signals. Different publisher
      # provided signals types will be logically OR'ed.
      class PackagePublisherProvidedSignalsTargeting
        include Google::Apis::Core::Hashable
      
        # Defines targeting criteria for handling the IAB audience and content Taxonomy
        # ID space.
        # Corresponds to the JSON property `audienceTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::TaxonomyTargeting]
        attr_accessor :audience_targeting
      
        # Defines targeting criteria for handling the IAB audience and content Taxonomy
        # ID space.
        # Corresponds to the JSON property `contentTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::TaxonomyTargeting]
        attr_accessor :content_targeting
      
        # Generic targeting with string values.
        # Corresponds to the JSON property `videoAndAudioSignalsTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::StringTargetingDimension]
        attr_accessor :video_and_audio_signals_targeting
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audience_targeting = args[:audience_targeting] if args.key?(:audience_targeting)
          @content_targeting = args[:content_targeting] if args.key?(:content_targeting)
          @video_and_audio_signals_targeting = args[:video_and_audio_signals_targeting] if args.key?(:video_and_audio_signals_targeting)
        end
      end
      
      # Targeting criteria for curated and auction packages.
      class PackageTargeting
        include Google::Apis::Core::Hashable
      
        # Generic targeting used for targeting dimensions that contains a list of
        # included and excluded numeric IDs. This cannot be filtered using list filter
        # syntax.
        # Corresponds to the JSON property `geoTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::CriteriaTargeting]
        attr_accessor :geo_targeting
      
        # Optional. The targeted accelerated mobile page type. If unset, inventory will
        # be targeted regardless of AMP status.
        # Corresponds to the JSON property `includedAcceleratedMobilePageType`
        # @return [String]
        attr_accessor :included_accelerated_mobile_page_type
      
        # Optional. The list of ad sizes to target. If unset, inventory will be targeted
        # regardless of ad size. Curated packages supports `PIXEL` and `INTERSTITIAL` ad
        # sizes.
        # Corresponds to the JSON property `includedAdSizes`
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1alpha::AdSize>]
        attr_accessor :included_ad_sizes
      
        # Optional. The included list of targeted authorized seller statuses. If empty,
        # inventory will be targeted regardless of seller status.
        # Corresponds to the JSON property `includedAuthorizedSellerStatuses`
        # @return [Array<String>]
        attr_accessor :included_authorized_seller_statuses
      
        # Optional. The creative format to target. If unset, all creative markup types
        # are targeted.
        # Corresponds to the JSON property `includedCreativeFormat`
        # @return [String]
        attr_accessor :included_creative_format
      
        # Optional. The active data segments to be targeted. If unset, inventory will be
        # targeted regardless of data segments. Format: `curators/`account_id`/
        # dataSegments/`data_segment_id``
        # Corresponds to the JSON property `includedDataSegments`
        # @return [Array<String>]
        attr_accessor :included_data_segments
      
        # Optional. The list of included device types to target. If empty, all device
        # types are targeted.
        # Corresponds to the JSON property `includedDeviceTypes`
        # @return [Array<String>]
        attr_accessor :included_device_types
      
        # Optional. The environment to target. If unspecified, all environments are
        # targeted.
        # Corresponds to the JSON property `includedEnvironment`
        # @return [String]
        attr_accessor :included_environment
      
        # Optional. The targeted native inventory types. If empty, inventory will be
        # targeted regardless of native inventory type.
        # Corresponds to the JSON property `includedNativeInventoryTypes`
        # @return [Array<String>]
        attr_accessor :included_native_inventory_types
      
        # Optional. The list of targeted open measurement types. If empty, inventory
        # will be targeted regardless of Open Measurement support.
        # Corresponds to the JSON property `includedOpenMeasurementTypes`
        # @return [Array<String>]
        attr_accessor :included_open_measurement_types
      
        # Optional. The list of targeted restricted categories. If empty, inventory will
        # be targeted regardless of restricted categories.
        # Corresponds to the JSON property `includedRestrictedCategories`
        # @return [Array<String>]
        attr_accessor :included_restricted_categories
      
        # Optional. The targeted rewarded type. If unset, inventory will be targeted
        # regardless of rewarded type.
        # Corresponds to the JSON property `includedRewardedType`
        # @return [String]
        attr_accessor :included_rewarded_type
      
        # Generic targeting with string values.
        # Corresponds to the JSON property `languageTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::StringTargetingDimension]
        attr_accessor :language_targeting
      
        # Optional. The targeted minimum predicted click through rate, ranging in values
        # [10, 10000] (0.01% - 10%). A value of 50 means that the configuration will
        # only match adslots for which we predict at least 0.05% click through rate. An
        # unset value indicates inventory will be targeted regardless of predicted click
        # through rate.
        # Corresponds to the JSON property `minimumPredictedClickThroughRatePercentageMillis`
        # @return [Fixnum]
        attr_accessor :minimum_predicted_click_through_rate_percentage_millis
      
        # Optional. The targeted minimum predicted viewability percentage. This value
        # must be a multiple of 10 between 10 and 90 (inclusive). For example, 10 is
        # valid, but 0, 15, and 100 are not. A value of 10 means that the configuration
        # will only match adslots for which we predict at least 10% viewability. An
        # unset value indicates inventory will be targeted regardless of predicted
        # viewability.
        # Corresponds to the JSON property `minimumPredictedViewabilityPercentage`
        # @return [Fixnum]
        attr_accessor :minimum_predicted_viewability_percentage
      
        # Represents targeting about where the ads can appear, for example, certain
        # sites or mobile applications. Different placement targeting types will be
        # logically OR'ed.
        # Corresponds to the JSON property `placementTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::PackagePlacementTargeting]
        attr_accessor :placement_targeting
      
        # Represents targeting about publisher provided signals. Different publisher
        # provided signals types will be logically OR'ed.
        # Corresponds to the JSON property `publisherProvidedSignalsTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::PackagePublisherProvidedSignalsTargeting]
        attr_accessor :publisher_provided_signals_targeting
      
        # Generic targeting with string values.
        # Corresponds to the JSON property `publisherTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::StringTargetingDimension]
        attr_accessor :publisher_targeting
      
        # Generic targeting used for targeting dimensions that contains a list of
        # included and excluded numeric IDs. This cannot be filtered using list filter
        # syntax.
        # Corresponds to the JSON property `verticalTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::CriteriaTargeting]
        attr_accessor :vertical_targeting
      
        # Video specific targeting criteria.
        # Corresponds to the JSON property `videoTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::PackageVideoTargeting]
        attr_accessor :video_targeting
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @geo_targeting = args[:geo_targeting] if args.key?(:geo_targeting)
          @included_accelerated_mobile_page_type = args[:included_accelerated_mobile_page_type] if args.key?(:included_accelerated_mobile_page_type)
          @included_ad_sizes = args[:included_ad_sizes] if args.key?(:included_ad_sizes)
          @included_authorized_seller_statuses = args[:included_authorized_seller_statuses] if args.key?(:included_authorized_seller_statuses)
          @included_creative_format = args[:included_creative_format] if args.key?(:included_creative_format)
          @included_data_segments = args[:included_data_segments] if args.key?(:included_data_segments)
          @included_device_types = args[:included_device_types] if args.key?(:included_device_types)
          @included_environment = args[:included_environment] if args.key?(:included_environment)
          @included_native_inventory_types = args[:included_native_inventory_types] if args.key?(:included_native_inventory_types)
          @included_open_measurement_types = args[:included_open_measurement_types] if args.key?(:included_open_measurement_types)
          @included_restricted_categories = args[:included_restricted_categories] if args.key?(:included_restricted_categories)
          @included_rewarded_type = args[:included_rewarded_type] if args.key?(:included_rewarded_type)
          @language_targeting = args[:language_targeting] if args.key?(:language_targeting)
          @minimum_predicted_click_through_rate_percentage_millis = args[:minimum_predicted_click_through_rate_percentage_millis] if args.key?(:minimum_predicted_click_through_rate_percentage_millis)
          @minimum_predicted_viewability_percentage = args[:minimum_predicted_viewability_percentage] if args.key?(:minimum_predicted_viewability_percentage)
          @placement_targeting = args[:placement_targeting] if args.key?(:placement_targeting)
          @publisher_provided_signals_targeting = args[:publisher_provided_signals_targeting] if args.key?(:publisher_provided_signals_targeting)
          @publisher_targeting = args[:publisher_targeting] if args.key?(:publisher_targeting)
          @vertical_targeting = args[:vertical_targeting] if args.key?(:vertical_targeting)
          @video_targeting = args[:video_targeting] if args.key?(:video_targeting)
        end
      end
      
      # Video specific targeting criteria.
      class PackageVideoTargeting
        include Google::Apis::Core::Hashable
      
        # Optional. The targeted video delivery method. If unset, inventory will be
        # targeted regardless of video delivery method.
        # Corresponds to the JSON property `includedContentDeliveryMethod`
        # @return [String]
        attr_accessor :included_content_delivery_method
      
        # Optional. The targeted maximum video ad duration. If unset, inventory will be
        # targeted regardless of maximum video ad duration.
        # Corresponds to the JSON property `includedMaximumAdDurationTargeting`
        # @return [String]
        attr_accessor :included_maximum_ad_duration_targeting
      
        # Optional. The list of targeted video mime types using the IANA published MIME
        # type strings (https://www.iana.org/assignments/media-types/media-types.xhtml).
        # If empty, inventory will be targeted regardless of video mime type.
        # Corresponds to the JSON property `includedMimeTypes`
        # @return [Array<String>]
        attr_accessor :included_mime_types
      
        # Optional. The list of targeted video playback methods. If empty, inventory
        # will be targeted regardless of video playback method.
        # Corresponds to the JSON property `includedPlaybackMethods`
        # @return [Array<String>]
        attr_accessor :included_playback_methods
      
        # Represents the size of the video player that can be targeted. Both width and
        # height are required to be set to non-zero values.
        # Corresponds to the JSON property `includedPlayerSizeTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::VideoPlayerSizeTargeting]
        attr_accessor :included_player_size_targeting
      
        # Optional. The targeted video ad position types. If empty, inventory will be
        # targeted regardless of video ad position type.
        # Corresponds to the JSON property `includedPositionTypes`
        # @return [Array<String>]
        attr_accessor :included_position_types
      
        # Optional. The targeted minimum predicted completion rate percentage. This
        # value must be a multiple of 10 between 10 and 90 (inclusive). For example, 10
        # is valid, but 0, 15, and 100 are not. A value of 10 means that the
        # configuration will only match adslots for which we predict at least 10%
        # completion rate. An unset value indicates inventory will be targeted
        # regardless of predicted completion rate.
        # Corresponds to the JSON property `minimumPredictedCompletionRatePercentage`
        # @return [Fixnum]
        attr_accessor :minimum_predicted_completion_rate_percentage
      
        # Defines targeting criteria based on the video placement type, often
        # corresponding to the IAB OpenRTB 'plcmt' field.
        # Corresponds to the JSON property `plcmtTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::VideoPlcmtTargeting]
        attr_accessor :plcmt_targeting
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @included_content_delivery_method = args[:included_content_delivery_method] if args.key?(:included_content_delivery_method)
          @included_maximum_ad_duration_targeting = args[:included_maximum_ad_duration_targeting] if args.key?(:included_maximum_ad_duration_targeting)
          @included_mime_types = args[:included_mime_types] if args.key?(:included_mime_types)
          @included_playback_methods = args[:included_playback_methods] if args.key?(:included_playback_methods)
          @included_player_size_targeting = args[:included_player_size_targeting] if args.key?(:included_player_size_targeting)
          @included_position_types = args[:included_position_types] if args.key?(:included_position_types)
          @minimum_predicted_completion_rate_percentage = args[:minimum_predicted_completion_rate_percentage] if args.key?(:minimum_predicted_completion_rate_percentage)
          @plcmt_targeting = args[:plcmt_targeting] if args.key?(:plcmt_targeting)
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
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::MobileApplicationTargeting]
        attr_accessor :mobile_application_targeting
      
        # Represents a list of targeted and excluded URLs (for example, google.com). For
        # Private Auction Deals, URLs are either included or excluded. For Programmatic
        # Guaranteed and Preferred Deals, this doesn't apply.
        # Corresponds to the JSON property `uriTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::UriTargeting]
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
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::Price]
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
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::Money]
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
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::Price]
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
      
      # Buyers are allowed to store certain types of private data in a proposal.
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
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::Price]
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
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1alpha::Contact>]
        attr_accessor :buyer_contacts
      
        # Buyers are allowed to store certain types of private data in a proposal.
        # Corresponds to the JSON property `buyerPrivateData`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::PrivateData]
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
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1alpha::Note>]
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
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1alpha::Contact>]
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
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1alpha::PublisherProfileMobileApplication>]
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
        # @return [Array<Google::Apis::AuthorizedbuyersmarketplaceV1alpha::Contact>]
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
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::Money]
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
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::CriteriaTargeting]
        attr_accessor :geo_targeting
      
        # Represents the size of an ad unit that can be targeted on a bid request.
        # Corresponds to the JSON property `inventorySizeTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::InventorySizeTargeting]
        attr_accessor :inventory_size_targeting
      
        # A message that is sent to the publisher. Maximum length is 1024 characters.
        # Corresponds to the JSON property `note`
        # @return [String]
        attr_accessor :note
      
        # Pricing terms for Preferred Deals.
        # Corresponds to the JSON property `preferredDealTerms`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::PreferredDealTerms]
        attr_accessor :preferred_deal_terms
      
        # Pricing terms for Programmatic Guaranteed Deals.
        # Corresponds to the JSON property `programmaticGuaranteedTerms`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::ProgrammaticGuaranteedTerms]
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
      
      # Generic targeting with string values.
      class StringTargetingDimension
        include Google::Apis::Core::Hashable
      
        # Required. How the items in this list should be targeted.
        # Corresponds to the JSON property `selectionType`
        # @return [String]
        attr_accessor :selection_type
      
        # Required. The values specified.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @selection_type = args[:selection_type] if args.key?(:selection_type)
          @values = args[:values] if args.key?(:values)
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
      
      # Defines targeting criteria for handling the IAB audience and content Taxonomy
      # ID space.
      class TaxonomyTargeting
        include Google::Apis::Core::Hashable
      
        # Optional. The list of excluded content taxonomy IDs.
        # Corresponds to the JSON property `excludedTaxonomyIds`
        # @return [Array<String>]
        attr_accessor :excluded_taxonomy_ids
      
        # Optional. The list of targeted content taxonomy IDs.
        # Corresponds to the JSON property `targetedTaxonomyIds`
        # @return [Array<String>]
        attr_accessor :targeted_taxonomy_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @excluded_taxonomy_ids = args[:excluded_taxonomy_ids] if args.key?(:excluded_taxonomy_ids)
          @targeted_taxonomy_ids = args[:targeted_taxonomy_ids] if args.key?(:targeted_taxonomy_ids)
        end
      end
      
      # Represents targeting about various types of technology.
      class TechnologyTargeting
        include Google::Apis::Core::Hashable
      
        # Generic targeting used for targeting dimensions that contains a list of
        # included and excluded numeric IDs. This cannot be filtered using list filter
        # syntax.
        # Corresponds to the JSON property `deviceCapabilityTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::CriteriaTargeting]
        attr_accessor :device_capability_targeting
      
        # Generic targeting used for targeting dimensions that contains a list of
        # included and excluded numeric IDs. This cannot be filtered using list filter
        # syntax.
        # Corresponds to the JSON property `deviceCategoryTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::CriteriaTargeting]
        attr_accessor :device_category_targeting
      
        # Represents targeting information for operating systems.
        # Corresponds to the JSON property `operatingSystemTargeting`
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::OperatingSystemTargeting]
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
      
        # Hours of a day in 24 hour format. Must be greater than or equal to 0 and
        # typically must be less than or equal to 23. An API may choose to allow the
        # value "24:00:00" for scenarios like business closing time.
        # Corresponds to the JSON property `hours`
        # @return [Fixnum]
        attr_accessor :hours
      
        # Minutes of an hour. Must be greater than or equal to 0 and less than or equal
        # to 59.
        # Corresponds to the JSON property `minutes`
        # @return [Fixnum]
        attr_accessor :minutes
      
        # Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and
        # less than or equal to 999,999,999.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # Seconds of a minute. Must be greater than or equal to 0 and typically must be
        # less than or equal to 59. An API may allow the value 60 if it allows leap-
        # seconds.
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
      
        # IANA Time Zone Database time zone. For example "America/New_York".
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. IANA Time Zone Database version number. For example "2019a".
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
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1alpha::Deal]
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
      
      # Represents the size of the video player that can be targeted. Both width and
      # height are required to be set to non-zero values.
      class VideoPlayerSizeTargeting
        include Google::Apis::Core::Hashable
      
        # Required. The minimum height of the video player in pixels.
        # Corresponds to the JSON property `minimumHeight`
        # @return [Fixnum]
        attr_accessor :minimum_height
      
        # Required. The minimum width of the video player in pixels.
        # Corresponds to the JSON property `minimumWidth`
        # @return [Fixnum]
        attr_accessor :minimum_width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @minimum_height = args[:minimum_height] if args.key?(:minimum_height)
          @minimum_width = args[:minimum_width] if args.key?(:minimum_width)
        end
      end
      
      # Defines targeting criteria based on the video placement type, often
      # corresponding to the IAB OpenRTB 'plcmt' field.
      class VideoPlcmtTargeting
        include Google::Apis::Core::Hashable
      
        # Required. The selection type for the list of video plcmts.
        # Corresponds to the JSON property `selectionType`
        # @return [String]
        attr_accessor :selection_type
      
        # Required. The list of targeted video plcmts types. If empty, inventory will be
        # targeted regardless of video plcmt type.
        # Corresponds to the JSON property `videoPlcmtTypes`
        # @return [Array<String>]
        attr_accessor :video_plcmt_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @selection_type = args[:selection_type] if args.key?(:selection_type)
          @video_plcmt_types = args[:video_plcmt_types] if args.key?(:video_plcmt_types)
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
