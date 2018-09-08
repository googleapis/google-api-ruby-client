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
      
      # An absolute date range, specified by its start date and end date.
      # The supported range of dates begins 30 days before today and ends today.
      # Validity checked upon filter set creation. If a filter set with an absolute
      # date range is run at a later date more than 30 days after start_date, it will
      # fail.
      class AbsoluteDateRange
        include Google::Apis::Core::Hashable
      
        # Represents a whole calendar date, for example date of birth. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the Proleptic Gregorian Calendar. The day can be 0 to
        # represent a year and month where the day is not significant, for example
        # credit card expiration date. The year can be 0 to represent a month and day
        # independent of year, for example anniversary date. Related types are
        # google.type.TimeOfDay and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `endDate`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Date]
        attr_accessor :end_date
      
        # Represents a whole calendar date, for example date of birth. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the Proleptic Gregorian Calendar. The day can be 0 to
        # represent a year and month where the day is not significant, for example
        # credit card expiration date. The year can be 0 to represent a month and day
        # independent of year, for example anniversary date. Related types are
        # google.type.TimeOfDay and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `startDate`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Date]
        attr_accessor :start_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_date = args[:end_date] if args.key?(:end_date)
          @start_date = args[:start_date] if args.key?(:start_date)
        end
      end
      
      # A request for associating a deal and a creative.
      class AddDealAssociationRequest
        include Google::Apis::Core::Hashable
      
        # The association between a creative and a deal.
        # Corresponds to the JSON property `association`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::CreativeDealAssociation]
        attr_accessor :association
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @association = args[:association] if args.key?(:association)
        end
      end
      
      # @OutputOnly The app type the restriction applies to for mobile device.
      class AppContext
        include Google::Apis::Core::Hashable
      
        # The app types this restriction applies to.
        # Corresponds to the JSON property `appTypes`
        # @return [Array<String>]
        attr_accessor :app_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_types = args[:app_types] if args.key?(:app_types)
        end
      end
      
      # @OutputOnly The auction type the restriction applies to.
      class AuctionContext
        include Google::Apis::Core::Hashable
      
        # The auction types this restriction applies to.
        # Corresponds to the JSON property `auctionTypes`
        # @return [Array<String>]
        attr_accessor :auction_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auction_types = args[:auction_types] if args.key?(:auction_types)
        end
      end
      
      # The set of metrics that are measured in numbers of bids, representing how
      # many bids with the specified dimension values were considered eligible at
      # each stage of the bidding funnel;
      class BidMetricsRow
        include Google::Apis::Core::Hashable
      
        # A metric value, with an expected value and a variance; represents a count
        # that may be either exact or estimated (i.e. when sampled).
        # Corresponds to the JSON property `bids`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::MetricValue]
        attr_accessor :bids
      
        # A metric value, with an expected value and a variance; represents a count
        # that may be either exact or estimated (i.e. when sampled).
        # Corresponds to the JSON property `bidsInAuction`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::MetricValue]
        attr_accessor :bids_in_auction
      
        # A metric value, with an expected value and a variance; represents a count
        # that may be either exact or estimated (i.e. when sampled).
        # Corresponds to the JSON property `billedImpressions`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::MetricValue]
        attr_accessor :billed_impressions
      
        # A metric value, with an expected value and a variance; represents a count
        # that may be either exact or estimated (i.e. when sampled).
        # Corresponds to the JSON property `impressionsWon`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::MetricValue]
        attr_accessor :impressions_won
      
        # A metric value, with an expected value and a variance; represents a count
        # that may be either exact or estimated (i.e. when sampled).
        # Corresponds to the JSON property `measurableImpressions`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::MetricValue]
        attr_accessor :measurable_impressions
      
        # A response may include multiple rows, breaking down along various dimensions.
        # Encapsulates the values of all dimensions for a given row.
        # Corresponds to the JSON property `rowDimensions`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::RowDimensions]
        attr_accessor :row_dimensions
      
        # A metric value, with an expected value and a variance; represents a count
        # that may be either exact or estimated (i.e. when sampled).
        # Corresponds to the JSON property `viewableImpressions`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::MetricValue]
        attr_accessor :viewable_impressions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bids = args[:bids] if args.key?(:bids)
          @bids_in_auction = args[:bids_in_auction] if args.key?(:bids_in_auction)
          @billed_impressions = args[:billed_impressions] if args.key?(:billed_impressions)
          @impressions_won = args[:impressions_won] if args.key?(:impressions_won)
          @measurable_impressions = args[:measurable_impressions] if args.key?(:measurable_impressions)
          @row_dimensions = args[:row_dimensions] if args.key?(:row_dimensions)
          @viewable_impressions = args[:viewable_impressions] if args.key?(:viewable_impressions)
        end
      end
      
      # The number of impressions with the specified dimension values that were
      # considered to have no applicable bids, as described by the specified status.
      class BidResponseWithoutBidsStatusRow
        include Google::Apis::Core::Hashable
      
        # A metric value, with an expected value and a variance; represents a count
        # that may be either exact or estimated (i.e. when sampled).
        # Corresponds to the JSON property `impressionCount`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::MetricValue]
        attr_accessor :impression_count
      
        # A response may include multiple rows, breaking down along various dimensions.
        # Encapsulates the values of all dimensions for a given row.
        # Corresponds to the JSON property `rowDimensions`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::RowDimensions]
        attr_accessor :row_dimensions
      
        # The status specifying why the bid responses were considered to have no
        # applicable bids.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @impression_count = args[:impression_count] if args.key?(:impression_count)
          @row_dimensions = args[:row_dimensions] if args.key?(:row_dimensions)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # The number of impressions with the specified dimension values where the
      # corresponding bid request or bid response was not successful, as described by
      # the specified callout status.
      class CalloutStatusRow
        include Google::Apis::Core::Hashable
      
        # The ID of the callout status.
        # See [callout-status-codes](https://developers.google.com/ad-exchange/rtb/
        # downloads/callout-status-codes).
        # Corresponds to the JSON property `calloutStatusId`
        # @return [Fixnum]
        attr_accessor :callout_status_id
      
        # A metric value, with an expected value and a variance; represents a count
        # that may be either exact or estimated (i.e. when sampled).
        # Corresponds to the JSON property `impressionCount`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::MetricValue]
        attr_accessor :impression_count
      
        # A response may include multiple rows, breaking down along various dimensions.
        # Encapsulates the values of all dimensions for a given row.
        # Corresponds to the JSON property `rowDimensions`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::RowDimensions]
        attr_accessor :row_dimensions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @callout_status_id = args[:callout_status_id] if args.key?(:callout_status_id)
          @impression_count = args[:impression_count] if args.key?(:impression_count)
          @row_dimensions = args[:row_dimensions] if args.key?(:row_dimensions)
        end
      end
      
      # A client resource represents a client buyer&mdash;an agency,
      # a brand, or an advertiser customer of the sponsor buyer.
      # Users associated with the client buyer have restricted access to
      # the Ad Exchange Marketplace and certain other sections
      # of the Ad Exchange Buyer UI based on the role
      # granted to the client buyer.
      # All fields are required unless otherwise specified.
      class Client
        include Google::Apis::Core::Hashable
      
        # The globally-unique numerical ID of the client.
        # The value of this field is ignored in create and update operations.
        # Corresponds to the JSON property `clientAccountId`
        # @return [Fixnum]
        attr_accessor :client_account_id
      
        # Name used to represent this client to publishers.
        # You may have multiple clients that map to the same entity,
        # but for each client the combination of `clientName` and entity
        # must be unique.
        # You can specify this field as empty.
        # Corresponds to the JSON property `clientName`
        # @return [String]
        attr_accessor :client_name
      
        # Numerical identifier of the client entity.
        # The entity can be an advertiser, a brand, or an agency.
        # This identifier is unique among all the entities with the same type.
        # A list of all known advertisers with their identifiers is available in the
        # [advertisers.txt](https://storage.googleapis.com/adx-rtb-dictionaries/
        # advertisers.txt)
        # file.
        # A list of all known brands with their identifiers is available in the
        # [brands.txt](https://storage.googleapis.com/adx-rtb-dictionaries/brands.txt)
        # file.
        # A list of all known agencies with their identifiers is available in the
        # [agencies.txt](https://storage.googleapis.com/adx-rtb-dictionaries/agencies.
        # txt)
        # file.
        # Corresponds to the JSON property `entityId`
        # @return [Fixnum]
        attr_accessor :entity_id
      
        # The name of the entity. This field is automatically fetched based on
        # the type and ID.
        # The value of this field is ignored in create and update operations.
        # Corresponds to the JSON property `entityName`
        # @return [String]
        attr_accessor :entity_name
      
        # The type of the client entity: `ADVERTISER`, `BRAND`, or `AGENCY`.
        # Corresponds to the JSON property `entityType`
        # @return [String]
        attr_accessor :entity_type
      
        # Optional arbitrary unique identifier of this client buyer from the
        # standpoint of its Ad Exchange sponsor buyer.
        # This field can be used to associate a client buyer with the identifier
        # in the namespace of its sponsor buyer, lookup client buyers by that
        # identifier and verify whether an Ad Exchange counterpart of a given client
        # buyer already exists.
        # If present, must be unique among all the client buyers for its
        # Ad Exchange sponsor buyer.
        # Corresponds to the JSON property `partnerClientId`
        # @return [String]
        attr_accessor :partner_client_id
      
        # The role which is assigned to the client buyer. Each role implies a set of
        # permissions granted to the client. Must be one of `CLIENT_DEAL_VIEWER`,
        # `CLIENT_DEAL_NEGOTIATOR` or `CLIENT_DEAL_APPROVER`.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # The status of the client buyer.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Whether the client buyer will be visible to sellers.
        # Corresponds to the JSON property `visibleToSeller`
        # @return [Boolean]
        attr_accessor :visible_to_seller
        alias_method :visible_to_seller?, :visible_to_seller
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_account_id = args[:client_account_id] if args.key?(:client_account_id)
          @client_name = args[:client_name] if args.key?(:client_name)
          @entity_id = args[:entity_id] if args.key?(:entity_id)
          @entity_name = args[:entity_name] if args.key?(:entity_name)
          @entity_type = args[:entity_type] if args.key?(:entity_type)
          @partner_client_id = args[:partner_client_id] if args.key?(:partner_client_id)
          @role = args[:role] if args.key?(:role)
          @status = args[:status] if args.key?(:status)
          @visible_to_seller = args[:visible_to_seller] if args.key?(:visible_to_seller)
        end
      end
      
      # A client user is created under a client buyer and has restricted access to
      # the Ad Exchange Marketplace and certain other sections
      # of the Ad Exchange Buyer UI based on the role
      # granted to the associated client buyer.
      # The only way a new client user can be created is via accepting an
      # email invitation
      # (see the
      # accounts.clients.invitations.create
      # method).
      # All fields are required unless otherwise specified.
      class ClientUser
        include Google::Apis::Core::Hashable
      
        # Numerical account ID of the client buyer
        # with which the user is associated; the
        # buyer must be a client of the current sponsor buyer.
        # The value of this field is ignored in an update operation.
        # Corresponds to the JSON property `clientAccountId`
        # @return [Fixnum]
        attr_accessor :client_account_id
      
        # User's email address. The value of this field
        # is ignored in an update operation.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # The status of the client user.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The unique numerical ID of the client user
        # that has accepted an invitation.
        # The value of this field is ignored in an update operation.
        # Corresponds to the JSON property `userId`
        # @return [Fixnum]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_account_id = args[:client_account_id] if args.key?(:client_account_id)
          @email = args[:email] if args.key?(:email)
          @status = args[:status] if args.key?(:status)
          @user_id = args[:user_id] if args.key?(:user_id)
        end
      end
      
      # An invitation for a new client user to get access to the Ad Exchange
      # Buyer UI.
      # All fields are required unless otherwise specified.
      class ClientUserInvitation
        include Google::Apis::Core::Hashable
      
        # Numerical account ID of the client buyer
        # that the invited user is associated with.
        # The value of this field is ignored in create operations.
        # Corresponds to the JSON property `clientAccountId`
        # @return [Fixnum]
        attr_accessor :client_account_id
      
        # The email address to which the invitation is sent. Email
        # addresses should be unique among all client users under each sponsor
        # buyer.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # The unique numerical ID of the invitation that is sent to the user.
        # The value of this field is ignored in create operations.
        # Corresponds to the JSON property `invitationId`
        # @return [Fixnum]
        attr_accessor :invitation_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_account_id = args[:client_account_id] if args.key?(:client_account_id)
          @email = args[:email] if args.key?(:email)
          @invitation_id = args[:invitation_id] if args.key?(:invitation_id)
        end
      end
      
      # @OutputOnly Shows any corrections that were applied to this creative.
      class Correction
        include Google::Apis::Core::Hashable
      
        # The contexts for the correction.
        # Corresponds to the JSON property `contexts`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::ServingContext>]
        attr_accessor :contexts
      
        # Additional details about what was corrected.
        # Corresponds to the JSON property `details`
        # @return [Array<String>]
        attr_accessor :details
      
        # The type of correction that was applied to the creative.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contexts = args[:contexts] if args.key?(:contexts)
          @details = args[:details] if args.key?(:details)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A creative and its classification data.
      # Next ID: 38
      class Creative
        include Google::Apis::Core::Hashable
      
        # The account that this creative belongs to.
        # Can be used to filter the response of the
        # creatives.list
        # method.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # The link to AdChoices destination page.
        # Corresponds to the JSON property `adChoicesDestinationUrl`
        # @return [String]
        attr_accessor :ad_choices_destination_url
      
        # The name of the company being advertised in the creative.
        # Corresponds to the JSON property `advertiserName`
        # @return [String]
        attr_accessor :advertiser_name
      
        # The agency ID for this creative.
        # Corresponds to the JSON property `agencyId`
        # @return [Fixnum]
        attr_accessor :agency_id
      
        # @OutputOnly The last update timestamp of the creative via API.
        # Corresponds to the JSON property `apiUpdateTime`
        # @return [String]
        attr_accessor :api_update_time
      
        # All attributes for the ads that may be shown from this creative.
        # Can be used to filter the response of the
        # creatives.list
        # method.
        # Corresponds to the JSON property `attributes`
        # @return [Array<String>]
        attr_accessor :attributes
      
        # The set of destination URLs for the creative.
        # Corresponds to the JSON property `clickThroughUrls`
        # @return [Array<String>]
        attr_accessor :click_through_urls
      
        # @OutputOnly Shows any corrections that were applied to this creative.
        # Corresponds to the JSON property `corrections`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::Correction>]
        attr_accessor :corrections
      
        # The buyer-defined creative ID of this creative.
        # Can be used to filter the response of the
        # creatives.list
        # method.
        # Corresponds to the JSON property `creativeId`
        # @return [String]
        attr_accessor :creative_id
      
        # @OutputOnly The top-level deals status of this creative.
        # If disapproved, an entry for 'auctionType=DIRECT_DEALS' (or 'ALL') in
        # serving_restrictions will also exist. Note
        # that this may be nuanced with other contextual restrictions, in which case,
        # it may be preferable to read from serving_restrictions directly.
        # Can be used to filter the response of the
        # creatives.list
        # method.
        # Corresponds to the JSON property `dealsStatus`
        # @return [String]
        attr_accessor :deals_status
      
        # The set of declared destination URLs for the creative.
        # Corresponds to the JSON property `declaredClickThroughUrls`
        # @return [Array<String>]
        attr_accessor :declared_click_through_urls
      
        # @OutputOnly Detected advertiser IDs, if any.
        # Corresponds to the JSON property `detectedAdvertiserIds`
        # @return [Array<Fixnum>]
        attr_accessor :detected_advertiser_ids
      
        # @OutputOnly
        # The detected domains for this creative.
        # Corresponds to the JSON property `detectedDomains`
        # @return [Array<String>]
        attr_accessor :detected_domains
      
        # @OutputOnly
        # The detected languages for this creative. The order is arbitrary. The codes
        # are 2 or 5 characters and are documented at
        # https://developers.google.com/adwords/api/docs/appendix/languagecodes.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<String>]
        attr_accessor :detected_languages
      
        # @OutputOnly Detected product categories, if any.
        # See the ad-product-categories.txt file in the technical documentation
        # for a list of IDs.
        # Corresponds to the JSON property `detectedProductCategories`
        # @return [Array<Fixnum>]
        attr_accessor :detected_product_categories
      
        # @OutputOnly Detected sensitive categories, if any.
        # See the ad-sensitive-categories.txt file in the technical documentation for
        # a list of IDs. You should use these IDs along with the
        # excluded-sensitive-category field in the bid request to filter your bids.
        # Corresponds to the JSON property `detectedSensitiveCategories`
        # @return [Array<Fixnum>]
        attr_accessor :detected_sensitive_categories
      
        # @OutputOnly Filtering reasons for this creative during a period of a single
        # day (from midnight to midnight Pacific).
        # Corresponds to the JSON property `filteringStats`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::FilteringStats]
        attr_accessor :filtering_stats
      
        # HTML content for a creative.
        # Corresponds to the JSON property `html`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::HtmlContent]
        attr_accessor :html
      
        # The set of URLs to be called to record an impression.
        # Corresponds to the JSON property `impressionTrackingUrls`
        # @return [Array<String>]
        attr_accessor :impression_tracking_urls
      
        # Native content for a creative.
        # Corresponds to the JSON property `native`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::NativeContent]
        attr_accessor :native
      
        # @OutputOnly The top-level open auction status of this creative.
        # If disapproved, an entry for 'auctionType = OPEN_AUCTION' (or 'ALL') in
        # serving_restrictions will also exist. Note
        # that this may be nuanced with other contextual restrictions, in which case,
        # it may be preferable to read from serving_restrictions directly.
        # Can be used to filter the response of the
        # creatives.list
        # method.
        # Corresponds to the JSON property `openAuctionStatus`
        # @return [String]
        attr_accessor :open_auction_status
      
        # All restricted categories for the ads that may be shown from this creative.
        # Corresponds to the JSON property `restrictedCategories`
        # @return [Array<String>]
        attr_accessor :restricted_categories
      
        # @OutputOnly The granular status of this ad in specific contexts.
        # A context here relates to where something ultimately serves (for example,
        # a physical location, a platform, an HTTPS vs HTTP request, or the type
        # of auction).
        # Corresponds to the JSON property `servingRestrictions`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::ServingRestriction>]
        attr_accessor :serving_restrictions
      
        # All vendor IDs for the ads that may be shown from this creative.
        # See https://storage.googleapis.com/adx-rtb-dictionaries/vendors.txt
        # for possible values.
        # Corresponds to the JSON property `vendorIds`
        # @return [Array<Fixnum>]
        attr_accessor :vendor_ids
      
        # @OutputOnly The version of this creative.
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        # Video content for a creative.
        # Corresponds to the JSON property `video`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::VideoContent]
        attr_accessor :video
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @ad_choices_destination_url = args[:ad_choices_destination_url] if args.key?(:ad_choices_destination_url)
          @advertiser_name = args[:advertiser_name] if args.key?(:advertiser_name)
          @agency_id = args[:agency_id] if args.key?(:agency_id)
          @api_update_time = args[:api_update_time] if args.key?(:api_update_time)
          @attributes = args[:attributes] if args.key?(:attributes)
          @click_through_urls = args[:click_through_urls] if args.key?(:click_through_urls)
          @corrections = args[:corrections] if args.key?(:corrections)
          @creative_id = args[:creative_id] if args.key?(:creative_id)
          @deals_status = args[:deals_status] if args.key?(:deals_status)
          @declared_click_through_urls = args[:declared_click_through_urls] if args.key?(:declared_click_through_urls)
          @detected_advertiser_ids = args[:detected_advertiser_ids] if args.key?(:detected_advertiser_ids)
          @detected_domains = args[:detected_domains] if args.key?(:detected_domains)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @detected_product_categories = args[:detected_product_categories] if args.key?(:detected_product_categories)
          @detected_sensitive_categories = args[:detected_sensitive_categories] if args.key?(:detected_sensitive_categories)
          @filtering_stats = args[:filtering_stats] if args.key?(:filtering_stats)
          @html = args[:html] if args.key?(:html)
          @impression_tracking_urls = args[:impression_tracking_urls] if args.key?(:impression_tracking_urls)
          @native = args[:native] if args.key?(:native)
          @open_auction_status = args[:open_auction_status] if args.key?(:open_auction_status)
          @restricted_categories = args[:restricted_categories] if args.key?(:restricted_categories)
          @serving_restrictions = args[:serving_restrictions] if args.key?(:serving_restrictions)
          @vendor_ids = args[:vendor_ids] if args.key?(:vendor_ids)
          @version = args[:version] if args.key?(:version)
          @video = args[:video] if args.key?(:video)
        end
      end
      
      # The association between a creative and a deal.
      class CreativeDealAssociation
        include Google::Apis::Core::Hashable
      
        # The account the creative belongs to.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # The ID of the creative associated with the deal.
        # Corresponds to the JSON property `creativeId`
        # @return [String]
        attr_accessor :creative_id
      
        # The externalDealId for the deal associated with the creative.
        # Corresponds to the JSON property `dealsId`
        # @return [String]
        attr_accessor :deals_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @creative_id = args[:creative_id] if args.key?(:creative_id)
          @deals_id = args[:deals_id] if args.key?(:deals_id)
        end
      end
      
      # The number of bids with the specified dimension values that did not win the
      # auction (either were filtered pre-auction or lost the auction), as described
      # by the specified creative status.
      class CreativeStatusRow
        include Google::Apis::Core::Hashable
      
        # A metric value, with an expected value and a variance; represents a count
        # that may be either exact or estimated (i.e. when sampled).
        # Corresponds to the JSON property `bidCount`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::MetricValue]
        attr_accessor :bid_count
      
        # The ID of the creative status.
        # See [creative-status-codes](https://developers.google.com/ad-exchange/rtb/
        # downloads/creative-status-codes).
        # Corresponds to the JSON property `creativeStatusId`
        # @return [Fixnum]
        attr_accessor :creative_status_id
      
        # A response may include multiple rows, breaking down along various dimensions.
        # Encapsulates the values of all dimensions for a given row.
        # Corresponds to the JSON property `rowDimensions`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::RowDimensions]
        attr_accessor :row_dimensions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bid_count = args[:bid_count] if args.key?(:bid_count)
          @creative_status_id = args[:creative_status_id] if args.key?(:creative_status_id)
          @row_dimensions = args[:row_dimensions] if args.key?(:row_dimensions)
        end
      end
      
      # Represents a whole calendar date, for example date of birth. The time of day
      # and time zone are either specified elsewhere or are not significant. The date
      # is relative to the Proleptic Gregorian Calendar. The day can be 0 to
      # represent a year and month where the day is not significant, for example
      # credit card expiration date. The year can be 0 to represent a month and day
      # independent of year, for example anniversary date. Related types are
      # google.type.TimeOfDay and `google.protobuf.Timestamp`.
      class Date
        include Google::Apis::Core::Hashable
      
        # Day of month. Must be from 1 to 31 and valid for the year and month, or 0
        # if specifying a year/month where the day is not significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of year. Must be from 1 to 12, or 0 if specifying a date without a
        # month.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of date. Must be from 1 to 9999, or 0 if specifying a date without
        # a year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
          @year = args[:year] if args.key?(:year)
        end
      end
      
      # @OutputOnly The reason and details for a disapproval.
      class Disapproval
        include Google::Apis::Core::Hashable
      
        # Additional details about the reason for disapproval.
        # Corresponds to the JSON property `details`
        # @return [Array<String>]
        attr_accessor :details
      
        # The categorized reason for disapproval.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated
      # empty messages in your APIs. A typical example is to use it as the request
      # or the response type of an API method. For instance:
      # service Foo `
      # rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
      # `
      # The JSON representation for `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A set of filters that is applied to a request for data.
      # Within a filter set, an AND operation is performed across the filters
      # represented by each field. An OR operation is performed across the filters
      # represented by the multiple values of a repeated field. E.g.
      # "format=VIDEO AND deal_id=12 AND (seller_network_id=34 OR
      # seller_network_id=56)"
      class FilterSet
        include Google::Apis::Core::Hashable
      
        # An absolute date range, specified by its start date and end date.
        # The supported range of dates begins 30 days before today and ends today.
        # Validity checked upon filter set creation. If a filter set with an absolute
        # date range is run at a later date more than 30 days after start_date, it will
        # fail.
        # Corresponds to the JSON property `absoluteDateRange`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::AbsoluteDateRange]
        attr_accessor :absolute_date_range
      
        # The ID of the creative on which to filter; optional. This field may be set
        # only for a filter set that accesses account-level troubleshooting data,
        # i.e. one whose name matches the `bidders/*/accounts/*/filterSets/*`
        # pattern.
        # Corresponds to the JSON property `creativeId`
        # @return [String]
        attr_accessor :creative_id
      
        # The ID of the deal on which to filter; optional. This field may be set
        # only for a filter set that accesses account-level troubleshooting data,
        # i.e. one whose name matches the `bidders/*/accounts/*/filterSets/*`
        # pattern.
        # Corresponds to the JSON property `dealId`
        # @return [Fixnum]
        attr_accessor :deal_id
      
        # The environment on which to filter; optional.
        # Corresponds to the JSON property `environment`
        # @return [String]
        attr_accessor :environment
      
        # The list of formats on which to filter; may be empty. The filters
        # represented by multiple formats are ORed together (i.e. if non-empty,
        # results must match any one of the formats).
        # Corresponds to the JSON property `formats`
        # @return [Array<String>]
        attr_accessor :formats
      
        # A user-defined name of the filter set. Filter set names must be unique
        # globally and match one of the patterns:
        # - `bidders/*/filterSets/*` (for accessing bidder-level troubleshooting
        # data)
        # - `bidders/*/accounts/*/filterSets/*` (for accessing account-level
        # troubleshooting data)
        # This field is required in create operations.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The list of platforms on which to filter; may be empty. The filters
        # represented by multiple platforms are ORed together (i.e. if non-empty,
        # results must match any one of the platforms).
        # Corresponds to the JSON property `platforms`
        # @return [Array<String>]
        attr_accessor :platforms
      
        # For Exchange Bidding buyers only.
        # The list of publisher identifiers on which to filter; may be empty.
        # The filters represented by multiple publisher identifiers are ORed
        # together.
        # Corresponds to the JSON property `publisherIdentifiers`
        # @return [Array<String>]
        attr_accessor :publisher_identifiers
      
        # An open-ended realtime time range specified by the start timestamp.
        # For filter sets that specify a realtime time range RTB metrics continue to
        # be aggregated throughout the lifetime of the filter set.
        # Corresponds to the JSON property `realtimeTimeRange`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::RealtimeTimeRange]
        attr_accessor :realtime_time_range
      
        # A relative date range, specified by an offset and a duration.
        # The supported range of dates begins 30 days before today and ends today.
        # I.e. the limits for these values are:
        # offset_days >= 0
        # duration_days >= 1
        # offset_days + duration_days <= 30
        # Corresponds to the JSON property `relativeDateRange`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::RelativeDateRange]
        attr_accessor :relative_date_range
      
        # For Ad Exchange buyers only.
        # The list of IDs of the seller (publisher) networks on which to filter;
        # may be empty. The filters represented by multiple seller network IDs are
        # ORed together (i.e. if non-empty, results must match any one of the
        # publisher networks).
        # See [seller-network-ids](https://developers.google.com/ad-exchange/rtb/
        # downloads/seller-network-ids)
        # file for the set of existing seller network IDs.
        # Corresponds to the JSON property `sellerNetworkIds`
        # @return [Array<Fixnum>]
        attr_accessor :seller_network_ids
      
        # The granularity of time intervals if a time series breakdown is desired;
        # optional.
        # Corresponds to the JSON property `timeSeriesGranularity`
        # @return [String]
        attr_accessor :time_series_granularity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @absolute_date_range = args[:absolute_date_range] if args.key?(:absolute_date_range)
          @creative_id = args[:creative_id] if args.key?(:creative_id)
          @deal_id = args[:deal_id] if args.key?(:deal_id)
          @environment = args[:environment] if args.key?(:environment)
          @formats = args[:formats] if args.key?(:formats)
          @name = args[:name] if args.key?(:name)
          @platforms = args[:platforms] if args.key?(:platforms)
          @publisher_identifiers = args[:publisher_identifiers] if args.key?(:publisher_identifiers)
          @realtime_time_range = args[:realtime_time_range] if args.key?(:realtime_time_range)
          @relative_date_range = args[:relative_date_range] if args.key?(:relative_date_range)
          @seller_network_ids = args[:seller_network_ids] if args.key?(:seller_network_ids)
          @time_series_granularity = args[:time_series_granularity] if args.key?(:time_series_granularity)
        end
      end
      
      # The number of filtered bids with the specified dimension values that have the
      # specified creative.
      class FilteredBidCreativeRow
        include Google::Apis::Core::Hashable
      
        # A metric value, with an expected value and a variance; represents a count
        # that may be either exact or estimated (i.e. when sampled).
        # Corresponds to the JSON property `bidCount`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::MetricValue]
        attr_accessor :bid_count
      
        # The ID of the creative.
        # Corresponds to the JSON property `creativeId`
        # @return [String]
        attr_accessor :creative_id
      
        # A response may include multiple rows, breaking down along various dimensions.
        # Encapsulates the values of all dimensions for a given row.
        # Corresponds to the JSON property `rowDimensions`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::RowDimensions]
        attr_accessor :row_dimensions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bid_count = args[:bid_count] if args.key?(:bid_count)
          @creative_id = args[:creative_id] if args.key?(:creative_id)
          @row_dimensions = args[:row_dimensions] if args.key?(:row_dimensions)
        end
      end
      
      # The number of filtered bids with the specified dimension values, among those
      # filtered due to the requested filtering reason (i.e. creative status), that
      # have the specified detail.
      class FilteredBidDetailRow
        include Google::Apis::Core::Hashable
      
        # A metric value, with an expected value and a variance; represents a count
        # that may be either exact or estimated (i.e. when sampled).
        # Corresponds to the JSON property `bidCount`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::MetricValue]
        attr_accessor :bid_count
      
        # The ID of the detail. The associated value can be looked up in the
        # dictionary file corresponding to the DetailType in the response message.
        # Corresponds to the JSON property `detailId`
        # @return [Fixnum]
        attr_accessor :detail_id
      
        # A response may include multiple rows, breaking down along various dimensions.
        # Encapsulates the values of all dimensions for a given row.
        # Corresponds to the JSON property `rowDimensions`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::RowDimensions]
        attr_accessor :row_dimensions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bid_count = args[:bid_count] if args.key?(:bid_count)
          @detail_id = args[:detail_id] if args.key?(:detail_id)
          @row_dimensions = args[:row_dimensions] if args.key?(:row_dimensions)
        end
      end
      
      # @OutputOnly Filtering reasons for this creative during a period of a single
      # day (from midnight to midnight Pacific).
      class FilteringStats
        include Google::Apis::Core::Hashable
      
        # Represents a whole calendar date, for example date of birth. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the Proleptic Gregorian Calendar. The day can be 0 to
        # represent a year and month where the day is not significant, for example
        # credit card expiration date. The year can be 0 to represent a month and day
        # independent of year, for example anniversary date. Related types are
        # google.type.TimeOfDay and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Date]
        attr_accessor :date
      
        # The set of filtering reasons for this date.
        # Corresponds to the JSON property `reasons`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::Reason>]
        attr_accessor :reasons
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date = args[:date] if args.key?(:date)
          @reasons = args[:reasons] if args.key?(:reasons)
        end
      end
      
      # HTML content for a creative.
      class HtmlContent
        include Google::Apis::Core::Hashable
      
        # The height of the HTML snippet in pixels.
        # Corresponds to the JSON property `height`
        # @return [Fixnum]
        attr_accessor :height
      
        # The HTML snippet that displays the ad when inserted in the web page.
        # Corresponds to the JSON property `snippet`
        # @return [String]
        attr_accessor :snippet
      
        # The width of the HTML snippet in pixels.
        # Corresponds to the JSON property `width`
        # @return [Fixnum]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @height = args[:height] if args.key?(:height)
          @snippet = args[:snippet] if args.key?(:snippet)
          @width = args[:width] if args.key?(:width)
        end
      end
      
      # An image resource. You may provide a larger image than was requested,
      # so long as the aspect ratio is preserved.
      class Image
        include Google::Apis::Core::Hashable
      
        # Image height in pixels.
        # Corresponds to the JSON property `height`
        # @return [Fixnum]
        attr_accessor :height
      
        # The URL of the image.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        # Image width in pixels.
        # Corresponds to the JSON property `width`
        # @return [Fixnum]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @height = args[:height] if args.key?(:height)
          @url = args[:url] if args.key?(:url)
          @width = args[:width] if args.key?(:width)
        end
      end
      
      # The set of metrics that are measured in numbers of impressions, representing
      # how many impressions with the specified dimension values were considered
      # eligible at each stage of the bidding funnel.
      class ImpressionMetricsRow
        include Google::Apis::Core::Hashable
      
        # A metric value, with an expected value and a variance; represents a count
        # that may be either exact or estimated (i.e. when sampled).
        # Corresponds to the JSON property `availableImpressions`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::MetricValue]
        attr_accessor :available_impressions
      
        # A metric value, with an expected value and a variance; represents a count
        # that may be either exact or estimated (i.e. when sampled).
        # Corresponds to the JSON property `bidRequests`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::MetricValue]
        attr_accessor :bid_requests
      
        # A metric value, with an expected value and a variance; represents a count
        # that may be either exact or estimated (i.e. when sampled).
        # Corresponds to the JSON property `inventoryMatches`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::MetricValue]
        attr_accessor :inventory_matches
      
        # A metric value, with an expected value and a variance; represents a count
        # that may be either exact or estimated (i.e. when sampled).
        # Corresponds to the JSON property `responsesWithBids`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::MetricValue]
        attr_accessor :responses_with_bids
      
        # A response may include multiple rows, breaking down along various dimensions.
        # Encapsulates the values of all dimensions for a given row.
        # Corresponds to the JSON property `rowDimensions`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::RowDimensions]
        attr_accessor :row_dimensions
      
        # A metric value, with an expected value and a variance; represents a count
        # that may be either exact or estimated (i.e. when sampled).
        # Corresponds to the JSON property `successfulResponses`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::MetricValue]
        attr_accessor :successful_responses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @available_impressions = args[:available_impressions] if args.key?(:available_impressions)
          @bid_requests = args[:bid_requests] if args.key?(:bid_requests)
          @inventory_matches = args[:inventory_matches] if args.key?(:inventory_matches)
          @responses_with_bids = args[:responses_with_bids] if args.key?(:responses_with_bids)
          @row_dimensions = args[:row_dimensions] if args.key?(:row_dimensions)
          @successful_responses = args[:successful_responses] if args.key?(:successful_responses)
        end
      end
      
      # Response message for listing the metrics that are measured in number of bids.
      class ListBidMetricsResponse
        include Google::Apis::Core::Hashable
      
        # List of rows, each containing a set of bid metrics.
        # Corresponds to the JSON property `bidMetricsRows`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::BidMetricsRow>]
        attr_accessor :bid_metrics_rows
      
        # A token to retrieve the next page of results.
        # Pass this value in the
        # ListBidMetricsRequest.pageToken
        # field in the subsequent call to the bidMetrics.list
        # method to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bid_metrics_rows = args[:bid_metrics_rows] if args.key?(:bid_metrics_rows)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for listing all reasons that bid responses resulted in an
      # error.
      class ListBidResponseErrorsResponse
        include Google::Apis::Core::Hashable
      
        # List of rows, with counts of bid responses aggregated by callout status.
        # Corresponds to the JSON property `calloutStatusRows`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::CalloutStatusRow>]
        attr_accessor :callout_status_rows
      
        # A token to retrieve the next page of results.
        # Pass this value in the
        # ListBidResponseErrorsRequest.pageToken
        # field in the subsequent call to the bidResponseErrors.list
        # method to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @callout_status_rows = args[:callout_status_rows] if args.key?(:callout_status_rows)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for listing all reasons that bid responses were considered
      # to have no applicable bids.
      class ListBidResponsesWithoutBidsResponse
        include Google::Apis::Core::Hashable
      
        # List of rows, with counts of bid responses without bids aggregated by
        # status.
        # Corresponds to the JSON property `bidResponseWithoutBidsStatusRows`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::BidResponseWithoutBidsStatusRow>]
        attr_accessor :bid_response_without_bids_status_rows
      
        # A token to retrieve the next page of results.
        # Pass this value in the
        # ListBidResponsesWithoutBidsRequest.pageToken
        # field in the subsequent call to the bidResponsesWithoutBids.list
        # method to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bid_response_without_bids_status_rows = args[:bid_response_without_bids_status_rows] if args.key?(:bid_response_without_bids_status_rows)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListClientUserInvitationsResponse
        include Google::Apis::Core::Hashable
      
        # The returned list of client users.
        # Corresponds to the JSON property `invitations`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation>]
        attr_accessor :invitations
      
        # A token to retrieve the next page of results.
        # Pass this value in the
        # ListClientUserInvitationsRequest.pageToken
        # field in the subsequent call to the
        # clients.invitations.list
        # method to retrieve the next
        # page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @invitations = args[:invitations] if args.key?(:invitations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListClientUsersResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results.
        # Pass this value in the
        # ListClientUsersRequest.pageToken
        # field in the subsequent call to the
        # clients.invitations.list
        # method to retrieve the next
        # page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The returned list of client users.
        # Corresponds to the JSON property `users`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::ClientUser>]
        attr_accessor :users
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @users = args[:users] if args.key?(:users)
        end
      end
      
      # 
      class ListClientsResponse
        include Google::Apis::Core::Hashable
      
        # The returned list of clients.
        # Corresponds to the JSON property `clients`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::Client>]
        attr_accessor :clients
      
        # A token to retrieve the next page of results.
        # Pass this value in the
        # ListClientsRequest.pageToken
        # field in the subsequent call to the
        # accounts.clients.list method
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
      
      # Response message for listing all creatives associated with a given filtered
      # bid reason.
      class ListCreativeStatusBreakdownByCreativeResponse
        include Google::Apis::Core::Hashable
      
        # List of rows, with counts of bids with a given creative status aggregated
        # by creative.
        # Corresponds to the JSON property `filteredBidCreativeRows`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::FilteredBidCreativeRow>]
        attr_accessor :filtered_bid_creative_rows
      
        # A token to retrieve the next page of results.
        # Pass this value in the
        # ListCreativeStatusBreakdownByCreativeRequest.pageToken
        # field in the subsequent call to the filteredBids.creatives.list
        # method to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filtered_bid_creative_rows = args[:filtered_bid_creative_rows] if args.key?(:filtered_bid_creative_rows)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for listing all details associated with a given filtered bid
      # reason.
      class ListCreativeStatusBreakdownByDetailResponse
        include Google::Apis::Core::Hashable
      
        # The type of detail that the detail IDs represent.
        # Corresponds to the JSON property `detailType`
        # @return [String]
        attr_accessor :detail_type
      
        # List of rows, with counts of bids with a given creative status aggregated
        # by detail.
        # Corresponds to the JSON property `filteredBidDetailRows`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::FilteredBidDetailRow>]
        attr_accessor :filtered_bid_detail_rows
      
        # A token to retrieve the next page of results.
        # Pass this value in the
        # ListCreativeStatusBreakdownByDetailRequest.pageToken
        # field in the subsequent call to the filteredBids.details.list
        # method to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detail_type = args[:detail_type] if args.key?(:detail_type)
          @filtered_bid_detail_rows = args[:filtered_bid_detail_rows] if args.key?(:filtered_bid_detail_rows)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A response for listing creatives.
      class ListCreativesResponse
        include Google::Apis::Core::Hashable
      
        # The list of creatives.
        # Corresponds to the JSON property `creatives`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::Creative>]
        attr_accessor :creatives
      
        # A token to retrieve the next page of results.
        # Pass this value in the
        # ListCreativesRequest.page_token
        # field in the subsequent call to `ListCreatives` method to retrieve the next
        # page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creatives = args[:creatives] if args.key?(:creatives)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A response for listing creative and deal associations
      class ListDealAssociationsResponse
        include Google::Apis::Core::Hashable
      
        # The list of associations.
        # Corresponds to the JSON property `associations`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::CreativeDealAssociation>]
        attr_accessor :associations
      
        # A token to retrieve the next page of results.
        # Pass this value in the
        # ListDealAssociationsRequest.page_token
        # field in the subsequent call to 'ListDealAssociation' method to retrieve
        # the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @associations = args[:associations] if args.key?(:associations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for listing filter sets.
      class ListFilterSetsResponse
        include Google::Apis::Core::Hashable
      
        # The filter sets belonging to the buyer.
        # Corresponds to the JSON property `filterSets`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::FilterSet>]
        attr_accessor :filter_sets
      
        # A token to retrieve the next page of results.
        # Pass this value in the
        # ListFilterSetsRequest.pageToken
        # field in the subsequent call to the
        # accounts.filterSets.list
        # method to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter_sets = args[:filter_sets] if args.key?(:filter_sets)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for listing all reasons that bid requests were filtered and
      # not sent to the buyer.
      class ListFilteredBidRequestsResponse
        include Google::Apis::Core::Hashable
      
        # List of rows, with counts of filtered bid requests aggregated by callout
        # status.
        # Corresponds to the JSON property `calloutStatusRows`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::CalloutStatusRow>]
        attr_accessor :callout_status_rows
      
        # A token to retrieve the next page of results.
        # Pass this value in the
        # ListFilteredBidRequestsRequest.pageToken
        # field in the subsequent call to the filteredBidRequests.list
        # method to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @callout_status_rows = args[:callout_status_rows] if args.key?(:callout_status_rows)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for listing all reasons that bids were filtered from the
      # auction.
      class ListFilteredBidsResponse
        include Google::Apis::Core::Hashable
      
        # List of rows, with counts of filtered bids aggregated by filtering reason
        # (i.e. creative status).
        # Corresponds to the JSON property `creativeStatusRows`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::CreativeStatusRow>]
        attr_accessor :creative_status_rows
      
        # A token to retrieve the next page of results.
        # Pass this value in the
        # ListFilteredBidsRequest.pageToken
        # field in the subsequent call to the filteredBids.list
        # method to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creative_status_rows = args[:creative_status_rows] if args.key?(:creative_status_rows)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for listing the metrics that are measured in number of
      # impressions.
      class ListImpressionMetricsResponse
        include Google::Apis::Core::Hashable
      
        # List of rows, each containing a set of impression metrics.
        # Corresponds to the JSON property `impressionMetricsRows`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::ImpressionMetricsRow>]
        attr_accessor :impression_metrics_rows
      
        # A token to retrieve the next page of results.
        # Pass this value in the
        # ListImpressionMetricsRequest.pageToken
        # field in the subsequent call to the impressionMetrics.list
        # method to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @impression_metrics_rows = args[:impression_metrics_rows] if args.key?(:impression_metrics_rows)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for listing all reasons that bids lost in the auction.
      class ListLosingBidsResponse
        include Google::Apis::Core::Hashable
      
        # List of rows, with counts of losing bids aggregated by loss reason (i.e.
        # creative status).
        # Corresponds to the JSON property `creativeStatusRows`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::CreativeStatusRow>]
        attr_accessor :creative_status_rows
      
        # A token to retrieve the next page of results.
        # Pass this value in the
        # ListLosingBidsRequest.pageToken
        # field in the subsequent call to the losingBids.list
        # method to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creative_status_rows = args[:creative_status_rows] if args.key?(:creative_status_rows)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for listing all reasons for which a buyer was not billed for
      # a winning bid.
      class ListNonBillableWinningBidsResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results.
        # Pass this value in the
        # ListNonBillableWinningBidsRequest.pageToken
        # field in the subsequent call to the nonBillableWinningBids.list
        # method to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of rows, with counts of bids not billed aggregated by reason.
        # Corresponds to the JSON property `nonBillableWinningBidStatusRows`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::NonBillableWinningBidStatusRow>]
        attr_accessor :non_billable_winning_bid_status_rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @non_billable_winning_bid_status_rows = args[:non_billable_winning_bid_status_rows] if args.key?(:non_billable_winning_bid_status_rows)
        end
      end
      
      # @OutputOnly The Geo criteria the restriction applies to.
      class LocationContext
        include Google::Apis::Core::Hashable
      
        # IDs representing the geo location for this context.
        # Please refer to the
        # [geo-table.csv](https://storage.googleapis.com/adx-rtb-dictionaries/geo-table.
        # csv)
        # file for different geo criteria IDs.
        # Corresponds to the JSON property `geoCriteriaIds`
        # @return [Array<Fixnum>]
        attr_accessor :geo_criteria_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @geo_criteria_ids = args[:geo_criteria_ids] if args.key?(:geo_criteria_ids)
        end
      end
      
      # A metric value, with an expected value and a variance; represents a count
      # that may be either exact or estimated (i.e. when sampled).
      class MetricValue
        include Google::Apis::Core::Hashable
      
        # The expected value of the metric.
        # Corresponds to the JSON property `value`
        # @return [Fixnum]
        attr_accessor :value
      
        # The variance (i.e. square of the standard deviation) of the metric value.
        # If value is exact, variance is 0.
        # Can be used to calculate margin of error as a percentage of value, using
        # the following formula, where Z is the standard constant that depends on the
        # desired size of the confidence interval (e.g. for 90% confidence interval,
        # use Z = 1.645):
        # marginOfError = 100 * Z * sqrt(variance) / value
        # Corresponds to the JSON property `variance`
        # @return [Fixnum]
        attr_accessor :variance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
          @variance = args[:variance] if args.key?(:variance)
        end
      end
      
      # Native content for a creative.
      class NativeContent
        include Google::Apis::Core::Hashable
      
        # The name of the advertiser or sponsor, to be displayed in the ad creative.
        # Corresponds to the JSON property `advertiserName`
        # @return [String]
        attr_accessor :advertiser_name
      
        # An image resource. You may provide a larger image than was requested,
        # so long as the aspect ratio is preserved.
        # Corresponds to the JSON property `appIcon`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Image]
        attr_accessor :app_icon
      
        # A long description of the ad.
        # Corresponds to the JSON property `body`
        # @return [String]
        attr_accessor :body
      
        # A label for the button that the user is supposed to click.
        # Corresponds to the JSON property `callToAction`
        # @return [String]
        attr_accessor :call_to_action
      
        # The URL that the browser/SDK will load when the user clicks the ad.
        # Corresponds to the JSON property `clickLinkUrl`
        # @return [String]
        attr_accessor :click_link_url
      
        # The URL to use for click tracking.
        # Corresponds to the JSON property `clickTrackingUrl`
        # @return [String]
        attr_accessor :click_tracking_url
      
        # A short title for the ad.
        # Corresponds to the JSON property `headline`
        # @return [String]
        attr_accessor :headline
      
        # An image resource. You may provide a larger image than was requested,
        # so long as the aspect ratio is preserved.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Image]
        attr_accessor :image
      
        # An image resource. You may provide a larger image than was requested,
        # so long as the aspect ratio is preserved.
        # Corresponds to the JSON property `logo`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Image]
        attr_accessor :logo
      
        # The price of the promoted app including currency info.
        # Corresponds to the JSON property `priceDisplayText`
        # @return [String]
        attr_accessor :price_display_text
      
        # The app rating in the app store. Must be in the range [0-5].
        # Corresponds to the JSON property `starRating`
        # @return [Float]
        attr_accessor :star_rating
      
        # The URL to the app store to purchase/download the promoted app.
        # Corresponds to the JSON property `storeUrl`
        # @return [String]
        attr_accessor :store_url
      
        # The URL to fetch a native video ad.
        # Corresponds to the JSON property `videoUrl`
        # @return [String]
        attr_accessor :video_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertiser_name = args[:advertiser_name] if args.key?(:advertiser_name)
          @app_icon = args[:app_icon] if args.key?(:app_icon)
          @body = args[:body] if args.key?(:body)
          @call_to_action = args[:call_to_action] if args.key?(:call_to_action)
          @click_link_url = args[:click_link_url] if args.key?(:click_link_url)
          @click_tracking_url = args[:click_tracking_url] if args.key?(:click_tracking_url)
          @headline = args[:headline] if args.key?(:headline)
          @image = args[:image] if args.key?(:image)
          @logo = args[:logo] if args.key?(:logo)
          @price_display_text = args[:price_display_text] if args.key?(:price_display_text)
          @star_rating = args[:star_rating] if args.key?(:star_rating)
          @store_url = args[:store_url] if args.key?(:store_url)
          @video_url = args[:video_url] if args.key?(:video_url)
        end
      end
      
      # The number of winning bids with the specified dimension values for which the
      # buyer was not billed, as described by the specified status.
      class NonBillableWinningBidStatusRow
        include Google::Apis::Core::Hashable
      
        # A metric value, with an expected value and a variance; represents a count
        # that may be either exact or estimated (i.e. when sampled).
        # Corresponds to the JSON property `bidCount`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::MetricValue]
        attr_accessor :bid_count
      
        # A response may include multiple rows, breaking down along various dimensions.
        # Encapsulates the values of all dimensions for a given row.
        # Corresponds to the JSON property `rowDimensions`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::RowDimensions]
        attr_accessor :row_dimensions
      
        # The status specifying why the winning bids were not billed.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bid_count = args[:bid_count] if args.key?(:bid_count)
          @row_dimensions = args[:row_dimensions] if args.key?(:row_dimensions)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # @OutputOnly The type of platform the restriction applies to.
      class PlatformContext
        include Google::Apis::Core::Hashable
      
        # The platforms this restriction applies to.
        # Corresponds to the JSON property `platforms`
        # @return [Array<String>]
        attr_accessor :platforms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @platforms = args[:platforms] if args.key?(:platforms)
        end
      end
      
      # An open-ended realtime time range specified by the start timestamp.
      # For filter sets that specify a realtime time range RTB metrics continue to
      # be aggregated throughout the lifetime of the filter set.
      class RealtimeTimeRange
        include Google::Apis::Core::Hashable
      
        # The start timestamp of the real-time RTB metrics aggregation.
        # Corresponds to the JSON property `startTimestamp`
        # @return [String]
        attr_accessor :start_timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @start_timestamp = args[:start_timestamp] if args.key?(:start_timestamp)
        end
      end
      
      # A specific filtering status and how many times it occurred.
      class Reason
        include Google::Apis::Core::Hashable
      
        # The number of times the creative was filtered for the status. The
        # count is aggregated across all publishers on the exchange.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # The filtering status code. Please refer to the
        # [creative-status-codes.txt](https://storage.googleapis.com/adx-rtb-
        # dictionaries/creative-status-codes.txt)
        # file for different statuses.
        # Corresponds to the JSON property `status`
        # @return [Fixnum]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # A relative date range, specified by an offset and a duration.
      # The supported range of dates begins 30 days before today and ends today.
      # I.e. the limits for these values are:
      # offset_days >= 0
      # duration_days >= 1
      # offset_days + duration_days <= 30
      class RelativeDateRange
        include Google::Apis::Core::Hashable
      
        # The number of days in the requested date range. E.g. for a range spanning
        # today, 1. For a range spanning the last 7 days, 7.
        # Corresponds to the JSON property `durationDays`
        # @return [Fixnum]
        attr_accessor :duration_days
      
        # The end date of the filter set, specified as the number of days before
        # today. E.g. for a range where the last date is today, 0.
        # Corresponds to the JSON property `offsetDays`
        # @return [Fixnum]
        attr_accessor :offset_days
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration_days = args[:duration_days] if args.key?(:duration_days)
          @offset_days = args[:offset_days] if args.key?(:offset_days)
        end
      end
      
      # A request for removing the association between a deal and a creative.
      class RemoveDealAssociationRequest
        include Google::Apis::Core::Hashable
      
        # The association between a creative and a deal.
        # Corresponds to the JSON property `association`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::CreativeDealAssociation]
        attr_accessor :association
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @association = args[:association] if args.key?(:association)
        end
      end
      
      # A response may include multiple rows, breaking down along various dimensions.
      # Encapsulates the values of all dimensions for a given row.
      class RowDimensions
        include Google::Apis::Core::Hashable
      
        # An interval of time, with an absolute start and end.
        # Corresponds to the JSON property `timeInterval`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::TimeInterval]
        attr_accessor :time_interval
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @time_interval = args[:time_interval] if args.key?(:time_interval)
        end
      end
      
      # @OutputOnly A security context.
      class SecurityContext
        include Google::Apis::Core::Hashable
      
        # The security types in this context.
        # Corresponds to the JSON property `securities`
        # @return [Array<String>]
        attr_accessor :securities
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @securities = args[:securities] if args.key?(:securities)
        end
      end
      
      # The serving context for this restriction.
      class ServingContext
        include Google::Apis::Core::Hashable
      
        # Matches all contexts.
        # Corresponds to the JSON property `all`
        # @return [String]
        attr_accessor :all
      
        # @OutputOnly The app type the restriction applies to for mobile device.
        # Corresponds to the JSON property `appType`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::AppContext]
        attr_accessor :app_type
      
        # @OutputOnly The auction type the restriction applies to.
        # Corresponds to the JSON property `auctionType`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::AuctionContext]
        attr_accessor :auction_type
      
        # @OutputOnly The Geo criteria the restriction applies to.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::LocationContext]
        attr_accessor :location
      
        # @OutputOnly The type of platform the restriction applies to.
        # Corresponds to the JSON property `platform`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::PlatformContext]
        attr_accessor :platform
      
        # @OutputOnly A security context.
        # Corresponds to the JSON property `securityType`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::SecurityContext]
        attr_accessor :security_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @all = args[:all] if args.key?(:all)
          @app_type = args[:app_type] if args.key?(:app_type)
          @auction_type = args[:auction_type] if args.key?(:auction_type)
          @location = args[:location] if args.key?(:location)
          @platform = args[:platform] if args.key?(:platform)
          @security_type = args[:security_type] if args.key?(:security_type)
        end
      end
      
      # @OutputOnly A representation of the status of an ad in a
      # specific context. A context here relates to where something ultimately serves
      # (for example, a user or publisher geo, a platform, an HTTPS vs HTTP request,
      # or the type of auction).
      class ServingRestriction
        include Google::Apis::Core::Hashable
      
        # The contexts for the restriction.
        # Corresponds to the JSON property `contexts`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::ServingContext>]
        attr_accessor :contexts
      
        # @OutputOnly The reason and details for a disapproval.
        # Corresponds to the JSON property `disapproval`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Disapproval]
        attr_accessor :disapproval
      
        # Any disapprovals bound to this restriction.
        # Only present if status=DISAPPROVED.
        # Can be used to filter the response of the
        # creatives.list
        # method.
        # Deprecated; please use
        # disapproval
        # field instead.
        # Corresponds to the JSON property `disapprovalReasons`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::Disapproval>]
        attr_accessor :disapproval_reasons
      
        # The status of the creative in this context (for example, it has been
        # explicitly disapproved or is pending review).
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contexts = args[:contexts] if args.key?(:contexts)
          @disapproval = args[:disapproval] if args.key?(:disapproval)
          @disapproval_reasons = args[:disapproval_reasons] if args.key?(:disapproval_reasons)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # A request for stopping notifications for changes to creative Status.
      class StopWatchingCreativeRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # An interval of time, with an absolute start and end.
      class TimeInterval
        include Google::Apis::Core::Hashable
      
        # The timestamp marking the end of the range (exclusive) for which data is
        # included.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The timestamp marking the start of the range (inclusive) for which data is
        # included.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Video content for a creative.
      class VideoContent
        include Google::Apis::Core::Hashable
      
        # The URL to fetch a video ad.
        # Corresponds to the JSON property `videoUrl`
        # @return [String]
        attr_accessor :video_url
      
        # The contents of a VAST document for a video ad.
        # This document should conform to the VAST 2.0 or 3.0 standard.
        # Corresponds to the JSON property `videoVastXml`
        # @return [String]
        attr_accessor :video_vast_xml
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @video_url = args[:video_url] if args.key?(:video_url)
          @video_vast_xml = args[:video_vast_xml] if args.key?(:video_vast_xml)
        end
      end
      
      # A request for watching changes to creative Status.
      class WatchCreativeRequest
        include Google::Apis::Core::Hashable
      
        # The Pub/Sub topic to publish notifications to.
        # This topic must already exist and must give permission to
        # ad-exchange-buyside-reports@google.com to write to the topic.
        # This should be the full resource name in
        # "projects/`project_id`/topics/`topic_id`" format.
        # Corresponds to the JSON property `topic`
        # @return [String]
        attr_accessor :topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @topic = args[:topic] if args.key?(:topic)
        end
      end
    end
  end
end
