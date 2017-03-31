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
      
      # The association between a creative and a deal.
      class CreativeDealAssociation
        include Google::Apis::Core::Hashable
      
        # The externalDealId for the deal associated with the creative.
        # Corresponds to the JSON property `dealsId`
        # @return [String]
        attr_accessor :deals_id
      
        # The account the creative belongs to.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # The ID of the creative associated with the deal.
        # Corresponds to the JSON property `creativeId`
        # @return [String]
        attr_accessor :creative_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deals_id = args[:deals_id] if args.key?(:deals_id)
          @account_id = args[:account_id] if args.key?(:account_id)
          @creative_id = args[:creative_id] if args.key?(:creative_id)
        end
      end
      
      # A creative and its classification data.
      class Creative
        include Google::Apis::Core::Hashable
      
        # The account that this creative belongs to.
        # Can be used to filter the response of the
        # creatives.list
        # method.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Native content for a creative.
        # Corresponds to the JSON property `native`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::NativeContent]
        attr_accessor :native
      
        # @OutputOnly The granular status of this ad in specific contexts.
        # A context here relates to where something ultimately serves (for example,
        # a physical location, a platform, an HTTPS vs HTTP request, or the type
        # of auction).
        # Corresponds to the JSON property `servingRestrictions`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::ServingRestriction>]
        attr_accessor :serving_restrictions
      
        # Video content for a creative.
        # Corresponds to the JSON property `video`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::VideoContent]
        attr_accessor :video
      
        # The agency ID for this creative.
        # Corresponds to the JSON property `agencyId`
        # @return [String]
        attr_accessor :agency_id
      
        # The set of destination URLs for the creative.
        # Corresponds to the JSON property `clickThroughUrls`
        # @return [Array<String>]
        attr_accessor :click_through_urls
      
        # The link to AdChoices destination page.
        # Corresponds to the JSON property `adChoicesDestinationUrl`
        # @return [String]
        attr_accessor :ad_choices_destination_url
      
        # @OutputOnly Detected sensitive categories, if any.
        # See the ad-sensitive-categories.txt file in the technical documentation for
        # a list of IDs. You should use these IDs along with the
        # excluded-sensitive-category field in the bid request to filter your bids.
        # Corresponds to the JSON property `detectedSensitiveCategories`
        # @return [Array<Fixnum>]
        attr_accessor :detected_sensitive_categories
      
        # All restricted categories for the ads that may be shown from this creative.
        # Corresponds to the JSON property `restrictedCategories`
        # @return [Array<String>]
        attr_accessor :restricted_categories
      
        # @OutputOnly Shows any corrections that were applied to this creative.
        # Corresponds to the JSON property `corrections`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::Correction>]
        attr_accessor :corrections
      
        # @OutputOnly The version of this creative.
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        # All vendor IDs for the ads that may be shown from this creative.
        # See https://storage.googleapis.com/adx-rtb-dictionaries/vendors.txt
        # for possible values.
        # Corresponds to the JSON property `vendorIds`
        # @return [Array<Fixnum>]
        attr_accessor :vendor_ids
      
        # The set of URLs to be called to record an impression.
        # Corresponds to the JSON property `impressionTrackingUrls`
        # @return [Array<String>]
        attr_accessor :impression_tracking_urls
      
        # HTML content for a creative.
        # Corresponds to the JSON property `html`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::HtmlContent]
        attr_accessor :html
      
        # @OutputOnly Detected product categories, if any.
        # See the ad-product-categories.txt file in the technical documentation
        # for a list of IDs.
        # Corresponds to the JSON property `detectedProductCategories`
        # @return [Array<Fixnum>]
        attr_accessor :detected_product_categories
      
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
      
        # The name of the company being advertised in the creative.
        # Corresponds to the JSON property `advertiserName`
        # @return [String]
        attr_accessor :advertiser_name
      
        # @OutputOnly Detected advertiser IDs, if any.
        # Corresponds to the JSON property `detectedAdvertiserIds`
        # @return [Array<String>]
        attr_accessor :detected_advertiser_ids
      
        # @OutputOnly
        # The detected domains for this creative.
        # Corresponds to the JSON property `detectedDomains`
        # @return [Array<String>]
        attr_accessor :detected_domains
      
        # @OutputOnly Filtering reasons for this creative during a period of a single
        # day (from midnight to midnight Pacific).
        # Corresponds to the JSON property `filteringStats`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::FilteringStats]
        attr_accessor :filtering_stats
      
        # All attributes for the ads that may be shown from this creative.
        # Can be used to filter the response of the
        # creatives.list
        # method.
        # Corresponds to the JSON property `attributes`
        # @return [Array<String>]
        attr_accessor :attributes
      
        # @OutputOnly The last update timestamp of the creative via API.
        # Corresponds to the JSON property `apiUpdateTime`
        # @return [String]
        attr_accessor :api_update_time
      
        # @OutputOnly
        # The detected languages for this creative. The order is arbitrary. The codes
        # are 2 or 5 characters and are documented at
        # https://developers.google.com/adwords/api/docs/appendix/languagecodes.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<String>]
        attr_accessor :detected_languages
      
        # The buyer-defined creative ID of this creative.
        # Can be used to filter the response of the
        # creatives.list
        # method.
        # Corresponds to the JSON property `creativeId`
        # @return [String]
        attr_accessor :creative_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @native = args[:native] if args.key?(:native)
          @serving_restrictions = args[:serving_restrictions] if args.key?(:serving_restrictions)
          @video = args[:video] if args.key?(:video)
          @agency_id = args[:agency_id] if args.key?(:agency_id)
          @click_through_urls = args[:click_through_urls] if args.key?(:click_through_urls)
          @ad_choices_destination_url = args[:ad_choices_destination_url] if args.key?(:ad_choices_destination_url)
          @detected_sensitive_categories = args[:detected_sensitive_categories] if args.key?(:detected_sensitive_categories)
          @restricted_categories = args[:restricted_categories] if args.key?(:restricted_categories)
          @corrections = args[:corrections] if args.key?(:corrections)
          @version = args[:version] if args.key?(:version)
          @vendor_ids = args[:vendor_ids] if args.key?(:vendor_ids)
          @impression_tracking_urls = args[:impression_tracking_urls] if args.key?(:impression_tracking_urls)
          @html = args[:html] if args.key?(:html)
          @detected_product_categories = args[:detected_product_categories] if args.key?(:detected_product_categories)
          @deals_status = args[:deals_status] if args.key?(:deals_status)
          @open_auction_status = args[:open_auction_status] if args.key?(:open_auction_status)
          @advertiser_name = args[:advertiser_name] if args.key?(:advertiser_name)
          @detected_advertiser_ids = args[:detected_advertiser_ids] if args.key?(:detected_advertiser_ids)
          @detected_domains = args[:detected_domains] if args.key?(:detected_domains)
          @filtering_stats = args[:filtering_stats] if args.key?(:filtering_stats)
          @attributes = args[:attributes] if args.key?(:attributes)
          @api_update_time = args[:api_update_time] if args.key?(:api_update_time)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @creative_id = args[:creative_id] if args.key?(:creative_id)
        end
      end
      
      # @OutputOnly Filtering reasons for this creative during a period of a single
      # day (from midnight to midnight Pacific).
      class FilteringStats
        include Google::Apis::Core::Hashable
      
        # The set of filtering reasons for this date.
        # Corresponds to the JSON property `reasons`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::Reason>]
        attr_accessor :reasons
      
        # Represents a whole calendar date, e.g. date of birth. The time of day and
        # time zone are either specified elsewhere or are not significant. The date
        # is relative to the Proleptic Gregorian Calendar. The day may be 0 to
        # represent a year and month where the day is not significant, e.g. credit card
        # expiration date. The year may be 0 to represent a month and day independent
        # of year, e.g. anniversary date. Related types are google.type.TimeOfDay
        # and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Date]
        attr_accessor :date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reasons = args[:reasons] if args.key?(:reasons)
          @date = args[:date] if args.key?(:date)
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
      
      # A client resource represents a client buyer&mdash;an agency,
      # a brand, or an advertiser customer of the sponsor buyer.
      # Users associated with the client buyer have restricted access to
      # the Ad Exchange Marketplace and certain other sections
      # of the Ad Exchange Buyer UI based on the role
      # granted to the client buyer.
      # All fields are required unless otherwise specified.
      class Client
        include Google::Apis::Core::Hashable
      
        # Whether the client buyer will be visible to sellers.
        # Corresponds to the JSON property `visibleToSeller`
        # @return [Boolean]
        attr_accessor :visible_to_seller
        alias_method :visible_to_seller?, :visible_to_seller
      
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
        # @return [String]
        attr_accessor :entity_id
      
        # The globally-unique numerical ID of the client.
        # The value of this field is ignored in create and update operations.
        # Corresponds to the JSON property `clientAccountId`
        # @return [String]
        attr_accessor :client_account_id
      
        # The name of the entity. This field is automatically fetched based on
        # the type and ID.
        # The value of this field is ignored in create and update operations.
        # Corresponds to the JSON property `entityName`
        # @return [String]
        attr_accessor :entity_name
      
        # The status of the client buyer.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The type of the client entity: `ADVERTISER`, `BRAND`, or `AGENCY`.
        # Corresponds to the JSON property `entityType`
        # @return [String]
        attr_accessor :entity_type
      
        # Name used to represent this client to publishers.
        # You may have multiple clients that map to the same entity,
        # but for each client the combination of `clientName` and entity
        # must be unique.
        # You can specify this field as empty.
        # Corresponds to the JSON property `clientName`
        # @return [String]
        attr_accessor :client_name
      
        # The role which is assigned to the client buyer. Each role implies a set of
        # permissions granted to the client. Must be one of `CLIENT_DEAL_VIEWER`,
        # `CLIENT_DEAL_NEGOTIATOR` or `CLIENT_DEAL_APPROVER`.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @visible_to_seller = args[:visible_to_seller] if args.key?(:visible_to_seller)
          @entity_id = args[:entity_id] if args.key?(:entity_id)
          @client_account_id = args[:client_account_id] if args.key?(:client_account_id)
          @entity_name = args[:entity_name] if args.key?(:entity_name)
          @status = args[:status] if args.key?(:status)
          @entity_type = args[:entity_type] if args.key?(:entity_type)
          @client_name = args[:client_name] if args.key?(:client_name)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # @OutputOnly Shows any corrections that were applied to this creative.
      class Correction
        include Google::Apis::Core::Hashable
      
        # Additional details about what was corrected.
        # Corresponds to the JSON property `details`
        # @return [Array<String>]
        attr_accessor :details
      
        # The type of correction that was applied to the creative.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The contexts for the correction.
        # Corresponds to the JSON property `contexts`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::ServingContext>]
        attr_accessor :contexts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
          @type = args[:type] if args.key?(:type)
          @contexts = args[:contexts] if args.key?(:contexts)
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
      
      # A response for listing creative and deal associations
      class ListDealAssociationsResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results.
        # Pass this value in the
        # ListDealAssociationsRequest.page_token
        # field in the subsequent call to 'ListDealAssociation' method to retrieve
        # the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of associations.
        # Corresponds to the JSON property `associations`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::CreativeDealAssociation>]
        attr_accessor :associations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @associations = args[:associations] if args.key?(:associations)
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
      
      # @OutputOnly A representation of the status of an ad in a
      # specific context. A context here relates to where something ultimately serves
      # (for example, a user or publisher geo, a platform, an HTTPS vs HTTP request,
      # or the type of auction).
      class ServingRestriction
        include Google::Apis::Core::Hashable
      
        # Any disapprovals bound to this restriction.
        # Only present if status=DISAPPROVED.
        # Can be used to filter the response of the
        # creatives.list
        # method.
        # Corresponds to the JSON property `disapprovalReasons`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::Disapproval>]
        attr_accessor :disapproval_reasons
      
        # The contexts for the restriction.
        # Corresponds to the JSON property `contexts`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::ServingContext>]
        attr_accessor :contexts
      
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
          @disapproval_reasons = args[:disapproval_reasons] if args.key?(:disapproval_reasons)
          @contexts = args[:contexts] if args.key?(:contexts)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Represents a whole calendar date, e.g. date of birth. The time of day and
      # time zone are either specified elsewhere or are not significant. The date
      # is relative to the Proleptic Gregorian Calendar. The day may be 0 to
      # represent a year and month where the day is not significant, e.g. credit card
      # expiration date. The year may be 0 to represent a month and day independent
      # of year, e.g. anniversary date. Related types are google.type.TimeOfDay
      # and `google.protobuf.Timestamp`.
      class Date
        include Google::Apis::Core::Hashable
      
        # Year of date. Must be from 1 to 9999, or 0 if specifying a date without
        # a year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        # Day of month. Must be from 1 to 31 and valid for the year and month, or 0
        # if specifying a year/month where the day is not significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of year. Must be from 1 to 12.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @year = args[:year] if args.key?(:year)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
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
      
      # 
      class ListClientsResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results.
        # Pass this value in the
        # ListClientsRequest.pageToken
        # field in the subsequent call to the
        # accounts.clients.list method
        # to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The returned list of clients.
        # Corresponds to the JSON property `clients`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::Client>]
        attr_accessor :clients
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @clients = args[:clients] if args.key?(:clients)
        end
      end
      
      # Native content for a creative.
      class NativeContent
        include Google::Apis::Core::Hashable
      
        # A long description of the ad.
        # Corresponds to the JSON property `body`
        # @return [String]
        attr_accessor :body
      
        # The app rating in the app store. Must be in the range [0-5].
        # Corresponds to the JSON property `starRating`
        # @return [Float]
        attr_accessor :star_rating
      
        # The URL to fetch a native video ad.
        # Corresponds to the JSON property `videoUrl`
        # @return [String]
        attr_accessor :video_url
      
        # The URL that the browser/SDK will load when the user clicks the ad.
        # Corresponds to the JSON property `clickLinkUrl`
        # @return [String]
        attr_accessor :click_link_url
      
        # An image resource. You may provide a larger image than was requested,
        # so long as the aspect ratio is preserved.
        # Corresponds to the JSON property `logo`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Image]
        attr_accessor :logo
      
        # The price of the promoted app including currency info.
        # Corresponds to the JSON property `priceDisplayText`
        # @return [String]
        attr_accessor :price_display_text
      
        # The URL to use for click tracking.
        # Corresponds to the JSON property `clickTrackingUrl`
        # @return [String]
        attr_accessor :click_tracking_url
      
        # An image resource. You may provide a larger image than was requested,
        # so long as the aspect ratio is preserved.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Image]
        attr_accessor :image
      
        # The name of the advertiser or sponsor, to be displayed in the ad creative.
        # Corresponds to the JSON property `advertiserName`
        # @return [String]
        attr_accessor :advertiser_name
      
        # The URL to the app store to purchase/download the promoted app.
        # Corresponds to the JSON property `storeUrl`
        # @return [String]
        attr_accessor :store_url
      
        # A short title for the ad.
        # Corresponds to the JSON property `headline`
        # @return [String]
        attr_accessor :headline
      
        # An image resource. You may provide a larger image than was requested,
        # so long as the aspect ratio is preserved.
        # Corresponds to the JSON property `appIcon`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::Image]
        attr_accessor :app_icon
      
        # A label for the button that the user is supposed to click.
        # Corresponds to the JSON property `callToAction`
        # @return [String]
        attr_accessor :call_to_action
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @body = args[:body] if args.key?(:body)
          @star_rating = args[:star_rating] if args.key?(:star_rating)
          @video_url = args[:video_url] if args.key?(:video_url)
          @click_link_url = args[:click_link_url] if args.key?(:click_link_url)
          @logo = args[:logo] if args.key?(:logo)
          @price_display_text = args[:price_display_text] if args.key?(:price_display_text)
          @click_tracking_url = args[:click_tracking_url] if args.key?(:click_tracking_url)
          @image = args[:image] if args.key?(:image)
          @advertiser_name = args[:advertiser_name] if args.key?(:advertiser_name)
          @store_url = args[:store_url] if args.key?(:store_url)
          @headline = args[:headline] if args.key?(:headline)
          @app_icon = args[:app_icon] if args.key?(:app_icon)
          @call_to_action = args[:call_to_action] if args.key?(:call_to_action)
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
      
      # HTML content for a creative.
      class HtmlContent
        include Google::Apis::Core::Hashable
      
        # The height of the HTML snippet in pixels.
        # Corresponds to the JSON property `height`
        # @return [Fixnum]
        attr_accessor :height
      
        # The width of the HTML snippet in pixels.
        # Corresponds to the JSON property `width`
        # @return [Fixnum]
        attr_accessor :width
      
        # The HTML snippet that displays the ad when inserted in the web page.
        # Corresponds to the JSON property `snippet`
        # @return [String]
        attr_accessor :snippet
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @height = args[:height] if args.key?(:height)
          @width = args[:width] if args.key?(:width)
          @snippet = args[:snippet] if args.key?(:snippet)
        end
      end
      
      # The serving context for this restriction.
      class ServingContext
        include Google::Apis::Core::Hashable
      
        # @OutputOnly The app type the restriction applies to for mobile device.
        # Corresponds to the JSON property `appType`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::AppContext]
        attr_accessor :app_type
      
        # @OutputOnly A security context.
        # Corresponds to the JSON property `securityType`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::SecurityContext]
        attr_accessor :security_type
      
        # @OutputOnly The type of platform the restriction applies to.
        # Corresponds to the JSON property `platform`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::PlatformContext]
        attr_accessor :platform
      
        # @OutputOnly The Geo criteria the restriction applies to.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::LocationContext]
        attr_accessor :location
      
        # @OutputOnly The auction type the restriction applies to.
        # Corresponds to the JSON property `auctionType`
        # @return [Google::Apis::Adexchangebuyer2V2beta1::AuctionContext]
        attr_accessor :auction_type
      
        # Matches all contexts.
        # Corresponds to the JSON property `all`
        # @return [String]
        attr_accessor :all
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_type = args[:app_type] if args.key?(:app_type)
          @security_type = args[:security_type] if args.key?(:security_type)
          @platform = args[:platform] if args.key?(:platform)
          @location = args[:location] if args.key?(:location)
          @auction_type = args[:auction_type] if args.key?(:auction_type)
          @all = args[:all] if args.key?(:all)
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
      
        # Image width in pixels.
        # Corresponds to the JSON property `width`
        # @return [Fixnum]
        attr_accessor :width
      
        # The URL of the image.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @height = args[:height] if args.key?(:height)
          @width = args[:width] if args.key?(:width)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # A specific filtering status and how many times it occurred.
      class Reason
        include Google::Apis::Core::Hashable
      
        # The filtering status code. Please refer to the
        # [creative-status-codes.txt](https://storage.googleapis.com/adx-rtb-
        # dictionaries/creative-status-codes.txt)
        # file for different statuses.
        # Corresponds to the JSON property `status`
        # @return [Fixnum]
        attr_accessor :status
      
        # The number of times the creative was filtered for the status. The
        # count is aggregated across all publishers on the exchange.
        # Corresponds to the JSON property `count`
        # @return [String]
        attr_accessor :count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @status = args[:status] if args.key?(:status)
          @count = args[:count] if args.key?(:count)
        end
      end
      
      # Video content for a creative.
      class VideoContent
        include Google::Apis::Core::Hashable
      
        # The URL to fetch a video ad.
        # Corresponds to the JSON property `videoUrl`
        # @return [String]
        attr_accessor :video_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @video_url = args[:video_url] if args.key?(:video_url)
        end
      end
      
      # An invitation for a new client user to get access to the Ad Exchange
      # Buyer UI.
      # All fields are required unless otherwise specified.
      class ClientUserInvitation
        include Google::Apis::Core::Hashable
      
        # The email address to which the invitation is sent. Email
        # addresses should be unique among all client users under each sponsor
        # buyer.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Numerical account ID of the client buyer
        # that the invited user is associated with.
        # The value of this field is ignored in create operations.
        # Corresponds to the JSON property `clientAccountId`
        # @return [String]
        attr_accessor :client_account_id
      
        # The unique numerical ID of the invitation that is sent to the user.
        # The value of this field is ignored in create operations.
        # Corresponds to the JSON property `invitationId`
        # @return [String]
        attr_accessor :invitation_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @client_account_id = args[:client_account_id] if args.key?(:client_account_id)
          @invitation_id = args[:invitation_id] if args.key?(:invitation_id)
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
      
      # 
      class ListClientUserInvitationsResponse
        include Google::Apis::Core::Hashable
      
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
      
        # The returned list of client users.
        # Corresponds to the JSON property `invitations`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation>]
        attr_accessor :invitations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @invitations = args[:invitations] if args.key?(:invitations)
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
        # @return [String]
        attr_accessor :client_account_id
      
        # The status of the client user.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The unique numerical ID of the client user
        # that has accepted an invitation.
        # The value of this field is ignored in an update operation.
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        # User's email address. The value of this field
        # is ignored in an update operation.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_account_id = args[:client_account_id] if args.key?(:client_account_id)
          @status = args[:status] if args.key?(:status)
          @user_id = args[:user_id] if args.key?(:user_id)
          @email = args[:email] if args.key?(:email)
        end
      end
    end
  end
end
