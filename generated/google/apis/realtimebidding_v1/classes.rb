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
    module RealtimebiddingV1
      
      # A request to activate a pretargeting configuration. Sets the configuration's
      # state to ACTIVE.
      class ActivatePretargetingConfigRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A request to start targeting the provided app IDs in a specific pretargeting
      # configuration. The pretargeting configuration itself specifies how these apps
      # are targeted. in PretargetingConfig.appTargeting.mobileAppTargeting.
      class AddTargetedAppsRequest
        include Google::Apis::Core::Hashable
      
        # A list of app IDs to target in the pretargeting configuration. These values
        # will be added to the list of targeted app IDs in PretargetingConfig.
        # appTargeting.mobileAppTargeting.values.
        # Corresponds to the JSON property `appIds`
        # @return [Array<String>]
        attr_accessor :app_ids
      
        # Required. The targeting mode that should be applied to the list of app IDs. If
        # there are existing targeted app IDs, must be equal to the existing
        # PretargetingConfig.appTargeting.mobileAppTargeting.targetingMode or a 400 bad
        # request error will be returned.
        # Corresponds to the JSON property `targetingMode`
        # @return [String]
        attr_accessor :targeting_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_ids = args[:app_ids] if args.key?(:app_ids)
          @targeting_mode = args[:targeting_mode] if args.key?(:targeting_mode)
        end
      end
      
      # A request to start targeting the provided publishers in a specific
      # pretargeting configuration. The pretargeting configuration itself specifies
      # how these publishers are targeted in PretargetingConfig.publisherTargeting.
      class AddTargetedPublishersRequest
        include Google::Apis::Core::Hashable
      
        # A list of publisher IDs to target in the pretargeting configuration. These
        # values will be added to the list of targeted publisher IDs in
        # PretargetingConfig.publisherTargeting.values. Publishers are identified by
        # their publisher ID from ads.txt / app-ads.txt. See https://iabtechlab.com/ads-
        # txt/ and https://iabtechlab.com/app-ads-txt/ for more details.
        # Corresponds to the JSON property `publisherIds`
        # @return [Array<String>]
        attr_accessor :publisher_ids
      
        # Required. The targeting mode that should be applied to the list of publisher
        # IDs. If are existing publisher IDs, must be equal to the existing
        # PretargetingConfig.publisherTargeting.targetingMode or a 400 bad request error
        # will be returned.
        # Corresponds to the JSON property `targetingMode`
        # @return [String]
        attr_accessor :targeting_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @publisher_ids = args[:publisher_ids] if args.key?(:publisher_ids)
          @targeting_mode = args[:targeting_mode] if args.key?(:targeting_mode)
        end
      end
      
      # A request to start targeting the provided sites in a specific pretargeting
      # configuration. The pretargeting configuration itself specifies how these sites
      # are targeted in PretargetingConfig.webTargeting.
      class AddTargetedSitesRequest
        include Google::Apis::Core::Hashable
      
        # A list of site URLs to target in the pretargeting configuration. These values
        # will be added to the list of targeted URLs in PretargetingConfig.webTargeting.
        # values.
        # Corresponds to the JSON property `sites`
        # @return [Array<String>]
        attr_accessor :sites
      
        # Required. The targeting mode that should be applied to the list of site URLs.
        # If there are existing targeted sites, must be equal to the existing
        # PretargetingConfig.webTargeting.targetingMode or a 400 bad request error will
        # be returned.
        # Corresponds to the JSON property `targetingMode`
        # @return [String]
        attr_accessor :targeting_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sites = args[:sites] if args.key?(:sites)
          @targeting_mode = args[:targeting_mode] if args.key?(:targeting_mode)
        end
      end
      
      # Detected advertiser and brand information.
      class AdvertiserAndBrand
        include Google::Apis::Core::Hashable
      
        # See https://storage.googleapis.com/adx-rtb-dictionaries/advertisers.txt for
        # the list of possible values. Can be used to filter the response of the
        # creatives.list method.
        # Corresponds to the JSON property `advertiserId`
        # @return [Fixnum]
        attr_accessor :advertiser_id
      
        # Advertiser name. Can be used to filter the response of the creatives.list
        # method.
        # Corresponds to the JSON property `advertiserName`
        # @return [String]
        attr_accessor :advertiser_name
      
        # Detected brand ID or zero if no brand has been detected. See https://storage.
        # googleapis.com/adx-rtb-dictionaries/brands.txt for the list of possible values.
        # Can be used to filter the response of the creatives.list method.
        # Corresponds to the JSON property `brandId`
        # @return [Fixnum]
        attr_accessor :brand_id
      
        # Brand name. Can be used to filter the response of the creatives.list method.
        # Corresponds to the JSON property `brandName`
        # @return [String]
        attr_accessor :brand_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @advertiser_name = args[:advertiser_name] if args.key?(:advertiser_name)
          @brand_id = args[:brand_id] if args.key?(:brand_id)
          @brand_name = args[:brand_name] if args.key?(:brand_name)
        end
      end
      
      # A subset of app inventory to target. Bid requests that match criteria in at
      # least one of the specified dimensions will be sent.
      class AppTargeting
        include Google::Apis::Core::Hashable
      
        # Generic targeting used for targeting dimensions that contain a list of
        # included and excluded numeric IDs used in app, user list, geo, and vertical id
        # targeting.
        # Corresponds to the JSON property `mobileAppCategoryTargeting`
        # @return [Google::Apis::RealtimebiddingV1::NumericTargetingDimension]
        attr_accessor :mobile_app_category_targeting
      
        # Generic targeting with string values used in app, website and publisher
        # targeting.
        # Corresponds to the JSON property `mobileAppTargeting`
        # @return [Google::Apis::RealtimebiddingV1::StringTargetingDimension]
        attr_accessor :mobile_app_targeting
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mobile_app_category_targeting = args[:mobile_app_category_targeting] if args.key?(:mobile_app_category_targeting)
          @mobile_app_targeting = args[:mobile_app_targeting] if args.key?(:mobile_app_targeting)
        end
      end
      
      # A request to close a specified user list.
      class CloseUserListRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A creative and its classification data.
      class Creative
        include Google::Apis::Core::Hashable
      
        # Output only. ID of the buyer account that this creative is owned by. Can be
        # used to filter the response of the creatives.list method with equality and
        # inequality check.
        # Corresponds to the JSON property `accountId`
        # @return [Fixnum]
        attr_accessor :account_id
      
        # The link to AdChoices destination page. This is only supported for native ads.
        # Corresponds to the JSON property `adChoicesDestinationUrl`
        # @return [String]
        attr_accessor :ad_choices_destination_url
      
        # The name of the company being advertised in the creative. Can be used to
        # filter the response of the creatives.list method.
        # Corresponds to the JSON property `advertiserName`
        # @return [String]
        attr_accessor :advertiser_name
      
        # The agency ID for this creative.
        # Corresponds to the JSON property `agencyId`
        # @return [Fixnum]
        attr_accessor :agency_id
      
        # Output only. The last update timestamp of the creative via API.
        # Corresponds to the JSON property `apiUpdateTime`
        # @return [String]
        attr_accessor :api_update_time
      
        # Output only. The format of this creative. Can be used to filter the response
        # of the creatives.list method.
        # Corresponds to the JSON property `creativeFormat`
        # @return [String]
        attr_accessor :creative_format
      
        # Buyer-specific creative ID that references this creative in bid responses.
        # This field is Ignored in update operations. Can be used to filter the response
        # of the creatives.list method. The maximum length of the creative ID is 128
        # bytes.
        # Corresponds to the JSON property `creativeId`
        # @return [String]
        attr_accessor :creative_id
      
        # Top level status and detected attributes of a creative.
        # Corresponds to the JSON property `creativeServingDecision`
        # @return [Google::Apis::RealtimebiddingV1::CreativeServingDecision]
        attr_accessor :creative_serving_decision
      
        # Output only. IDs of all of the deals with which this creative has been used in
        # bidding. Can be used to filter the response of the creatives.list method.
        # Corresponds to the JSON property `dealIds`
        # @return [Array<String>]
        attr_accessor :deal_ids
      
        # All declared attributes for the ads that may be shown from this creative. Can
        # be used to filter the response of the creatives.list method. If the `
        # excluded_attribute` field of a [bid request](https://developers.google.com/
        # authorized-buyers/rtb/downloads/realtime-bidding-proto") contains one of the
        # attributes that were declared or detected for a given creative, and a bid is
        # submitted with that creative, the bid will be filtered before the auction.
        # Corresponds to the JSON property `declaredAttributes`
        # @return [Array<String>]
        attr_accessor :declared_attributes
      
        # The set of declared destination URLs for the creative. Can be used to filter
        # the response of the creatives.list method.
        # Corresponds to the JSON property `declaredClickThroughUrls`
        # @return [Array<String>]
        attr_accessor :declared_click_through_urls
      
        # All declared restricted categories for the ads that may be shown from this
        # creative. Can be used to filter the response of the creatives.list method.
        # Corresponds to the JSON property `declaredRestrictedCategories`
        # @return [Array<String>]
        attr_accessor :declared_restricted_categories
      
        # IDs for the declared ad technology vendors that may be used by this creative.
        # See https://storage.googleapis.com/adx-rtb-dictionaries/vendors.txt for
        # possible values. Can be used to filter the response of the creatives.list
        # method.
        # Corresponds to the JSON property `declaredVendorIds`
        # @return [Array<Fixnum>]
        attr_accessor :declared_vendor_ids
      
        # HTML content for a creative.
        # Corresponds to the JSON property `html`
        # @return [Google::Apis::RealtimebiddingV1::HtmlContent]
        attr_accessor :html
      
        # The set of URLs to be called to record an impression.
        # Corresponds to the JSON property `impressionTrackingUrls`
        # @return [Array<String>]
        attr_accessor :impression_tracking_urls
      
        # Output only. Name of the creative. Follows the pattern `buyers/`buyer`/
        # creatives/`creative``, where ``buyer`` represents the account ID of the buyer
        # who owns the creative, and ``creative`` is the buyer-specific creative ID that
        # references this creative in the bid response.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Native content for a creative.
        # Corresponds to the JSON property `native`
        # @return [Google::Apis::RealtimebiddingV1::NativeContent]
        attr_accessor :native
      
        # All restricted categories for the ads that may be shown from this creative.
        # Corresponds to the JSON property `restrictedCategories`
        # @return [Array<String>]
        attr_accessor :restricted_categories
      
        # Output only. The version of this creative. Version for a new creative is 1 and
        # it increments during subsequent creative updates.
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        # Video content for a creative.
        # Corresponds to the JSON property `video`
        # @return [Google::Apis::RealtimebiddingV1::VideoContent]
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
          @creative_format = args[:creative_format] if args.key?(:creative_format)
          @creative_id = args[:creative_id] if args.key?(:creative_id)
          @creative_serving_decision = args[:creative_serving_decision] if args.key?(:creative_serving_decision)
          @deal_ids = args[:deal_ids] if args.key?(:deal_ids)
          @declared_attributes = args[:declared_attributes] if args.key?(:declared_attributes)
          @declared_click_through_urls = args[:declared_click_through_urls] if args.key?(:declared_click_through_urls)
          @declared_restricted_categories = args[:declared_restricted_categories] if args.key?(:declared_restricted_categories)
          @declared_vendor_ids = args[:declared_vendor_ids] if args.key?(:declared_vendor_ids)
          @html = args[:html] if args.key?(:html)
          @impression_tracking_urls = args[:impression_tracking_urls] if args.key?(:impression_tracking_urls)
          @name = args[:name] if args.key?(:name)
          @native = args[:native] if args.key?(:native)
          @restricted_categories = args[:restricted_categories] if args.key?(:restricted_categories)
          @version = args[:version] if args.key?(:version)
          @video = args[:video] if args.key?(:video)
        end
      end
      
      # The dimensions of a creative. This applies to only HTML and Native creatives.
      class CreativeDimensions
        include Google::Apis::Core::Hashable
      
        # The height of the creative in pixels.
        # Corresponds to the JSON property `height`
        # @return [Fixnum]
        attr_accessor :height
      
        # The width of the creative in pixels.
        # Corresponds to the JSON property `width`
        # @return [Fixnum]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @height = args[:height] if args.key?(:height)
          @width = args[:width] if args.key?(:width)
        end
      end
      
      # Top level status and detected attributes of a creative.
      class CreativeServingDecision
        include Google::Apis::Core::Hashable
      
        # Policy compliance of the creative for a transaction type or a region.
        # Corresponds to the JSON property `chinaPolicyCompliance`
        # @return [Google::Apis::RealtimebiddingV1::PolicyCompliance]
        attr_accessor :china_policy_compliance
      
        # Policy compliance of the creative for a transaction type or a region.
        # Corresponds to the JSON property `dealsPolicyCompliance`
        # @return [Google::Apis::RealtimebiddingV1::PolicyCompliance]
        attr_accessor :deals_policy_compliance
      
        # Detected advertisers and brands.
        # Corresponds to the JSON property `detectedAdvertisers`
        # @return [Array<Google::Apis::RealtimebiddingV1::AdvertiserAndBrand>]
        attr_accessor :detected_advertisers
      
        # Publisher-excludable attributes that were detected for this creative. Can be
        # used to filter the response of the creatives.list method. If the `
        # excluded_attribute` field of a [bid request](https://developers.google.com/
        # authorized-buyers/rtb/downloads/realtime-bidding-proto) contains one of the
        # attributes that were declared or detected for a given creative, and a bid is
        # submitted with that creative, the bid will be filtered before the auction.
        # Corresponds to the JSON property `detectedAttributes`
        # @return [Array<String>]
        attr_accessor :detected_attributes
      
        # The set of detected destination URLs for the creative. Can be used to filter
        # the response of the creatives.list method.
        # Corresponds to the JSON property `detectedClickThroughUrls`
        # @return [Array<String>]
        attr_accessor :detected_click_through_urls
      
        # The detected domains for this creative.
        # Corresponds to the JSON property `detectedDomains`
        # @return [Array<String>]
        attr_accessor :detected_domains
      
        # The detected languages for this creative. The order is arbitrary. The codes
        # are 2 or 5 characters and are documented at https://developers.google.com/
        # adwords/api/docs/appendix/languagecodes. Can be used to filter the response of
        # the creatives.list method.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<String>]
        attr_accessor :detected_languages
      
        # Detected product categories, if any. See the ad-product-categories.txt file in
        # the technical documentation for a list of IDs. Can be used to filter the
        # response of the creatives.list method.
        # Corresponds to the JSON property `detectedProductCategories`
        # @return [Array<Fixnum>]
        attr_accessor :detected_product_categories
      
        # Detected sensitive categories, if any. Can be used to filter the response of
        # the creatives.list method. See the ad-sensitive-categories.txt file in the
        # technical documentation for a list of IDs. You should use these IDs along with
        # the excluded-sensitive-category field in the bid request to filter your bids.
        # Corresponds to the JSON property `detectedSensitiveCategories`
        # @return [Array<Fixnum>]
        attr_accessor :detected_sensitive_categories
      
        # IDs of the ad technology vendors that were detected to be used by this
        # creative. See https://storage.googleapis.com/adx-rtb-dictionaries/vendors.txt
        # for possible values. Can be used to filter the response of the creatives.list
        # method. If the `allowed_vendor_type` field of a [bid request](https://
        # developers.google.com/authorized-buyers/rtb/downloads/realtime-bidding-proto)
        # does not contain one of the vendor type IDs that were declared or detected for
        # a given creative, and a bid is submitted with that creative, the bid will be
        # filtered before the auction.
        # Corresponds to the JSON property `detectedVendorIds`
        # @return [Array<Fixnum>]
        attr_accessor :detected_vendor_ids
      
        # The last time the creative status was updated. Can be used to filter the
        # response of the creatives.list method.
        # Corresponds to the JSON property `lastStatusUpdate`
        # @return [String]
        attr_accessor :last_status_update
      
        # Policy compliance of the creative for a transaction type or a region.
        # Corresponds to the JSON property `networkPolicyCompliance`
        # @return [Google::Apis::RealtimebiddingV1::PolicyCompliance]
        attr_accessor :network_policy_compliance
      
        # Policy compliance of the creative for a transaction type or a region.
        # Corresponds to the JSON property `platformPolicyCompliance`
        # @return [Google::Apis::RealtimebiddingV1::PolicyCompliance]
        attr_accessor :platform_policy_compliance
      
        # Policy compliance of the creative for a transaction type or a region.
        # Corresponds to the JSON property `russiaPolicyCompliance`
        # @return [Google::Apis::RealtimebiddingV1::PolicyCompliance]
        attr_accessor :russia_policy_compliance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @china_policy_compliance = args[:china_policy_compliance] if args.key?(:china_policy_compliance)
          @deals_policy_compliance = args[:deals_policy_compliance] if args.key?(:deals_policy_compliance)
          @detected_advertisers = args[:detected_advertisers] if args.key?(:detected_advertisers)
          @detected_attributes = args[:detected_attributes] if args.key?(:detected_attributes)
          @detected_click_through_urls = args[:detected_click_through_urls] if args.key?(:detected_click_through_urls)
          @detected_domains = args[:detected_domains] if args.key?(:detected_domains)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @detected_product_categories = args[:detected_product_categories] if args.key?(:detected_product_categories)
          @detected_sensitive_categories = args[:detected_sensitive_categories] if args.key?(:detected_sensitive_categories)
          @detected_vendor_ids = args[:detected_vendor_ids] if args.key?(:detected_vendor_ids)
          @last_status_update = args[:last_status_update] if args.key?(:last_status_update)
          @network_policy_compliance = args[:network_policy_compliance] if args.key?(:network_policy_compliance)
          @platform_policy_compliance = args[:platform_policy_compliance] if args.key?(:platform_policy_compliance)
          @russia_policy_compliance = args[:russia_policy_compliance] if args.key?(:russia_policy_compliance)
        end
      end
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values * A month
      # and day value, with a zero year, such as an anniversary * A year on its own,
      # with zero month and day values * A year and month value, with a zero day, such
      # as a credit card expiration date Related types are google.type.TimeOfDay and `
      # google.protobuf.Timestamp`.
      class Date
        include Google::Apis::Core::Hashable
      
        # Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        # specify a year by itself or a year and month where the day isn't significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        # and day.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        # year.
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
      
      # Evidence that the creative's destination URL was not crawlable by Google.
      class DestinationNotCrawlableEvidence
        include Google::Apis::Core::Hashable
      
        # Approximate time of the crawl.
        # Corresponds to the JSON property `crawlTime`
        # @return [String]
        attr_accessor :crawl_time
      
        # Destination URL that was attempted to be crawled.
        # Corresponds to the JSON property `crawledUrl`
        # @return [String]
        attr_accessor :crawled_url
      
        # Reason of destination not crawlable.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @crawl_time = args[:crawl_time] if args.key?(:crawl_time)
          @crawled_url = args[:crawled_url] if args.key?(:crawled_url)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # Evidence of the creative's destination URL not functioning properly or having
      # been incorrectly set up.
      class DestinationNotWorkingEvidence
        include Google::Apis::Core::Hashable
      
        # DNS lookup errors.
        # Corresponds to the JSON property `dnsError`
        # @return [String]
        attr_accessor :dns_error
      
        # The full non-working URL.
        # Corresponds to the JSON property `expandedUrl`
        # @return [String]
        attr_accessor :expanded_url
      
        # HTTP error code (e.g. 404 or 5xx)
        # Corresponds to the JSON property `httpError`
        # @return [Fixnum]
        attr_accessor :http_error
      
        # Page was crawled successfully, but was detected as either a page with no
        # content or an error page.
        # Corresponds to the JSON property `invalidPage`
        # @return [String]
        attr_accessor :invalid_page
      
        # Approximate time when the ad destination was last checked.
        # Corresponds to the JSON property `lastCheckTime`
        # @return [String]
        attr_accessor :last_check_time
      
        # Platform of the non-working URL.
        # Corresponds to the JSON property `platform`
        # @return [String]
        attr_accessor :platform
      
        # HTTP redirect chain error.
        # Corresponds to the JSON property `redirectionError`
        # @return [String]
        attr_accessor :redirection_error
      
        # Rejected because of malformed URLs or invalid requests.
        # Corresponds to the JSON property `urlRejected`
        # @return [String]
        attr_accessor :url_rejected
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dns_error = args[:dns_error] if args.key?(:dns_error)
          @expanded_url = args[:expanded_url] if args.key?(:expanded_url)
          @http_error = args[:http_error] if args.key?(:http_error)
          @invalid_page = args[:invalid_page] if args.key?(:invalid_page)
          @last_check_time = args[:last_check_time] if args.key?(:last_check_time)
          @platform = args[:platform] if args.key?(:platform)
          @redirection_error = args[:redirection_error] if args.key?(:redirection_error)
          @url_rejected = args[:url_rejected] if args.key?(:url_rejected)
        end
      end
      
      # The full landing page URL of the destination.
      class DestinationUrlEvidence
        include Google::Apis::Core::Hashable
      
        # The full landing page URL of the destination.
        # Corresponds to the JSON property `destinationUrl`
        # @return [String]
        attr_accessor :destination_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_url = args[:destination_url] if args.key?(:destination_url)
        end
      end
      
      # Number of HTTP calls made by a creative, broken down by domain.
      class DomainCallEvidence
        include Google::Apis::Core::Hashable
      
        # Breakdown of the most frequent domains called via HTTP by the creative.
        # Corresponds to the JSON property `topHttpCallDomains`
        # @return [Array<Google::Apis::RealtimebiddingV1::DomainCalls>]
        attr_accessor :top_http_call_domains
      
        # The total number of HTTP calls made by the creative, including but not limited
        # to the number of calls in the top_http_call_domains.
        # Corresponds to the JSON property `totalHttpCallCount`
        # @return [Fixnum]
        attr_accessor :total_http_call_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @top_http_call_domains = args[:top_http_call_domains] if args.key?(:top_http_call_domains)
          @total_http_call_count = args[:total_http_call_count] if args.key?(:total_http_call_count)
        end
      end
      
      # The number of HTTP calls made to the given domain.
      class DomainCalls
        include Google::Apis::Core::Hashable
      
        # The domain name.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # Number of HTTP calls made to the domain.
        # Corresponds to the JSON property `httpCallCount`
        # @return [Fixnum]
        attr_accessor :http_call_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain = args[:domain] if args.key?(:domain)
          @http_call_count = args[:http_call_count] if args.key?(:http_call_count)
        end
      end
      
      # Total download size and URL-level download size breakdown for resources in a
      # creative.
      class DownloadSizeEvidence
        include Google::Apis::Core::Hashable
      
        # Download size broken down by URLs with the top download size.
        # Corresponds to the JSON property `topUrlDownloadSizeBreakdowns`
        # @return [Array<Google::Apis::RealtimebiddingV1::UrlDownloadSize>]
        attr_accessor :top_url_download_size_breakdowns
      
        # Total download size (in kilobytes) for all the resources in the creative.
        # Corresponds to the JSON property `totalDownloadSizeKb`
        # @return [Fixnum]
        attr_accessor :total_download_size_kb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @top_url_download_size_breakdowns = args[:top_url_download_size_breakdowns] if args.key?(:top_url_download_size_breakdowns)
          @total_download_size_kb = args[:total_download_size_kb] if args.key?(:total_download_size_kb)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response for a request to get remarketing tag.
      class GetRemarketingTagResponse
        include Google::Apis::Core::Hashable
      
        # A HTML tag that can be placed on the advertiser's page to add users to a user
        # list. For more information and code samples on using snippet on your website
        # refer to [Tag your site for remarketing]( https://support.google.com/google-
        # ads/answer/2476688).
        # Corresponds to the JSON property `snippet`
        # @return [String]
        attr_accessor :snippet
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @snippet = args[:snippet] if args.key?(:snippet)
        end
      end
      
      # HTML content for a creative.
      class HtmlContent
        include Google::Apis::Core::Hashable
      
        # The height of the HTML snippet in pixels. Can be used to filter the response
        # of the creatives.list method.
        # Corresponds to the JSON property `height`
        # @return [Fixnum]
        attr_accessor :height
      
        # The HTML snippet that displays the ad when inserted in the web page.
        # Corresponds to the JSON property `snippet`
        # @return [String]
        attr_accessor :snippet
      
        # The width of the HTML snippet in pixels. Can be used to filter the response of
        # the creatives.list method.
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
      
      # HTTP calls made by a creative that resulted in policy violations.
      class HttpCallEvidence
        include Google::Apis::Core::Hashable
      
        # URLs of HTTP calls made by the creative.
        # Corresponds to the JSON property `urls`
        # @return [Array<String>]
        attr_accessor :urls
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @urls = args[:urls] if args.key?(:urls)
        end
      end
      
      # Evidence for HTTP cookie-related policy violations.
      class HttpCookieEvidence
        include Google::Apis::Core::Hashable
      
        # Names of cookies that violate Google policies. For TOO_MANY_COOKIES policy,
        # this will be the cookie names of top domains with the largest number of
        # cookies. For other policies, this will be all the cookie names that violate
        # the policy.
        # Corresponds to the JSON property `cookieNames`
        # @return [Array<String>]
        attr_accessor :cookie_names
      
        # The largest number of cookies set by a creative. If this field is set,
        # cookie_names above will be set to the cookie names of top domains with the
        # largest number of cookies. This field will only be set for TOO_MANY_COOKIES
        # policy.
        # Corresponds to the JSON property `maxCookieCount`
        # @return [Fixnum]
        attr_accessor :max_cookie_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cookie_names = args[:cookie_names] if args.key?(:cookie_names)
          @max_cookie_count = args[:max_cookie_count] if args.key?(:max_cookie_count)
        end
      end
      
      # An image resource. You may provide a larger image than was requested, so long
      # as the aspect ratio is preserved.
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
      
      # A response for listing creatives.
      class ListCreativesResponse
        include Google::Apis::Core::Hashable
      
        # The list of creatives.
        # Corresponds to the JSON property `creatives`
        # @return [Array<Google::Apis::RealtimebiddingV1::Creative>]
        attr_accessor :creatives
      
        # A token to retrieve the next page of results. Pass this value in the
        # ListCreativesRequest.pageToken field in the subsequent call to the `
        # ListCreatives` method to retrieve the next page of results.
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
      
      # A response containing pretargeting configurations.
      class ListPretargetingConfigsResponse
        include Google::Apis::Core::Hashable
      
        # A token which can be passed to a subsequent call to the `
        # ListPretargetingConfigs` method to retrieve the next page of results in
        # ListPretargetingConfigsRequest.pageToken.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of pretargeting configurations.
        # Corresponds to the JSON property `pretargetingConfigs`
        # @return [Array<Google::Apis::RealtimebiddingV1::PretargetingConfig>]
        attr_accessor :pretargeting_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @pretargeting_configs = args[:pretargeting_configs] if args.key?(:pretargeting_configs)
        end
      end
      
      # The list user list response.
      class ListUserListsResponse
        include Google::Apis::Core::Hashable
      
        # The continuation page token to send back to the server in a subsequent request.
        # Due to a currently known issue, it is recommended that the caller keep
        # invoking the list method till the time a next page token is not returned (even
        # if the result set is empty).
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of user lists from the search.
        # Corresponds to the JSON property `userLists`
        # @return [Array<Google::Apis::RealtimebiddingV1::UserList>]
        attr_accessor :user_lists
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @user_lists = args[:user_lists] if args.key?(:user_lists)
        end
      end
      
      # Information about each media file in the VAST.
      class MediaFile
        include Google::Apis::Core::Hashable
      
        # Bitrate of the video file, in Kbps. Can be used to filter the response of the
        # creatives.list method.
        # Corresponds to the JSON property `bitrate`
        # @return [Fixnum]
        attr_accessor :bitrate
      
        # The MIME type of this media file. Can be used to filter the response of the
        # creatives.list method.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bitrate = args[:bitrate] if args.key?(:bitrate)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
        end
      end
      
      # Native content for a creative.
      class NativeContent
        include Google::Apis::Core::Hashable
      
        # The name of the advertiser or sponsor, to be displayed in the ad creative.
        # Corresponds to the JSON property `advertiserName`
        # @return [String]
        attr_accessor :advertiser_name
      
        # An image resource. You may provide a larger image than was requested, so long
        # as the aspect ratio is preserved.
        # Corresponds to the JSON property `appIcon`
        # @return [Google::Apis::RealtimebiddingV1::Image]
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
      
        # An image resource. You may provide a larger image than was requested, so long
        # as the aspect ratio is preserved.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::RealtimebiddingV1::Image]
        attr_accessor :image
      
        # An image resource. You may provide a larger image than was requested, so long
        # as the aspect ratio is preserved.
        # Corresponds to the JSON property `logo`
        # @return [Google::Apis::RealtimebiddingV1::Image]
        attr_accessor :logo
      
        # The price of the promoted app including currency info.
        # Corresponds to the JSON property `priceDisplayText`
        # @return [String]
        attr_accessor :price_display_text
      
        # The app rating in the app store. Must be in the range [0-5].
        # Corresponds to the JSON property `starRating`
        # @return [Float]
        attr_accessor :star_rating
      
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
          @video_url = args[:video_url] if args.key?(:video_url)
        end
      end
      
      # Generic targeting used for targeting dimensions that contain a list of
      # included and excluded numeric IDs used in app, user list, geo, and vertical id
      # targeting.
      class NumericTargetingDimension
        include Google::Apis::Core::Hashable
      
        # The IDs excluded in a configuration.
        # Corresponds to the JSON property `excludedIds`
        # @return [Array<Fixnum>]
        attr_accessor :excluded_ids
      
        # The IDs included in a configuration.
        # Corresponds to the JSON property `includedIds`
        # @return [Array<Fixnum>]
        attr_accessor :included_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @excluded_ids = args[:excluded_ids] if args.key?(:excluded_ids)
          @included_ids = args[:included_ids] if args.key?(:included_ids)
        end
      end
      
      # A request to open a specified user list.
      class OpenUserListRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Policy compliance of the creative for a transaction type or a region.
      class PolicyCompliance
        include Google::Apis::Core::Hashable
      
        # Serving status for the given transaction type (e.g., open auction, deals) or
        # region (e.g., China, Russia). Can be used to filter the response of the
        # creatives.list method.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Topics related to the policy compliance for this transaction type (e.g., open
        # auction, deals) or region (e.g., China, Russia). Topics may be present only if
        # status is DISAPPROVED.
        # Corresponds to the JSON property `topics`
        # @return [Array<Google::Apis::RealtimebiddingV1::PolicyTopicEntry>]
        attr_accessor :topics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @status = args[:status] if args.key?(:status)
          @topics = args[:topics] if args.key?(:topics)
        end
      end
      
      # Each policy topic entry will represent a violation of a policy topic for a
      # creative, with the policy topic information and optional evidence for the
      # policy violation.
      class PolicyTopicEntry
        include Google::Apis::Core::Hashable
      
        # Pieces of evidence associated with this policy topic entry.
        # Corresponds to the JSON property `evidences`
        # @return [Array<Google::Apis::RealtimebiddingV1::PolicyTopicEvidence>]
        attr_accessor :evidences
      
        # URL of the help center article describing this policy topic.
        # Corresponds to the JSON property `helpCenterUrl`
        # @return [String]
        attr_accessor :help_center_url
      
        # Policy topic this entry refers to. For example, "ALCOHOL", "
        # TRADEMARKS_IN_AD_TEXT", or "DESTINATION_NOT_WORKING". The set of possible
        # policy topics is not fixed for a particular API version and may change at any
        # time. Can be used to filter the response of the creatives.list method
        # Corresponds to the JSON property `policyTopic`
        # @return [String]
        attr_accessor :policy_topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @evidences = args[:evidences] if args.key?(:evidences)
          @help_center_url = args[:help_center_url] if args.key?(:help_center_url)
          @policy_topic = args[:policy_topic] if args.key?(:policy_topic)
        end
      end
      
      # Evidence associated with a policy topic entry.
      class PolicyTopicEvidence
        include Google::Apis::Core::Hashable
      
        # Evidence that the creative's destination URL was not crawlable by Google.
        # Corresponds to the JSON property `destinationNotCrawlable`
        # @return [Google::Apis::RealtimebiddingV1::DestinationNotCrawlableEvidence]
        attr_accessor :destination_not_crawlable
      
        # Evidence of the creative's destination URL not functioning properly or having
        # been incorrectly set up.
        # Corresponds to the JSON property `destinationNotWorking`
        # @return [Google::Apis::RealtimebiddingV1::DestinationNotWorkingEvidence]
        attr_accessor :destination_not_working
      
        # The full landing page URL of the destination.
        # Corresponds to the JSON property `destinationUrl`
        # @return [Google::Apis::RealtimebiddingV1::DestinationUrlEvidence]
        attr_accessor :destination_url
      
        # Number of HTTP calls made by a creative, broken down by domain.
        # Corresponds to the JSON property `domainCall`
        # @return [Google::Apis::RealtimebiddingV1::DomainCallEvidence]
        attr_accessor :domain_call
      
        # Total download size and URL-level download size breakdown for resources in a
        # creative.
        # Corresponds to the JSON property `downloadSize`
        # @return [Google::Apis::RealtimebiddingV1::DownloadSizeEvidence]
        attr_accessor :download_size
      
        # HTTP calls made by a creative that resulted in policy violations.
        # Corresponds to the JSON property `httpCall`
        # @return [Google::Apis::RealtimebiddingV1::HttpCallEvidence]
        attr_accessor :http_call
      
        # Evidence for HTTP cookie-related policy violations.
        # Corresponds to the JSON property `httpCookie`
        # @return [Google::Apis::RealtimebiddingV1::HttpCookieEvidence]
        attr_accessor :http_cookie
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_not_crawlable = args[:destination_not_crawlable] if args.key?(:destination_not_crawlable)
          @destination_not_working = args[:destination_not_working] if args.key?(:destination_not_working)
          @destination_url = args[:destination_url] if args.key?(:destination_url)
          @domain_call = args[:domain_call] if args.key?(:domain_call)
          @download_size = args[:download_size] if args.key?(:download_size)
          @http_call = args[:http_call] if args.key?(:http_call)
          @http_cookie = args[:http_cookie] if args.key?(:http_cookie)
        end
      end
      
      # Pretargeting configuration: a set of targeting dimensions applied at the
      # pretargeting stage of the RTB funnel. These control which inventory a bidder
      # will receive bid requests for.
      class PretargetingConfig
        include Google::Apis::Core::Hashable
      
        # Targeting modes included by this configuration. A bid request must allow all
        # the specified targeting modes. An unset value allows all bid requests to be
        # sent, regardless of which targeting modes they allow.
        # Corresponds to the JSON property `allowedUserTargetingModes`
        # @return [Array<String>]
        attr_accessor :allowed_user_targeting_modes
      
        # A subset of app inventory to target. Bid requests that match criteria in at
        # least one of the specified dimensions will be sent.
        # Corresponds to the JSON property `appTargeting`
        # @return [Google::Apis::RealtimebiddingV1::AppTargeting]
        attr_accessor :app_targeting
      
        # Output only. The identifier that corresponds to this pretargeting
        # configuration that helps buyers track and attribute their spend across their
        # own arbitrary divisions. If a bid request matches more than one configuration,
        # the buyer chooses which billing_id to attribute each of their bids.
        # Corresponds to the JSON property `billingId`
        # @return [Fixnum]
        attr_accessor :billing_id
      
        # The diplay name associated with this configuration. This name must be unique
        # among all the pretargeting configurations a bidder has.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The sensitive content category label IDs excluded in this configuration. Bid
        # requests for inventory with any of the specified content label IDs will not be
        # sent. Refer to this file https://storage.googleapis.com/adx-rtb-dictionaries/
        # content-labels.txt for category IDs.
        # Corresponds to the JSON property `excludedContentLabelIds`
        # @return [Array<Fixnum>]
        attr_accessor :excluded_content_label_ids
      
        # Generic targeting used for targeting dimensions that contain a list of
        # included and excluded numeric IDs used in app, user list, geo, and vertical id
        # targeting.
        # Corresponds to the JSON property `geoTargeting`
        # @return [Google::Apis::RealtimebiddingV1::NumericTargetingDimension]
        attr_accessor :geo_targeting
      
        # Creative dimensions included by this configuration. Only bid requests eligible
        # for at least one of the specified creative dimensions will be sent. An unset
        # value allows all bid requests to be sent, regardless of creative dimension.
        # Corresponds to the JSON property `includedCreativeDimensions`
        # @return [Array<Google::Apis::RealtimebiddingV1::CreativeDimensions>]
        attr_accessor :included_creative_dimensions
      
        # Environments that are being included. Bid requests will not be sent for a
        # given environment if it is not included. Further restrictions can be applied
        # to included environments to target only a subset of its inventory. An unset
        # value includes all environments.
        # Corresponds to the JSON property `includedEnvironments`
        # @return [Array<String>]
        attr_accessor :included_environments
      
        # Creative formats included by this configuration. Only bid requests eligible
        # for at least one of the specified creative formats will be sent. An unset
        # value will allow all bid requests to be sent, regardless of format.
        # Corresponds to the JSON property `includedFormats`
        # @return [Array<String>]
        attr_accessor :included_formats
      
        # The languages included in this configuration, represented by their language
        # code. See https://developers.google.com/adwords/api/docs/appendix/
        # languagecodes.
        # Corresponds to the JSON property `includedLanguages`
        # @return [Array<String>]
        attr_accessor :included_languages
      
        # The mobile operating systems included in this configuration as defined in
        # https://storage.googleapis.com/adx-rtb-dictionaries/mobile-os.csv
        # Corresponds to the JSON property `includedMobileOperatingSystemIds`
        # @return [Array<Fixnum>]
        attr_accessor :included_mobile_operating_system_ids
      
        # The platforms included by this configration. Bid requests for devices with the
        # specified platform types will be sent. An unset value allows all bid requests
        # to be sent, regardless of platform.
        # Corresponds to the JSON property `includedPlatforms`
        # @return [Array<String>]
        attr_accessor :included_platforms
      
        # User identifier types included in this configuration. At least one of the user
        # identifier types specified in this list must be available for the bid request
        # to be sent.
        # Corresponds to the JSON property `includedUserIdTypes`
        # @return [Array<String>]
        attr_accessor :included_user_id_types
      
        # The interstitial targeting specified for this configuration. The unset value
        # will allow bid requests to be sent regardless of whether they are for
        # interstitials or not.
        # Corresponds to the JSON property `interstitialTargeting`
        # @return [String]
        attr_accessor :interstitial_targeting
      
        # Output only. Existing included or excluded geos that are invalid. Previously
        # targeted geos may become invalid due to privacy restrictions.
        # Corresponds to the JSON property `invalidGeoIds`
        # @return [Array<Fixnum>]
        attr_accessor :invalid_geo_ids
      
        # The maximum QPS threshold for this configuration. The bidder should receive no
        # more than this number of bid requests matching this configuration per second
        # across all their bidding endpoints among all trading locations. Further
        # information available at https://developers.google.com/authorized-buyers/rtb/
        # peer-guide
        # Corresponds to the JSON property `maximumQps`
        # @return [Fixnum]
        attr_accessor :maximum_qps
      
        # The targeted minimum viewability decile, ranging in values [0, 10]. A value of
        # 5 means that the configuration will only match adslots for which we predict at
        # least 50% viewability. Values > 10 will be rounded down to 10. An unset value
        # or a value of 0 indicates that bid requests will be sent regardless of
        # viewability.
        # Corresponds to the JSON property `minimumViewabilityDecile`
        # @return [Fixnum]
        attr_accessor :minimum_viewability_decile
      
        # Output only. Name of the pretargeting configuration that must follow the
        # pattern `bidders/`bidder_account_id`/pretargetingConfigs/`config_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Generic targeting with string values used in app, website and publisher
        # targeting.
        # Corresponds to the JSON property `publisherTargeting`
        # @return [Google::Apis::RealtimebiddingV1::StringTargetingDimension]
        attr_accessor :publisher_targeting
      
        # Output only. The state of this pretargeting configuration.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Generic targeting used for targeting dimensions that contain a list of
        # included and excluded numeric IDs used in app, user list, geo, and vertical id
        # targeting.
        # Corresponds to the JSON property `userListTargeting`
        # @return [Google::Apis::RealtimebiddingV1::NumericTargetingDimension]
        attr_accessor :user_list_targeting
      
        # Generic targeting used for targeting dimensions that contain a list of
        # included and excluded numeric IDs used in app, user list, geo, and vertical id
        # targeting.
        # Corresponds to the JSON property `verticalTargeting`
        # @return [Google::Apis::RealtimebiddingV1::NumericTargetingDimension]
        attr_accessor :vertical_targeting
      
        # Generic targeting with string values used in app, website and publisher
        # targeting.
        # Corresponds to the JSON property `webTargeting`
        # @return [Google::Apis::RealtimebiddingV1::StringTargetingDimension]
        attr_accessor :web_targeting
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_user_targeting_modes = args[:allowed_user_targeting_modes] if args.key?(:allowed_user_targeting_modes)
          @app_targeting = args[:app_targeting] if args.key?(:app_targeting)
          @billing_id = args[:billing_id] if args.key?(:billing_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @excluded_content_label_ids = args[:excluded_content_label_ids] if args.key?(:excluded_content_label_ids)
          @geo_targeting = args[:geo_targeting] if args.key?(:geo_targeting)
          @included_creative_dimensions = args[:included_creative_dimensions] if args.key?(:included_creative_dimensions)
          @included_environments = args[:included_environments] if args.key?(:included_environments)
          @included_formats = args[:included_formats] if args.key?(:included_formats)
          @included_languages = args[:included_languages] if args.key?(:included_languages)
          @included_mobile_operating_system_ids = args[:included_mobile_operating_system_ids] if args.key?(:included_mobile_operating_system_ids)
          @included_platforms = args[:included_platforms] if args.key?(:included_platforms)
          @included_user_id_types = args[:included_user_id_types] if args.key?(:included_user_id_types)
          @interstitial_targeting = args[:interstitial_targeting] if args.key?(:interstitial_targeting)
          @invalid_geo_ids = args[:invalid_geo_ids] if args.key?(:invalid_geo_ids)
          @maximum_qps = args[:maximum_qps] if args.key?(:maximum_qps)
          @minimum_viewability_decile = args[:minimum_viewability_decile] if args.key?(:minimum_viewability_decile)
          @name = args[:name] if args.key?(:name)
          @publisher_targeting = args[:publisher_targeting] if args.key?(:publisher_targeting)
          @state = args[:state] if args.key?(:state)
          @user_list_targeting = args[:user_list_targeting] if args.key?(:user_list_targeting)
          @vertical_targeting = args[:vertical_targeting] if args.key?(:vertical_targeting)
          @web_targeting = args[:web_targeting] if args.key?(:web_targeting)
        end
      end
      
      # A request to stop targeting the provided apps in a specific pretargeting
      # configuration. The pretargeting configuration itself specifies how these apps
      # are targeted. in PretargetingConfig.appTargeting.mobileAppTargeting.
      class RemoveTargetedAppsRequest
        include Google::Apis::Core::Hashable
      
        # A list of app IDs to stop targeting in the pretargeting configuration. These
        # values will be removed from the list of targeted app IDs in PretargetingConfig.
        # appTargeting.mobileAppTargeting.values.
        # Corresponds to the JSON property `appIds`
        # @return [Array<String>]
        attr_accessor :app_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_ids = args[:app_ids] if args.key?(:app_ids)
        end
      end
      
      # A request to stop targeting publishers in a specific configuration. The
      # pretargeting configuration itself specifies how these publishers are targeted
      # in PretargetingConfig.publisherTargeting.
      class RemoveTargetedPublishersRequest
        include Google::Apis::Core::Hashable
      
        # A list of publisher IDs to stop targeting in the pretargeting configuration.
        # These values will be removed from the list of targeted publisher IDs in
        # PretargetingConfig.publisherTargeting.values. Publishers are identified by
        # their publisher ID from ads.txt / app-ads.txt. See https://iabtechlab.com/ads-
        # txt/ and https://iabtechlab.com/app-ads-txt/ for more details.
        # Corresponds to the JSON property `publisherIds`
        # @return [Array<String>]
        attr_accessor :publisher_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @publisher_ids = args[:publisher_ids] if args.key?(:publisher_ids)
        end
      end
      
      # A request to stop targeting sites in a specific pretargeting configuration.
      # The pretargeting configuration itself specifies how these sites are targeted
      # in PretargetingConfig.webTargeting.
      class RemoveTargetedSitesRequest
        include Google::Apis::Core::Hashable
      
        # A list of site URLs to stop targeting in the pretargeting configuration. These
        # values will be removed from the list of targeted URLs in PretargetingConfig.
        # webTargeting.values.
        # Corresponds to the JSON property `sites`
        # @return [Array<String>]
        attr_accessor :sites
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sites = args[:sites] if args.key?(:sites)
        end
      end
      
      # Generic targeting with string values used in app, website and publisher
      # targeting.
      class StringTargetingDimension
        include Google::Apis::Core::Hashable
      
        # How the items in this list should be targeted.
        # Corresponds to the JSON property `targetingMode`
        # @return [String]
        attr_accessor :targeting_mode
      
        # The values specified.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @targeting_mode = args[:targeting_mode] if args.key?(:targeting_mode)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # A request to suspend a pretargeting configuration. Sets the configuration's
      # state to SUSPENDED.
      class SuspendPretargetingConfigRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The URL-level breakdown for the download size.
      class UrlDownloadSize
        include Google::Apis::Core::Hashable
      
        # Download size of the URL in kilobytes.
        # Corresponds to the JSON property `downloadSizeKb`
        # @return [Fixnum]
        attr_accessor :download_size_kb
      
        # The normalized URL with query parameters and fragment removed.
        # Corresponds to the JSON property `normalizedUrl`
        # @return [String]
        attr_accessor :normalized_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @download_size_kb = args[:download_size_kb] if args.key?(:download_size_kb)
          @normalized_url = args[:normalized_url] if args.key?(:normalized_url)
        end
      end
      
      # Represents the URL restriction (for the URL captured by the pixel callback)
      # for a user list.
      class UrlRestriction
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values * A month
        # and day value, with a zero year, such as an anniversary * A year on its own,
        # with zero month and day values * A year and month value, with a zero day, such
        # as a credit card expiration date Related types are google.type.TimeOfDay and `
        # google.protobuf.Timestamp`.
        # Corresponds to the JSON property `endDate`
        # @return [Google::Apis::RealtimebiddingV1::Date]
        attr_accessor :end_date
      
        # The restriction type for the specified URL.
        # Corresponds to the JSON property `restrictionType`
        # @return [String]
        attr_accessor :restriction_type
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values * A month
        # and day value, with a zero year, such as an anniversary * A year on its own,
        # with zero month and day values * A year and month value, with a zero day, such
        # as a credit card expiration date Related types are google.type.TimeOfDay and `
        # google.protobuf.Timestamp`.
        # Corresponds to the JSON property `startDate`
        # @return [Google::Apis::RealtimebiddingV1::Date]
        attr_accessor :start_date
      
        # Required. The URL to use for applying the restriction on the user list.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_date = args[:end_date] if args.key?(:end_date)
          @restriction_type = args[:restriction_type] if args.key?(:restriction_type)
          @start_date = args[:start_date] if args.key?(:start_date)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Represents an Authorized Buyers user list. Authorized Buyers can create/update/
      # list user lists. Once a user list is created in the system, Authorized Buyers
      # can add users to the user list using the bulk uploader API. Alternatively,
      # users can be added by hosting a tag on the advertiser's page.
      class UserList
        include Google::Apis::Core::Hashable
      
        # The description for the user list.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. Display name of the user list. This must be unique across all user
        # lists for a given account.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. The number of days a user's cookie stays on the user list. The field
        # must be between 0 and 540 inclusive.
        # Corresponds to the JSON property `membershipDurationDays`
        # @return [Fixnum]
        attr_accessor :membership_duration_days
      
        # Output only. Name of the user list that must follow the pattern `buyers/`buyer`
        # /userLists/`user_list``, where ``buyer`` represents the account ID of the
        # buyer who owns the user list. For a bidder accessing user lists on behalf of a
        # child seat buyer, ``buyer`` represents the account ID of the child seat buyer.
        # ``user_list`` is an int64 identifier assigned by Google to uniquely identify a
        # user list.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The status of the user list. A new user list starts out as open.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Represents the URL restriction (for the URL captured by the pixel callback)
        # for a user list.
        # Corresponds to the JSON property `urlRestriction`
        # @return [Google::Apis::RealtimebiddingV1::UrlRestriction]
        attr_accessor :url_restriction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @membership_duration_days = args[:membership_duration_days] if args.key?(:membership_duration_days)
          @name = args[:name] if args.key?(:name)
          @status = args[:status] if args.key?(:status)
          @url_restriction = args[:url_restriction] if args.key?(:url_restriction)
        end
      end
      
      # Video content for a creative.
      class VideoContent
        include Google::Apis::Core::Hashable
      
        # Video metadata for a creative.
        # Corresponds to the JSON property `videoMetadata`
        # @return [Google::Apis::RealtimebiddingV1::VideoMetadata]
        attr_accessor :video_metadata
      
        # The URL to fetch a video ad.
        # Corresponds to the JSON property `videoUrl`
        # @return [String]
        attr_accessor :video_url
      
        # The contents of a VAST document for a video ad. This document should conform
        # to the VAST 2.0 or 3.0 standard.
        # Corresponds to the JSON property `videoVastXml`
        # @return [String]
        attr_accessor :video_vast_xml
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @video_metadata = args[:video_metadata] if args.key?(:video_metadata)
          @video_url = args[:video_url] if args.key?(:video_url)
          @video_vast_xml = args[:video_vast_xml] if args.key?(:video_vast_xml)
        end
      end
      
      # Video metadata for a creative.
      class VideoMetadata
        include Google::Apis::Core::Hashable
      
        # The duration of the ad. Can be used to filter the response of the creatives.
        # list method.
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # Is this a valid VAST ad? Can be used to filter the response of the creatives.
        # list method.
        # Corresponds to the JSON property `isValidVast`
        # @return [Boolean]
        attr_accessor :is_valid_vast
        alias_method :is_valid_vast?, :is_valid_vast
      
        # Is this a VPAID ad? Can be used to filter the response of the creatives.list
        # method.
        # Corresponds to the JSON property `isVpaid`
        # @return [Boolean]
        attr_accessor :is_vpaid
        alias_method :is_vpaid?, :is_vpaid
      
        # The list of all media files declared in the VAST. If there are multiple VASTs
        # in a wrapper chain, this includes the media files from the deepest one in the
        # chain.
        # Corresponds to the JSON property `mediaFiles`
        # @return [Array<Google::Apis::RealtimebiddingV1::MediaFile>]
        attr_accessor :media_files
      
        # The minimum duration that the user has to watch before being able to skip this
        # ad. If the field is not set, the ad is not skippable. If the field is set, the
        # ad is skippable. Can be used to filter the response of the creatives.list
        # method.
        # Corresponds to the JSON property `skipOffset`
        # @return [String]
        attr_accessor :skip_offset
      
        # The maximum VAST version across all wrapped VAST documents. Can be used to
        # filter the response of the creatives.list method.
        # Corresponds to the JSON property `vastVersion`
        # @return [String]
        attr_accessor :vast_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration = args[:duration] if args.key?(:duration)
          @is_valid_vast = args[:is_valid_vast] if args.key?(:is_valid_vast)
          @is_vpaid = args[:is_vpaid] if args.key?(:is_vpaid)
          @media_files = args[:media_files] if args.key?(:media_files)
          @skip_offset = args[:skip_offset] if args.key?(:skip_offset)
          @vast_version = args[:vast_version] if args.key?(:vast_version)
        end
      end
      
      # A request to receive push notifications when any of the creatives belonging to
      # the bidder changes status.
      class WatchCreativesRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A response for the request to receive push notification when a bidder's
      # creatives change status.
      class WatchCreativesResponse
        include Google::Apis::Core::Hashable
      
        # The Pub/Sub subscription that can be used to pull creative status
        # notifications. This would be of the format `projects/`project_id`/
        # subscriptions/`subscription_id``. Subscription is created with pull delivery.
        # All service accounts belonging to the bidder will have read access to this
        # subscription. Subscriptions that are inactive for more than 90 days will be
        # disabled. Please use watchCreatives to re-enable the subscription.
        # Corresponds to the JSON property `subscription`
        # @return [String]
        attr_accessor :subscription
      
        # The Pub/Sub topic that will be used to publish creative serving status
        # notifications. This would be of the format `projects/`project_id`/topics/`
        # topic_id``.
        # Corresponds to the JSON property `topic`
        # @return [String]
        attr_accessor :topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @subscription = args[:subscription] if args.key?(:subscription)
          @topic = args[:topic] if args.key?(:topic)
        end
      end
    end
  end
end
