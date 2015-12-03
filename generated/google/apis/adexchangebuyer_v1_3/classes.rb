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
    module AdexchangebuyerV1_3
      
      # Configuration data for an Ad Exchange buyer account.
      class Account
        include Google::Apis::Core::Hashable
      
        # Your bidder locations that have distinct URLs.
        # Corresponds to the JSON property `bidderLocation`
        # @return [Array<Google::Apis::AdexchangebuyerV1_3::Account::BidderLocation>]
        attr_accessor :bidder_location
      
        # The nid parameter value used in cookie match requests. Please contact your
        # technical account manager if you need to change this.
        # Corresponds to the JSON property `cookieMatchingNid`
        # @return [String]
        attr_accessor :cookie_matching_nid
      
        # The base URL used in cookie match requests.
        # Corresponds to the JSON property `cookieMatchingUrl`
        # @return [String]
        attr_accessor :cookie_matching_url
      
        # Account id.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Resource type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The maximum number of active creatives that an account can have, where a
        # creative is active if it was inserted or bid with in the last 30 days. Please
        # contact your technical account manager if you need to change this.
        # Corresponds to the JSON property `maximumActiveCreatives`
        # @return [Fixnum]
        attr_accessor :maximum_active_creatives
      
        # The sum of all bidderLocation.maximumQps values cannot exceed this. Please
        # contact your technical account manager if you need to change this.
        # Corresponds to the JSON property `maximumTotalQps`
        # @return [Fixnum]
        attr_accessor :maximum_total_qps
      
        # The number of creatives that this account inserted or bid with in the last 30
        # days.
        # Corresponds to the JSON property `numberActiveCreatives`
        # @return [Fixnum]
        attr_accessor :number_active_creatives
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bidder_location = args[:bidder_location] unless args[:bidder_location].nil?
          @cookie_matching_nid = args[:cookie_matching_nid] unless args[:cookie_matching_nid].nil?
          @cookie_matching_url = args[:cookie_matching_url] unless args[:cookie_matching_url].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @maximum_active_creatives = args[:maximum_active_creatives] unless args[:maximum_active_creatives].nil?
          @maximum_total_qps = args[:maximum_total_qps] unless args[:maximum_total_qps].nil?
          @number_active_creatives = args[:number_active_creatives] unless args[:number_active_creatives].nil?
        end
        
        # 
        class BidderLocation
          include Google::Apis::Core::Hashable
        
          # The maximum queries per second the Ad Exchange will send.
          # Corresponds to the JSON property `maximumQps`
          # @return [Fixnum]
          attr_accessor :maximum_qps
        
          # The geographical region the Ad Exchange should send requests from. Only used
          # by some quota systems, but always setting the value is recommended. Allowed
          # values:
          # - ASIA
          # - EUROPE
          # - US_EAST
          # - US_WEST
          # Corresponds to the JSON property `region`
          # @return [String]
          attr_accessor :region
        
          # The URL to which the Ad Exchange will send bid requests.
          # Corresponds to the JSON property `url`
          # @return [String]
          attr_accessor :url
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @maximum_qps = args[:maximum_qps] unless args[:maximum_qps].nil?
            @region = args[:region] unless args[:region].nil?
            @url = args[:url] unless args[:url].nil?
          end
        end
      end
      
      # An account feed lists Ad Exchange buyer accounts that the user has access to.
      # Each entry in the feed corresponds to a single buyer account.
      class AccountsList
        include Google::Apis::Core::Hashable
      
        # A list of accounts.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AdexchangebuyerV1_3::Account>]
        attr_accessor :items
      
        # Resource type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # The configuration data for an Ad Exchange billing info.
      class BillingInfo
        include Google::Apis::Core::Hashable
      
        # Account id.
        # Corresponds to the JSON property `accountId`
        # @return [Fixnum]
        attr_accessor :account_id
      
        # Account name.
        # Corresponds to the JSON property `accountName`
        # @return [String]
        attr_accessor :account_name
      
        # A list of adgroup IDs associated with this particular account. These IDs may
        # show up as part of a realtime bidding BidRequest, which indicates a bid
        # request for this account.
        # Corresponds to the JSON property `billingId`
        # @return [Array<String>]
        attr_accessor :billing_id
      
        # Resource type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @account_name = args[:account_name] unless args[:account_name].nil?
          @billing_id = args[:billing_id] unless args[:billing_id].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # A billing info feed lists Billing Info the Ad Exchange buyer account has
      # access to. Each entry in the feed corresponds to a single billing info.
      class BillingInfoList
        include Google::Apis::Core::Hashable
      
        # A list of billing info relevant for your account.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AdexchangebuyerV1_3::BillingInfo>]
        attr_accessor :items
      
        # Resource type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # The configuration data for Ad Exchange RTB - Budget API.
      class Budget
        include Google::Apis::Core::Hashable
      
        # The id of the account. This is required for get and update requests.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # The billing id to determine which adgroup to provide budget information for.
        # This is required for get and update requests.
        # Corresponds to the JSON property `billingId`
        # @return [String]
        attr_accessor :billing_id
      
        # The daily budget amount in unit amount of the account currency to apply for
        # the billingId provided. This is required for update requests.
        # Corresponds to the JSON property `budgetAmount`
        # @return [String]
        attr_accessor :budget_amount
      
        # The currency code for the buyer. This cannot be altered here.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # The unique id that describes this item.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The kind of the resource, i.e. "adexchangebuyer#budget".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @billing_id = args[:billing_id] unless args[:billing_id].nil?
          @budget_amount = args[:budget_amount] unless args[:budget_amount].nil?
          @currency_code = args[:currency_code] unless args[:currency_code].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # A creative and its classification data.
      class Creative
        include Google::Apis::Core::Hashable
      
        # The HTML snippet that displays the ad when inserted in the web page. If set,
        # videoURL should not be set.
        # Corresponds to the JSON property `HTMLSnippet`
        # @return [String]
        attr_accessor :html_snippet
      
        # Account id.
        # Corresponds to the JSON property `accountId`
        # @return [Fixnum]
        attr_accessor :account_id
      
        # Detected advertiser id, if any. Read-only. This field should not be set in
        # requests.
        # Corresponds to the JSON property `advertiserId`
        # @return [Array<String>]
        attr_accessor :advertiser_id
      
        # The name of the company being advertised in the creative.
        # Corresponds to the JSON property `advertiserName`
        # @return [String]
        attr_accessor :advertiser_name
      
        # The agency id for this creative.
        # Corresponds to the JSON property `agencyId`
        # @return [String]
        attr_accessor :agency_id
      
        # The last upload timestamp of this creative if it was uploaded via API. Read-
        # only. The value of this field is generated, and will be ignored for uploads. (
        # formatted RFC 3339 timestamp).
        # Corresponds to the JSON property `apiUploadTimestamp`
        # @return [DateTime]
        attr_accessor :api_upload_timestamp
      
        # All attributes for the ads that may be shown from this snippet.
        # Corresponds to the JSON property `attribute`
        # @return [Array<Fixnum>]
        attr_accessor :attribute
      
        # A buyer-specific id identifying the creative in this ad.
        # Corresponds to the JSON property `buyerCreativeId`
        # @return [String]
        attr_accessor :buyer_creative_id
      
        # The set of destination urls for the snippet.
        # Corresponds to the JSON property `clickThroughUrl`
        # @return [Array<String>]
        attr_accessor :click_through_url
      
        # Shows any corrections that were applied to this creative. Read-only. This
        # field should not be set in requests.
        # Corresponds to the JSON property `corrections`
        # @return [Array<Google::Apis::AdexchangebuyerV1_3::Creative::Correction>]
        attr_accessor :corrections
      
        # The reasons for disapproval, if any. Note that not all disapproval reasons may
        # be categorized, so it is possible for the creative to have a status of
        # DISAPPROVED with an empty list for disapproval_reasons. In this case, please
        # reach out to your TAM to help debug the issue. Read-only. This field should
        # not be set in requests.
        # Corresponds to the JSON property `disapprovalReasons`
        # @return [Array<Google::Apis::AdexchangebuyerV1_3::Creative::DisapprovalReason>]
        attr_accessor :disapproval_reasons
      
        # The filtering reasons for the creative. Read-only. This field should not be
        # set in requests.
        # Corresponds to the JSON property `filteringReasons`
        # @return [Google::Apis::AdexchangebuyerV1_3::Creative::FilteringReasons]
        attr_accessor :filtering_reasons
      
        # Ad height.
        # Corresponds to the JSON property `height`
        # @return [Fixnum]
        attr_accessor :height
      
        # The set of urls to be called to record an impression.
        # Corresponds to the JSON property `impressionTrackingUrl`
        # @return [Array<String>]
        attr_accessor :impression_tracking_url
      
        # Resource type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # If nativeAd is set, HTMLSnippet and videoURL should not be set.
        # Corresponds to the JSON property `nativeAd`
        # @return [Google::Apis::AdexchangebuyerV1_3::Creative::NativeAd]
        attr_accessor :native_ad
      
        # Detected product categories, if any. Read-only. This field should not be set
        # in requests.
        # Corresponds to the JSON property `productCategories`
        # @return [Array<Fixnum>]
        attr_accessor :product_categories
      
        # All restricted categories for the ads that may be shown from this snippet.
        # Corresponds to the JSON property `restrictedCategories`
        # @return [Array<Fixnum>]
        attr_accessor :restricted_categories
      
        # Detected sensitive categories, if any. Read-only. This field should not be set
        # in requests.
        # Corresponds to the JSON property `sensitiveCategories`
        # @return [Array<Fixnum>]
        attr_accessor :sensitive_categories
      
        # Creative serving status. Read-only. This field should not be set in requests.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # All vendor types for the ads that may be shown from this snippet.
        # Corresponds to the JSON property `vendorType`
        # @return [Array<Fixnum>]
        attr_accessor :vendor_type
      
        # The version for this creative. Read-only. This field should not be set in
        # requests.
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        # The url to fetch a video ad. If set, HTMLSnippet should not be set.
        # Corresponds to the JSON property `videoURL`
        # @return [String]
        attr_accessor :video_url
      
        # Ad width.
        # Corresponds to the JSON property `width`
        # @return [Fixnum]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @html_snippet = args[:html_snippet] unless args[:html_snippet].nil?
          @account_id = args[:account_id] unless args[:account_id].nil?
          @advertiser_id = args[:advertiser_id] unless args[:advertiser_id].nil?
          @advertiser_name = args[:advertiser_name] unless args[:advertiser_name].nil?
          @agency_id = args[:agency_id] unless args[:agency_id].nil?
          @api_upload_timestamp = args[:api_upload_timestamp] unless args[:api_upload_timestamp].nil?
          @attribute = args[:attribute] unless args[:attribute].nil?
          @buyer_creative_id = args[:buyer_creative_id] unless args[:buyer_creative_id].nil?
          @click_through_url = args[:click_through_url] unless args[:click_through_url].nil?
          @corrections = args[:corrections] unless args[:corrections].nil?
          @disapproval_reasons = args[:disapproval_reasons] unless args[:disapproval_reasons].nil?
          @filtering_reasons = args[:filtering_reasons] unless args[:filtering_reasons].nil?
          @height = args[:height] unless args[:height].nil?
          @impression_tracking_url = args[:impression_tracking_url] unless args[:impression_tracking_url].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @native_ad = args[:native_ad] unless args[:native_ad].nil?
          @product_categories = args[:product_categories] unless args[:product_categories].nil?
          @restricted_categories = args[:restricted_categories] unless args[:restricted_categories].nil?
          @sensitive_categories = args[:sensitive_categories] unless args[:sensitive_categories].nil?
          @status = args[:status] unless args[:status].nil?
          @vendor_type = args[:vendor_type] unless args[:vendor_type].nil?
          @version = args[:version] unless args[:version].nil?
          @video_url = args[:video_url] unless args[:video_url].nil?
          @width = args[:width] unless args[:width].nil?
        end
        
        # 
        class Correction
          include Google::Apis::Core::Hashable
        
          # Additional details about the correction.
          # Corresponds to the JSON property `details`
          # @return [Array<String>]
          attr_accessor :details
        
          # The type of correction that was applied to the creative.
          # Corresponds to the JSON property `reason`
          # @return [String]
          attr_accessor :reason
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @details = args[:details] unless args[:details].nil?
            @reason = args[:reason] unless args[:reason].nil?
          end
        end
        
        # 
        class DisapprovalReason
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
            @details = args[:details] unless args[:details].nil?
            @reason = args[:reason] unless args[:reason].nil?
          end
        end
        
        # The filtering reasons for the creative. Read-only. This field should not be
        # set in requests.
        class FilteringReasons
          include Google::Apis::Core::Hashable
        
          # The date in ISO 8601 format for the data. The data is collected from 00:00:00
          # to 23:59:59 in PST.
          # Corresponds to the JSON property `date`
          # @return [String]
          attr_accessor :date
        
          # The filtering reasons.
          # Corresponds to the JSON property `reasons`
          # @return [Array<Google::Apis::AdexchangebuyerV1_3::Creative::FilteringReasons::Reason>]
          attr_accessor :reasons
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @date = args[:date] unless args[:date].nil?
            @reasons = args[:reasons] unless args[:reasons].nil?
          end
          
          # 
          class Reason
            include Google::Apis::Core::Hashable
          
            # The number of times the creative was filtered for the status. The count is
            # aggregated across all publishers on the exchange.
            # Corresponds to the JSON property `filteringCount`
            # @return [String]
            attr_accessor :filtering_count
          
            # The filtering status code. Please refer to the creative-status-codes.txt file
            # for different statuses.
            # Corresponds to the JSON property `filteringStatus`
            # @return [Fixnum]
            attr_accessor :filtering_status
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @filtering_count = args[:filtering_count] unless args[:filtering_count].nil?
              @filtering_status = args[:filtering_status] unless args[:filtering_status].nil?
            end
          end
        end
        
        # If nativeAd is set, HTMLSnippet and videoURL should not be set.
        class NativeAd
          include Google::Apis::Core::Hashable
        
          # 
          # Corresponds to the JSON property `advertiser`
          # @return [String]
          attr_accessor :advertiser
        
          # The app icon, for app download ads.
          # Corresponds to the JSON property `appIcon`
          # @return [Google::Apis::AdexchangebuyerV1_3::Creative::NativeAd::AppIcon]
          attr_accessor :app_icon
        
          # A long description of the ad.
          # Corresponds to the JSON property `body`
          # @return [String]
          attr_accessor :body
        
          # A label for the button that the user is supposed to click.
          # Corresponds to the JSON property `callToAction`
          # @return [String]
          attr_accessor :call_to_action
        
          # The URL to use for click tracking.
          # Corresponds to the JSON property `clickTrackingUrl`
          # @return [String]
          attr_accessor :click_tracking_url
        
          # A short title for the ad.
          # Corresponds to the JSON property `headline`
          # @return [String]
          attr_accessor :headline
        
          # A large image.
          # Corresponds to the JSON property `image`
          # @return [Google::Apis::AdexchangebuyerV1_3::Creative::NativeAd::Image]
          attr_accessor :image
        
          # The URLs are called when the impression is rendered.
          # Corresponds to the JSON property `impressionTrackingUrl`
          # @return [Array<String>]
          attr_accessor :impression_tracking_url
        
          # A smaller image, for the advertiser logo.
          # Corresponds to the JSON property `logo`
          # @return [Google::Apis::AdexchangebuyerV1_3::Creative::NativeAd::Logo]
          attr_accessor :logo
        
          # The price of the promoted app including the currency info.
          # Corresponds to the JSON property `price`
          # @return [String]
          attr_accessor :price
        
          # The app rating in the app store. Must be in the range [0-5].
          # Corresponds to the JSON property `starRating`
          # @return [Float]
          attr_accessor :star_rating
        
          # The URL to the app store to purchase/download the promoted app.
          # Corresponds to the JSON property `store`
          # @return [String]
          attr_accessor :store
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @advertiser = args[:advertiser] unless args[:advertiser].nil?
            @app_icon = args[:app_icon] unless args[:app_icon].nil?
            @body = args[:body] unless args[:body].nil?
            @call_to_action = args[:call_to_action] unless args[:call_to_action].nil?
            @click_tracking_url = args[:click_tracking_url] unless args[:click_tracking_url].nil?
            @headline = args[:headline] unless args[:headline].nil?
            @image = args[:image] unless args[:image].nil?
            @impression_tracking_url = args[:impression_tracking_url] unless args[:impression_tracking_url].nil?
            @logo = args[:logo] unless args[:logo].nil?
            @price = args[:price] unless args[:price].nil?
            @star_rating = args[:star_rating] unless args[:star_rating].nil?
            @store = args[:store] unless args[:store].nil?
          end
          
          # The app icon, for app download ads.
          class AppIcon
            include Google::Apis::Core::Hashable
          
            # 
            # Corresponds to the JSON property `height`
            # @return [Fixnum]
            attr_accessor :height
          
            # 
            # Corresponds to the JSON property `url`
            # @return [String]
            attr_accessor :url
          
            # 
            # Corresponds to the JSON property `width`
            # @return [Fixnum]
            attr_accessor :width
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @height = args[:height] unless args[:height].nil?
              @url = args[:url] unless args[:url].nil?
              @width = args[:width] unless args[:width].nil?
            end
          end
          
          # A large image.
          class Image
            include Google::Apis::Core::Hashable
          
            # 
            # Corresponds to the JSON property `height`
            # @return [Fixnum]
            attr_accessor :height
          
            # 
            # Corresponds to the JSON property `url`
            # @return [String]
            attr_accessor :url
          
            # 
            # Corresponds to the JSON property `width`
            # @return [Fixnum]
            attr_accessor :width
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @height = args[:height] unless args[:height].nil?
              @url = args[:url] unless args[:url].nil?
              @width = args[:width] unless args[:width].nil?
            end
          end
          
          # A smaller image, for the advertiser logo.
          class Logo
            include Google::Apis::Core::Hashable
          
            # 
            # Corresponds to the JSON property `height`
            # @return [Fixnum]
            attr_accessor :height
          
            # 
            # Corresponds to the JSON property `url`
            # @return [String]
            attr_accessor :url
          
            # 
            # Corresponds to the JSON property `width`
            # @return [Fixnum]
            attr_accessor :width
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @height = args[:height] unless args[:height].nil?
              @url = args[:url] unless args[:url].nil?
              @width = args[:width] unless args[:width].nil?
            end
          end
        end
      end
      
      # The creatives feed lists the active creatives for the Ad Exchange buyer
      # accounts that the user has access to. Each entry in the feed corresponds to a
      # single creative.
      class CreativesList
        include Google::Apis::Core::Hashable
      
        # A list of creatives.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AdexchangebuyerV1_3::Creative>]
        attr_accessor :items
      
        # Resource type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Continuation token used to page through creatives. To retrieve the next page
        # of results, set the next request's "pageToken" value to this.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # The configuration data for an Ad Exchange direct deal.
      class DirectDeal
        include Google::Apis::Core::Hashable
      
        # The account id of the buyer this deal is for.
        # Corresponds to the JSON property `accountId`
        # @return [Fixnum]
        attr_accessor :account_id
      
        # The name of the advertiser this deal is for.
        # Corresponds to the JSON property `advertiser`
        # @return [String]
        attr_accessor :advertiser
      
        # The currency code that applies to the fixed_cpm value. If not set then assumed
        # to be USD.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # The deal type such as programmatic reservation or fixed price and so on.
        # Corresponds to the JSON property `dealTier`
        # @return [String]
        attr_accessor :deal_tier
      
        # End time for when this deal stops being active. If not set then this deal is
        # valid until manually disabled by the publisher. In seconds since the epoch.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The fixed price for this direct deal. In cpm micros of currency according to
        # currency_code. If set, then this deal is eligible for the fixed price tier of
        # buying (highest priority, pay exactly the configured fixed price).
        # Corresponds to the JSON property `fixedCpm`
        # @return [String]
        attr_accessor :fixed_cpm
      
        # Deal id.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Resource type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Deal name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The minimum price for this direct deal. In cpm micros of currency according to
        # currency_code. If set, then this deal is eligible for the private exchange
        # tier of buying (below fixed price priority, run as a second price auction).
        # Corresponds to the JSON property `privateExchangeMinCpm`
        # @return [String]
        attr_accessor :private_exchange_min_cpm
      
        # If true, the publisher has opted to have their blocks ignored when a creative
        # is bid with for this deal.
        # Corresponds to the JSON property `publisherBlocksOverriden`
        # @return [Boolean]
        attr_accessor :publisher_blocks_overriden
        alias_method :publisher_blocks_overriden?, :publisher_blocks_overriden
      
        # The name of the publisher offering this direct deal.
        # Corresponds to the JSON property `sellerNetwork`
        # @return [String]
        attr_accessor :seller_network
      
        # Start time for when this deal becomes active. If not set then this deal is
        # active immediately upon creation. In seconds since the epoch.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @advertiser = args[:advertiser] unless args[:advertiser].nil?
          @currency_code = args[:currency_code] unless args[:currency_code].nil?
          @deal_tier = args[:deal_tier] unless args[:deal_tier].nil?
          @end_time = args[:end_time] unless args[:end_time].nil?
          @fixed_cpm = args[:fixed_cpm] unless args[:fixed_cpm].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @private_exchange_min_cpm = args[:private_exchange_min_cpm] unless args[:private_exchange_min_cpm].nil?
          @publisher_blocks_overriden = args[:publisher_blocks_overriden] unless args[:publisher_blocks_overriden].nil?
          @seller_network = args[:seller_network] unless args[:seller_network].nil?
          @start_time = args[:start_time] unless args[:start_time].nil?
        end
      end
      
      # A direct deals feed lists Direct Deals the Ad Exchange buyer account has
      # access to. This includes direct deals set up for the buyer account as well as
      # its merged stream seats.
      class DirectDealsList
        include Google::Apis::Core::Hashable
      
        # A list of direct deals relevant for your account.
        # Corresponds to the JSON property `directDeals`
        # @return [Array<Google::Apis::AdexchangebuyerV1_3::DirectDeal>]
        attr_accessor :direct_deals
      
        # Resource type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @direct_deals = args[:direct_deals] unless args[:direct_deals].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # The configuration data for an Ad Exchange performance report list.
      class PerformanceReport
        include Google::Apis::Core::Hashable
      
        # The number of bid responses with an ad.
        # Corresponds to the JSON property `bidRate`
        # @return [Float]
        attr_accessor :bid_rate
      
        # The number of bid requests sent to your bidder.
        # Corresponds to the JSON property `bidRequestRate`
        # @return [Float]
        attr_accessor :bid_request_rate
      
        # Rate of various prefiltering statuses per match. Please refer to the callout-
        # status-codes.txt file for different statuses.
        # Corresponds to the JSON property `calloutStatusRate`
        # @return [Array<Object>]
        attr_accessor :callout_status_rate
      
        # Average QPS for cookie matcher operations.
        # Corresponds to the JSON property `cookieMatcherStatusRate`
        # @return [Array<Object>]
        attr_accessor :cookie_matcher_status_rate
      
        # Rate of ads with a given status. Please refer to the creative-status-codes.txt
        # file for different statuses.
        # Corresponds to the JSON property `creativeStatusRate`
        # @return [Array<Object>]
        attr_accessor :creative_status_rate
      
        # The number of bid responses that were filtered due to a policy violation or
        # other errors.
        # Corresponds to the JSON property `filteredBidRate`
        # @return [Float]
        attr_accessor :filtered_bid_rate
      
        # Average QPS for hosted match operations.
        # Corresponds to the JSON property `hostedMatchStatusRate`
        # @return [Array<Object>]
        attr_accessor :hosted_match_status_rate
      
        # The number of potential queries based on your pretargeting settings.
        # Corresponds to the JSON property `inventoryMatchRate`
        # @return [Float]
        attr_accessor :inventory_match_rate
      
        # Resource type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The 50th percentile round trip latency(ms) as perceived from Google servers
        # for the duration period covered by the report.
        # Corresponds to the JSON property `latency50thPercentile`
        # @return [Float]
        attr_accessor :latency_50th_percentile
      
        # The 85th percentile round trip latency(ms) as perceived from Google servers
        # for the duration period covered by the report.
        # Corresponds to the JSON property `latency85thPercentile`
        # @return [Float]
        attr_accessor :latency_85th_percentile
      
        # The 95th percentile round trip latency(ms) as perceived from Google servers
        # for the duration period covered by the report.
        # Corresponds to the JSON property `latency95thPercentile`
        # @return [Float]
        attr_accessor :latency_95th_percentile
      
        # Rate of various quota account statuses per quota check.
        # Corresponds to the JSON property `noQuotaInRegion`
        # @return [Float]
        attr_accessor :no_quota_in_region
      
        # Rate of various quota account statuses per quota check.
        # Corresponds to the JSON property `outOfQuota`
        # @return [Float]
        attr_accessor :out_of_quota
      
        # Average QPS for pixel match requests from clients.
        # Corresponds to the JSON property `pixelMatchRequests`
        # @return [Float]
        attr_accessor :pixel_match_requests
      
        # Average QPS for pixel match responses from clients.
        # Corresponds to the JSON property `pixelMatchResponses`
        # @return [Float]
        attr_accessor :pixel_match_responses
      
        # The configured quota limits for this account.
        # Corresponds to the JSON property `quotaConfiguredLimit`
        # @return [Float]
        attr_accessor :quota_configured_limit
      
        # The throttled quota limits for this account.
        # Corresponds to the JSON property `quotaThrottledLimit`
        # @return [Float]
        attr_accessor :quota_throttled_limit
      
        # The trading location of this data.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # The number of properly formed bid responses received by our servers within the
        # deadline.
        # Corresponds to the JSON property `successfulRequestRate`
        # @return [Float]
        attr_accessor :successful_request_rate
      
        # The unix timestamp of the starting time of this performance data.
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        # The number of bid responses that were unsuccessful due to timeouts, incorrect
        # formatting, etc.
        # Corresponds to the JSON property `unsuccessfulRequestRate`
        # @return [Float]
        attr_accessor :unsuccessful_request_rate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bid_rate = args[:bid_rate] unless args[:bid_rate].nil?
          @bid_request_rate = args[:bid_request_rate] unless args[:bid_request_rate].nil?
          @callout_status_rate = args[:callout_status_rate] unless args[:callout_status_rate].nil?
          @cookie_matcher_status_rate = args[:cookie_matcher_status_rate] unless args[:cookie_matcher_status_rate].nil?
          @creative_status_rate = args[:creative_status_rate] unless args[:creative_status_rate].nil?
          @filtered_bid_rate = args[:filtered_bid_rate] unless args[:filtered_bid_rate].nil?
          @hosted_match_status_rate = args[:hosted_match_status_rate] unless args[:hosted_match_status_rate].nil?
          @inventory_match_rate = args[:inventory_match_rate] unless args[:inventory_match_rate].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @latency_50th_percentile = args[:latency_50th_percentile] unless args[:latency_50th_percentile].nil?
          @latency_85th_percentile = args[:latency_85th_percentile] unless args[:latency_85th_percentile].nil?
          @latency_95th_percentile = args[:latency_95th_percentile] unless args[:latency_95th_percentile].nil?
          @no_quota_in_region = args[:no_quota_in_region] unless args[:no_quota_in_region].nil?
          @out_of_quota = args[:out_of_quota] unless args[:out_of_quota].nil?
          @pixel_match_requests = args[:pixel_match_requests] unless args[:pixel_match_requests].nil?
          @pixel_match_responses = args[:pixel_match_responses] unless args[:pixel_match_responses].nil?
          @quota_configured_limit = args[:quota_configured_limit] unless args[:quota_configured_limit].nil?
          @quota_throttled_limit = args[:quota_throttled_limit] unless args[:quota_throttled_limit].nil?
          @region = args[:region] unless args[:region].nil?
          @successful_request_rate = args[:successful_request_rate] unless args[:successful_request_rate].nil?
          @timestamp = args[:timestamp] unless args[:timestamp].nil?
          @unsuccessful_request_rate = args[:unsuccessful_request_rate] unless args[:unsuccessful_request_rate].nil?
        end
      end
      
      # The configuration data for an Ad Exchange performance report list. https://
      # sites.google.com/a/google.com/adx-integration/Home/engineering/binary-releases/
      # rtb-api-release https://cs.corp.google.com/#piper///depot/google3/contentads/
      # adx/tools/rtb_api/adxrtb.py
      class PerformanceReportList
        include Google::Apis::Core::Hashable
      
        # Resource type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A list of performance reports relevant for the account.
        # Corresponds to the JSON property `performanceReport`
        # @return [Array<Google::Apis::AdexchangebuyerV1_3::PerformanceReport>]
        attr_accessor :performance_report
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @performance_report = args[:performance_report] unless args[:performance_report].nil?
        end
      end
      
      # 
      class PretargetingConfig
        include Google::Apis::Core::Hashable
      
        # The id for billing purposes, provided for reference. Leave this field blank
        # for insert requests; the id will be generated automatically.
        # Corresponds to the JSON property `billingId`
        # @return [String]
        attr_accessor :billing_id
      
        # The config id; generated automatically. Leave this field blank for insert
        # requests.
        # Corresponds to the JSON property `configId`
        # @return [String]
        attr_accessor :config_id
      
        # The name of the config. Must be unique. Required for all requests.
        # Corresponds to the JSON property `configName`
        # @return [String]
        attr_accessor :config_name
      
        # List must contain exactly one of PRETARGETING_CREATIVE_TYPE_HTML or
        # PRETARGETING_CREATIVE_TYPE_VIDEO.
        # Corresponds to the JSON property `creativeType`
        # @return [Array<String>]
        attr_accessor :creative_type
      
        # Requests which allow one of these (width, height) pairs will match. All pairs
        # must be supported ad dimensions.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<Google::Apis::AdexchangebuyerV1_3::PretargetingConfig::Dimension>]
        attr_accessor :dimensions
      
        # Requests with any of these content labels will not match. Values are from
        # content-labels.txt in the downloadable files section.
        # Corresponds to the JSON property `excludedContentLabels`
        # @return [Array<String>]
        attr_accessor :excluded_content_labels
      
        # Requests containing any of these geo criteria ids will not match.
        # Corresponds to the JSON property `excludedGeoCriteriaIds`
        # @return [Array<String>]
        attr_accessor :excluded_geo_criteria_ids
      
        # Requests containing any of these placements will not match.
        # Corresponds to the JSON property `excludedPlacements`
        # @return [Array<Google::Apis::AdexchangebuyerV1_3::PretargetingConfig::ExcludedPlacement>]
        attr_accessor :excluded_placements
      
        # Requests containing any of these users list ids will not match.
        # Corresponds to the JSON property `excludedUserLists`
        # @return [Array<String>]
        attr_accessor :excluded_user_lists
      
        # Requests containing any of these vertical ids will not match. Values are from
        # the publisher-verticals.txt file in the downloadable files section.
        # Corresponds to the JSON property `excludedVerticals`
        # @return [Array<String>]
        attr_accessor :excluded_verticals
      
        # Requests containing any of these geo criteria ids will match.
        # Corresponds to the JSON property `geoCriteriaIds`
        # @return [Array<String>]
        attr_accessor :geo_criteria_ids
      
        # Whether this config is active. Required for all requests.
        # Corresponds to the JSON property `isActive`
        # @return [Boolean]
        attr_accessor :is_active
        alias_method :is_active?, :is_active
      
        # The kind of the resource, i.e. "adexchangebuyer#pretargetingConfig".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Request containing any of these language codes will match.
        # Corresponds to the JSON property `languages`
        # @return [Array<String>]
        attr_accessor :languages
      
        # Requests containing any of these mobile carrier ids will match. Values are
        # from mobile-carriers.csv in the downloadable files section.
        # Corresponds to the JSON property `mobileCarriers`
        # @return [Array<String>]
        attr_accessor :mobile_carriers
      
        # Requests containing any of these mobile device ids will match. Values are from
        # mobile-devices.csv in the downloadable files section.
        # Corresponds to the JSON property `mobileDevices`
        # @return [Array<String>]
        attr_accessor :mobile_devices
      
        # Requests containing any of these mobile operating system version ids will
        # match. Values are from mobile-os.csv in the downloadable files section.
        # Corresponds to the JSON property `mobileOperatingSystemVersions`
        # @return [Array<String>]
        attr_accessor :mobile_operating_system_versions
      
        # Requests containing any of these placements will match.
        # Corresponds to the JSON property `placements`
        # @return [Array<Google::Apis::AdexchangebuyerV1_3::PretargetingConfig::Placement>]
        attr_accessor :placements
      
        # Requests matching any of these platforms will match. Possible values are
        # PRETARGETING_PLATFORM_MOBILE, PRETARGETING_PLATFORM_DESKTOP, and
        # PRETARGETING_PLATFORM_TABLET.
        # Corresponds to the JSON property `platforms`
        # @return [Array<String>]
        attr_accessor :platforms
      
        # Creative attributes should be declared here if all creatives corresponding to
        # this pretargeting configuration have that creative attribute. Values are from
        # pretargetable-creative-attributes.txt in the downloadable files section.
        # Corresponds to the JSON property `supportedCreativeAttributes`
        # @return [Array<String>]
        attr_accessor :supported_creative_attributes
      
        # Requests containing any of these user list ids will match.
        # Corresponds to the JSON property `userLists`
        # @return [Array<String>]
        attr_accessor :user_lists
      
        # Requests that allow any of these vendor ids will match. Values are from
        # vendors.txt in the downloadable files section.
        # Corresponds to the JSON property `vendorTypes`
        # @return [Array<String>]
        attr_accessor :vendor_types
      
        # Requests containing any of these vertical ids will match.
        # Corresponds to the JSON property `verticals`
        # @return [Array<String>]
        attr_accessor :verticals
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_id = args[:billing_id] unless args[:billing_id].nil?
          @config_id = args[:config_id] unless args[:config_id].nil?
          @config_name = args[:config_name] unless args[:config_name].nil?
          @creative_type = args[:creative_type] unless args[:creative_type].nil?
          @dimensions = args[:dimensions] unless args[:dimensions].nil?
          @excluded_content_labels = args[:excluded_content_labels] unless args[:excluded_content_labels].nil?
          @excluded_geo_criteria_ids = args[:excluded_geo_criteria_ids] unless args[:excluded_geo_criteria_ids].nil?
          @excluded_placements = args[:excluded_placements] unless args[:excluded_placements].nil?
          @excluded_user_lists = args[:excluded_user_lists] unless args[:excluded_user_lists].nil?
          @excluded_verticals = args[:excluded_verticals] unless args[:excluded_verticals].nil?
          @geo_criteria_ids = args[:geo_criteria_ids] unless args[:geo_criteria_ids].nil?
          @is_active = args[:is_active] unless args[:is_active].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @languages = args[:languages] unless args[:languages].nil?
          @mobile_carriers = args[:mobile_carriers] unless args[:mobile_carriers].nil?
          @mobile_devices = args[:mobile_devices] unless args[:mobile_devices].nil?
          @mobile_operating_system_versions = args[:mobile_operating_system_versions] unless args[:mobile_operating_system_versions].nil?
          @placements = args[:placements] unless args[:placements].nil?
          @platforms = args[:platforms] unless args[:platforms].nil?
          @supported_creative_attributes = args[:supported_creative_attributes] unless args[:supported_creative_attributes].nil?
          @user_lists = args[:user_lists] unless args[:user_lists].nil?
          @vendor_types = args[:vendor_types] unless args[:vendor_types].nil?
          @verticals = args[:verticals] unless args[:verticals].nil?
        end
        
        # 
        class Dimension
          include Google::Apis::Core::Hashable
        
          # Height in pixels.
          # Corresponds to the JSON property `height`
          # @return [String]
          attr_accessor :height
        
          # Width in pixels.
          # Corresponds to the JSON property `width`
          # @return [String]
          attr_accessor :width
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @height = args[:height] unless args[:height].nil?
            @width = args[:width] unless args[:width].nil?
          end
        end
        
        # 
        class ExcludedPlacement
          include Google::Apis::Core::Hashable
        
          # The value of the placement. Interpretation depends on the placement type, e.g.
          # URL for a site placement, channel name for a channel placement, app id for a
          # mobile app placement.
          # Corresponds to the JSON property `token`
          # @return [String]
          attr_accessor :token
        
          # The type of the placement.
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @token = args[:token] unless args[:token].nil?
            @type = args[:type] unless args[:type].nil?
          end
        end
        
        # 
        class Placement
          include Google::Apis::Core::Hashable
        
          # The value of the placement. Interpretation depends on the placement type, e.g.
          # URL for a site placement, channel name for a channel placement, app id for a
          # mobile app placement.
          # Corresponds to the JSON property `token`
          # @return [String]
          attr_accessor :token
        
          # The type of the placement.
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @token = args[:token] unless args[:token].nil?
            @type = args[:type] unless args[:type].nil?
          end
        end
      end
      
      # 
      class PretargetingConfigList
        include Google::Apis::Core::Hashable
      
        # A list of pretargeting configs
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AdexchangebuyerV1_3::PretargetingConfig>]
        attr_accessor :items
      
        # Resource type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
    end
  end
end
