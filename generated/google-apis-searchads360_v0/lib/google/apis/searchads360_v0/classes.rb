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
    module Searchads360V0
      
      # Represents an AdSchedule criterion. AdSchedule is specified as the day of the
      # week and a time interval within which ads will be shown. No more than six
      # AdSchedules can be added for the same day.
      class GoogleAdsSearchads360V0CommonAdScheduleInfo
        include Google::Apis::Core::Hashable
      
        # Day of the week the schedule applies to. This field is required for CREATE
        # operations and is prohibited on UPDATE operations.
        # Corresponds to the JSON property `dayOfWeek`
        # @return [String]
        attr_accessor :day_of_week
      
        # Ending hour in 24 hour time; 24 signifies end of the day. This field must be
        # between 0 and 24, inclusive. This field is required for CREATE operations and
        # is prohibited on UPDATE operations.
        # Corresponds to the JSON property `endHour`
        # @return [Fixnum]
        attr_accessor :end_hour
      
        # Minutes after the end hour at which this schedule ends. The schedule is
        # exclusive of the end minute. This field is required for CREATE operations and
        # is prohibited on UPDATE operations.
        # Corresponds to the JSON property `endMinute`
        # @return [String]
        attr_accessor :end_minute
      
        # Starting hour in 24 hour time. This field must be between 0 and 23, inclusive.
        # This field is required for CREATE operations and is prohibited on UPDATE
        # operations.
        # Corresponds to the JSON property `startHour`
        # @return [Fixnum]
        attr_accessor :start_hour
      
        # Minutes after the start hour at which this schedule starts. This field is
        # required for CREATE operations and is prohibited on UPDATE operations.
        # Corresponds to the JSON property `startMinute`
        # @return [String]
        attr_accessor :start_minute
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day_of_week = args[:day_of_week] if args.key?(:day_of_week)
          @end_hour = args[:end_hour] if args.key?(:end_hour)
          @end_minute = args[:end_minute] if args.key?(:end_minute)
          @start_hour = args[:start_hour] if args.key?(:start_hour)
          @start_minute = args[:start_minute] if args.key?(:start_minute)
        end
      end
      
      # An age range criterion.
      class GoogleAdsSearchads360V0CommonAgeRangeInfo
        include Google::Apis::Core::Hashable
      
        # Type of the age range.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # An AssetInteractionTarget segment.
      class GoogleAdsSearchads360V0CommonAssetInteractionTarget
        include Google::Apis::Core::Hashable
      
        # The asset resource name.
        # Corresponds to the JSON property `asset`
        # @return [String]
        attr_accessor :asset
      
        # Only used with CustomerAsset, CampaignAsset and AdGroupAsset metrics.
        # Indicates whether the interaction metrics occurred on the asset itself or a
        # different asset or ad unit.
        # Corresponds to the JSON property `interactionOnThisAsset`
        # @return [Boolean]
        attr_accessor :interaction_on_this_asset
        alias_method :interaction_on_this_asset?, :interaction_on_this_asset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset = args[:asset] if args.key?(:asset)
          @interaction_on_this_asset = args[:interaction_on_this_asset] if args.key?(:interaction_on_this_asset)
        end
      end
      
      # Contains the usage information of the asset.
      class GoogleAdsSearchads360V0CommonAssetUsage
        include Google::Apis::Core::Hashable
      
        # Resource name of the asset.
        # Corresponds to the JSON property `asset`
        # @return [String]
        attr_accessor :asset
      
        # The served field type of the asset.
        # Corresponds to the JSON property `servedAssetFieldType`
        # @return [String]
        attr_accessor :served_asset_field_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset = args[:asset] if args.key?(:asset)
          @served_asset_field_type = args[:served_asset_field_type] if args.key?(:served_asset_field_type)
        end
      end
      
      # An audience criterion.
      class GoogleAdsSearchads360V0CommonAudienceInfo
        include Google::Apis::Core::Hashable
      
        # The Audience resource name.
        # Corresponds to the JSON property `audience`
        # @return [String]
        attr_accessor :audience
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audience = args[:audience] if args.key?(:audience)
        end
      end
      
      # Business Profile location data synced from the linked Business Profile account.
      class GoogleAdsSearchads360V0CommonBusinessProfileLocation
        include Google::Apis::Core::Hashable
      
        # Advertiser specified label for the location on the Business Profile account.
        # This is synced from the Business Profile account.
        # Corresponds to the JSON property `labels`
        # @return [Array<String>]
        attr_accessor :labels
      
        # Listing ID of this Business Profile location. This is synced from the linked
        # Business Profile account.
        # Corresponds to the JSON property `listingId`
        # @return [Fixnum]
        attr_accessor :listing_id
      
        # Business Profile store code of this location. This is synced from the Business
        # Profile account.
        # Corresponds to the JSON property `storeCode`
        # @return [String]
        attr_accessor :store_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @labels = args[:labels] if args.key?(:labels)
          @listing_id = args[:listing_id] if args.key?(:listing_id)
          @store_code = args[:store_code] if args.key?(:store_code)
        end
      end
      
      # A call to action asset.
      class GoogleAdsSearchads360V0CommonCallToActionAsset
        include Google::Apis::Core::Hashable
      
        # Call to action.
        # Corresponds to the JSON property `callToAction`
        # @return [String]
        attr_accessor :call_to_action
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @call_to_action = args[:call_to_action] if args.key?(:call_to_action)
        end
      end
      
      # A mapping that can be used by custom parameter tags in a `
      # tracking_url_template`, `final_urls`, or `mobile_final_urls`.
      class GoogleAdsSearchads360V0CommonCustomParameter
        include Google::Apis::Core::Hashable
      
        # The key matching the parameter tag name.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The value to be substituted.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A device criterion.
      class GoogleAdsSearchads360V0CommonDeviceInfo
        include Google::Apis::Core::Hashable
      
        # Type of the device.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # An automated bidding strategy that raises bids for clicks that seem more
      # likely to lead to a conversion and lowers them for clicks where they seem less
      # likely. This bidding strategy is deprecated and cannot be created anymore. Use
      # ManualCpc with enhanced_cpc_enabled set to true for equivalent functionality.
      class GoogleAdsSearchads360V0CommonEnhancedCpc
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A rule specifying the maximum number of times an ad (or some set of ads) can
      # be shown to a user over a particular time period.
      class GoogleAdsSearchads360V0CommonFrequencyCapEntry
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A gender criterion.
      class GoogleAdsSearchads360V0CommonGenderInfo
        include Google::Apis::Core::Hashable
      
        # Type of the gender.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # An Image asset.
      class GoogleAdsSearchads360V0CommonImageAsset
        include Google::Apis::Core::Hashable
      
        # File size of the image asset in bytes.
        # Corresponds to the JSON property `fileSize`
        # @return [Fixnum]
        attr_accessor :file_size
      
        # Metadata for an image at a certain size, either original or resized.
        # Corresponds to the JSON property `fullSize`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonImageDimension]
        attr_accessor :full_size
      
        # MIME type of the image asset.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_size = args[:file_size] if args.key?(:file_size)
          @full_size = args[:full_size] if args.key?(:full_size)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
        end
      end
      
      # Metadata for an image at a certain size, either original or resized.
      class GoogleAdsSearchads360V0CommonImageDimension
        include Google::Apis::Core::Hashable
      
        # Height of the image.
        # Corresponds to the JSON property `heightPixels`
        # @return [Fixnum]
        attr_accessor :height_pixels
      
        # A URL that returns the image with this height and width.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        # Width of the image.
        # Corresponds to the JSON property `widthPixels`
        # @return [Fixnum]
        attr_accessor :width_pixels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @height_pixels = args[:height_pixels] if args.key?(:height_pixels)
          @url = args[:url] if args.key?(:url)
          @width_pixels = args[:width_pixels] if args.key?(:width_pixels)
        end
      end
      
      # A Keyword criterion segment.
      class GoogleAdsSearchads360V0CommonKeyword
        include Google::Apis::Core::Hashable
      
        # The AdGroupCriterion resource name.
        # Corresponds to the JSON property `adGroupCriterion`
        # @return [String]
        attr_accessor :ad_group_criterion
      
        # A keyword criterion.
        # Corresponds to the JSON property `info`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonKeywordInfo]
        attr_accessor :info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_group_criterion = args[:ad_group_criterion] if args.key?(:ad_group_criterion)
          @info = args[:info] if args.key?(:info)
        end
      end
      
      # A keyword criterion.
      class GoogleAdsSearchads360V0CommonKeywordInfo
        include Google::Apis::Core::Hashable
      
        # The match type of the keyword.
        # Corresponds to the JSON property `matchType`
        # @return [String]
        attr_accessor :match_type
      
        # The text of the keyword (at most 80 characters and 10 words).
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @match_type = args[:match_type] if args.key?(:match_type)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # A language criterion.
      class GoogleAdsSearchads360V0CommonLanguageInfo
        include Google::Apis::Core::Hashable
      
        # The language constant resource name.
        # Corresponds to the JSON property `languageConstant`
        # @return [String]
        attr_accessor :language_constant
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_constant = args[:language_constant] if args.key?(:language_constant)
        end
      end
      
      # A listing group criterion.
      class GoogleAdsSearchads360V0CommonListingGroupInfo
        include Google::Apis::Core::Hashable
      
        # Type of the listing group.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A radius around a list of locations specified through a feed.
      class GoogleAdsSearchads360V0CommonLocationGroupInfo
        include Google::Apis::Core::Hashable
      
        # FeedItemSets whose FeedItems are targeted. If multiple IDs are specified, then
        # all items that appear in at least one set are targeted. This field cannot be
        # used with geo_target_constants. This is optional and can only be set in CREATE
        # operations.
        # Corresponds to the JSON property `feedItemSets`
        # @return [Array<String>]
        attr_accessor :feed_item_sets
      
        # Geo target constant(s) restricting the scope of the geographic area within the
        # feed. Currently only one geo target constant is allowed.
        # Corresponds to the JSON property `geoTargetConstants`
        # @return [Array<String>]
        attr_accessor :geo_target_constants
      
        # Distance in units specifying the radius around targeted locations. This is
        # required and must be set in CREATE operations.
        # Corresponds to the JSON property `radius`
        # @return [Fixnum]
        attr_accessor :radius
      
        # Unit of the radius. Miles and meters are supported for geo target constants.
        # Milli miles and meters are supported for feed item sets. This is required and
        # must be set in CREATE operations.
        # Corresponds to the JSON property `radiusUnits`
        # @return [String]
        attr_accessor :radius_units
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @feed_item_sets = args[:feed_item_sets] if args.key?(:feed_item_sets)
          @geo_target_constants = args[:geo_target_constants] if args.key?(:geo_target_constants)
          @radius = args[:radius] if args.key?(:radius)
          @radius_units = args[:radius_units] if args.key?(:radius_units)
        end
      end
      
      # A location criterion.
      class GoogleAdsSearchads360V0CommonLocationInfo
        include Google::Apis::Core::Hashable
      
        # The geo target constant resource name.
        # Corresponds to the JSON property `geoTargetConstant`
        # @return [String]
        attr_accessor :geo_target_constant
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @geo_target_constant = args[:geo_target_constant] if args.key?(:geo_target_constant)
        end
      end
      
      # Manual bidding strategy that allows advertiser to set the bid per advertiser-
      # specified action.
      class GoogleAdsSearchads360V0CommonManualCpa
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Manual click-based bidding where user pays per click.
      class GoogleAdsSearchads360V0CommonManualCpc
        include Google::Apis::Core::Hashable
      
        # Whether bids are to be enhanced based on conversion optimizer data.
        # Corresponds to the JSON property `enhancedCpcEnabled`
        # @return [Boolean]
        attr_accessor :enhanced_cpc_enabled
        alias_method :enhanced_cpc_enabled?, :enhanced_cpc_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enhanced_cpc_enabled = args[:enhanced_cpc_enabled] if args.key?(:enhanced_cpc_enabled)
        end
      end
      
      # Manual impression-based bidding where user pays per thousand impressions.
      class GoogleAdsSearchads360V0CommonManualCpm
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # An automated bidding strategy to help get the most conversion value for your
      # campaigns while spending your budget.
      class GoogleAdsSearchads360V0CommonMaximizeConversionValue
        include Google::Apis::Core::Hashable
      
        # Maximum bid limit that can be set by the bid strategy. The limit applies to
        # all keywords managed by the strategy. Mutable for portfolio bidding strategies
        # only.
        # Corresponds to the JSON property `cpcBidCeilingMicros`
        # @return [Fixnum]
        attr_accessor :cpc_bid_ceiling_micros
      
        # Minimum bid limit that can be set by the bid strategy. The limit applies to
        # all keywords managed by the strategy. Mutable for portfolio bidding strategies
        # only.
        # Corresponds to the JSON property `cpcBidFloorMicros`
        # @return [Fixnum]
        attr_accessor :cpc_bid_floor_micros
      
        # The target return on ad spend (ROAS) option. If set, the bid strategy will
        # maximize revenue while averaging the target return on ad spend. If the target
        # ROAS is high, the bid strategy may not be able to spend the full budget. If
        # the target ROAS is not set, the bid strategy will aim to achieve the highest
        # possible ROAS for the budget.
        # Corresponds to the JSON property `targetRoas`
        # @return [Float]
        attr_accessor :target_roas
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpc_bid_ceiling_micros = args[:cpc_bid_ceiling_micros] if args.key?(:cpc_bid_ceiling_micros)
          @cpc_bid_floor_micros = args[:cpc_bid_floor_micros] if args.key?(:cpc_bid_floor_micros)
          @target_roas = args[:target_roas] if args.key?(:target_roas)
        end
      end
      
      # An automated bidding strategy to help get the most conversions for your
      # campaigns while spending your budget.
      class GoogleAdsSearchads360V0CommonMaximizeConversions
        include Google::Apis::Core::Hashable
      
        # Maximum bid limit that can be set by the bid strategy. The limit applies to
        # all keywords managed by the strategy. Mutable for portfolio bidding strategies
        # only.
        # Corresponds to the JSON property `cpcBidCeilingMicros`
        # @return [Fixnum]
        attr_accessor :cpc_bid_ceiling_micros
      
        # Minimum bid limit that can be set by the bid strategy. The limit applies to
        # all keywords managed by the strategy. Mutable for portfolio bidding strategies
        # only.
        # Corresponds to the JSON property `cpcBidFloorMicros`
        # @return [Fixnum]
        attr_accessor :cpc_bid_floor_micros
      
        # The target cost-per-action (CPA) option. This is the average amount that you
        # would like to spend per conversion action specified in micro units of the
        # bidding strategy's currency. If set, the bid strategy will get as many
        # conversions as possible at or below the target cost-per-action. If the target
        # CPA is not set, the bid strategy will aim to achieve the lowest possible CPA
        # given the budget.
        # Corresponds to the JSON property `targetCpaMicros`
        # @return [Fixnum]
        attr_accessor :target_cpa_micros
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpc_bid_ceiling_micros = args[:cpc_bid_ceiling_micros] if args.key?(:cpc_bid_ceiling_micros)
          @cpc_bid_floor_micros = args[:cpc_bid_floor_micros] if args.key?(:cpc_bid_floor_micros)
          @target_cpa_micros = args[:target_cpa_micros] if args.key?(:target_cpa_micros)
        end
      end
      
      # Metrics data.
      class GoogleAdsSearchads360V0CommonMetrics
        include Google::Apis::Core::Hashable
      
        # The percent of your ad impressions that are shown as the very first ad above
        # the organic search results.
        # Corresponds to the JSON property `absoluteTopImpressionPercentage`
        # @return [Float]
        attr_accessor :absolute_top_impression_percentage
      
        # The total number of conversions. This includes all conversions regardless of
        # the value of include_in_conversions_metric.
        # Corresponds to the JSON property `allConversions`
        # @return [Float]
        attr_accessor :all_conversions
      
        # The total number of conversions. This includes all conversions regardless of
        # the value of include_in_conversions_metric. When this column is selected with
        # date, the values in date column means the conversion date. Details for the
        # by_conversion_date columns are available at https://support.google.com/sa360/
        # answer/9250611.
        # Corresponds to the JSON property `allConversionsByConversionDate`
        # @return [Float]
        attr_accessor :all_conversions_by_conversion_date
      
        # The number of times people clicked the "Call" button to call a store during or
        # after clicking an ad. This number doesn't include whether or not calls were
        # connected, or the duration of any calls. This metric applies to feed items
        # only.
        # Corresponds to the JSON property `allConversionsFromClickToCall`
        # @return [Float]
        attr_accessor :all_conversions_from_click_to_call
      
        # The number of times people clicked a "Get directions" button to navigate to a
        # store after clicking an ad. This metric applies to feed items only.
        # Corresponds to the JSON property `allConversionsFromDirections`
        # @return [Float]
        attr_accessor :all_conversions_from_directions
      
        # All conversions from interactions (as oppose to view through conversions)
        # divided by the number of ad interactions.
        # Corresponds to the JSON property `allConversionsFromInteractionsRate`
        # @return [Float]
        attr_accessor :all_conversions_from_interactions_rate
      
        # The value of all conversions from interactions divided by the total number of
        # interactions.
        # Corresponds to the JSON property `allConversionsFromInteractionsValuePerInteraction`
        # @return [Float]
        attr_accessor :all_conversions_from_interactions_value_per_interaction
      
        # The number of times people clicked a link to view a store's menu after
        # clicking an ad. This metric applies to feed items only.
        # Corresponds to the JSON property `allConversionsFromMenu`
        # @return [Float]
        attr_accessor :all_conversions_from_menu
      
        # The number of times people placed an order at a store after clicking an ad.
        # This metric applies to feed items only.
        # Corresponds to the JSON property `allConversionsFromOrder`
        # @return [Float]
        attr_accessor :all_conversions_from_order
      
        # The number of other conversions (for example, posting a review or saving a
        # location for a store) that occurred after people clicked an ad. This metric
        # applies to feed items only.
        # Corresponds to the JSON property `allConversionsFromOtherEngagement`
        # @return [Float]
        attr_accessor :all_conversions_from_other_engagement
      
        # Estimated number of times people visited a store after clicking an ad. This
        # metric applies to feed items only.
        # Corresponds to the JSON property `allConversionsFromStoreVisit`
        # @return [Float]
        attr_accessor :all_conversions_from_store_visit
      
        # The number of times that people were taken to a store's URL after clicking an
        # ad. This metric applies to feed items only.
        # Corresponds to the JSON property `allConversionsFromStoreWebsite`
        # @return [Float]
        attr_accessor :all_conversions_from_store_website
      
        # The value of all conversions.
        # Corresponds to the JSON property `allConversionsValue`
        # @return [Float]
        attr_accessor :all_conversions_value
      
        # The value of all conversions. When this column is selected with date, the
        # values in date column means the conversion date. Details for the
        # by_conversion_date columns are available at https://support.google.com/sa360/
        # answer/9250611.
        # Corresponds to the JSON property `allConversionsValueByConversionDate`
        # @return [Float]
        attr_accessor :all_conversions_value_by_conversion_date
      
        # The value of all conversions divided by the total cost of ad interactions (
        # such as clicks for text ads or views for video ads).
        # Corresponds to the JSON property `allConversionsValuePerCost`
        # @return [Float]
        attr_accessor :all_conversions_value_per_cost
      
        # The average amount you pay per interaction. This amount is the total cost of
        # your ads divided by the total number of interactions.
        # Corresponds to the JSON property `averageCost`
        # @return [Float]
        attr_accessor :average_cost
      
        # The total cost of all clicks divided by the total number of clicks received.
        # This metric is a monetary value and returned in the customer's currency by
        # default. See the metrics_currency parameter at https://developers.google.com/
        # search-ads/reporting/query/query-structure#parameters_clause
        # Corresponds to the JSON property `averageCpc`
        # @return [Float]
        attr_accessor :average_cpc
      
        # Average cost-per-thousand impressions (CPM). This metric is a monetary value
        # and returned in the customer's currency by default. See the metrics_currency
        # parameter at https://developers.google.com/search-ads/reporting/query/query-
        # structure#parameters_clause
        # Corresponds to the JSON property `averageCpm`
        # @return [Float]
        attr_accessor :average_cpm
      
        # The number of clicks.
        # Corresponds to the JSON property `clicks`
        # @return [Fixnum]
        attr_accessor :clicks
      
        # The number of client account conversions. This only includes conversion
        # actions which include_in_client_account_conversions_metric attribute is set to
        # true. If you use conversion-based bidding, your bid strategies will optimize
        # for these conversions.
        # Corresponds to the JSON property `clientAccountConversions`
        # @return [Float]
        attr_accessor :client_account_conversions
      
        # The value of client account conversions. This only includes conversion actions
        # which include_in_client_account_conversions_metric attribute is set to true.
        # If you use conversion-based bidding, your bid strategies will optimize for
        # these conversions.
        # Corresponds to the JSON property `clientAccountConversionsValue`
        # @return [Float]
        attr_accessor :client_account_conversions_value
      
        # Client account cross-sell cost of goods sold (COGS) is the total cost of
        # products sold as a result of advertising a different product. How it works:
        # You report conversions with cart data for completed purchases on your website.
        # If the ad that was interacted with before the purchase has an associated
        # product (see Shopping Ads) then this product is considered the advertised
        # product. Any product included in the order the customer places is a sold
        # product. If these products don't match then this is considered cross-sell.
        # Cross-sell cost of goods sold is the total cost of the products sold that
        # weren't advertised. Example: Someone clicked on a Shopping ad for a hat then
        # bought the same hat and a shirt. The hat has a cost of goods sold value of $3,
        # the shirt has a cost of goods sold value of $5. The cross-sell cost of goods
        # sold for this order is $5. This metric is only available if you report
        # conversions with cart data. This metric is a monetary value and returned in
        # the customer's currency by default. See the metrics_currency parameter at
        # https://developers.google.com/search-ads/reporting/query/query-structure#
        # parameters_clause
        # Corresponds to the JSON property `clientAccountCrossSellCostOfGoodsSoldMicros`
        # @return [Fixnum]
        attr_accessor :client_account_cross_sell_cost_of_goods_sold_micros
      
        # Client account cross-sell gross profit is the profit you made from products
        # sold as a result of advertising a different product, minus cost of goods sold (
        # COGS). How it works: You report conversions with cart data for completed
        # purchases on your website. If the ad that was interacted with before the
        # purchase has an associated product (see Shopping Ads) then this product is
        # considered the advertised product. Any product included in the purchase is a
        # sold product. If these products don't match then this is considered cross-sell.
        # Cross-sell gross profit is the revenue you made from cross-sell attributed to
        # your ads minus the cost of the goods sold. Example: Someone clicked on a
        # Shopping ad for a hat then bought the same hat and a shirt. The shirt is
        # priced $20 and has a cost of goods sold value of $5. The cross-sell gross
        # profit of this order is $15 = $20 - $5. This metric is only available if you
        # report conversions with cart data. This metric is a monetary value and
        # returned in the customer's currency by default. See the metrics_currency
        # parameter at https://developers.google.com/search-ads/reporting/query/query-
        # structure#parameters_clause
        # Corresponds to the JSON property `clientAccountCrossSellGrossProfitMicros`
        # @return [Fixnum]
        attr_accessor :client_account_cross_sell_gross_profit_micros
      
        # Client account cross-sell revenue is the total amount you made from products
        # sold as a result of advertising a different product. How it works: You report
        # conversions with cart data for completed purchases on your website. If the ad
        # that was interacted with before the purchase has an associated product (see
        # Shopping Ads) then this product is considered the advertised product. Any
        # product included in the order the customer places is a sold product. If these
        # products don't match then this is considered cross-sell. Cross-sell revenue is
        # the total value you made from cross-sell attributed to your ads. Example:
        # Someone clicked on a Shopping ad for a hat then bought the same hat and a
        # shirt. The hat is priced $10 and the shirt is priced $20. The cross-sell
        # revenue of this order is $20. This metric is only available if you report
        # conversions with cart data. This metric is a monetary value and returned in
        # the customer's currency by default. See the metrics_currency parameter at
        # https://developers.google.com/search-ads/reporting/query/query-structure#
        # parameters_clause
        # Corresponds to the JSON property `clientAccountCrossSellRevenueMicros`
        # @return [Fixnum]
        attr_accessor :client_account_cross_sell_revenue_micros
      
        # Client account cross-sell units sold is the total number of products sold as a
        # result of advertising a different product. How it works: You report
        # conversions with cart data for completed purchases on your website. If the ad
        # that was interacted with before the purchase has an associated product (see
        # Shopping Ads) then this product is considered the advertised product. Any
        # product included in the order the customer places is a sold product. If these
        # products don't match then this is considered cross-sell. Cross-sell units sold
        # is the total number of cross-sold products from all orders attributed to your
        # ads. Example: Someone clicked on a Shopping ad for a hat then bought the same
        # hat, a shirt and a jacket. The cross-sell units sold in this order is 2. This
        # metric is only available if you report conversions with cart data.
        # Corresponds to the JSON property `clientAccountCrossSellUnitsSold`
        # @return [Float]
        attr_accessor :client_account_cross_sell_units_sold
      
        # Client account lead cost of goods sold (COGS) is the total cost of products
        # sold as a result of advertising the same product. How it works: You report
        # conversions with cart data for completed purchases on your website. If the ad
        # that was interacted with has an associated product (see Shopping Ads) then
        # this product is considered the advertised product. Any product included in the
        # order the customer places is a sold product. If the advertised and sold
        # products match, then the cost of these goods is counted under lead cost of
        # goods sold. Example: Someone clicked on a Shopping ad for a hat then bought
        # the same hat and a shirt. The hat has a cost of goods sold value of $3, the
        # shirt has a cost of goods sold value of $5. The lead cost of goods sold for
        # this order is $3. This metric is only available if you report conversions with
        # cart data. This metric is a monetary value and returned in the customer's
        # currency by default. See the metrics_currency parameter at https://developers.
        # google.com/search-ads/reporting/query/query-structure#parameters_clause
        # Corresponds to the JSON property `clientAccountLeadCostOfGoodsSoldMicros`
        # @return [Fixnum]
        attr_accessor :client_account_lead_cost_of_goods_sold_micros
      
        # Client account lead gross profit is the profit you made from products sold as
        # a result of advertising the same product, minus cost of goods sold (COGS). How
        # it works: You report conversions with cart data for completed purchases on
        # your website. If the ad that was interacted with before the purchase has an
        # associated product (see Shopping Ads) then this product is considered the
        # advertised product. Any product included in the order the customer places is a
        # sold product. If the advertised and sold products match, then the revenue you
        # made from these sales minus the cost of goods sold is your lead gross profit.
        # Example: Someone clicked on a Shopping ad for a hat then bought the same hat
        # and a shirt. The hat is priced $10 and has a cost of goods sold value of $3.
        # The lead gross profit of this order is $7 = $10 - $3. This metric is only
        # available if you report conversions with cart data. This metric is a monetary
        # value and returned in the customer's currency by default. See the
        # metrics_currency parameter at https://developers.google.com/search-ads/
        # reporting/query/query-structure#parameters_clause
        # Corresponds to the JSON property `clientAccountLeadGrossProfitMicros`
        # @return [Fixnum]
        attr_accessor :client_account_lead_gross_profit_micros
      
        # Client account lead revenue is the total amount you made from products sold as
        # a result of advertising the same product. How it works: You report conversions
        # with cart data for completed purchases on your website. If the ad that was
        # interacted with before the purchase has an associated product (see Shopping
        # Ads) then this product is considered the advertised product. Any product
        # included in the order the customer places is a sold product. If the advertised
        # and sold products match, then the total value you made from the sales of these
        # products is shown under lead revenue. Example: Someone clicked on a Shopping
        # ad for a hat then bought the same hat and a shirt. The hat is priced $10 and
        # the shirt is priced $20. The lead revenue of this order is $10. This metric is
        # only available if you report conversions with cart data. This metric is a
        # monetary value and returned in the customer's currency by default. See the
        # metrics_currency parameter at https://developers.google.com/search-ads/
        # reporting/query/query-structure#parameters_clause
        # Corresponds to the JSON property `clientAccountLeadRevenueMicros`
        # @return [Fixnum]
        attr_accessor :client_account_lead_revenue_micros
      
        # Client account lead units sold is the total number of products sold as a
        # result of advertising the same product. How it works: You report conversions
        # with cart data for completed purchases on your website. If the ad that was
        # interacted with before the purchase has an associated product (see Shopping
        # Ads) then this product is considered the advertised product. Any product
        # included in the order the customer places is a sold product. If the advertised
        # and sold products match, then the total number of these products sold is shown
        # under lead units sold. Example: Someone clicked on a Shopping ad for a hat
        # then bought the same hat, a shirt and a jacket. The lead units sold in this
        # order is 1. This metric is only available if you report conversions with cart
        # data.
        # Corresponds to the JSON property `clientAccountLeadUnitsSold`
        # @return [Float]
        attr_accessor :client_account_lead_units_sold
      
        # The total number of view-through conversions. These happen when a customer
        # sees an image or rich media ad, then later completes a conversion on your site
        # without interacting with (for example, clicking on) another ad.
        # Corresponds to the JSON property `clientAccountViewThroughConversions`
        # @return [Fixnum]
        attr_accessor :client_account_view_through_conversions
      
        # The estimated percent of times that your ad was eligible to show on the
        # Display Network but didn't because your budget was too low. Note: Content
        # budget lost impression share is reported in the range of 0 to 0.9. Any value
        # above 0.9 is reported as 0.9001.
        # Corresponds to the JSON property `contentBudgetLostImpressionShare`
        # @return [Float]
        attr_accessor :content_budget_lost_impression_share
      
        # The impressions you've received on the Display Network divided by the
        # estimated number of impressions you were eligible to receive. Note: Content
        # impression share is reported in the range of 0.1 to 1. Any value below 0.1 is
        # reported as 0.0999.
        # Corresponds to the JSON property `contentImpressionShare`
        # @return [Float]
        attr_accessor :content_impression_share
      
        # The estimated percentage of impressions on the Display Network that your ads
        # didn't receive due to poor Ad Rank. Note: Content rank lost impression share
        # is reported in the range of 0 to 0.9. Any value above 0.9 is reported as 0.
        # 9001.
        # Corresponds to the JSON property `contentRankLostImpressionShare`
        # @return [Float]
        attr_accessor :content_rank_lost_impression_share
      
        # The number of conversions. This only includes conversion actions which
        # include_in_conversions_metric attribute is set to true. If you use conversion-
        # based bidding, your bid strategies will optimize for these conversions.
        # Corresponds to the JSON property `conversions`
        # @return [Float]
        attr_accessor :conversions
      
        # The sum of conversions by conversion date for biddable conversion types. Can
        # be fractional due to attribution modeling. When this column is selected with
        # date, the values in date column means the conversion date.
        # Corresponds to the JSON property `conversionsByConversionDate`
        # @return [Float]
        attr_accessor :conversions_by_conversion_date
      
        # Average biddable conversions (from interaction) per conversion eligible
        # interaction. Shows how often, on average, an ad interaction leads to a
        # biddable conversion.
        # Corresponds to the JSON property `conversionsFromInteractionsRate`
        # @return [Float]
        attr_accessor :conversions_from_interactions_rate
      
        # The value of conversions from interactions divided by the number of ad
        # interactions. This only includes conversion actions which
        # include_in_conversions_metric attribute is set to true. If you use conversion-
        # based bidding, your bid strategies will optimize for these conversions.
        # Corresponds to the JSON property `conversionsFromInteractionsValuePerInteraction`
        # @return [Float]
        attr_accessor :conversions_from_interactions_value_per_interaction
      
        # The sum of conversion values for the conversions included in the "conversions"
        # field. This metric is useful only if you entered a value for your conversion
        # actions.
        # Corresponds to the JSON property `conversionsValue`
        # @return [Float]
        attr_accessor :conversions_value
      
        # The sum of biddable conversions value by conversion date. When this column is
        # selected with date, the values in date column means the conversion date.
        # Corresponds to the JSON property `conversionsValueByConversionDate`
        # @return [Float]
        attr_accessor :conversions_value_by_conversion_date
      
        # The value of biddable conversion divided by the total cost of conversion
        # eligible interactions.
        # Corresponds to the JSON property `conversionsValuePerCost`
        # @return [Float]
        attr_accessor :conversions_value_per_cost
      
        # The sum of your cost-per-click (CPC) and cost-per-thousand impressions (CPM)
        # costs during this period. This metric is a monetary value and returned in the
        # customer's currency by default. See the metrics_currency parameter at https://
        # developers.google.com/search-ads/reporting/query/query-structure#
        # parameters_clause
        # Corresponds to the JSON property `costMicros`
        # @return [Fixnum]
        attr_accessor :cost_micros
      
        # The cost of ad interactions divided by all conversions.
        # Corresponds to the JSON property `costPerAllConversions`
        # @return [Float]
        attr_accessor :cost_per_all_conversions
      
        # Average conversion eligible cost per biddable conversion.
        # Corresponds to the JSON property `costPerConversion`
        # @return [Float]
        attr_accessor :cost_per_conversion
      
        # The cost of ad interactions divided by current model attributed conversions.
        # This only includes conversion actions which include_in_conversions_metric
        # attribute is set to true. If you use conversion-based bidding, your bid
        # strategies will optimize for these conversions.
        # Corresponds to the JSON property `costPerCurrentModelAttributedConversion`
        # @return [Float]
        attr_accessor :cost_per_current_model_attributed_conversion
      
        # Conversions from when a customer clicks on an ad on one device, then converts
        # on a different device or browser. Cross-device conversions are already
        # included in all_conversions.
        # Corresponds to the JSON property `crossDeviceConversions`
        # @return [Float]
        attr_accessor :cross_device_conversions
      
        # The sum of the value of cross-device conversions.
        # Corresponds to the JSON property `crossDeviceConversionsValue`
        # @return [Float]
        attr_accessor :cross_device_conversions_value
      
        # Cross-sell cost of goods sold (COGS) is the total cost of products sold as a
        # result of advertising a different product. How it works: You report
        # conversions with cart data for completed purchases on your website. If the ad
        # that was interacted with before the purchase has an associated product (see
        # Shopping Ads) then this product is considered the advertised product. Any
        # product included in the order the customer places is a sold product. If these
        # products don't match then this is considered cross-sell. Cross-sell cost of
        # goods sold is the total cost of the products sold that weren't advertised.
        # Example: Someone clicked on a Shopping ad for a hat then bought the same hat
        # and a shirt. The hat has a cost of goods sold value of $3, the shirt has a
        # cost of goods sold value of $5. The cross-sell cost of goods sold for this
        # order is $5. This metric is only available if you report conversions with cart
        # data. This metric is a monetary value and returned in the customer's currency
        # by default. See the metrics_currency parameter at https://developers.google.
        # com/search-ads/reporting/query/query-structure#parameters_clause
        # Corresponds to the JSON property `crossSellCostOfGoodsSoldMicros`
        # @return [Fixnum]
        attr_accessor :cross_sell_cost_of_goods_sold_micros
      
        # Cross-sell gross profit is the profit you made from products sold as a result
        # of advertising a different product, minus cost of goods sold (COGS). How it
        # works: You report conversions with cart data for completed purchases on your
        # website. If the ad that was interacted with before the purchase has an
        # associated product (see Shopping Ads) then this product is considered the
        # advertised product. Any product included in the purchase is a sold product. If
        # these products don't match then this is considered cross-sell. Cross-sell
        # gross profit is the revenue you made from cross-sell attributed to your ads
        # minus the cost of the goods sold. Example: Someone clicked on a Shopping ad
        # for a hat then bought the same hat and a shirt. The shirt is priced $20 and
        # has a cost of goods sold value of $5. The cross-sell gross profit of this
        # order is $15 = $20 - $5. This metric is only available if you report
        # conversions with cart data. This metric is a monetary value and returned in
        # the customer's currency by default. See the metrics_currency parameter at
        # https://developers.google.com/search-ads/reporting/query/query-structure#
        # parameters_clause
        # Corresponds to the JSON property `crossSellGrossProfitMicros`
        # @return [Fixnum]
        attr_accessor :cross_sell_gross_profit_micros
      
        # Cross-sell revenue is the total amount you made from products sold as a result
        # of advertising a different product. How it works: You report conversions with
        # cart data for completed purchases on your website. If the ad that was
        # interacted with before the purchase has an associated product (see Shopping
        # Ads) then this product is considered the advertised product. Any product
        # included in the order the customer places is a sold product. If these products
        # don't match then this is considered cross-sell. Cross-sell revenue is the
        # total value you made from cross-sell attributed to your ads. Example: Someone
        # clicked on a Shopping ad for a hat then bought the same hat and a shirt. The
        # hat is priced $10 and the shirt is priced $20. The cross-sell revenue of this
        # order is $20. This metric is only available if you report conversions with
        # cart data. This metric is a monetary value and returned in the customer's
        # currency by default. See the metrics_currency parameter at https://developers.
        # google.com/search-ads/reporting/query/query-structure#parameters_clause
        # Corresponds to the JSON property `crossSellRevenueMicros`
        # @return [Fixnum]
        attr_accessor :cross_sell_revenue_micros
      
        # Cross-sell units sold is the total number of products sold as a result of
        # advertising a different product. How it works: You report conversions with
        # cart data for completed purchases on your website. If the ad that was
        # interacted with before the purchase has an associated product (see Shopping
        # Ads) then this product is considered the advertised product. Any product
        # included in the order the customer places is a sold product. If these products
        # don't match then this is considered cross-sell. Cross-sell units sold is the
        # total number of cross-sold products from all orders attributed to your ads.
        # Example: Someone clicked on a Shopping ad for a hat then bought the same hat,
        # a shirt and a jacket. The cross-sell units sold in this order is 2. This
        # metric is only available if you report conversions with cart data.
        # Corresponds to the JSON property `crossSellUnitsSold`
        # @return [Float]
        attr_accessor :cross_sell_units_sold
      
        # The number of clicks your ad receives (Clicks) divided by the number of times
        # your ad is shown (Impressions).
        # Corresponds to the JSON property `ctr`
        # @return [Float]
        attr_accessor :ctr
      
        # The creative historical quality score.
        # Corresponds to the JSON property `historicalCreativeQualityScore`
        # @return [String]
        attr_accessor :historical_creative_quality_score
      
        # The quality of historical landing page experience.
        # Corresponds to the JSON property `historicalLandingPageQualityScore`
        # @return [String]
        attr_accessor :historical_landing_page_quality_score
      
        # The historical quality score.
        # Corresponds to the JSON property `historicalQualityScore`
        # @return [Fixnum]
        attr_accessor :historical_quality_score
      
        # The historical search predicted click through rate (CTR).
        # Corresponds to the JSON property `historicalSearchPredictedCtr`
        # @return [String]
        attr_accessor :historical_search_predicted_ctr
      
        # Count of how often your ad has appeared on a search results page or website on
        # the Google Network.
        # Corresponds to the JSON property `impressions`
        # @return [Fixnum]
        attr_accessor :impressions
      
        # The types of payable and free interactions.
        # Corresponds to the JSON property `interactionEventTypes`
        # @return [Array<String>]
        attr_accessor :interaction_event_types
      
        # How often people interact with your ad after it is shown to them. This is the
        # number of interactions divided by the number of times your ad is shown.
        # Corresponds to the JSON property `interactionRate`
        # @return [Float]
        attr_accessor :interaction_rate
      
        # The number of interactions. An interaction is the main user action associated
        # with an ad format-clicks for text and shopping ads, views for video ads, and
        # so on.
        # Corresponds to the JSON property `interactions`
        # @return [Fixnum]
        attr_accessor :interactions
      
        # The percentage of clicks filtered out of your total number of clicks (filtered
        # + non-filtered clicks) during the reporting period.
        # Corresponds to the JSON property `invalidClickRate`
        # @return [Float]
        attr_accessor :invalid_click_rate
      
        # Number of clicks Google considers illegitimate and doesn't charge you for.
        # Corresponds to the JSON property `invalidClicks`
        # @return [Fixnum]
        attr_accessor :invalid_clicks
      
        # Lead cost of goods sold (COGS) is the total cost of products sold as a result
        # of advertising the same product. How it works: You report conversions with
        # cart data for completed purchases on your website. If the ad that was
        # interacted with has an associated product (see Shopping Ads) then this product
        # is considered the advertised product. Any product included in the order the
        # customer places is a sold product. If the advertised and sold products match,
        # then the cost of these goods is counted under lead cost of goods sold. Example:
        # Someone clicked on a Shopping ad for a hat then bought the same hat and a
        # shirt. The hat has a cost of goods sold value of $3, the shirt has a cost of
        # goods sold value of $5. The lead cost of goods sold for this order is $3. This
        # metric is only available if you report conversions with cart data. This metric
        # is a monetary value and returned in the customer's currency by default. See
        # the metrics_currency parameter at https://developers.google.com/search-ads/
        # reporting/query/query-structure#parameters_clause
        # Corresponds to the JSON property `leadCostOfGoodsSoldMicros`
        # @return [Fixnum]
        attr_accessor :lead_cost_of_goods_sold_micros
      
        # Lead gross profit is the profit you made from products sold as a result of
        # advertising the same product, minus cost of goods sold (COGS). How it works:
        # You report conversions with cart data for completed purchases on your website.
        # If the ad that was interacted with before the purchase has an associated
        # product (see Shopping Ads) then this product is considered the advertised
        # product. Any product included in the order the customer places is a sold
        # product. If the advertised and sold products match, then the revenue you made
        # from these sales minus the cost of goods sold is your lead gross profit.
        # Example: Someone clicked on a Shopping ad for a hat then bought the same hat
        # and a shirt. The hat is priced $10 and has a cost of goods sold value of $3.
        # The lead gross profit of this order is $7 = $10 - $3. This metric is only
        # available if you report conversions with cart data. This metric is a monetary
        # value and returned in the customer's currency by default. See the
        # metrics_currency parameter at https://developers.google.com/search-ads/
        # reporting/query/query-structure#parameters_clause
        # Corresponds to the JSON property `leadGrossProfitMicros`
        # @return [Fixnum]
        attr_accessor :lead_gross_profit_micros
      
        # Lead revenue is the total amount you made from products sold as a result of
        # advertising the same product. How it works: You report conversions with cart
        # data for completed purchases on your website. If the ad that was interacted
        # with before the purchase has an associated product (see Shopping Ads) then
        # this product is considered the advertised product. Any product included in the
        # order the customer places is a sold product. If the advertised and sold
        # products match, then the total value you made from the sales of these products
        # is shown under lead revenue. Example: Someone clicked on a Shopping ad for a
        # hat then bought the same hat and a shirt. The hat is priced $10 and the shirt
        # is priced $20. The lead revenue of this order is $10. This metric is only
        # available if you report conversions with cart data. This metric is a monetary
        # value and returned in the customer's currency by default. See the
        # metrics_currency parameter at https://developers.google.com/search-ads/
        # reporting/query/query-structure#parameters_clause
        # Corresponds to the JSON property `leadRevenueMicros`
        # @return [Fixnum]
        attr_accessor :lead_revenue_micros
      
        # Lead units sold is the total number of products sold as a result of
        # advertising the same product. How it works: You report conversions with cart
        # data for completed purchases on your website. If the ad that was interacted
        # with before the purchase has an associated product (see Shopping Ads) then
        # this product is considered the advertised product. Any product included in the
        # order the customer places is a sold product. If the advertised and sold
        # products match, then the total number of these products sold is shown under
        # lead units sold. Example: Someone clicked on a Shopping ad for a hat then
        # bought the same hat, a shirt and a jacket. The lead units sold in this order
        # is 1. This metric is only available if you report conversions with cart data.
        # Corresponds to the JSON property `leadUnitsSold`
        # @return [Float]
        attr_accessor :lead_units_sold
      
        # The percentage of mobile clicks that go to a mobile-friendly page.
        # Corresponds to the JSON property `mobileFriendlyClicksPercentage`
        # @return [Float]
        attr_accessor :mobile_friendly_clicks_percentage
      
        # The percentage of the customer's Shopping or Search ad impressions that are
        # shown in the most prominent Shopping position. See https://support.google.com/
        # sa360/answer/9566729 for details. Any value below 0.1 is reported as 0.0999.
        # Corresponds to the JSON property `searchAbsoluteTopImpressionShare`
        # @return [Float]
        attr_accessor :search_absolute_top_impression_share
      
        # The number estimating how often your ad wasn't the very first ad above the
        # organic search results due to a low budget. Note: Search budget lost absolute
        # top impression share is reported in the range of 0 to 0.9. Any value above 0.9
        # is reported as 0.9001.
        # Corresponds to the JSON property `searchBudgetLostAbsoluteTopImpressionShare`
        # @return [Float]
        attr_accessor :search_budget_lost_absolute_top_impression_share
      
        # The estimated percent of times that your ad was eligible to show on the Search
        # Network but didn't because your budget was too low. Note: Search budget lost
        # impression share is reported in the range of 0 to 0.9. Any value above 0.9 is
        # reported as 0.9001.
        # Corresponds to the JSON property `searchBudgetLostImpressionShare`
        # @return [Float]
        attr_accessor :search_budget_lost_impression_share
      
        # The number estimating how often your ad didn't show anywhere above the organic
        # search results due to a low budget. Note: Search budget lost top impression
        # share is reported in the range of 0 to 0.9. Any value above 0.9 is reported as
        # 0.9001.
        # Corresponds to the JSON property `searchBudgetLostTopImpressionShare`
        # @return [Float]
        attr_accessor :search_budget_lost_top_impression_share
      
        # The number of clicks you've received on the Search Network divided by the
        # estimated number of clicks you were eligible to receive. Note: Search click
        # share is reported in the range of 0.1 to 1. Any value below 0.1 is reported as
        # 0.0999.
        # Corresponds to the JSON property `searchClickShare`
        # @return [Float]
        attr_accessor :search_click_share
      
        # The impressions you've received divided by the estimated number of impressions
        # you were eligible to receive on the Search Network for search terms that
        # matched your keywords exactly (or were close variants of your keyword),
        # regardless of your keyword match types. Note: Search exact match impression
        # share is reported in the range of 0.1 to 1. Any value below 0.1 is reported as
        # 0.0999.
        # Corresponds to the JSON property `searchExactMatchImpressionShare`
        # @return [Float]
        attr_accessor :search_exact_match_impression_share
      
        # The impressions you've received on the Search Network divided by the estimated
        # number of impressions you were eligible to receive. Note: Search impression
        # share is reported in the range of 0.1 to 1. Any value below 0.1 is reported as
        # 0.0999.
        # Corresponds to the JSON property `searchImpressionShare`
        # @return [Float]
        attr_accessor :search_impression_share
      
        # The number estimating how often your ad wasn't the very first ad above the
        # organic search results due to poor Ad Rank. Note: Search rank lost absolute
        # top impression share is reported in the range of 0 to 0.9. Any value above 0.9
        # is reported as 0.9001.
        # Corresponds to the JSON property `searchRankLostAbsoluteTopImpressionShare`
        # @return [Float]
        attr_accessor :search_rank_lost_absolute_top_impression_share
      
        # The estimated percentage of impressions on the Search Network that your ads
        # didn't receive due to poor Ad Rank. Note: Search rank lost impression share is
        # reported in the range of 0 to 0.9. Any value above 0.9 is reported as 0.9001.
        # Corresponds to the JSON property `searchRankLostImpressionShare`
        # @return [Float]
        attr_accessor :search_rank_lost_impression_share
      
        # The number estimating how often your ad didn't show anywhere above the organic
        # search results due to poor Ad Rank. Note: Search rank lost top impression
        # share is reported in the range of 0 to 0.9. Any value above 0.9 is reported as
        # 0.9001.
        # Corresponds to the JSON property `searchRankLostTopImpressionShare`
        # @return [Float]
        attr_accessor :search_rank_lost_top_impression_share
      
        # The impressions you've received in the top location (anywhere above the
        # organic search results) compared to the estimated number of impressions you
        # were eligible to receive in the top location. Note: Search top impression
        # share is reported in the range of 0.1 to 1. Any value below 0.1 is reported as
        # 0.0999.
        # Corresponds to the JSON property `searchTopImpressionShare`
        # @return [Float]
        attr_accessor :search_top_impression_share
      
        # The percent of your ad impressions that are shown anywhere above the organic
        # search results.
        # Corresponds to the JSON property `topImpressionPercentage`
        # @return [Float]
        attr_accessor :top_impression_percentage
      
        # The value of all conversions divided by the number of all conversions.
        # Corresponds to the JSON property `valuePerAllConversions`
        # @return [Float]
        attr_accessor :value_per_all_conversions
      
        # The value of all conversions divided by the number of all conversions. When
        # this column is selected with date, the values in date column means the
        # conversion date. Details for the by_conversion_date columns are available at
        # https://support.google.com/sa360/answer/9250611.
        # Corresponds to the JSON property `valuePerAllConversionsByConversionDate`
        # @return [Float]
        attr_accessor :value_per_all_conversions_by_conversion_date
      
        # The value of biddable conversion divided by the number of biddable conversions.
        # Shows how much, on average, each of the biddable conversions is worth.
        # Corresponds to the JSON property `valuePerConversion`
        # @return [Float]
        attr_accessor :value_per_conversion
      
        # Biddable conversions value by conversion date divided by biddable conversions
        # by conversion date. Shows how much, on average, each of the biddable
        # conversions is worth (by conversion date). When this column is selected with
        # date, the values in date column means the conversion date.
        # Corresponds to the JSON property `valuePerConversionsByConversionDate`
        # @return [Float]
        attr_accessor :value_per_conversions_by_conversion_date
      
        # Clicks that Search Ads 360 has successfully recorded and forwarded to an
        # advertiser's landing page.
        # Corresponds to the JSON property `visits`
        # @return [Float]
        attr_accessor :visits
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @absolute_top_impression_percentage = args[:absolute_top_impression_percentage] if args.key?(:absolute_top_impression_percentage)
          @all_conversions = args[:all_conversions] if args.key?(:all_conversions)
          @all_conversions_by_conversion_date = args[:all_conversions_by_conversion_date] if args.key?(:all_conversions_by_conversion_date)
          @all_conversions_from_click_to_call = args[:all_conversions_from_click_to_call] if args.key?(:all_conversions_from_click_to_call)
          @all_conversions_from_directions = args[:all_conversions_from_directions] if args.key?(:all_conversions_from_directions)
          @all_conversions_from_interactions_rate = args[:all_conversions_from_interactions_rate] if args.key?(:all_conversions_from_interactions_rate)
          @all_conversions_from_interactions_value_per_interaction = args[:all_conversions_from_interactions_value_per_interaction] if args.key?(:all_conversions_from_interactions_value_per_interaction)
          @all_conversions_from_menu = args[:all_conversions_from_menu] if args.key?(:all_conversions_from_menu)
          @all_conversions_from_order = args[:all_conversions_from_order] if args.key?(:all_conversions_from_order)
          @all_conversions_from_other_engagement = args[:all_conversions_from_other_engagement] if args.key?(:all_conversions_from_other_engagement)
          @all_conversions_from_store_visit = args[:all_conversions_from_store_visit] if args.key?(:all_conversions_from_store_visit)
          @all_conversions_from_store_website = args[:all_conversions_from_store_website] if args.key?(:all_conversions_from_store_website)
          @all_conversions_value = args[:all_conversions_value] if args.key?(:all_conversions_value)
          @all_conversions_value_by_conversion_date = args[:all_conversions_value_by_conversion_date] if args.key?(:all_conversions_value_by_conversion_date)
          @all_conversions_value_per_cost = args[:all_conversions_value_per_cost] if args.key?(:all_conversions_value_per_cost)
          @average_cost = args[:average_cost] if args.key?(:average_cost)
          @average_cpc = args[:average_cpc] if args.key?(:average_cpc)
          @average_cpm = args[:average_cpm] if args.key?(:average_cpm)
          @clicks = args[:clicks] if args.key?(:clicks)
          @client_account_conversions = args[:client_account_conversions] if args.key?(:client_account_conversions)
          @client_account_conversions_value = args[:client_account_conversions_value] if args.key?(:client_account_conversions_value)
          @client_account_cross_sell_cost_of_goods_sold_micros = args[:client_account_cross_sell_cost_of_goods_sold_micros] if args.key?(:client_account_cross_sell_cost_of_goods_sold_micros)
          @client_account_cross_sell_gross_profit_micros = args[:client_account_cross_sell_gross_profit_micros] if args.key?(:client_account_cross_sell_gross_profit_micros)
          @client_account_cross_sell_revenue_micros = args[:client_account_cross_sell_revenue_micros] if args.key?(:client_account_cross_sell_revenue_micros)
          @client_account_cross_sell_units_sold = args[:client_account_cross_sell_units_sold] if args.key?(:client_account_cross_sell_units_sold)
          @client_account_lead_cost_of_goods_sold_micros = args[:client_account_lead_cost_of_goods_sold_micros] if args.key?(:client_account_lead_cost_of_goods_sold_micros)
          @client_account_lead_gross_profit_micros = args[:client_account_lead_gross_profit_micros] if args.key?(:client_account_lead_gross_profit_micros)
          @client_account_lead_revenue_micros = args[:client_account_lead_revenue_micros] if args.key?(:client_account_lead_revenue_micros)
          @client_account_lead_units_sold = args[:client_account_lead_units_sold] if args.key?(:client_account_lead_units_sold)
          @client_account_view_through_conversions = args[:client_account_view_through_conversions] if args.key?(:client_account_view_through_conversions)
          @content_budget_lost_impression_share = args[:content_budget_lost_impression_share] if args.key?(:content_budget_lost_impression_share)
          @content_impression_share = args[:content_impression_share] if args.key?(:content_impression_share)
          @content_rank_lost_impression_share = args[:content_rank_lost_impression_share] if args.key?(:content_rank_lost_impression_share)
          @conversions = args[:conversions] if args.key?(:conversions)
          @conversions_by_conversion_date = args[:conversions_by_conversion_date] if args.key?(:conversions_by_conversion_date)
          @conversions_from_interactions_rate = args[:conversions_from_interactions_rate] if args.key?(:conversions_from_interactions_rate)
          @conversions_from_interactions_value_per_interaction = args[:conversions_from_interactions_value_per_interaction] if args.key?(:conversions_from_interactions_value_per_interaction)
          @conversions_value = args[:conversions_value] if args.key?(:conversions_value)
          @conversions_value_by_conversion_date = args[:conversions_value_by_conversion_date] if args.key?(:conversions_value_by_conversion_date)
          @conversions_value_per_cost = args[:conversions_value_per_cost] if args.key?(:conversions_value_per_cost)
          @cost_micros = args[:cost_micros] if args.key?(:cost_micros)
          @cost_per_all_conversions = args[:cost_per_all_conversions] if args.key?(:cost_per_all_conversions)
          @cost_per_conversion = args[:cost_per_conversion] if args.key?(:cost_per_conversion)
          @cost_per_current_model_attributed_conversion = args[:cost_per_current_model_attributed_conversion] if args.key?(:cost_per_current_model_attributed_conversion)
          @cross_device_conversions = args[:cross_device_conversions] if args.key?(:cross_device_conversions)
          @cross_device_conversions_value = args[:cross_device_conversions_value] if args.key?(:cross_device_conversions_value)
          @cross_sell_cost_of_goods_sold_micros = args[:cross_sell_cost_of_goods_sold_micros] if args.key?(:cross_sell_cost_of_goods_sold_micros)
          @cross_sell_gross_profit_micros = args[:cross_sell_gross_profit_micros] if args.key?(:cross_sell_gross_profit_micros)
          @cross_sell_revenue_micros = args[:cross_sell_revenue_micros] if args.key?(:cross_sell_revenue_micros)
          @cross_sell_units_sold = args[:cross_sell_units_sold] if args.key?(:cross_sell_units_sold)
          @ctr = args[:ctr] if args.key?(:ctr)
          @historical_creative_quality_score = args[:historical_creative_quality_score] if args.key?(:historical_creative_quality_score)
          @historical_landing_page_quality_score = args[:historical_landing_page_quality_score] if args.key?(:historical_landing_page_quality_score)
          @historical_quality_score = args[:historical_quality_score] if args.key?(:historical_quality_score)
          @historical_search_predicted_ctr = args[:historical_search_predicted_ctr] if args.key?(:historical_search_predicted_ctr)
          @impressions = args[:impressions] if args.key?(:impressions)
          @interaction_event_types = args[:interaction_event_types] if args.key?(:interaction_event_types)
          @interaction_rate = args[:interaction_rate] if args.key?(:interaction_rate)
          @interactions = args[:interactions] if args.key?(:interactions)
          @invalid_click_rate = args[:invalid_click_rate] if args.key?(:invalid_click_rate)
          @invalid_clicks = args[:invalid_clicks] if args.key?(:invalid_clicks)
          @lead_cost_of_goods_sold_micros = args[:lead_cost_of_goods_sold_micros] if args.key?(:lead_cost_of_goods_sold_micros)
          @lead_gross_profit_micros = args[:lead_gross_profit_micros] if args.key?(:lead_gross_profit_micros)
          @lead_revenue_micros = args[:lead_revenue_micros] if args.key?(:lead_revenue_micros)
          @lead_units_sold = args[:lead_units_sold] if args.key?(:lead_units_sold)
          @mobile_friendly_clicks_percentage = args[:mobile_friendly_clicks_percentage] if args.key?(:mobile_friendly_clicks_percentage)
          @search_absolute_top_impression_share = args[:search_absolute_top_impression_share] if args.key?(:search_absolute_top_impression_share)
          @search_budget_lost_absolute_top_impression_share = args[:search_budget_lost_absolute_top_impression_share] if args.key?(:search_budget_lost_absolute_top_impression_share)
          @search_budget_lost_impression_share = args[:search_budget_lost_impression_share] if args.key?(:search_budget_lost_impression_share)
          @search_budget_lost_top_impression_share = args[:search_budget_lost_top_impression_share] if args.key?(:search_budget_lost_top_impression_share)
          @search_click_share = args[:search_click_share] if args.key?(:search_click_share)
          @search_exact_match_impression_share = args[:search_exact_match_impression_share] if args.key?(:search_exact_match_impression_share)
          @search_impression_share = args[:search_impression_share] if args.key?(:search_impression_share)
          @search_rank_lost_absolute_top_impression_share = args[:search_rank_lost_absolute_top_impression_share] if args.key?(:search_rank_lost_absolute_top_impression_share)
          @search_rank_lost_impression_share = args[:search_rank_lost_impression_share] if args.key?(:search_rank_lost_impression_share)
          @search_rank_lost_top_impression_share = args[:search_rank_lost_top_impression_share] if args.key?(:search_rank_lost_top_impression_share)
          @search_top_impression_share = args[:search_top_impression_share] if args.key?(:search_top_impression_share)
          @top_impression_percentage = args[:top_impression_percentage] if args.key?(:top_impression_percentage)
          @value_per_all_conversions = args[:value_per_all_conversions] if args.key?(:value_per_all_conversions)
          @value_per_all_conversions_by_conversion_date = args[:value_per_all_conversions_by_conversion_date] if args.key?(:value_per_all_conversions_by_conversion_date)
          @value_per_conversion = args[:value_per_conversion] if args.key?(:value_per_conversion)
          @value_per_conversions_by_conversion_date = args[:value_per_conversions_by_conversion_date] if args.key?(:value_per_conversions_by_conversion_date)
          @visits = args[:visits] if args.key?(:visits)
        end
      end
      
      # An asset representing a mobile app.
      class GoogleAdsSearchads360V0CommonMobileAppAsset
        include Google::Apis::Core::Hashable
      
        # Required. A string that uniquely identifies a mobile application. It should
        # just contain the platform native id, like "com.android.ebay" for Android or "
        # 12345689" for iOS.
        # Corresponds to the JSON property `appId`
        # @return [String]
        attr_accessor :app_id
      
        # Required. The application store that distributes this specific app.
        # Corresponds to the JSON property `appStore`
        # @return [String]
        attr_accessor :app_store
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_id = args[:app_id] if args.key?(:app_id)
          @app_store = args[:app_store] if args.key?(:app_store)
        end
      end
      
      # A bidding strategy where bids are a fraction of the advertised price for some
      # good or service.
      class GoogleAdsSearchads360V0CommonPercentCpc
        include Google::Apis::Core::Hashable
      
        # Maximum bid limit that can be set by the bid strategy. This is an optional
        # field entered by the advertiser and specified in local micros. Note: A zero
        # value is interpreted in the same way as having bid_ceiling undefined.
        # Corresponds to the JSON property `cpcBidCeilingMicros`
        # @return [Fixnum]
        attr_accessor :cpc_bid_ceiling_micros
      
        # Adjusts the bid for each auction upward or downward, depending on the
        # likelihood of a conversion. Individual bids may exceed cpc_bid_ceiling_micros,
        # but the average bid amount for a campaign should not.
        # Corresponds to the JSON property `enhancedCpcEnabled`
        # @return [Boolean]
        attr_accessor :enhanced_cpc_enabled
        alias_method :enhanced_cpc_enabled?, :enhanced_cpc_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpc_bid_ceiling_micros = args[:cpc_bid_ceiling_micros] if args.key?(:cpc_bid_ceiling_micros)
          @enhanced_cpc_enabled = args[:enhanced_cpc_enabled] if args.key?(:enhanced_cpc_enabled)
        end
      end
      
      # Settings for Real-Time Bidding, a feature only available for campaigns
      # targeting the Ad Exchange network.
      class GoogleAdsSearchads360V0CommonRealTimeBiddingSetting
        include Google::Apis::Core::Hashable
      
        # Whether the campaign is opted in to real-time bidding.
        # Corresponds to the JSON property `optIn`
        # @return [Boolean]
        attr_accessor :opt_in
        alias_method :opt_in?, :opt_in
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @opt_in = args[:opt_in] if args.key?(:opt_in)
        end
      end
      
      # An expanded dynamic search ad.
      class GoogleAdsSearchads360V0CommonSearchAds360ExpandedDynamicSearchAdInfo
        include Google::Apis::Core::Hashable
      
        # The tracking id of the ad.
        # Corresponds to the JSON property `adTrackingId`
        # @return [Fixnum]
        attr_accessor :ad_tracking_id
      
        # The first line of the ad's description.
        # Corresponds to the JSON property `description1`
        # @return [String]
        attr_accessor :description1
      
        # The second line of the ad's description.
        # Corresponds to the JSON property `description2`
        # @return [String]
        attr_accessor :description2
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_tracking_id = args[:ad_tracking_id] if args.key?(:ad_tracking_id)
          @description1 = args[:description1] if args.key?(:description1)
          @description2 = args[:description2] if args.key?(:description2)
        end
      end
      
      # A Search Ads 360 expanded text ad.
      class GoogleAdsSearchads360V0CommonSearchAds360ExpandedTextAdInfo
        include Google::Apis::Core::Hashable
      
        # The tracking id of the ad.
        # Corresponds to the JSON property `adTrackingId`
        # @return [Fixnum]
        attr_accessor :ad_tracking_id
      
        # The first line of the ad's description.
        # Corresponds to the JSON property `description1`
        # @return [String]
        attr_accessor :description1
      
        # The second line of the ad's description.
        # Corresponds to the JSON property `description2`
        # @return [String]
        attr_accessor :description2
      
        # The headline of the ad.
        # Corresponds to the JSON property `headline`
        # @return [String]
        attr_accessor :headline
      
        # The second headline of the ad.
        # Corresponds to the JSON property `headline2`
        # @return [String]
        attr_accessor :headline2
      
        # The third headline of the ad.
        # Corresponds to the JSON property `headline3`
        # @return [String]
        attr_accessor :headline3
      
        # Text appended to the auto-generated visible URL with a delimiter.
        # Corresponds to the JSON property `path1`
        # @return [String]
        attr_accessor :path1
      
        # Text appended to path1 with a delimiter.
        # Corresponds to the JSON property `path2`
        # @return [String]
        attr_accessor :path2
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_tracking_id = args[:ad_tracking_id] if args.key?(:ad_tracking_id)
          @description1 = args[:description1] if args.key?(:description1)
          @description2 = args[:description2] if args.key?(:description2)
          @headline = args[:headline] if args.key?(:headline)
          @headline2 = args[:headline2] if args.key?(:headline2)
          @headline3 = args[:headline3] if args.key?(:headline3)
          @path1 = args[:path1] if args.key?(:path1)
          @path2 = args[:path2] if args.key?(:path2)
        end
      end
      
      # A Search Ads 360 product ad.
      class GoogleAdsSearchads360V0CommonSearchAds360ProductAdInfo
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A Search Ads 360 responsive search ad.
      class GoogleAdsSearchads360V0CommonSearchAds360ResponsiveSearchAdInfo
        include Google::Apis::Core::Hashable
      
        # The tracking id of the ad.
        # Corresponds to the JSON property `adTrackingId`
        # @return [Fixnum]
        attr_accessor :ad_tracking_id
      
        # Text appended to the auto-generated visible URL with a delimiter.
        # Corresponds to the JSON property `path1`
        # @return [String]
        attr_accessor :path1
      
        # Text appended to path1 with a delimiter.
        # Corresponds to the JSON property `path2`
        # @return [String]
        attr_accessor :path2
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_tracking_id = args[:ad_tracking_id] if args.key?(:ad_tracking_id)
          @path1 = args[:path1] if args.key?(:path1)
          @path2 = args[:path2] if args.key?(:path2)
        end
      end
      
      # A Search Ads 360 text ad.
      class GoogleAdsSearchads360V0CommonSearchAds360TextAdInfo
        include Google::Apis::Core::Hashable
      
        # The tracking id of the ad.
        # Corresponds to the JSON property `adTrackingId`
        # @return [Fixnum]
        attr_accessor :ad_tracking_id
      
        # The first line of the ad's description.
        # Corresponds to the JSON property `description1`
        # @return [String]
        attr_accessor :description1
      
        # The second line of the ad's description.
        # Corresponds to the JSON property `description2`
        # @return [String]
        attr_accessor :description2
      
        # The displayed mobile URL of the ad.
        # Corresponds to the JSON property `displayMobileUrl`
        # @return [String]
        attr_accessor :display_mobile_url
      
        # The displayed URL of the ad.
        # Corresponds to the JSON property `displayUrl`
        # @return [String]
        attr_accessor :display_url
      
        # The headline of the ad.
        # Corresponds to the JSON property `headline`
        # @return [String]
        attr_accessor :headline
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_tracking_id = args[:ad_tracking_id] if args.key?(:ad_tracking_id)
          @description1 = args[:description1] if args.key?(:description1)
          @description2 = args[:description2] if args.key?(:description2)
          @display_mobile_url = args[:display_mobile_url] if args.key?(:display_mobile_url)
          @display_url = args[:display_url] if args.key?(:display_url)
          @headline = args[:headline] if args.key?(:headline)
        end
      end
      
      # Segment only fields.
      class GoogleAdsSearchads360V0CommonSegments
        include Google::Apis::Core::Hashable
      
        # Ad network type.
        # Corresponds to the JSON property `adNetworkType`
        # @return [String]
        attr_accessor :ad_network_type
      
        # An AssetInteractionTarget segment.
        # Corresponds to the JSON property `assetInteractionTarget`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonAssetInteractionTarget]
        attr_accessor :asset_interaction_target
      
        # Resource name of the conversion action.
        # Corresponds to the JSON property `conversionAction`
        # @return [String]
        attr_accessor :conversion_action
      
        # Conversion action category.
        # Corresponds to the JSON property `conversionActionCategory`
        # @return [String]
        attr_accessor :conversion_action_category
      
        # Conversion action name.
        # Corresponds to the JSON property `conversionActionName`
        # @return [String]
        attr_accessor :conversion_action_name
      
        # Date to which metrics apply. yyyy-MM-dd format, for example, 2018-04-17.
        # Corresponds to the JSON property `date`
        # @return [String]
        attr_accessor :date
      
        # Day of the week, for example, MONDAY.
        # Corresponds to the JSON property `dayOfWeek`
        # @return [String]
        attr_accessor :day_of_week
      
        # Device to which metrics apply.
        # Corresponds to the JSON property `device`
        # @return [String]
        attr_accessor :device
      
        # A Keyword criterion segment.
        # Corresponds to the JSON property `keyword`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonKeyword]
        attr_accessor :keyword
      
        # Month as represented by the date of the first day of a month. Formatted as
        # yyyy-MM-dd.
        # Corresponds to the JSON property `month`
        # @return [String]
        attr_accessor :month
      
        # Bidding category (level 1) of the product.
        # Corresponds to the JSON property `productBiddingCategoryLevel1`
        # @return [String]
        attr_accessor :product_bidding_category_level1
      
        # Bidding category (level 2) of the product.
        # Corresponds to the JSON property `productBiddingCategoryLevel2`
        # @return [String]
        attr_accessor :product_bidding_category_level2
      
        # Bidding category (level 3) of the product.
        # Corresponds to the JSON property `productBiddingCategoryLevel3`
        # @return [String]
        attr_accessor :product_bidding_category_level3
      
        # Bidding category (level 4) of the product.
        # Corresponds to the JSON property `productBiddingCategoryLevel4`
        # @return [String]
        attr_accessor :product_bidding_category_level4
      
        # Bidding category (level 5) of the product.
        # Corresponds to the JSON property `productBiddingCategoryLevel5`
        # @return [String]
        attr_accessor :product_bidding_category_level5
      
        # Brand of the product.
        # Corresponds to the JSON property `productBrand`
        # @return [String]
        attr_accessor :product_brand
      
        # Channel of the product.
        # Corresponds to the JSON property `productChannel`
        # @return [String]
        attr_accessor :product_channel
      
        # Channel exclusivity of the product.
        # Corresponds to the JSON property `productChannelExclusivity`
        # @return [String]
        attr_accessor :product_channel_exclusivity
      
        # Condition of the product.
        # Corresponds to the JSON property `productCondition`
        # @return [String]
        attr_accessor :product_condition
      
        # Resource name of the geo target constant for the country of sale of the
        # product.
        # Corresponds to the JSON property `productCountry`
        # @return [String]
        attr_accessor :product_country
      
        # Custom attribute 0 of the product.
        # Corresponds to the JSON property `productCustomAttribute0`
        # @return [String]
        attr_accessor :product_custom_attribute0
      
        # Custom attribute 1 of the product.
        # Corresponds to the JSON property `productCustomAttribute1`
        # @return [String]
        attr_accessor :product_custom_attribute1
      
        # Custom attribute 2 of the product.
        # Corresponds to the JSON property `productCustomAttribute2`
        # @return [String]
        attr_accessor :product_custom_attribute2
      
        # Custom attribute 3 of the product.
        # Corresponds to the JSON property `productCustomAttribute3`
        # @return [String]
        attr_accessor :product_custom_attribute3
      
        # Custom attribute 4 of the product.
        # Corresponds to the JSON property `productCustomAttribute4`
        # @return [String]
        attr_accessor :product_custom_attribute4
      
        # Item ID of the product.
        # Corresponds to the JSON property `productItemId`
        # @return [String]
        attr_accessor :product_item_id
      
        # Resource name of the language constant for the language of the product.
        # Corresponds to the JSON property `productLanguage`
        # @return [String]
        attr_accessor :product_language
      
        # Bidding category (level 1) of the product sold.
        # Corresponds to the JSON property `productSoldBiddingCategoryLevel1`
        # @return [String]
        attr_accessor :product_sold_bidding_category_level1
      
        # Bidding category (level 2) of the product sold.
        # Corresponds to the JSON property `productSoldBiddingCategoryLevel2`
        # @return [String]
        attr_accessor :product_sold_bidding_category_level2
      
        # Bidding category (level 3) of the product sold.
        # Corresponds to the JSON property `productSoldBiddingCategoryLevel3`
        # @return [String]
        attr_accessor :product_sold_bidding_category_level3
      
        # Bidding category (level 4) of the product sold.
        # Corresponds to the JSON property `productSoldBiddingCategoryLevel4`
        # @return [String]
        attr_accessor :product_sold_bidding_category_level4
      
        # Bidding category (level 5) of the product sold.
        # Corresponds to the JSON property `productSoldBiddingCategoryLevel5`
        # @return [String]
        attr_accessor :product_sold_bidding_category_level5
      
        # Brand of the product sold.
        # Corresponds to the JSON property `productSoldBrand`
        # @return [String]
        attr_accessor :product_sold_brand
      
        # Condition of the product sold.
        # Corresponds to the JSON property `productSoldCondition`
        # @return [String]
        attr_accessor :product_sold_condition
      
        # Custom attribute 0 of the product sold.
        # Corresponds to the JSON property `productSoldCustomAttribute0`
        # @return [String]
        attr_accessor :product_sold_custom_attribute0
      
        # Custom attribute 1 of the product sold.
        # Corresponds to the JSON property `productSoldCustomAttribute1`
        # @return [String]
        attr_accessor :product_sold_custom_attribute1
      
        # Custom attribute 2 of the product sold.
        # Corresponds to the JSON property `productSoldCustomAttribute2`
        # @return [String]
        attr_accessor :product_sold_custom_attribute2
      
        # Custom attribute 3 of the product sold.
        # Corresponds to the JSON property `productSoldCustomAttribute3`
        # @return [String]
        attr_accessor :product_sold_custom_attribute3
      
        # Custom attribute 4 of the product sold.
        # Corresponds to the JSON property `productSoldCustomAttribute4`
        # @return [String]
        attr_accessor :product_sold_custom_attribute4
      
        # Item ID of the product sold.
        # Corresponds to the JSON property `productSoldItemId`
        # @return [String]
        attr_accessor :product_sold_item_id
      
        # Title of the product sold.
        # Corresponds to the JSON property `productSoldTitle`
        # @return [String]
        attr_accessor :product_sold_title
      
        # Type (level 1) of the product sold.
        # Corresponds to the JSON property `productSoldTypeL1`
        # @return [String]
        attr_accessor :product_sold_type_l1
      
        # Type (level 2) of the product sold.
        # Corresponds to the JSON property `productSoldTypeL2`
        # @return [String]
        attr_accessor :product_sold_type_l2
      
        # Type (level 3) of the product sold.
        # Corresponds to the JSON property `productSoldTypeL3`
        # @return [String]
        attr_accessor :product_sold_type_l3
      
        # Type (level 4) of the product sold.
        # Corresponds to the JSON property `productSoldTypeL4`
        # @return [String]
        attr_accessor :product_sold_type_l4
      
        # Type (level 5) of the product sold.
        # Corresponds to the JSON property `productSoldTypeL5`
        # @return [String]
        attr_accessor :product_sold_type_l5
      
        # Store ID of the product.
        # Corresponds to the JSON property `productStoreId`
        # @return [String]
        attr_accessor :product_store_id
      
        # Title of the product.
        # Corresponds to the JSON property `productTitle`
        # @return [String]
        attr_accessor :product_title
      
        # Type (level 1) of the product.
        # Corresponds to the JSON property `productTypeL1`
        # @return [String]
        attr_accessor :product_type_l1
      
        # Type (level 2) of the product.
        # Corresponds to the JSON property `productTypeL2`
        # @return [String]
        attr_accessor :product_type_l2
      
        # Type (level 3) of the product.
        # Corresponds to the JSON property `productTypeL3`
        # @return [String]
        attr_accessor :product_type_l3
      
        # Type (level 4) of the product.
        # Corresponds to the JSON property `productTypeL4`
        # @return [String]
        attr_accessor :product_type_l4
      
        # Type (level 5) of the product.
        # Corresponds to the JSON property `productTypeL5`
        # @return [String]
        attr_accessor :product_type_l5
      
        # Quarter as represented by the date of the first day of a quarter. Uses the
        # calendar year for quarters, for example, the second quarter of 2018 starts on
        # 2018-04-01. Formatted as yyyy-MM-dd.
        # Corresponds to the JSON property `quarter`
        # @return [String]
        attr_accessor :quarter
      
        # Week as defined as Monday through Sunday, and represented by the date of
        # Monday. Formatted as yyyy-MM-dd.
        # Corresponds to the JSON property `week`
        # @return [String]
        attr_accessor :week
      
        # Year, formatted as yyyy.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_network_type = args[:ad_network_type] if args.key?(:ad_network_type)
          @asset_interaction_target = args[:asset_interaction_target] if args.key?(:asset_interaction_target)
          @conversion_action = args[:conversion_action] if args.key?(:conversion_action)
          @conversion_action_category = args[:conversion_action_category] if args.key?(:conversion_action_category)
          @conversion_action_name = args[:conversion_action_name] if args.key?(:conversion_action_name)
          @date = args[:date] if args.key?(:date)
          @day_of_week = args[:day_of_week] if args.key?(:day_of_week)
          @device = args[:device] if args.key?(:device)
          @keyword = args[:keyword] if args.key?(:keyword)
          @month = args[:month] if args.key?(:month)
          @product_bidding_category_level1 = args[:product_bidding_category_level1] if args.key?(:product_bidding_category_level1)
          @product_bidding_category_level2 = args[:product_bidding_category_level2] if args.key?(:product_bidding_category_level2)
          @product_bidding_category_level3 = args[:product_bidding_category_level3] if args.key?(:product_bidding_category_level3)
          @product_bidding_category_level4 = args[:product_bidding_category_level4] if args.key?(:product_bidding_category_level4)
          @product_bidding_category_level5 = args[:product_bidding_category_level5] if args.key?(:product_bidding_category_level5)
          @product_brand = args[:product_brand] if args.key?(:product_brand)
          @product_channel = args[:product_channel] if args.key?(:product_channel)
          @product_channel_exclusivity = args[:product_channel_exclusivity] if args.key?(:product_channel_exclusivity)
          @product_condition = args[:product_condition] if args.key?(:product_condition)
          @product_country = args[:product_country] if args.key?(:product_country)
          @product_custom_attribute0 = args[:product_custom_attribute0] if args.key?(:product_custom_attribute0)
          @product_custom_attribute1 = args[:product_custom_attribute1] if args.key?(:product_custom_attribute1)
          @product_custom_attribute2 = args[:product_custom_attribute2] if args.key?(:product_custom_attribute2)
          @product_custom_attribute3 = args[:product_custom_attribute3] if args.key?(:product_custom_attribute3)
          @product_custom_attribute4 = args[:product_custom_attribute4] if args.key?(:product_custom_attribute4)
          @product_item_id = args[:product_item_id] if args.key?(:product_item_id)
          @product_language = args[:product_language] if args.key?(:product_language)
          @product_sold_bidding_category_level1 = args[:product_sold_bidding_category_level1] if args.key?(:product_sold_bidding_category_level1)
          @product_sold_bidding_category_level2 = args[:product_sold_bidding_category_level2] if args.key?(:product_sold_bidding_category_level2)
          @product_sold_bidding_category_level3 = args[:product_sold_bidding_category_level3] if args.key?(:product_sold_bidding_category_level3)
          @product_sold_bidding_category_level4 = args[:product_sold_bidding_category_level4] if args.key?(:product_sold_bidding_category_level4)
          @product_sold_bidding_category_level5 = args[:product_sold_bidding_category_level5] if args.key?(:product_sold_bidding_category_level5)
          @product_sold_brand = args[:product_sold_brand] if args.key?(:product_sold_brand)
          @product_sold_condition = args[:product_sold_condition] if args.key?(:product_sold_condition)
          @product_sold_custom_attribute0 = args[:product_sold_custom_attribute0] if args.key?(:product_sold_custom_attribute0)
          @product_sold_custom_attribute1 = args[:product_sold_custom_attribute1] if args.key?(:product_sold_custom_attribute1)
          @product_sold_custom_attribute2 = args[:product_sold_custom_attribute2] if args.key?(:product_sold_custom_attribute2)
          @product_sold_custom_attribute3 = args[:product_sold_custom_attribute3] if args.key?(:product_sold_custom_attribute3)
          @product_sold_custom_attribute4 = args[:product_sold_custom_attribute4] if args.key?(:product_sold_custom_attribute4)
          @product_sold_item_id = args[:product_sold_item_id] if args.key?(:product_sold_item_id)
          @product_sold_title = args[:product_sold_title] if args.key?(:product_sold_title)
          @product_sold_type_l1 = args[:product_sold_type_l1] if args.key?(:product_sold_type_l1)
          @product_sold_type_l2 = args[:product_sold_type_l2] if args.key?(:product_sold_type_l2)
          @product_sold_type_l3 = args[:product_sold_type_l3] if args.key?(:product_sold_type_l3)
          @product_sold_type_l4 = args[:product_sold_type_l4] if args.key?(:product_sold_type_l4)
          @product_sold_type_l5 = args[:product_sold_type_l5] if args.key?(:product_sold_type_l5)
          @product_store_id = args[:product_store_id] if args.key?(:product_store_id)
          @product_title = args[:product_title] if args.key?(:product_title)
          @product_type_l1 = args[:product_type_l1] if args.key?(:product_type_l1)
          @product_type_l2 = args[:product_type_l2] if args.key?(:product_type_l2)
          @product_type_l3 = args[:product_type_l3] if args.key?(:product_type_l3)
          @product_type_l4 = args[:product_type_l4] if args.key?(:product_type_l4)
          @product_type_l5 = args[:product_type_l5] if args.key?(:product_type_l5)
          @quarter = args[:quarter] if args.key?(:quarter)
          @week = args[:week] if args.key?(:week)
          @year = args[:year] if args.key?(:year)
        end
      end
      
      # An automated bid strategy that sets bids to help get as many conversions as
      # possible at the target cost-per-acquisition (CPA) you set.
      class GoogleAdsSearchads360V0CommonTargetCpa
        include Google::Apis::Core::Hashable
      
        # Maximum bid limit that can be set by the bid strategy. The limit applies to
        # all keywords managed by the strategy. This should only be set for portfolio
        # bid strategies.
        # Corresponds to the JSON property `cpcBidCeilingMicros`
        # @return [Fixnum]
        attr_accessor :cpc_bid_ceiling_micros
      
        # Minimum bid limit that can be set by the bid strategy. The limit applies to
        # all keywords managed by the strategy. This should only be set for portfolio
        # bid strategies.
        # Corresponds to the JSON property `cpcBidFloorMicros`
        # @return [Fixnum]
        attr_accessor :cpc_bid_floor_micros
      
        # Average CPA target. This target should be greater than or equal to minimum
        # billable unit based on the currency for the account.
        # Corresponds to the JSON property `targetCpaMicros`
        # @return [Fixnum]
        attr_accessor :target_cpa_micros
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpc_bid_ceiling_micros = args[:cpc_bid_ceiling_micros] if args.key?(:cpc_bid_ceiling_micros)
          @cpc_bid_floor_micros = args[:cpc_bid_floor_micros] if args.key?(:cpc_bid_floor_micros)
          @target_cpa_micros = args[:target_cpa_micros] if args.key?(:target_cpa_micros)
        end
      end
      
      # Target CPM (cost per thousand impressions) is an automated bidding strategy
      # that sets bids to optimize performance given the target CPM you set.
      class GoogleAdsSearchads360V0CommonTargetCpm
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # An automated bidding strategy that sets bids so that a certain percentage of
      # search ads are shown at the top of the first page (or other targeted location).
      class GoogleAdsSearchads360V0CommonTargetImpressionShare
        include Google::Apis::Core::Hashable
      
        # The highest CPC bid the automated bidding system is permitted to specify. This
        # is a required field entered by the advertiser that sets the ceiling and
        # specified in local micros.
        # Corresponds to the JSON property `cpcBidCeilingMicros`
        # @return [Fixnum]
        attr_accessor :cpc_bid_ceiling_micros
      
        # The targeted location on the search results page.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The chosen fraction of ads to be shown in the targeted location in micros. For
        # example, 1% equals 10,000.
        # Corresponds to the JSON property `locationFractionMicros`
        # @return [Fixnum]
        attr_accessor :location_fraction_micros
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpc_bid_ceiling_micros = args[:cpc_bid_ceiling_micros] if args.key?(:cpc_bid_ceiling_micros)
          @location = args[:location] if args.key?(:location)
          @location_fraction_micros = args[:location_fraction_micros] if args.key?(:location_fraction_micros)
        end
      end
      
      # An automated bidding strategy that sets bids based on the target fraction of
      # auctions where the advertiser should outrank a specific competitor. This
      # strategy is deprecated.
      class GoogleAdsSearchads360V0CommonTargetOutrankShare
        include Google::Apis::Core::Hashable
      
        # Maximum bid limit that can be set by the bid strategy. The limit applies to
        # all keywords managed by the strategy.
        # Corresponds to the JSON property `cpcBidCeilingMicros`
        # @return [Fixnum]
        attr_accessor :cpc_bid_ceiling_micros
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpc_bid_ceiling_micros = args[:cpc_bid_ceiling_micros] if args.key?(:cpc_bid_ceiling_micros)
        end
      end
      
      # The list of per-targeting-dimension targeting settings.
      class GoogleAdsSearchads360V0CommonTargetRestriction
        include Google::Apis::Core::Hashable
      
        # Indicates whether to restrict your ads to show only for the criteria you have
        # selected for this targeting_dimension, or to target all values for this
        # targeting_dimension and show ads based on your targeting in other
        # TargetingDimensions. A value of `true` means that these criteria will only
        # apply bid modifiers, and not affect targeting. A value of `false` means that
        # these criteria will restrict targeting as well as applying bid modifiers.
        # Corresponds to the JSON property `bidOnly`
        # @return [Boolean]
        attr_accessor :bid_only
        alias_method :bid_only?, :bid_only
      
        # The targeting dimension that these settings apply to.
        # Corresponds to the JSON property `targetingDimension`
        # @return [String]
        attr_accessor :targeting_dimension
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bid_only = args[:bid_only] if args.key?(:bid_only)
          @targeting_dimension = args[:targeting_dimension] if args.key?(:targeting_dimension)
        end
      end
      
      # An automated bidding strategy that helps you maximize revenue while averaging
      # a specific target return on ad spend (ROAS).
      class GoogleAdsSearchads360V0CommonTargetRoas
        include Google::Apis::Core::Hashable
      
        # Maximum bid limit that can be set by the bid strategy. The limit applies to
        # all keywords managed by the strategy. This should only be set for portfolio
        # bid strategies.
        # Corresponds to the JSON property `cpcBidCeilingMicros`
        # @return [Fixnum]
        attr_accessor :cpc_bid_ceiling_micros
      
        # Minimum bid limit that can be set by the bid strategy. The limit applies to
        # all keywords managed by the strategy. This should only be set for portfolio
        # bid strategies.
        # Corresponds to the JSON property `cpcBidFloorMicros`
        # @return [Fixnum]
        attr_accessor :cpc_bid_floor_micros
      
        # Required. The chosen revenue (based on conversion data) per unit of spend.
        # Value must be between 0.01 and 1000.0, inclusive.
        # Corresponds to the JSON property `targetRoas`
        # @return [Float]
        attr_accessor :target_roas
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpc_bid_ceiling_micros = args[:cpc_bid_ceiling_micros] if args.key?(:cpc_bid_ceiling_micros)
          @cpc_bid_floor_micros = args[:cpc_bid_floor_micros] if args.key?(:cpc_bid_floor_micros)
          @target_roas = args[:target_roas] if args.key?(:target_roas)
        end
      end
      
      # An automated bid strategy that sets your bids to help get as many clicks as
      # possible within your budget.
      class GoogleAdsSearchads360V0CommonTargetSpend
        include Google::Apis::Core::Hashable
      
        # Maximum bid limit that can be set by the bid strategy. The limit applies to
        # all keywords managed by the strategy.
        # Corresponds to the JSON property `cpcBidCeilingMicros`
        # @return [Fixnum]
        attr_accessor :cpc_bid_ceiling_micros
      
        # The spend target under which to maximize clicks. A TargetSpend bidder will
        # attempt to spend the smaller of this value or the natural throttling spend
        # amount. If not specified, the budget is used as the spend target. This field
        # is deprecated and should no longer be used. See https://ads-developers.
        # googleblog.com/2020/05/reminder-about-sunset-creation-of.html for details.
        # Corresponds to the JSON property `targetSpendMicros`
        # @return [Fixnum]
        attr_accessor :target_spend_micros
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpc_bid_ceiling_micros = args[:cpc_bid_ceiling_micros] if args.key?(:cpc_bid_ceiling_micros)
          @target_spend_micros = args[:target_spend_micros] if args.key?(:target_spend_micros)
        end
      end
      
      # Settings for the targeting-related features, at the campaign and ad group
      # levels. For more details about the targeting setting, visit https://support.
      # google.com/google-ads/answer/7365594
      class GoogleAdsSearchads360V0CommonTargetingSetting
        include Google::Apis::Core::Hashable
      
        # The per-targeting-dimension setting to restrict the reach of your campaign or
        # ad group.
        # Corresponds to the JSON property `targetRestrictions`
        # @return [Array<Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTargetRestriction>]
        attr_accessor :target_restrictions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @target_restrictions = args[:target_restrictions] if args.key?(:target_restrictions)
        end
      end
      
      # A Text asset.
      class GoogleAdsSearchads360V0CommonTextAsset
        include Google::Apis::Core::Hashable
      
        # Text content of the text asset.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # A type of label displaying text on a colored background.
      class GoogleAdsSearchads360V0CommonTextLabel
        include Google::Apis::Core::Hashable
      
        # Background color of the label in RGB format. This string must match the
        # regular expression '^\#([a-fA-F0-9]`6`|[a-fA-F0-9]`3`)$'. Note: The background
        # color may not be visible for manager accounts.
        # Corresponds to the JSON property `backgroundColor`
        # @return [String]
        attr_accessor :background_color
      
        # A short description of the label. The length must be no more than 200
        # characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @background_color = args[:background_color] if args.key?(:background_color)
          @description = args[:description] if args.key?(:description)
        end
      end
      
      # A unified call asset.
      class GoogleAdsSearchads360V0CommonUnifiedCallAsset
        include Google::Apis::Core::Hashable
      
        # List of non-overlapping schedules specifying all time intervals for which the
        # asset may serve. There can be a maximum of 6 schedules per day, 42 in total.
        # Corresponds to the JSON property `adScheduleTargets`
        # @return [Array<Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonAdScheduleInfo>]
        attr_accessor :ad_schedule_targets
      
        # The conversion action to attribute a call conversion to. If not set, the
        # default conversion action is used. This field only has effect if
        # call_conversion_reporting_state is set to
        # USE_RESOURCE_LEVEL_CALL_CONVERSION_ACTION.
        # Corresponds to the JSON property `callConversionAction`
        # @return [String]
        attr_accessor :call_conversion_action
      
        # Output only. Indicates whether this CallAsset should use its own call
        # conversion setting, follow the account level setting, or disable call
        # conversion.
        # Corresponds to the JSON property `callConversionReportingState`
        # @return [String]
        attr_accessor :call_conversion_reporting_state
      
        # Whether the call only shows the phone number without a link to the website.
        # Applies to Microsoft Ads.
        # Corresponds to the JSON property `callOnly`
        # @return [Boolean]
        attr_accessor :call_only
        alias_method :call_only?, :call_only
      
        # Whether the call should be enabled on call tracking. Applies to Microsoft Ads.
        # Corresponds to the JSON property `callTrackingEnabled`
        # @return [Boolean]
        attr_accessor :call_tracking_enabled
        alias_method :call_tracking_enabled?, :call_tracking_enabled
      
        # Two-letter country code of the phone number. Examples: 'US', 'us'.
        # Corresponds to the JSON property `countryCode`
        # @return [String]
        attr_accessor :country_code
      
        # Last date of when this asset is effective and still serving, in yyyy-MM-dd
        # format.
        # Corresponds to the JSON property `endDate`
        # @return [String]
        attr_accessor :end_date
      
        # The advertiser's raw phone number. Examples: '1234567890', '(123)456-7890'
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # Start date of when this asset is effective and can begin serving, in yyyy-MM-
        # dd format.
        # Corresponds to the JSON property `startDate`
        # @return [String]
        attr_accessor :start_date
      
        # Whether to show the call extension in search user's time zone. Applies to
        # Microsoft Ads.
        # Corresponds to the JSON property `useSearcherTimeZone`
        # @return [Boolean]
        attr_accessor :use_searcher_time_zone
        alias_method :use_searcher_time_zone?, :use_searcher_time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_schedule_targets = args[:ad_schedule_targets] if args.key?(:ad_schedule_targets)
          @call_conversion_action = args[:call_conversion_action] if args.key?(:call_conversion_action)
          @call_conversion_reporting_state = args[:call_conversion_reporting_state] if args.key?(:call_conversion_reporting_state)
          @call_only = args[:call_only] if args.key?(:call_only)
          @call_tracking_enabled = args[:call_tracking_enabled] if args.key?(:call_tracking_enabled)
          @country_code = args[:country_code] if args.key?(:country_code)
          @end_date = args[:end_date] if args.key?(:end_date)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @start_date = args[:start_date] if args.key?(:start_date)
          @use_searcher_time_zone = args[:use_searcher_time_zone] if args.key?(:use_searcher_time_zone)
        end
      end
      
      # A unified callout asset.
      class GoogleAdsSearchads360V0CommonUnifiedCalloutAsset
        include Google::Apis::Core::Hashable
      
        # List of non-overlapping schedules specifying all time intervals for which the
        # asset may serve. There can be a maximum of 6 schedules per day, 42 in total.
        # Corresponds to the JSON property `adScheduleTargets`
        # @return [Array<Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonAdScheduleInfo>]
        attr_accessor :ad_schedule_targets
      
        # The callout text. The length of this string should be between 1 and 25,
        # inclusive.
        # Corresponds to the JSON property `calloutText`
        # @return [String]
        attr_accessor :callout_text
      
        # Last date of when this asset is effective and still serving, in yyyy-MM-dd
        # format.
        # Corresponds to the JSON property `endDate`
        # @return [String]
        attr_accessor :end_date
      
        # Start date of when this asset is effective and can begin serving, in yyyy-MM-
        # dd format.
        # Corresponds to the JSON property `startDate`
        # @return [String]
        attr_accessor :start_date
      
        # Whether to show the asset in search user's time zone. Applies to Microsoft Ads.
        # Corresponds to the JSON property `useSearcherTimeZone`
        # @return [Boolean]
        attr_accessor :use_searcher_time_zone
        alias_method :use_searcher_time_zone?, :use_searcher_time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_schedule_targets = args[:ad_schedule_targets] if args.key?(:ad_schedule_targets)
          @callout_text = args[:callout_text] if args.key?(:callout_text)
          @end_date = args[:end_date] if args.key?(:end_date)
          @start_date = args[:start_date] if args.key?(:start_date)
          @use_searcher_time_zone = args[:use_searcher_time_zone] if args.key?(:use_searcher_time_zone)
        end
      end
      
      # A unified location asset.
      class GoogleAdsSearchads360V0CommonUnifiedLocationAsset
        include Google::Apis::Core::Hashable
      
        # The list of business locations for the customer. This will only be returned if
        # the Location Asset is syncing from the Business Profile account. It is
        # possible to have multiple Business Profile listings under the same account
        # that point to the same Place ID.
        # Corresponds to the JSON property `businessProfileLocations`
        # @return [Array<Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonBusinessProfileLocation>]
        attr_accessor :business_profile_locations
      
        # The type of location ownership. If the type is BUSINESS_OWNER, it will be
        # served as a location extension. If the type is AFFILIATE, it will be served as
        # an affiliate location.
        # Corresponds to the JSON property `locationOwnershipType`
        # @return [String]
        attr_accessor :location_ownership_type
      
        # Place IDs uniquely identify a place in the Google Places database and on
        # Google Maps. This field is unique for a given customer ID and asset type. See
        # https://developers.google.com/places/web-service/place-id to learn more about
        # Place ID.
        # Corresponds to the JSON property `placeId`
        # @return [String]
        attr_accessor :place_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @business_profile_locations = args[:business_profile_locations] if args.key?(:business_profile_locations)
          @location_ownership_type = args[:location_ownership_type] if args.key?(:location_ownership_type)
          @place_id = args[:place_id] if args.key?(:place_id)
        end
      end
      
      # A Unified Page Feed asset.
      class GoogleAdsSearchads360V0CommonUnifiedPageFeedAsset
        include Google::Apis::Core::Hashable
      
        # Labels used to group the page urls.
        # Corresponds to the JSON property `labels`
        # @return [Array<String>]
        attr_accessor :labels
      
        # The webpage that advertisers want to target.
        # Corresponds to the JSON property `pageUrl`
        # @return [String]
        attr_accessor :page_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @labels = args[:labels] if args.key?(:labels)
          @page_url = args[:page_url] if args.key?(:page_url)
        end
      end
      
      # A unified sitelink asset.
      class GoogleAdsSearchads360V0CommonUnifiedSitelinkAsset
        include Google::Apis::Core::Hashable
      
        # List of non-overlapping schedules specifying all time intervals for which the
        # asset may serve. There can be a maximum of 6 schedules per day, 42 in total.
        # Corresponds to the JSON property `adScheduleTargets`
        # @return [Array<Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonAdScheduleInfo>]
        attr_accessor :ad_schedule_targets
      
        # First line of the description for the sitelink. If set, the length should be
        # between 1 and 35, inclusive, and description2 must also be set.
        # Corresponds to the JSON property `description1`
        # @return [String]
        attr_accessor :description1
      
        # Second line of the description for the sitelink. If set, the length should be
        # between 1 and 35, inclusive, and description1 must also be set.
        # Corresponds to the JSON property `description2`
        # @return [String]
        attr_accessor :description2
      
        # Last date of when this asset is effective and still serving, in yyyy-MM-dd
        # format.
        # Corresponds to the JSON property `endDate`
        # @return [String]
        attr_accessor :end_date
      
        # URL display text for the sitelink. The length of this string should be between
        # 1 and 25, inclusive.
        # Corresponds to the JSON property `linkText`
        # @return [String]
        attr_accessor :link_text
      
        # Whether the preference is for the sitelink asset to be displayed on mobile
        # devices. Applies to Microsoft Ads.
        # Corresponds to the JSON property `mobilePreferred`
        # @return [Boolean]
        attr_accessor :mobile_preferred
        alias_method :mobile_preferred?, :mobile_preferred
      
        # Start date of when this asset is effective and can begin serving, in yyyy-MM-
        # dd format.
        # Corresponds to the JSON property `startDate`
        # @return [String]
        attr_accessor :start_date
      
        # ID used for tracking clicks for the sitelink asset. This is a Yahoo! Japan
        # only field.
        # Corresponds to the JSON property `trackingId`
        # @return [Fixnum]
        attr_accessor :tracking_id
      
        # Whether to show the sitelink asset in search user's time zone. Applies to
        # Microsoft Ads.
        # Corresponds to the JSON property `useSearcherTimeZone`
        # @return [Boolean]
        attr_accessor :use_searcher_time_zone
        alias_method :use_searcher_time_zone?, :use_searcher_time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_schedule_targets = args[:ad_schedule_targets] if args.key?(:ad_schedule_targets)
          @description1 = args[:description1] if args.key?(:description1)
          @description2 = args[:description2] if args.key?(:description2)
          @end_date = args[:end_date] if args.key?(:end_date)
          @link_text = args[:link_text] if args.key?(:link_text)
          @mobile_preferred = args[:mobile_preferred] if args.key?(:mobile_preferred)
          @start_date = args[:start_date] if args.key?(:start_date)
          @tracking_id = args[:tracking_id] if args.key?(:tracking_id)
          @use_searcher_time_zone = args[:use_searcher_time_zone] if args.key?(:use_searcher_time_zone)
        end
      end
      
      # A User List criterion. Represents a user list that is defined by the
      # advertiser to be targeted.
      class GoogleAdsSearchads360V0CommonUserListInfo
        include Google::Apis::Core::Hashable
      
        # The User List resource name.
        # Corresponds to the JSON property `userList`
        # @return [String]
        attr_accessor :user_list
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_list = args[:user_list] if args.key?(:user_list)
        end
      end
      
      # A generic data container.
      class GoogleAdsSearchads360V0CommonValue
        include Google::Apis::Core::Hashable
      
        # A boolean.
        # Corresponds to the JSON property `booleanValue`
        # @return [Boolean]
        attr_accessor :boolean_value
        alias_method :boolean_value?, :boolean_value
      
        # A double.
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # A float.
        # Corresponds to the JSON property `floatValue`
        # @return [Float]
        attr_accessor :float_value
      
        # An int64.
        # Corresponds to the JSON property `int64Value`
        # @return [Fixnum]
        attr_accessor :int64_value
      
        # A string.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boolean_value = args[:boolean_value] if args.key?(:boolean_value)
          @double_value = args[:double_value] if args.key?(:double_value)
          @float_value = args[:float_value] if args.key?(:float_value)
          @int64_value = args[:int64_value] if args.key?(:int64_value)
          @string_value = args[:string_value] if args.key?(:string_value)
        end
      end
      
      # Logical expression for targeting webpages of an advertiser's website.
      class GoogleAdsSearchads360V0CommonWebpageConditionInfo
        include Google::Apis::Core::Hashable
      
        # Argument of webpage targeting condition.
        # Corresponds to the JSON property `argument`
        # @return [String]
        attr_accessor :argument
      
        # Operand of webpage targeting condition.
        # Corresponds to the JSON property `operand`
        # @return [String]
        attr_accessor :operand
      
        # Operator of webpage targeting condition.
        # Corresponds to the JSON property `operator`
        # @return [String]
        attr_accessor :operator
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @argument = args[:argument] if args.key?(:argument)
          @operand = args[:operand] if args.key?(:operand)
          @operator = args[:operator] if args.key?(:operator)
        end
      end
      
      # Represents a criterion for targeting webpages of an advertiser's website.
      class GoogleAdsSearchads360V0CommonWebpageInfo
        include Google::Apis::Core::Hashable
      
        # Conditions, or logical expressions, for webpage targeting. The list of webpage
        # targeting conditions are and-ed together when evaluated for targeting. An
        # empty list of conditions indicates all pages of the campaign's website are
        # targeted. This field is required for CREATE operations and is prohibited on
        # UPDATE operations.
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonWebpageConditionInfo>]
        attr_accessor :conditions
      
        # Website criteria coverage percentage. This is the computed percentage of
        # website coverage based on the website target, negative website target and
        # negative keywords in the ad group and campaign. For instance, when coverage
        # returns as 1, it indicates it has 100% coverage. This field is read-only.
        # Corresponds to the JSON property `coveragePercentage`
        # @return [Float]
        attr_accessor :coverage_percentage
      
        # The name of the criterion that is defined by this parameter. The name value
        # will be used for identifying, sorting and filtering criteria with this type of
        # parameters. This field is required for CREATE operations and is prohibited on
        # UPDATE operations.
        # Corresponds to the JSON property `criterionName`
        # @return [String]
        attr_accessor :criterion_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conditions = args[:conditions] if args.key?(:conditions)
          @coverage_percentage = args[:coverage_percentage] if args.key?(:coverage_percentage)
          @criterion_name = args[:criterion_name] if args.key?(:criterion_name)
        end
      end
      
      # A YouTube asset.
      class GoogleAdsSearchads360V0CommonYoutubeVideoAsset
        include Google::Apis::Core::Hashable
      
        # YouTube video id. This is the 11 character string value used in the YouTube
        # video URL.
        # Corresponds to the JSON property `youtubeVideoId`
        # @return [String]
        attr_accessor :youtube_video_id
      
        # YouTube video title.
        # Corresponds to the JSON property `youtubeVideoTitle`
        # @return [String]
        attr_accessor :youtube_video_title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @youtube_video_id = args[:youtube_video_id] if args.key?(:youtube_video_id)
          @youtube_video_title = args[:youtube_video_title] if args.key?(:youtube_video_title)
        end
      end
      
      # A part of a field path.
      class GoogleAdsSearchads360V0ErrorsErrorLocationFieldPathElement
        include Google::Apis::Core::Hashable
      
        # The name of a field or a oneof
        # Corresponds to the JSON property `fieldName`
        # @return [String]
        attr_accessor :field_name
      
        # If field_name is a repeated field, this is the element that failed
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_name = args[:field_name] if args.key?(:field_name)
          @index = args[:index] if args.key?(:index)
        end
      end
      
      # The error reason represented by type and enum.
      class GoogleAdsSearchads360V0ErrorsErrorCode
        include Google::Apis::Core::Hashable
      
        # Indicates failure to properly authenticate user.
        # Corresponds to the JSON property `authenticationError`
        # @return [String]
        attr_accessor :authentication_error
      
        # An error encountered when trying to authorize a user.
        # Corresponds to the JSON property `authorizationError`
        # @return [String]
        attr_accessor :authorization_error
      
        # The reasons for the custom column error
        # Corresponds to the JSON property `customColumnError`
        # @return [String]
        attr_accessor :custom_column_error
      
        # The reasons for the date error
        # Corresponds to the JSON property `dateError`
        # @return [String]
        attr_accessor :date_error
      
        # The reasons for the date range error
        # Corresponds to the JSON property `dateRangeError`
        # @return [String]
        attr_accessor :date_range_error
      
        # The reasons for the distinct error
        # Corresponds to the JSON property `distinctError`
        # @return [String]
        attr_accessor :distinct_error
      
        # The reasons for the header error.
        # Corresponds to the JSON property `headerError`
        # @return [String]
        attr_accessor :header_error
      
        # An unexpected server-side error.
        # Corresponds to the JSON property `internalError`
        # @return [String]
        attr_accessor :internal_error
      
        # The reasons for invalid parameter errors.
        # Corresponds to the JSON property `invalidParameterError`
        # @return [String]
        attr_accessor :invalid_parameter_error
      
        # An error with the query
        # Corresponds to the JSON property `queryError`
        # @return [String]
        attr_accessor :query_error
      
        # An error with the amount of quota remaining.
        # Corresponds to the JSON property `quotaError`
        # @return [String]
        attr_accessor :quota_error
      
        # An error caused by the request
        # Corresponds to the JSON property `requestError`
        # @return [String]
        attr_accessor :request_error
      
        # The reasons for the size limit error
        # Corresponds to the JSON property `sizeLimitError`
        # @return [String]
        attr_accessor :size_limit_error
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authentication_error = args[:authentication_error] if args.key?(:authentication_error)
          @authorization_error = args[:authorization_error] if args.key?(:authorization_error)
          @custom_column_error = args[:custom_column_error] if args.key?(:custom_column_error)
          @date_error = args[:date_error] if args.key?(:date_error)
          @date_range_error = args[:date_range_error] if args.key?(:date_range_error)
          @distinct_error = args[:distinct_error] if args.key?(:distinct_error)
          @header_error = args[:header_error] if args.key?(:header_error)
          @internal_error = args[:internal_error] if args.key?(:internal_error)
          @invalid_parameter_error = args[:invalid_parameter_error] if args.key?(:invalid_parameter_error)
          @query_error = args[:query_error] if args.key?(:query_error)
          @quota_error = args[:quota_error] if args.key?(:quota_error)
          @request_error = args[:request_error] if args.key?(:request_error)
          @size_limit_error = args[:size_limit_error] if args.key?(:size_limit_error)
        end
      end
      
      # Additional error details.
      class GoogleAdsSearchads360V0ErrorsErrorDetails
        include Google::Apis::Core::Hashable
      
        # Additional quota error details when there is QuotaError.
        # Corresponds to the JSON property `quotaErrorDetails`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ErrorsQuotaErrorDetails]
        attr_accessor :quota_error_details
      
        # The error code that should have been returned, but wasn't. This is used when
        # the error code is not published in the client specified version.
        # Corresponds to the JSON property `unpublishedErrorCode`
        # @return [String]
        attr_accessor :unpublished_error_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @quota_error_details = args[:quota_error_details] if args.key?(:quota_error_details)
          @unpublished_error_code = args[:unpublished_error_code] if args.key?(:unpublished_error_code)
        end
      end
      
      # Describes the part of the request proto that caused the error.
      class GoogleAdsSearchads360V0ErrorsErrorLocation
        include Google::Apis::Core::Hashable
      
        # A field path that indicates which field was invalid in the request.
        # Corresponds to the JSON property `fieldPathElements`
        # @return [Array<Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ErrorsErrorLocationFieldPathElement>]
        attr_accessor :field_path_elements
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_path_elements = args[:field_path_elements] if args.key?(:field_path_elements)
        end
      end
      
      # Additional quota error details when there is QuotaError.
      class GoogleAdsSearchads360V0ErrorsQuotaErrorDetails
        include Google::Apis::Core::Hashable
      
        # The high level description of the quota bucket. Examples are "Get requests for
        # standard access" or "Requests per account".
        # Corresponds to the JSON property `rateName`
        # @return [String]
        attr_accessor :rate_name
      
        # The rate scope of the quota limit.
        # Corresponds to the JSON property `rateScope`
        # @return [String]
        attr_accessor :rate_scope
      
        # Backoff period that customers should wait before sending next request.
        # Corresponds to the JSON property `retryDelay`
        # @return [String]
        attr_accessor :retry_delay
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rate_name = args[:rate_name] if args.key?(:rate_name)
          @rate_scope = args[:rate_scope] if args.key?(:rate_scope)
          @retry_delay = args[:retry_delay] if args.key?(:retry_delay)
        end
      end
      
      # SearchAds360-specific error.
      class GoogleAdsSearchads360V0ErrorsSearchAds360Error
        include Google::Apis::Core::Hashable
      
        # Additional error details.
        # Corresponds to the JSON property `details`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ErrorsErrorDetails]
        attr_accessor :details
      
        # The error reason represented by type and enum.
        # Corresponds to the JSON property `errorCode`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ErrorsErrorCode]
        attr_accessor :error_code
      
        # Describes the part of the request proto that caused the error.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ErrorsErrorLocation]
        attr_accessor :location
      
        # A human-readable description of the error.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # A generic data container.
        # Corresponds to the JSON property `trigger`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonValue]
        attr_accessor :trigger
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
          @error_code = args[:error_code] if args.key?(:error_code)
          @location = args[:location] if args.key?(:location)
          @message = args[:message] if args.key?(:message)
          @trigger = args[:trigger] if args.key?(:trigger)
        end
      end
      
      # Describes how a Search Ads 360 API call failed. It's returned inside google.
      # rpc.Status.details when a call fails.
      class GoogleAdsSearchads360V0ErrorsSearchAds360Failure
        include Google::Apis::Core::Hashable
      
        # The list of errors that occurred.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ErrorsSearchAds360Error>]
        attr_accessor :errors
      
        # The unique ID of the request that is used for debugging purposes.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] if args.key?(:errors)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Estimates for criterion bids at various positions.
      class GoogleAdsSearchads360V0ResourcesAdGroupCriterionPositionEstimates
        include Google::Apis::Core::Hashable
      
        # Output only. The estimate of the CPC bid required for ad to be displayed at
        # the top of the first page of search results.
        # Corresponds to the JSON property `topOfPageCpcMicros`
        # @return [Fixnum]
        attr_accessor :top_of_page_cpc_micros
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @top_of_page_cpc_micros = args[:top_of_page_cpc_micros] if args.key?(:top_of_page_cpc_micros)
        end
      end
      
      # A container for ad group criterion quality information.
      class GoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo
        include Google::Apis::Core::Hashable
      
        # Output only. The quality score. This field may not be populated if Google does
        # not have enough information to determine a value.
        # Corresponds to the JSON property `qualityScore`
        # @return [Fixnum]
        attr_accessor :quality_score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @quality_score = args[:quality_score] if args.key?(:quality_score)
        end
      end
      
      # The setting for controlling Dynamic Search Ads (DSA).
      class GoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting
        include Google::Apis::Core::Hashable
      
        # Required. The Internet domain name that this setting represents, for example, "
        # google.com" or "www.google.com".
        # Corresponds to the JSON property `domainName`
        # @return [String]
        attr_accessor :domain_name
      
        # Required. The language code specifying the language of the domain, for example,
        # "en".
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Whether the campaign uses advertiser supplied URLs exclusively.
        # Corresponds to the JSON property `useSuppliedUrlsOnly`
        # @return [Boolean]
        attr_accessor :use_supplied_urls_only
        alias_method :use_supplied_urls_only?, :use_supplied_urls_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain_name = args[:domain_name] if args.key?(:domain_name)
          @language_code = args[:language_code] if args.key?(:language_code)
          @use_supplied_urls_only = args[:use_supplied_urls_only] if args.key?(:use_supplied_urls_only)
        end
      end
      
      # Represents a collection of settings related to ads geotargeting.
      class GoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting
        include Google::Apis::Core::Hashable
      
        # The setting used for negative geotargeting in this particular campaign.
        # Corresponds to the JSON property `negativeGeoTargetType`
        # @return [String]
        attr_accessor :negative_geo_target_type
      
        # The setting used for positive geotargeting in this particular campaign.
        # Corresponds to the JSON property `positiveGeoTargetType`
        # @return [String]
        attr_accessor :positive_geo_target_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @negative_geo_target_type = args[:negative_geo_target_type] if args.key?(:negative_geo_target_type)
          @positive_geo_target_type = args[:positive_geo_target_type] if args.key?(:positive_geo_target_type)
        end
      end
      
      # The network settings for the campaign.
      class GoogleAdsSearchads360V0ResourcesCampaignNetworkSettings
        include Google::Apis::Core::Hashable
      
        # Whether ads will be served on specified placements in the Google Display
        # Network. Placements are specified using the Placement criterion.
        # Corresponds to the JSON property `targetContentNetwork`
        # @return [Boolean]
        attr_accessor :target_content_network
        alias_method :target_content_network?, :target_content_network
      
        # Whether ads will be served with google.com search results.
        # Corresponds to the JSON property `targetGoogleSearch`
        # @return [Boolean]
        attr_accessor :target_google_search
        alias_method :target_google_search?, :target_google_search
      
        # Whether ads will be served on the Google Partner Network. This is available
        # only to some select Google partner accounts.
        # Corresponds to the JSON property `targetPartnerSearchNetwork`
        # @return [Boolean]
        attr_accessor :target_partner_search_network
        alias_method :target_partner_search_network?, :target_partner_search_network
      
        # Whether ads will be served on partner sites in the Google Search Network (
        # requires `target_google_search` to also be `true`).
        # Corresponds to the JSON property `targetSearchNetwork`
        # @return [Boolean]
        attr_accessor :target_search_network
        alias_method :target_search_network?, :target_search_network
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @target_content_network = args[:target_content_network] if args.key?(:target_content_network)
          @target_google_search = args[:target_google_search] if args.key?(:target_google_search)
          @target_partner_search_network = args[:target_partner_search_network] if args.key?(:target_partner_search_network)
          @target_search_network = args[:target_search_network] if args.key?(:target_search_network)
        end
      end
      
      # Optimization goal setting for this campaign, which includes a set of
      # optimization goal types.
      class GoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting
        include Google::Apis::Core::Hashable
      
        # The list of optimization goal types.
        # Corresponds to the JSON property `optimizationGoalTypes`
        # @return [Array<String>]
        attr_accessor :optimization_goal_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @optimization_goal_types = args[:optimization_goal_types] if args.key?(:optimization_goal_types)
        end
      end
      
      # Selective optimization setting for this campaign, which includes a set of
      # conversion actions to optimize this campaign towards. This feature only
      # applies to app campaigns that use MULTI_CHANNEL as AdvertisingChannelType and
      # APP_CAMPAIGN or APP_CAMPAIGN_FOR_ENGAGEMENT as AdvertisingChannelSubType.
      class GoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization
        include Google::Apis::Core::Hashable
      
        # The selected set of conversion actions for optimizing this campaign.
        # Corresponds to the JSON property `conversionActions`
        # @return [Array<String>]
        attr_accessor :conversion_actions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversion_actions = args[:conversion_actions] if args.key?(:conversion_actions)
        end
      end
      
      # The setting for Shopping campaigns. Defines the universe of products that can
      # be advertised by the campaign, and how this campaign interacts with other
      # Shopping campaigns.
      class GoogleAdsSearchads360V0ResourcesCampaignShoppingSetting
        include Google::Apis::Core::Hashable
      
        # Priority of the campaign. Campaigns with numerically higher priorities take
        # precedence over those with lower priorities. This field is required for
        # Shopping campaigns, with values between 0 and 2, inclusive. This field is
        # optional for Smart Shopping campaigns, but must be equal to 3 if set.
        # Corresponds to the JSON property `campaignPriority`
        # @return [Fixnum]
        attr_accessor :campaign_priority
      
        # Whether to include local products.
        # Corresponds to the JSON property `enableLocal`
        # @return [Boolean]
        attr_accessor :enable_local
        alias_method :enable_local?, :enable_local
      
        # Feed label of products to include in the campaign. Only one of feed_label or
        # sales_country can be set. If used instead of sales_country, the feed_label
        # field accepts country codes in the same format for example: 'XX'. Otherwise
        # can be any string used for feed label in Google Merchant Center.
        # Corresponds to the JSON property `feedLabel`
        # @return [String]
        attr_accessor :feed_label
      
        # Immutable. ID of the Merchant Center account. This field is required for
        # create operations. This field is immutable for Shopping campaigns.
        # Corresponds to the JSON property `merchantId`
        # @return [Fixnum]
        attr_accessor :merchant_id
      
        # Sales country of products to include in the campaign.
        # Corresponds to the JSON property `salesCountry`
        # @return [String]
        attr_accessor :sales_country
      
        # Immutable. Whether to target Vehicle Listing inventory.
        # Corresponds to the JSON property `useVehicleInventory`
        # @return [Boolean]
        attr_accessor :use_vehicle_inventory
        alias_method :use_vehicle_inventory?, :use_vehicle_inventory
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @campaign_priority = args[:campaign_priority] if args.key?(:campaign_priority)
          @enable_local = args[:enable_local] if args.key?(:enable_local)
          @feed_label = args[:feed_label] if args.key?(:feed_label)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @sales_country = args[:sales_country] if args.key?(:sales_country)
          @use_vehicle_inventory = args[:use_vehicle_inventory] if args.key?(:use_vehicle_inventory)
        end
      end
      
      # Campaign-level settings for tracking information.
      class GoogleAdsSearchads360V0ResourcesCampaignTrackingSetting
        include Google::Apis::Core::Hashable
      
        # Output only. The url used for dynamic tracking.
        # Corresponds to the JSON property `trackingUrl`
        # @return [String]
        attr_accessor :tracking_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tracking_url = args[:tracking_url] if args.key?(:tracking_url)
        end
      end
      
      # Settings related to this conversion action's attribution model.
      class GoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings
        include Google::Apis::Core::Hashable
      
        # The attribution model type of this conversion action.
        # Corresponds to the JSON property `attributionModel`
        # @return [String]
        attr_accessor :attribution_model
      
        # Output only. The status of the data-driven attribution model for the
        # conversion action.
        # Corresponds to the JSON property `dataDrivenModelStatus`
        # @return [String]
        attr_accessor :data_driven_model_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribution_model = args[:attribution_model] if args.key?(:attribution_model)
          @data_driven_model_status = args[:data_driven_model_status] if args.key?(:data_driven_model_status)
        end
      end
      
      # Settings related to a Floodlight conversion action.
      class GoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings
        include Google::Apis::Core::Hashable
      
        # Output only. String used to identify a Floodlight activity group when
        # reporting conversions.
        # Corresponds to the JSON property `activityGroupTag`
        # @return [String]
        attr_accessor :activity_group_tag
      
        # Output only. ID of the Floodlight activity in DoubleClick Campaign Manager (
        # DCM).
        # Corresponds to the JSON property `activityId`
        # @return [Fixnum]
        attr_accessor :activity_id
      
        # Output only. String used to identify a Floodlight activity when reporting
        # conversions.
        # Corresponds to the JSON property `activityTag`
        # @return [String]
        attr_accessor :activity_tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activity_group_tag = args[:activity_group_tag] if args.key?(:activity_group_tag)
          @activity_id = args[:activity_id] if args.key?(:activity_id)
          @activity_tag = args[:activity_tag] if args.key?(:activity_tag)
        end
      end
      
      # Settings related to the value for conversion events associated with this
      # conversion action.
      class GoogleAdsSearchads360V0ResourcesConversionActionValueSettings
        include Google::Apis::Core::Hashable
      
        # Controls whether the default value and default currency code are used in place
        # of the value and currency code specified in conversion events for this
        # conversion action.
        # Corresponds to the JSON property `alwaysUseDefaultValue`
        # @return [Boolean]
        attr_accessor :always_use_default_value
        alias_method :always_use_default_value?, :always_use_default_value
      
        # The currency code to use when conversion events for this conversion action are
        # sent with an invalid or missing currency code, or when this conversion action
        # is configured to always use the default value.
        # Corresponds to the JSON property `defaultCurrencyCode`
        # @return [String]
        attr_accessor :default_currency_code
      
        # The value to use when conversion events for this conversion action are sent
        # with an invalid, disallowed or missing value, or when this conversion action
        # is configured to always use the default value.
        # Corresponds to the JSON property `defaultValue`
        # @return [Float]
        attr_accessor :default_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @always_use_default_value = args[:always_use_default_value] if args.key?(:always_use_default_value)
          @default_currency_code = args[:default_currency_code] if args.key?(:default_currency_code)
          @default_value = args[:default_value] if args.key?(:default_value)
        end
      end
      
      # One element of a bidding category at a certain level. Top-level categories are
      # at level 1, their children at level 2, and so on. We currently support up to 5
      # levels. The user must specify a dimension type that indicates the level of the
      # category. All cases of the same subdivision must have the same dimension type (
      # category level).
      class GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBiddingCategory
        include Google::Apis::Core::Hashable
      
        # ID of the product bidding category. This ID is equivalent to the
        # google_product_category ID as described in this article: https://support.
        # google.com/merchants/answer/6324436
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Indicates the level of the category in the taxonomy.
        # Corresponds to the JSON property `level`
        # @return [String]
        attr_accessor :level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @level = args[:level] if args.key?(:level)
        end
      end
      
      # Brand of the product.
      class GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBrand
        include Google::Apis::Core::Hashable
      
        # String value of the product brand.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Locality of a product offer.
      class GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductChannel
        include Google::Apis::Core::Hashable
      
        # Value of the locality.
        # Corresponds to the JSON property `channel`
        # @return [String]
        attr_accessor :channel
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel = args[:channel] if args.key?(:channel)
        end
      end
      
      # Condition of a product offer.
      class GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCondition
        include Google::Apis::Core::Hashable
      
        # Value of the condition.
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
        end
      end
      
      # Custom attribute of a product offer.
      class GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCustomAttribute
        include Google::Apis::Core::Hashable
      
        # Indicates the index of the custom attribute.
        # Corresponds to the JSON property `index`
        # @return [String]
        attr_accessor :index
      
        # String value of the product custom attribute.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @index = args[:index] if args.key?(:index)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Item id of a product offer.
      class GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductItemId
        include Google::Apis::Core::Hashable
      
        # Value of the id.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Type of a product offer.
      class GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductType
        include Google::Apis::Core::Hashable
      
        # Level of the type.
        # Corresponds to the JSON property `level`
        # @return [String]
        attr_accessor :level
      
        # Value of the type.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @level = args[:level] if args.key?(:level)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # An ad.
      class GoogleAdsSearchads360V0ResourcesAd
        include Google::Apis::Core::Hashable
      
        # The URL that appears in the ad description for some ad formats.
        # Corresponds to the JSON property `displayUrl`
        # @return [String]
        attr_accessor :display_url
      
        # An expanded dynamic search ad.
        # Corresponds to the JSON property `expandedDynamicSearchAd`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonSearchAds360ExpandedDynamicSearchAdInfo]
        attr_accessor :expanded_dynamic_search_ad
      
        # A Search Ads 360 expanded text ad.
        # Corresponds to the JSON property `expandedTextAd`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonSearchAds360ExpandedTextAdInfo]
        attr_accessor :expanded_text_ad
      
        # The list of possible final URLs after all cross-domain redirects for the ad.
        # Corresponds to the JSON property `finalUrls`
        # @return [Array<String>]
        attr_accessor :final_urls
      
        # Output only. The ID of the ad.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Immutable. The name of the ad. This is only used to be able to identify the ad.
        # It does not need to be unique and does not affect the served ad. The name
        # field is currently only supported for DisplayUploadAd, ImageAd,
        # ShoppingComparisonListingAd and VideoAd.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A Search Ads 360 product ad.
        # Corresponds to the JSON property `productAd`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonSearchAds360ProductAdInfo]
        attr_accessor :product_ad
      
        # Immutable. The resource name of the ad. Ad resource names have the form: `
        # customers/`customer_id`/ads/`ad_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # A Search Ads 360 responsive search ad.
        # Corresponds to the JSON property `responsiveSearchAd`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonSearchAds360ResponsiveSearchAdInfo]
        attr_accessor :responsive_search_ad
      
        # A Search Ads 360 text ad.
        # Corresponds to the JSON property `textAd`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonSearchAds360TextAdInfo]
        attr_accessor :text_ad
      
        # Output only. The type of ad.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_url = args[:display_url] if args.key?(:display_url)
          @expanded_dynamic_search_ad = args[:expanded_dynamic_search_ad] if args.key?(:expanded_dynamic_search_ad)
          @expanded_text_ad = args[:expanded_text_ad] if args.key?(:expanded_text_ad)
          @final_urls = args[:final_urls] if args.key?(:final_urls)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @product_ad = args[:product_ad] if args.key?(:product_ad)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @responsive_search_ad = args[:responsive_search_ad] if args.key?(:responsive_search_ad)
          @text_ad = args[:text_ad] if args.key?(:text_ad)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # An ad group.
      class GoogleAdsSearchads360V0ResourcesAdGroup
        include Google::Apis::Core::Hashable
      
        # The ad rotation mode of the ad group.
        # Corresponds to the JSON property `adRotationMode`
        # @return [String]
        attr_accessor :ad_rotation_mode
      
        # The maximum CPC (cost-per-click) bid.
        # Corresponds to the JSON property `cpcBidMicros`
        # @return [Fixnum]
        attr_accessor :cpc_bid_micros
      
        # Output only. The timestamp when this ad_group was created. The timestamp is in
        # the customer's time zone and in "yyyy-MM-dd HH:mm:ss" format.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # Output only. Date when the ad group ends serving ads. By default, the ad group
        # ends on the ad group's end date. If this field is set, then the ad group ends
        # at the end of the specified date in the customer's time zone. This field is
        # only available for Microsoft Advertising and Facebook gateway accounts. Format:
        # YYYY-MM-DD Example: 2019-03-14
        # Corresponds to the JSON property `endDate`
        # @return [String]
        attr_accessor :end_date
      
        # Output only. ID of the ad group in the external engine account. This field is
        # for non-Google Ads account only, for example, Yahoo Japan, Microsoft, Baidu
        # etc. For Google Ads entity, use "ad_group.id" instead.
        # Corresponds to the JSON property `engineId`
        # @return [String]
        attr_accessor :engine_id
      
        # Output only. The Engine Status for ad group.
        # Corresponds to the JSON property `engineStatus`
        # @return [String]
        attr_accessor :engine_status
      
        # Output only. The ID of the ad group.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Output only. The resource names of labels attached to this ad group.
        # Corresponds to the JSON property `labels`
        # @return [Array<String>]
        attr_accessor :labels
      
        # Output only. The language of the ads and keywords in an ad group. This field
        # is only available for Microsoft Advertising accounts. More details: https://
        # docs.microsoft.com/en-us/advertising/guides/ad-languages?view=bingads-13#
        # adlanguage
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Output only. The datetime when this ad group was last modified. The datetime
        # is in the customer's time zone and in "yyyy-MM-dd HH:mm:ss.ssssss" format.
        # Corresponds to the JSON property `lastModifiedTime`
        # @return [String]
        attr_accessor :last_modified_time
      
        # The name of the ad group. This field is required and should not be empty when
        # creating new ad groups. It must contain fewer than 255 UTF-8 full-width
        # characters. It must not contain any null (code point 0x0), NL line feed (code
        # point 0xA) or carriage return (code point 0xD) characters.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Immutable. The resource name of the ad group. Ad group resource names have the
        # form: `customers/`customer_id`/adGroups/`ad_group_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # Output only. Date when this ad group starts serving ads. By default, the ad
        # group starts now or the ad group's start date, whichever is later. If this
        # field is set, then the ad group starts at the beginning of the specified date
        # in the customer's time zone. This field is only available for Microsoft
        # Advertising and Facebook gateway accounts. Format: YYYY-MM-DD Example: 2019-03-
        # 14
        # Corresponds to the JSON property `startDate`
        # @return [String]
        attr_accessor :start_date
      
        # The status of the ad group.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Settings for the targeting-related features, at the campaign and ad group
        # levels. For more details about the targeting setting, visit https://support.
        # google.com/google-ads/answer/7365594
        # Corresponds to the JSON property `targetingSetting`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTargetingSetting]
        attr_accessor :targeting_setting
      
        # Immutable. The type of the ad group.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_rotation_mode = args[:ad_rotation_mode] if args.key?(:ad_rotation_mode)
          @cpc_bid_micros = args[:cpc_bid_micros] if args.key?(:cpc_bid_micros)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @end_date = args[:end_date] if args.key?(:end_date)
          @engine_id = args[:engine_id] if args.key?(:engine_id)
          @engine_status = args[:engine_status] if args.key?(:engine_status)
          @id = args[:id] if args.key?(:id)
          @labels = args[:labels] if args.key?(:labels)
          @language_code = args[:language_code] if args.key?(:language_code)
          @last_modified_time = args[:last_modified_time] if args.key?(:last_modified_time)
          @name = args[:name] if args.key?(:name)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @start_date = args[:start_date] if args.key?(:start_date)
          @status = args[:status] if args.key?(:status)
          @targeting_setting = args[:targeting_setting] if args.key?(:targeting_setting)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # An ad group ad.
      class GoogleAdsSearchads360V0ResourcesAdGroupAd
        include Google::Apis::Core::Hashable
      
        # An ad.
        # Corresponds to the JSON property `ad`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAd]
        attr_accessor :ad
      
        # Output only. The timestamp when this ad_group_ad was created. The datetime is
        # in the customer's time zone and in "yyyy-MM-dd HH:mm:ss.ssssss" format.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # Output only. ID of the ad in the external engine account. This field is for
        # SearchAds 360 account only, for example, Yahoo Japan, Microsoft, Baidu etc.
        # For non-SearchAds 360 entity, use "ad_group_ad.ad.id" instead.
        # Corresponds to the JSON property `engineId`
        # @return [String]
        attr_accessor :engine_id
      
        # Output only. Additional status of the ad in the external engine account.
        # Possible statuses (depending on the type of external account) include active,
        # eligible, pending review, etc.
        # Corresponds to the JSON property `engineStatus`
        # @return [String]
        attr_accessor :engine_status
      
        # Output only. The resource names of labels attached to this ad group ad.
        # Corresponds to the JSON property `labels`
        # @return [Array<String>]
        attr_accessor :labels
      
        # Output only. The datetime when this ad group ad was last modified. The
        # datetime is in the customer's time zone and in "yyyy-MM-dd HH:mm:ss.ssssss"
        # format.
        # Corresponds to the JSON property `lastModifiedTime`
        # @return [String]
        attr_accessor :last_modified_time
      
        # Immutable. The resource name of the ad. Ad group ad resource names have the
        # form: `customers/`customer_id`/adGroupAds/`ad_group_id`~`ad_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # The status of the ad.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad = args[:ad] if args.key?(:ad)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @engine_id = args[:engine_id] if args.key?(:engine_id)
          @engine_status = args[:engine_status] if args.key?(:engine_status)
          @labels = args[:labels] if args.key?(:labels)
          @last_modified_time = args[:last_modified_time] if args.key?(:last_modified_time)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # A relationship between an ad group ad and a label.
      class GoogleAdsSearchads360V0ResourcesAdGroupAdLabel
        include Google::Apis::Core::Hashable
      
        # Immutable. The ad group ad to which the label is attached.
        # Corresponds to the JSON property `adGroupAd`
        # @return [String]
        attr_accessor :ad_group_ad
      
        # Immutable. The label assigned to the ad group ad.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # Immutable. The resource name of the ad group ad label. Ad group ad label
        # resource names have the form: `customers/`customer_id`/adGroupAdLabels/`
        # ad_group_id`~`ad_id`~`label_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_group_ad = args[:ad_group_ad] if args.key?(:ad_group_ad)
          @label = args[:label] if args.key?(:label)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # A link between an ad group and an asset.
      class GoogleAdsSearchads360V0ResourcesAdGroupAsset
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. The ad group to which the asset is linked.
        # Corresponds to the JSON property `adGroup`
        # @return [String]
        attr_accessor :ad_group
      
        # Required. Immutable. The asset which is linked to the ad group.
        # Corresponds to the JSON property `asset`
        # @return [String]
        attr_accessor :asset
      
        # Immutable. The resource name of the ad group asset. AdGroupAsset resource
        # names have the form: `customers/`customer_id`/adGroupAssets/`ad_group_id`~`
        # asset_id`~`field_type``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # Status of the ad group asset.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_group = args[:ad_group] if args.key?(:ad_group)
          @asset = args[:asset] if args.key?(:asset)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # AdGroupAssetSet is the linkage between an ad group and an asset set. Creating
      # an AdGroupAssetSet links an asset set with an ad group.
      class GoogleAdsSearchads360V0ResourcesAdGroupAssetSet
        include Google::Apis::Core::Hashable
      
        # Immutable. The ad group to which this asset set is linked.
        # Corresponds to the JSON property `adGroup`
        # @return [String]
        attr_accessor :ad_group
      
        # Immutable. The asset set which is linked to the ad group.
        # Corresponds to the JSON property `assetSet`
        # @return [String]
        attr_accessor :asset_set
      
        # Immutable. The resource name of the ad group asset set. Ad group asset set
        # resource names have the form: `customers/`customer_id`/adGroupAssetSets/`
        # ad_group_id`~`asset_set_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # Output only. The status of the ad group asset set. Read-only.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_group = args[:ad_group] if args.key?(:ad_group)
          @asset_set = args[:asset_set] if args.key?(:asset_set)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # An ad group audience view. Includes performance data from interests and
      # remarketing lists for Display Network and YouTube Network ads, and remarketing
      # lists for search ads (RLSA), aggregated at the audience level.
      class GoogleAdsSearchads360V0ResourcesAdGroupAudienceView
        include Google::Apis::Core::Hashable
      
        # Output only. The resource name of the ad group audience view. Ad group
        # audience view resource names have the form: `customers/`customer_id`/
        # adGroupAudienceViews/`ad_group_id`~`criterion_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # Represents an ad group bid modifier.
      class GoogleAdsSearchads360V0ResourcesAdGroupBidModifier
        include Google::Apis::Core::Hashable
      
        # The modifier for the bid when the criterion matches. The modifier must be in
        # the range: 0.1 - 10.0. The range is 1.0 - 6.0 for PreferredContent. Use 0 to
        # opt out of a Device type.
        # Corresponds to the JSON property `bidModifier`
        # @return [Float]
        attr_accessor :bid_modifier
      
        # A device criterion.
        # Corresponds to the JSON property `device`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonDeviceInfo]
        attr_accessor :device
      
        # Immutable. The resource name of the ad group bid modifier. Ad group bid
        # modifier resource names have the form: `customers/`customer_id`/
        # adGroupBidModifiers/`ad_group_id`~`criterion_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bid_modifier = args[:bid_modifier] if args.key?(:bid_modifier)
          @device = args[:device] if args.key?(:device)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # An ad group criterion.
      class GoogleAdsSearchads360V0ResourcesAdGroupCriterion
        include Google::Apis::Core::Hashable
      
        # Immutable. The ad group to which the criterion belongs.
        # Corresponds to the JSON property `adGroup`
        # @return [String]
        attr_accessor :ad_group
      
        # An age range criterion.
        # Corresponds to the JSON property `ageRange`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonAgeRangeInfo]
        attr_accessor :age_range
      
        # The modifier for the bid when the criterion matches. The modifier must be in
        # the range: 0.1 - 10.0. Most targetable criteria types support modifiers.
        # Corresponds to the JSON property `bidModifier`
        # @return [Float]
        attr_accessor :bid_modifier
      
        # The CPC (cost-per-click) bid.
        # Corresponds to the JSON property `cpcBidMicros`
        # @return [Fixnum]
        attr_accessor :cpc_bid_micros
      
        # Output only. The timestamp when this ad group criterion was created. The
        # timestamp is in the customer's time zone and in "yyyy-MM-dd HH:mm:ss" format.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # Output only. The ID of the criterion.
        # Corresponds to the JSON property `criterionId`
        # @return [Fixnum]
        attr_accessor :criterion_id
      
        # Output only. The effective CPC (cost-per-click) bid.
        # Corresponds to the JSON property `effectiveCpcBidMicros`
        # @return [Fixnum]
        attr_accessor :effective_cpc_bid_micros
      
        # Output only. ID of the ad group criterion in the external engine account. This
        # field is for non-Google Ads account only, for example, Yahoo Japan, Microsoft,
        # Baidu etc. For Google Ads entity, use "ad_group_criterion.criterion_id"
        # instead.
        # Corresponds to the JSON property `engineId`
        # @return [String]
        attr_accessor :engine_id
      
        # Output only. The Engine Status for ad group criterion.
        # Corresponds to the JSON property `engineStatus`
        # @return [String]
        attr_accessor :engine_status
      
        # URL template for appending params to final URL.
        # Corresponds to the JSON property `finalUrlSuffix`
        # @return [String]
        attr_accessor :final_url_suffix
      
        # The list of possible final URLs after all cross-domain redirects for the ad.
        # Corresponds to the JSON property `finalUrls`
        # @return [Array<String>]
        attr_accessor :final_urls
      
        # A gender criterion.
        # Corresponds to the JSON property `gender`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonGenderInfo]
        attr_accessor :gender
      
        # A keyword criterion.
        # Corresponds to the JSON property `keyword`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonKeywordInfo]
        attr_accessor :keyword
      
        # Output only. The resource names of labels attached to this ad group criterion.
        # Corresponds to the JSON property `labels`
        # @return [Array<String>]
        attr_accessor :labels
      
        # Output only. The datetime when this ad group criterion was last modified. The
        # datetime is in the customer's time zone and in "yyyy-MM-dd HH:mm:ss.ssssss"
        # format.
        # Corresponds to the JSON property `lastModifiedTime`
        # @return [String]
        attr_accessor :last_modified_time
      
        # A listing group criterion.
        # Corresponds to the JSON property `listingGroup`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonListingGroupInfo]
        attr_accessor :listing_group
      
        # A location criterion.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonLocationInfo]
        attr_accessor :location
      
        # Immutable. Whether to target (`false`) or exclude (`true`) the criterion. This
        # field is immutable. To switch a criterion from positive to negative, remove
        # then re-add it.
        # Corresponds to the JSON property `negative`
        # @return [Boolean]
        attr_accessor :negative
        alias_method :negative?, :negative
      
        # Estimates for criterion bids at various positions.
        # Corresponds to the JSON property `positionEstimates`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAdGroupCriterionPositionEstimates]
        attr_accessor :position_estimates
      
        # A container for ad group criterion quality information.
        # Corresponds to the JSON property `qualityInfo`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAdGroupCriterionQualityInfo]
        attr_accessor :quality_info
      
        # Immutable. The resource name of the ad group criterion. Ad group criterion
        # resource names have the form: `customers/`customer_id`/adGroupCriteria/`
        # ad_group_id`~`criterion_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # The status of the criterion. This is the status of the ad group criterion
        # entity, set by the client. Note: UI reports may incorporate additional
        # information that affects whether a criterion is eligible to run. In some cases
        # a criterion that's REMOVED in the API can still show as enabled in the UI. For
        # example, campaigns by default show to users of all age ranges unless excluded.
        # The UI will show each age range as "enabled", since they're eligible to see
        # the ads; but AdGroupCriterion.status will show "removed", since no positive
        # criterion was added.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The URL template for constructing a tracking URL.
        # Corresponds to the JSON property `trackingUrlTemplate`
        # @return [String]
        attr_accessor :tracking_url_template
      
        # Output only. The type of the criterion.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # A User List criterion. Represents a user list that is defined by the
        # advertiser to be targeted.
        # Corresponds to the JSON property `userList`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonUserListInfo]
        attr_accessor :user_list
      
        # Represents a criterion for targeting webpages of an advertiser's website.
        # Corresponds to the JSON property `webpage`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonWebpageInfo]
        attr_accessor :webpage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_group = args[:ad_group] if args.key?(:ad_group)
          @age_range = args[:age_range] if args.key?(:age_range)
          @bid_modifier = args[:bid_modifier] if args.key?(:bid_modifier)
          @cpc_bid_micros = args[:cpc_bid_micros] if args.key?(:cpc_bid_micros)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @criterion_id = args[:criterion_id] if args.key?(:criterion_id)
          @effective_cpc_bid_micros = args[:effective_cpc_bid_micros] if args.key?(:effective_cpc_bid_micros)
          @engine_id = args[:engine_id] if args.key?(:engine_id)
          @engine_status = args[:engine_status] if args.key?(:engine_status)
          @final_url_suffix = args[:final_url_suffix] if args.key?(:final_url_suffix)
          @final_urls = args[:final_urls] if args.key?(:final_urls)
          @gender = args[:gender] if args.key?(:gender)
          @keyword = args[:keyword] if args.key?(:keyword)
          @labels = args[:labels] if args.key?(:labels)
          @last_modified_time = args[:last_modified_time] if args.key?(:last_modified_time)
          @listing_group = args[:listing_group] if args.key?(:listing_group)
          @location = args[:location] if args.key?(:location)
          @negative = args[:negative] if args.key?(:negative)
          @position_estimates = args[:position_estimates] if args.key?(:position_estimates)
          @quality_info = args[:quality_info] if args.key?(:quality_info)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @status = args[:status] if args.key?(:status)
          @tracking_url_template = args[:tracking_url_template] if args.key?(:tracking_url_template)
          @type = args[:type] if args.key?(:type)
          @user_list = args[:user_list] if args.key?(:user_list)
          @webpage = args[:webpage] if args.key?(:webpage)
        end
      end
      
      # A relationship between an ad group criterion and a label.
      class GoogleAdsSearchads360V0ResourcesAdGroupCriterionLabel
        include Google::Apis::Core::Hashable
      
        # Immutable. The ad group criterion to which the label is attached.
        # Corresponds to the JSON property `adGroupCriterion`
        # @return [String]
        attr_accessor :ad_group_criterion
      
        # Immutable. The label assigned to the ad group criterion.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # Immutable. The resource name of the ad group criterion label. Ad group
        # criterion label resource names have the form: `customers/`customer_id`/
        # adGroupCriterionLabels/`ad_group_id`~`criterion_id`~`label_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_group_criterion = args[:ad_group_criterion] if args.key?(:ad_group_criterion)
          @label = args[:label] if args.key?(:label)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # A relationship between an ad group and a label.
      class GoogleAdsSearchads360V0ResourcesAdGroupLabel
        include Google::Apis::Core::Hashable
      
        # Immutable. The ad group to which the label is attached.
        # Corresponds to the JSON property `adGroup`
        # @return [String]
        attr_accessor :ad_group
      
        # Immutable. The label assigned to the ad group.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # Immutable. The resource name of the ad group label. Ad group label resource
        # names have the form: `customers/`customer_id`/adGroupLabels/`ad_group_id`~`
        # label_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_group = args[:ad_group] if args.key?(:ad_group)
          @label = args[:label] if args.key?(:label)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # An age range view.
      class GoogleAdsSearchads360V0ResourcesAgeRangeView
        include Google::Apis::Core::Hashable
      
        # Output only. The resource name of the age range view. Age range view resource
        # names have the form: `customers/`customer_id`/ageRangeViews/`ad_group_id`~`
        # criterion_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # Asset is a part of an ad which can be shared across multiple ads. It can be an
      # image (ImageAsset), a video (YoutubeVideoAsset), etc. Assets are immutable and
      # cannot be removed. To stop an asset from serving, remove the asset from the
      # entity that is using it.
      class GoogleAdsSearchads360V0ResourcesAsset
        include Google::Apis::Core::Hashable
      
        # A unified call asset.
        # Corresponds to the JSON property `callAsset`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonUnifiedCallAsset]
        attr_accessor :call_asset
      
        # A call to action asset.
        # Corresponds to the JSON property `callToActionAsset`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonCallToActionAsset]
        attr_accessor :call_to_action_asset
      
        # A unified callout asset.
        # Corresponds to the JSON property `calloutAsset`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonUnifiedCalloutAsset]
        attr_accessor :callout_asset
      
        # Output only. The timestamp when this asset was created. The timestamp is in
        # the customer's time zone and in "yyyy-MM-dd HH:mm:ss" format.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # Output only. The Engine Status for an asset.
        # Corresponds to the JSON property `engineStatus`
        # @return [String]
        attr_accessor :engine_status
      
        # A list of possible final URLs after all cross domain redirects.
        # Corresponds to the JSON property `finalUrls`
        # @return [Array<String>]
        attr_accessor :final_urls
      
        # Output only. The ID of the asset.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # An Image asset.
        # Corresponds to the JSON property `imageAsset`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonImageAsset]
        attr_accessor :image_asset
      
        # Output only. The datetime when this asset was last modified. The datetime is
        # in the customer's time zone and in "yyyy-MM-dd HH:mm:ss.ssssss" format.
        # Corresponds to the JSON property `lastModifiedTime`
        # @return [String]
        attr_accessor :last_modified_time
      
        # A unified location asset.
        # Corresponds to the JSON property `locationAsset`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonUnifiedLocationAsset]
        attr_accessor :location_asset
      
        # An asset representing a mobile app.
        # Corresponds to the JSON property `mobileAppAsset`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonMobileAppAsset]
        attr_accessor :mobile_app_asset
      
        # Optional name of the asset.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A Unified Page Feed asset.
        # Corresponds to the JSON property `pageFeedAsset`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonUnifiedPageFeedAsset]
        attr_accessor :page_feed_asset
      
        # Immutable. The resource name of the asset. Asset resource names have the form:
        # `customers/`customer_id`/assets/`asset_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # A unified sitelink asset.
        # Corresponds to the JSON property `sitelinkAsset`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonUnifiedSitelinkAsset]
        attr_accessor :sitelink_asset
      
        # Output only. The status of the asset.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # A Text asset.
        # Corresponds to the JSON property `textAsset`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTextAsset]
        attr_accessor :text_asset
      
        # URL template for constructing a tracking URL.
        # Corresponds to the JSON property `trackingUrlTemplate`
        # @return [String]
        attr_accessor :tracking_url_template
      
        # Output only. Type of the asset.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # A YouTube asset.
        # Corresponds to the JSON property `youtubeVideoAsset`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonYoutubeVideoAsset]
        attr_accessor :youtube_video_asset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @call_asset = args[:call_asset] if args.key?(:call_asset)
          @call_to_action_asset = args[:call_to_action_asset] if args.key?(:call_to_action_asset)
          @callout_asset = args[:callout_asset] if args.key?(:callout_asset)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @engine_status = args[:engine_status] if args.key?(:engine_status)
          @final_urls = args[:final_urls] if args.key?(:final_urls)
          @id = args[:id] if args.key?(:id)
          @image_asset = args[:image_asset] if args.key?(:image_asset)
          @last_modified_time = args[:last_modified_time] if args.key?(:last_modified_time)
          @location_asset = args[:location_asset] if args.key?(:location_asset)
          @mobile_app_asset = args[:mobile_app_asset] if args.key?(:mobile_app_asset)
          @name = args[:name] if args.key?(:name)
          @page_feed_asset = args[:page_feed_asset] if args.key?(:page_feed_asset)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @sitelink_asset = args[:sitelink_asset] if args.key?(:sitelink_asset)
          @status = args[:status] if args.key?(:status)
          @text_asset = args[:text_asset] if args.key?(:text_asset)
          @tracking_url_template = args[:tracking_url_template] if args.key?(:tracking_url_template)
          @type = args[:type] if args.key?(:type)
          @youtube_video_asset = args[:youtube_video_asset] if args.key?(:youtube_video_asset)
        end
      end
      
      # An asset group. AssetGroupAsset is used to link an asset to the asset group.
      # AssetGroupSignal is used to associate a signal to an asset group.
      class GoogleAdsSearchads360V0ResourcesAssetGroup
        include Google::Apis::Core::Hashable
      
        # Output only. Overall ad strength of this asset group.
        # Corresponds to the JSON property `adStrength`
        # @return [String]
        attr_accessor :ad_strength
      
        # Immutable. The campaign with which this asset group is associated. The asset
        # which is linked to the asset group.
        # Corresponds to the JSON property `campaign`
        # @return [String]
        attr_accessor :campaign
      
        # A list of final mobile URLs after all cross domain redirects. In performance
        # max, by default, the urls are eligible for expansion unless opted out.
        # Corresponds to the JSON property `finalMobileUrls`
        # @return [Array<String>]
        attr_accessor :final_mobile_urls
      
        # A list of final URLs after all cross domain redirects. In performance max, by
        # default, the urls are eligible for expansion unless opted out.
        # Corresponds to the JSON property `finalUrls`
        # @return [Array<String>]
        attr_accessor :final_urls
      
        # Output only. The ID of the asset group.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Required. Name of the asset group. Required. It must have a minimum length of
        # 1 and maximum length of 128. It must be unique under a campaign.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # First part of text that may appear appended to the url displayed in the ad.
        # Corresponds to the JSON property `path1`
        # @return [String]
        attr_accessor :path1
      
        # Second part of text that may appear appended to the url displayed in the ad.
        # This field can only be set when path1 is set.
        # Corresponds to the JSON property `path2`
        # @return [String]
        attr_accessor :path2
      
        # Immutable. The resource name of the asset group. Asset group resource names
        # have the form: `customers/`customer_id`/assetGroups/`asset_group_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # The status of the asset group.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_strength = args[:ad_strength] if args.key?(:ad_strength)
          @campaign = args[:campaign] if args.key?(:campaign)
          @final_mobile_urls = args[:final_mobile_urls] if args.key?(:final_mobile_urls)
          @final_urls = args[:final_urls] if args.key?(:final_urls)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @path1 = args[:path1] if args.key?(:path1)
          @path2 = args[:path2] if args.key?(:path2)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # AssetGroupAsset is the link between an asset and an asset group. Adding an
      # AssetGroupAsset links an asset with an asset group.
      class GoogleAdsSearchads360V0ResourcesAssetGroupAsset
        include Google::Apis::Core::Hashable
      
        # Immutable. The asset which this asset group asset is linking.
        # Corresponds to the JSON property `asset`
        # @return [String]
        attr_accessor :asset
      
        # Immutable. The asset group which this asset group asset is linking.
        # Corresponds to the JSON property `assetGroup`
        # @return [String]
        attr_accessor :asset_group
      
        # The description of the placement of the asset within the asset group. For
        # example: HEADLINE, YOUTUBE_VIDEO etc
        # Corresponds to the JSON property `fieldType`
        # @return [String]
        attr_accessor :field_type
      
        # Immutable. The resource name of the asset group asset. Asset group asset
        # resource name have the form: `customers/`customer_id`/assetGroupAssets/`
        # asset_group_id`~`asset_id`~`field_type``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # The status of the link between an asset and asset group.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset = args[:asset] if args.key?(:asset)
          @asset_group = args[:asset_group] if args.key?(:asset_group)
          @field_type = args[:field_type] if args.key?(:field_type)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Asset group asset combination data
      class GoogleAdsSearchads360V0ResourcesAssetGroupAssetCombinationData
        include Google::Apis::Core::Hashable
      
        # Output only. Served assets.
        # Corresponds to the JSON property `assetCombinationServedAssets`
        # @return [Array<Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonAssetUsage>]
        attr_accessor :asset_combination_served_assets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset_combination_served_assets = args[:asset_combination_served_assets] if args.key?(:asset_combination_served_assets)
        end
      end
      
      # AssetGroupListingGroupFilter represents a listing group filter tree node in an
      # asset group.
      class GoogleAdsSearchads360V0ResourcesAssetGroupListingGroupFilter
        include Google::Apis::Core::Hashable
      
        # Immutable. The asset group which this asset group listing group filter is part
        # of.
        # Corresponds to the JSON property `assetGroup`
        # @return [String]
        attr_accessor :asset_group
      
        # Listing dimensions for the asset group listing group filter.
        # Corresponds to the JSON property `caseValue`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesListingGroupFilterDimension]
        attr_accessor :case_value
      
        # Output only. The ID of the ListingGroupFilter.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Immutable. Resource name of the parent listing group subdivision. Null for the
        # root listing group filter node.
        # Corresponds to the JSON property `parentListingGroupFilter`
        # @return [String]
        attr_accessor :parent_listing_group_filter
      
        # The path defining of dimensions defining a listing group filter.
        # Corresponds to the JSON property `path`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionPath]
        attr_accessor :path
      
        # Immutable. The resource name of the asset group listing group filter. Asset
        # group listing group filter resource name have the form: `customers/`
        # customer_id`/assetGroupListingGroupFilters/`asset_group_id`~`
        # listing_group_filter_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # Immutable. Type of a listing group filter node.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Immutable. The vertical the current node tree represents. All nodes in the
        # same tree must belong to the same vertical.
        # Corresponds to the JSON property `vertical`
        # @return [String]
        attr_accessor :vertical
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset_group = args[:asset_group] if args.key?(:asset_group)
          @case_value = args[:case_value] if args.key?(:case_value)
          @id = args[:id] if args.key?(:id)
          @parent_listing_group_filter = args[:parent_listing_group_filter] if args.key?(:parent_listing_group_filter)
          @path = args[:path] if args.key?(:path)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @type = args[:type] if args.key?(:type)
          @vertical = args[:vertical] if args.key?(:vertical)
        end
      end
      
      # AssetGroupSignal represents a signal in an asset group. The existence of a
      # signal tells the performance max campaign who's most likely to convert.
      # Performance Max uses the signal to look for new people with similar or
      # stronger intent to find conversions across Search, Display, Video, and more.
      class GoogleAdsSearchads360V0ResourcesAssetGroupSignal
        include Google::Apis::Core::Hashable
      
        # Immutable. The asset group which this asset group signal belongs to.
        # Corresponds to the JSON property `assetGroup`
        # @return [String]
        attr_accessor :asset_group
      
        # An audience criterion.
        # Corresponds to the JSON property `audience`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonAudienceInfo]
        attr_accessor :audience
      
        # Immutable. The resource name of the asset group signal. Asset group signal
        # resource name have the form: `customers/`customer_id`/assetGroupSignals/`
        # asset_group_id`~`signal_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset_group = args[:asset_group] if args.key?(:asset_group)
          @audience = args[:audience] if args.key?(:audience)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # A view on the usage of ad group ad asset combination.
      class GoogleAdsSearchads360V0ResourcesAssetGroupTopCombinationView
        include Google::Apis::Core::Hashable
      
        # Output only. The top combinations of assets that served together.
        # Corresponds to the JSON property `assetGroupTopCombinations`
        # @return [Array<Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAssetGroupAssetCombinationData>]
        attr_accessor :asset_group_top_combinations
      
        # Output only. The resource name of the asset group top combination view.
        # AssetGroup Top Combination view resource names have the form: `"customers/`
        # customer_id`/assetGroupTopCombinationViews/`asset_group_id`~`
        # asset_combination_category`"
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset_group_top_combinations = args[:asset_group_top_combinations] if args.key?(:asset_group_top_combinations)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # An asset set representing a collection of assets. Use AssetSetAsset to link an
      # asset to the asset set.
      class GoogleAdsSearchads360V0ResourcesAssetSet
        include Google::Apis::Core::Hashable
      
        # Output only. The ID of the asset set.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Immutable. The resource name of the asset set. Asset set resource names have
        # the form: `customers/`customer_id`/assetSets/`asset_set_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # AssetSetAsset is the link between an asset and an asset set. Adding an
      # AssetSetAsset links an asset with an asset set.
      class GoogleAdsSearchads360V0ResourcesAssetSetAsset
        include Google::Apis::Core::Hashable
      
        # Immutable. The asset which this asset set asset is linking to.
        # Corresponds to the JSON property `asset`
        # @return [String]
        attr_accessor :asset
      
        # Immutable. The asset set which this asset set asset is linking to.
        # Corresponds to the JSON property `assetSet`
        # @return [String]
        attr_accessor :asset_set
      
        # Immutable. The resource name of the asset set asset. Asset set asset resource
        # names have the form: `customers/`customer_id`/assetSetAssets/`asset_set_id`~`
        # asset_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # Output only. The status of the asset set asset. Read-only.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset = args[:asset] if args.key?(:asset)
          @asset_set = args[:asset_set] if args.key?(:asset_set)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Audience is an effective targeting option that lets you intersect different
      # segment attributes, such as detailed demographics and affinities, to create
      # audiences that represent sections of your target segments.
      class GoogleAdsSearchads360V0ResourcesAudience
        include Google::Apis::Core::Hashable
      
        # Description of this audience.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. ID of the audience.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Required. Name of the audience. It should be unique across all audiences. It
        # must have a minimum length of 1 and maximum length of 255.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Immutable. The resource name of the audience. Audience names have the form: `
        # customers/`customer_id`/audiences/`audience_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # A bidding strategy.
      class GoogleAdsSearchads360V0ResourcesBiddingStrategy
        include Google::Apis::Core::Hashable
      
        # Output only. The number of campaigns attached to this bidding strategy. This
        # field is read-only.
        # Corresponds to the JSON property `campaignCount`
        # @return [Fixnum]
        attr_accessor :campaign_count
      
        # Immutable. The currency used by the bidding strategy (ISO 4217 three-letter
        # code). For bidding strategies in manager customers, this currency can be set
        # on creation and defaults to the manager customer's currency. For serving
        # customers, this field cannot be set; all strategies in a serving customer
        # implicitly use the serving customer's currency. In all cases the
        # effective_currency_code field returns the currency used by the strategy.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Output only. The currency used by the bidding strategy (ISO 4217 three-letter
        # code). For bidding strategies in manager customers, this is the currency set
        # by the advertiser when creating the strategy. For serving customers, this is
        # the customer's currency_code. Bidding strategy metrics are reported in this
        # currency. This field is read-only.
        # Corresponds to the JSON property `effectiveCurrencyCode`
        # @return [String]
        attr_accessor :effective_currency_code
      
        # An automated bidding strategy that raises bids for clicks that seem more
        # likely to lead to a conversion and lowers them for clicks where they seem less
        # likely. This bidding strategy is deprecated and cannot be created anymore. Use
        # ManualCpc with enhanced_cpc_enabled set to true for equivalent functionality.
        # Corresponds to the JSON property `enhancedCpc`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonEnhancedCpc]
        attr_accessor :enhanced_cpc
      
        # Output only. The ID of the bidding strategy.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # An automated bidding strategy to help get the most conversion value for your
        # campaigns while spending your budget.
        # Corresponds to the JSON property `maximizeConversionValue`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonMaximizeConversionValue]
        attr_accessor :maximize_conversion_value
      
        # An automated bidding strategy to help get the most conversions for your
        # campaigns while spending your budget.
        # Corresponds to the JSON property `maximizeConversions`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonMaximizeConversions]
        attr_accessor :maximize_conversions
      
        # The name of the bidding strategy. All bidding strategies within an account
        # must be named distinctly. The length of this string should be between 1 and
        # 255, inclusive, in UTF-8 bytes, (trimmed).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The number of non-removed campaigns attached to this bidding
        # strategy. This field is read-only.
        # Corresponds to the JSON property `nonRemovedCampaignCount`
        # @return [Fixnum]
        attr_accessor :non_removed_campaign_count
      
        # Immutable. The resource name of the bidding strategy. Bidding strategy
        # resource names have the form: `customers/`customer_id`/biddingStrategies/`
        # bidding_strategy_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # Output only. The status of the bidding strategy. This field is read-only.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # An automated bid strategy that sets bids to help get as many conversions as
        # possible at the target cost-per-acquisition (CPA) you set.
        # Corresponds to the JSON property `targetCpa`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTargetCpa]
        attr_accessor :target_cpa
      
        # An automated bidding strategy that sets bids so that a certain percentage of
        # search ads are shown at the top of the first page (or other targeted location).
        # Corresponds to the JSON property `targetImpressionShare`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTargetImpressionShare]
        attr_accessor :target_impression_share
      
        # An automated bidding strategy that sets bids based on the target fraction of
        # auctions where the advertiser should outrank a specific competitor. This
        # strategy is deprecated.
        # Corresponds to the JSON property `targetOutrankShare`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTargetOutrankShare]
        attr_accessor :target_outrank_share
      
        # An automated bidding strategy that helps you maximize revenue while averaging
        # a specific target return on ad spend (ROAS).
        # Corresponds to the JSON property `targetRoas`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTargetRoas]
        attr_accessor :target_roas
      
        # An automated bid strategy that sets your bids to help get as many clicks as
        # possible within your budget.
        # Corresponds to the JSON property `targetSpend`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTargetSpend]
        attr_accessor :target_spend
      
        # Output only. The type of the bidding strategy. Create a bidding strategy by
        # setting the bidding scheme. This field is read-only.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @campaign_count = args[:campaign_count] if args.key?(:campaign_count)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @effective_currency_code = args[:effective_currency_code] if args.key?(:effective_currency_code)
          @enhanced_cpc = args[:enhanced_cpc] if args.key?(:enhanced_cpc)
          @id = args[:id] if args.key?(:id)
          @maximize_conversion_value = args[:maximize_conversion_value] if args.key?(:maximize_conversion_value)
          @maximize_conversions = args[:maximize_conversions] if args.key?(:maximize_conversions)
          @name = args[:name] if args.key?(:name)
          @non_removed_campaign_count = args[:non_removed_campaign_count] if args.key?(:non_removed_campaign_count)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @status = args[:status] if args.key?(:status)
          @target_cpa = args[:target_cpa] if args.key?(:target_cpa)
          @target_impression_share = args[:target_impression_share] if args.key?(:target_impression_share)
          @target_outrank_share = args[:target_outrank_share] if args.key?(:target_outrank_share)
          @target_roas = args[:target_roas] if args.key?(:target_roas)
          @target_spend = args[:target_spend] if args.key?(:target_spend)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A campaign.
      class GoogleAdsSearchads360V0ResourcesCampaign
        include Google::Apis::Core::Hashable
      
        # The ad serving optimization status of the campaign.
        # Corresponds to the JSON property `adServingOptimizationStatus`
        # @return [String]
        attr_accessor :ad_serving_optimization_status
      
        # Immutable. Optional refinement to `advertising_channel_type`. Must be a valid
        # sub-type of the parent channel type. Can be set only when creating campaigns.
        # After campaign is created, the field can not be changed.
        # Corresponds to the JSON property `advertisingChannelSubType`
        # @return [String]
        attr_accessor :advertising_channel_sub_type
      
        # Immutable. The primary serving target for ads within the campaign. The
        # targeting options can be refined in `network_settings`. This field is required
        # and should not be empty when creating new campaigns. Can be set only when
        # creating campaigns. After the campaign is created, the field can not be
        # changed.
        # Corresponds to the JSON property `advertisingChannelType`
        # @return [String]
        attr_accessor :advertising_channel_type
      
        # Portfolio bidding strategy used by campaign.
        # Corresponds to the JSON property `biddingStrategy`
        # @return [String]
        attr_accessor :bidding_strategy
      
        # Output only. The system status of the campaign's bidding strategy.
        # Corresponds to the JSON property `biddingStrategySystemStatus`
        # @return [String]
        attr_accessor :bidding_strategy_system_status
      
        # Output only. The type of bidding strategy. A bidding strategy can be created
        # by setting either the bidding scheme to create a standard bidding strategy or
        # the `bidding_strategy` field to create a portfolio bidding strategy. This
        # field is read-only.
        # Corresponds to the JSON property `biddingStrategyType`
        # @return [String]
        attr_accessor :bidding_strategy_type
      
        # The budget of the campaign.
        # Corresponds to the JSON property `campaignBudget`
        # @return [String]
        attr_accessor :campaign_budget
      
        # Output only. The timestamp when this campaign was created. The timestamp is in
        # the customer's time zone and in "yyyy-MM-dd HH:mm:ss" format. create_time will
        # be deprecated in v1. Use creation_time instead.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The timestamp when this campaign was created. The timestamp is in
        # the customer's time zone and in "yyyy-MM-dd HH:mm:ss" format.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # The setting for controlling Dynamic Search Ads (DSA).
        # Corresponds to the JSON property `dynamicSearchAdsSetting`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCampaignDynamicSearchAdsSetting]
        attr_accessor :dynamic_search_ads_setting
      
        # The last day of the campaign in serving customer's timezone in YYYY-MM-DD
        # format. On create, defaults to 2037-12-30, which means the campaign will run
        # indefinitely. To set an existing campaign to run indefinitely, set this field
        # to 2037-12-30.
        # Corresponds to the JSON property `endDate`
        # @return [String]
        attr_accessor :end_date
      
        # Output only. ID of the campaign in the external engine account. This field is
        # for non-Google Ads account only, for example, Yahoo Japan, Microsoft, Baidu
        # etc. For Google Ads entity, use "campaign.id" instead.
        # Corresponds to the JSON property `engineId`
        # @return [String]
        attr_accessor :engine_id
      
        # The asset field types that should be excluded from this campaign. Asset links
        # with these field types will not be inherited by this campaign from the upper
        # level.
        # Corresponds to the JSON property `excludedParentAssetFieldTypes`
        # @return [Array<String>]
        attr_accessor :excluded_parent_asset_field_types
      
        # Suffix used to append query parameters to landing pages that are served with
        # parallel tracking.
        # Corresponds to the JSON property `finalUrlSuffix`
        # @return [String]
        attr_accessor :final_url_suffix
      
        # A list that limits how often each user will see this campaign's ads.
        # Corresponds to the JSON property `frequencyCaps`
        # @return [Array<Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonFrequencyCapEntry>]
        attr_accessor :frequency_caps
      
        # Represents a collection of settings related to ads geotargeting.
        # Corresponds to the JSON property `geoTargetTypeSetting`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCampaignGeoTargetTypeSetting]
        attr_accessor :geo_target_type_setting
      
        # Output only. The ID of the campaign.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Output only. The resource names of labels attached to this campaign.
        # Corresponds to the JSON property `labels`
        # @return [Array<String>]
        attr_accessor :labels
      
        # Output only. The datetime when this campaign was last modified. The datetime
        # is in the customer's time zone and in "yyyy-MM-dd HH:mm:ss.ssssss" format.
        # Corresponds to the JSON property `lastModifiedTime`
        # @return [String]
        attr_accessor :last_modified_time
      
        # Manual bidding strategy that allows advertiser to set the bid per advertiser-
        # specified action.
        # Corresponds to the JSON property `manualCpa`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonManualCpa]
        attr_accessor :manual_cpa
      
        # Manual click-based bidding where user pays per click.
        # Corresponds to the JSON property `manualCpc`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonManualCpc]
        attr_accessor :manual_cpc
      
        # Manual impression-based bidding where user pays per thousand impressions.
        # Corresponds to the JSON property `manualCpm`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonManualCpm]
        attr_accessor :manual_cpm
      
        # An automated bidding strategy to help get the most conversion value for your
        # campaigns while spending your budget.
        # Corresponds to the JSON property `maximizeConversionValue`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonMaximizeConversionValue]
        attr_accessor :maximize_conversion_value
      
        # An automated bidding strategy to help get the most conversions for your
        # campaigns while spending your budget.
        # Corresponds to the JSON property `maximizeConversions`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonMaximizeConversions]
        attr_accessor :maximize_conversions
      
        # The name of the campaign. This field is required and should not be empty when
        # creating new campaigns. It must not contain any null (code point 0x0), NL line
        # feed (code point 0xA) or carriage return (code point 0xD) characters.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The network settings for the campaign.
        # Corresponds to the JSON property `networkSettings`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCampaignNetworkSettings]
        attr_accessor :network_settings
      
        # Optimization goal setting for this campaign, which includes a set of
        # optimization goal types.
        # Corresponds to the JSON property `optimizationGoalSetting`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCampaignOptimizationGoalSetting]
        attr_accessor :optimization_goal_setting
      
        # A bidding strategy where bids are a fraction of the advertised price for some
        # good or service.
        # Corresponds to the JSON property `percentCpc`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonPercentCpc]
        attr_accessor :percent_cpc
      
        # Settings for Real-Time Bidding, a feature only available for campaigns
        # targeting the Ad Exchange network.
        # Corresponds to the JSON property `realTimeBiddingSetting`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonRealTimeBiddingSetting]
        attr_accessor :real_time_bidding_setting
      
        # Immutable. The resource name of the campaign. Campaign resource names have the
        # form: `customers/`customer_id`/campaigns/`campaign_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # Selective optimization setting for this campaign, which includes a set of
        # conversion actions to optimize this campaign towards. This feature only
        # applies to app campaigns that use MULTI_CHANNEL as AdvertisingChannelType and
        # APP_CAMPAIGN or APP_CAMPAIGN_FOR_ENGAGEMENT as AdvertisingChannelSubType.
        # Corresponds to the JSON property `selectiveOptimization`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCampaignSelectiveOptimization]
        attr_accessor :selective_optimization
      
        # Output only. The ad serving status of the campaign.
        # Corresponds to the JSON property `servingStatus`
        # @return [String]
        attr_accessor :serving_status
      
        # The setting for Shopping campaigns. Defines the universe of products that can
        # be advertised by the campaign, and how this campaign interacts with other
        # Shopping campaigns.
        # Corresponds to the JSON property `shoppingSetting`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCampaignShoppingSetting]
        attr_accessor :shopping_setting
      
        # The date when campaign started in serving customer's timezone in YYYY-MM-DD
        # format.
        # Corresponds to the JSON property `startDate`
        # @return [String]
        attr_accessor :start_date
      
        # The status of the campaign. When a new campaign is added, the status defaults
        # to ENABLED.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # An automated bid strategy that sets bids to help get as many conversions as
        # possible at the target cost-per-acquisition (CPA) you set.
        # Corresponds to the JSON property `targetCpa`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTargetCpa]
        attr_accessor :target_cpa
      
        # Target CPM (cost per thousand impressions) is an automated bidding strategy
        # that sets bids to optimize performance given the target CPM you set.
        # Corresponds to the JSON property `targetCpm`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTargetCpm]
        attr_accessor :target_cpm
      
        # An automated bidding strategy that sets bids so that a certain percentage of
        # search ads are shown at the top of the first page (or other targeted location).
        # Corresponds to the JSON property `targetImpressionShare`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTargetImpressionShare]
        attr_accessor :target_impression_share
      
        # An automated bidding strategy that helps you maximize revenue while averaging
        # a specific target return on ad spend (ROAS).
        # Corresponds to the JSON property `targetRoas`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTargetRoas]
        attr_accessor :target_roas
      
        # An automated bid strategy that sets your bids to help get as many clicks as
        # possible within your budget.
        # Corresponds to the JSON property `targetSpend`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTargetSpend]
        attr_accessor :target_spend
      
        # Campaign-level settings for tracking information.
        # Corresponds to the JSON property `trackingSetting`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCampaignTrackingSetting]
        attr_accessor :tracking_setting
      
        # The URL template for constructing a tracking URL.
        # Corresponds to the JSON property `trackingUrlTemplate`
        # @return [String]
        attr_accessor :tracking_url_template
      
        # The list of mappings used to substitute custom parameter tags in a `
        # tracking_url_template`, `final_urls`, or `mobile_final_urls`.
        # Corresponds to the JSON property `urlCustomParameters`
        # @return [Array<Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonCustomParameter>]
        attr_accessor :url_custom_parameters
      
        # Represents opting out of URL expansion to more targeted URLs. If opted out (
        # true), only the final URLs in the asset group or URLs specified in the
        # advertiser's Google Merchant Center or business data feeds are targeted. If
        # opted in (false), the entire domain will be targeted. This field can only be
        # set for Performance Max campaigns, where the default value is false.
        # Corresponds to the JSON property `urlExpansionOptOut`
        # @return [Boolean]
        attr_accessor :url_expansion_opt_out
        alias_method :url_expansion_opt_out?, :url_expansion_opt_out
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_serving_optimization_status = args[:ad_serving_optimization_status] if args.key?(:ad_serving_optimization_status)
          @advertising_channel_sub_type = args[:advertising_channel_sub_type] if args.key?(:advertising_channel_sub_type)
          @advertising_channel_type = args[:advertising_channel_type] if args.key?(:advertising_channel_type)
          @bidding_strategy = args[:bidding_strategy] if args.key?(:bidding_strategy)
          @bidding_strategy_system_status = args[:bidding_strategy_system_status] if args.key?(:bidding_strategy_system_status)
          @bidding_strategy_type = args[:bidding_strategy_type] if args.key?(:bidding_strategy_type)
          @campaign_budget = args[:campaign_budget] if args.key?(:campaign_budget)
          @create_time = args[:create_time] if args.key?(:create_time)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @dynamic_search_ads_setting = args[:dynamic_search_ads_setting] if args.key?(:dynamic_search_ads_setting)
          @end_date = args[:end_date] if args.key?(:end_date)
          @engine_id = args[:engine_id] if args.key?(:engine_id)
          @excluded_parent_asset_field_types = args[:excluded_parent_asset_field_types] if args.key?(:excluded_parent_asset_field_types)
          @final_url_suffix = args[:final_url_suffix] if args.key?(:final_url_suffix)
          @frequency_caps = args[:frequency_caps] if args.key?(:frequency_caps)
          @geo_target_type_setting = args[:geo_target_type_setting] if args.key?(:geo_target_type_setting)
          @id = args[:id] if args.key?(:id)
          @labels = args[:labels] if args.key?(:labels)
          @last_modified_time = args[:last_modified_time] if args.key?(:last_modified_time)
          @manual_cpa = args[:manual_cpa] if args.key?(:manual_cpa)
          @manual_cpc = args[:manual_cpc] if args.key?(:manual_cpc)
          @manual_cpm = args[:manual_cpm] if args.key?(:manual_cpm)
          @maximize_conversion_value = args[:maximize_conversion_value] if args.key?(:maximize_conversion_value)
          @maximize_conversions = args[:maximize_conversions] if args.key?(:maximize_conversions)
          @name = args[:name] if args.key?(:name)
          @network_settings = args[:network_settings] if args.key?(:network_settings)
          @optimization_goal_setting = args[:optimization_goal_setting] if args.key?(:optimization_goal_setting)
          @percent_cpc = args[:percent_cpc] if args.key?(:percent_cpc)
          @real_time_bidding_setting = args[:real_time_bidding_setting] if args.key?(:real_time_bidding_setting)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @selective_optimization = args[:selective_optimization] if args.key?(:selective_optimization)
          @serving_status = args[:serving_status] if args.key?(:serving_status)
          @shopping_setting = args[:shopping_setting] if args.key?(:shopping_setting)
          @start_date = args[:start_date] if args.key?(:start_date)
          @status = args[:status] if args.key?(:status)
          @target_cpa = args[:target_cpa] if args.key?(:target_cpa)
          @target_cpm = args[:target_cpm] if args.key?(:target_cpm)
          @target_impression_share = args[:target_impression_share] if args.key?(:target_impression_share)
          @target_roas = args[:target_roas] if args.key?(:target_roas)
          @target_spend = args[:target_spend] if args.key?(:target_spend)
          @tracking_setting = args[:tracking_setting] if args.key?(:tracking_setting)
          @tracking_url_template = args[:tracking_url_template] if args.key?(:tracking_url_template)
          @url_custom_parameters = args[:url_custom_parameters] if args.key?(:url_custom_parameters)
          @url_expansion_opt_out = args[:url_expansion_opt_out] if args.key?(:url_expansion_opt_out)
        end
      end
      
      # A link between a Campaign and an Asset.
      class GoogleAdsSearchads360V0ResourcesCampaignAsset
        include Google::Apis::Core::Hashable
      
        # Immutable. The asset which is linked to the campaign.
        # Corresponds to the JSON property `asset`
        # @return [String]
        attr_accessor :asset
      
        # Immutable. The campaign to which the asset is linked.
        # Corresponds to the JSON property `campaign`
        # @return [String]
        attr_accessor :campaign
      
        # Immutable. The resource name of the campaign asset. CampaignAsset resource
        # names have the form: `customers/`customer_id`/campaignAssets/`campaign_id`~`
        # asset_id`~`field_type``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # Output only. Status of the campaign asset.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset = args[:asset] if args.key?(:asset)
          @campaign = args[:campaign] if args.key?(:campaign)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # CampaignAssetSet is the linkage between a campaign and an asset set. Adding a
      # CampaignAssetSet links an asset set with a campaign.
      class GoogleAdsSearchads360V0ResourcesCampaignAssetSet
        include Google::Apis::Core::Hashable
      
        # Immutable. The asset set which is linked to the campaign.
        # Corresponds to the JSON property `assetSet`
        # @return [String]
        attr_accessor :asset_set
      
        # Immutable. The campaign to which this asset set is linked.
        # Corresponds to the JSON property `campaign`
        # @return [String]
        attr_accessor :campaign
      
        # Immutable. The resource name of the campaign asset set. Asset set asset
        # resource names have the form: `customers/`customer_id`/campaignAssetSets/`
        # campaign_id`~`asset_set_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # Output only. The status of the campaign asset set asset. Read-only.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset_set = args[:asset_set] if args.key?(:asset_set)
          @campaign = args[:campaign] if args.key?(:campaign)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # A campaign audience view. Includes performance data from interests and
      # remarketing lists for Display Network and YouTube Network ads, and remarketing
      # lists for search ads (RLSA), aggregated by campaign and audience criterion.
      # This view only includes audiences attached at the campaign level.
      class GoogleAdsSearchads360V0ResourcesCampaignAudienceView
        include Google::Apis::Core::Hashable
      
        # Output only. The resource name of the campaign audience view. Campaign
        # audience view resource names have the form: `customers/`customer_id`/
        # campaignAudienceViews/`campaign_id`~`criterion_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # A campaign budget.
      class GoogleAdsSearchads360V0ResourcesCampaignBudget
        include Google::Apis::Core::Hashable
      
        # The amount of the budget, in the local currency for the account. Amount is
        # specified in micros, where one million is equivalent to one currency unit.
        # Monthly spend is capped at 30.4 times this amount.
        # Corresponds to the JSON property `amountMicros`
        # @return [Fixnum]
        attr_accessor :amount_micros
      
        # The delivery method that determines the rate at which the campaign budget is
        # spent. Defaults to STANDARD if unspecified in a create operation.
        # Corresponds to the JSON property `deliveryMethod`
        # @return [String]
        attr_accessor :delivery_method
      
        # Immutable. Period over which to spend the budget. Defaults to DAILY if not
        # specified.
        # Corresponds to the JSON property `period`
        # @return [String]
        attr_accessor :period
      
        # Immutable. The resource name of the campaign budget. Campaign budget resource
        # names have the form: `customers/`customer_id`/campaignBudgets/`
        # campaign_budget_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amount_micros = args[:amount_micros] if args.key?(:amount_micros)
          @delivery_method = args[:delivery_method] if args.key?(:delivery_method)
          @period = args[:period] if args.key?(:period)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # A campaign criterion.
      class GoogleAdsSearchads360V0ResourcesCampaignCriterion
        include Google::Apis::Core::Hashable
      
        # An age range criterion.
        # Corresponds to the JSON property `ageRange`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonAgeRangeInfo]
        attr_accessor :age_range
      
        # The modifier for the bids when the criterion matches. The modifier must be in
        # the range: 0.1 - 10.0. Most targetable criteria types support modifiers. Use 0
        # to opt out of a Device type.
        # Corresponds to the JSON property `bidModifier`
        # @return [Float]
        attr_accessor :bid_modifier
      
        # Output only. The ID of the criterion. This field is ignored during mutate.
        # Corresponds to the JSON property `criterionId`
        # @return [Fixnum]
        attr_accessor :criterion_id
      
        # A device criterion.
        # Corresponds to the JSON property `device`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonDeviceInfo]
        attr_accessor :device
      
        # Output only. The display name of the criterion. This field is ignored for
        # mutates.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # A gender criterion.
        # Corresponds to the JSON property `gender`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonGenderInfo]
        attr_accessor :gender
      
        # A keyword criterion.
        # Corresponds to the JSON property `keyword`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonKeywordInfo]
        attr_accessor :keyword
      
        # A language criterion.
        # Corresponds to the JSON property `language`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonLanguageInfo]
        attr_accessor :language
      
        # Output only. The datetime when this campaign criterion was last modified. The
        # datetime is in the customer's time zone and in "yyyy-MM-dd HH:mm:ss.ssssss"
        # format.
        # Corresponds to the JSON property `lastModifiedTime`
        # @return [String]
        attr_accessor :last_modified_time
      
        # A location criterion.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonLocationInfo]
        attr_accessor :location
      
        # A radius around a list of locations specified through a feed.
        # Corresponds to the JSON property `locationGroup`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonLocationGroupInfo]
        attr_accessor :location_group
      
        # Immutable. Whether to target (`false`) or exclude (`true`) the criterion.
        # Corresponds to the JSON property `negative`
        # @return [Boolean]
        attr_accessor :negative
        alias_method :negative?, :negative
      
        # Immutable. The resource name of the campaign criterion. Campaign criterion
        # resource names have the form: `customers/`customer_id`/campaignCriteria/`
        # campaign_id`~`criterion_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # The status of the criterion.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Output only. The type of the criterion.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # A User List criterion. Represents a user list that is defined by the
        # advertiser to be targeted.
        # Corresponds to the JSON property `userList`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonUserListInfo]
        attr_accessor :user_list
      
        # Represents a criterion for targeting webpages of an advertiser's website.
        # Corresponds to the JSON property `webpage`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonWebpageInfo]
        attr_accessor :webpage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @age_range = args[:age_range] if args.key?(:age_range)
          @bid_modifier = args[:bid_modifier] if args.key?(:bid_modifier)
          @criterion_id = args[:criterion_id] if args.key?(:criterion_id)
          @device = args[:device] if args.key?(:device)
          @display_name = args[:display_name] if args.key?(:display_name)
          @gender = args[:gender] if args.key?(:gender)
          @keyword = args[:keyword] if args.key?(:keyword)
          @language = args[:language] if args.key?(:language)
          @last_modified_time = args[:last_modified_time] if args.key?(:last_modified_time)
          @location = args[:location] if args.key?(:location)
          @location_group = args[:location_group] if args.key?(:location_group)
          @negative = args[:negative] if args.key?(:negative)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @status = args[:status] if args.key?(:status)
          @type = args[:type] if args.key?(:type)
          @user_list = args[:user_list] if args.key?(:user_list)
          @webpage = args[:webpage] if args.key?(:webpage)
        end
      end
      
      # Represents a relationship between a campaign and a label.
      class GoogleAdsSearchads360V0ResourcesCampaignLabel
        include Google::Apis::Core::Hashable
      
        # Immutable. The campaign to which the label is attached.
        # Corresponds to the JSON property `campaign`
        # @return [String]
        attr_accessor :campaign
      
        # Immutable. The label assigned to the campaign.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # Immutable. Name of the resource. Campaign label resource names have the form: `
        # customers/`customer_id`/campaignLabels/`campaign_id`~`label_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @campaign = args[:campaign] if args.key?(:campaign)
          @label = args[:label] if args.key?(:label)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # Cart data sales view.
      class GoogleAdsSearchads360V0ResourcesCartDataSalesView
        include Google::Apis::Core::Hashable
      
        # Output only. The resource name of the Cart data sales view. Cart data sales
        # view resource names have the form: `customers/`customer_id`/cartDataSalesView`
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # A conversion.
      class GoogleAdsSearchads360V0ResourcesConversion
        include Google::Apis::Core::Hashable
      
        # Output only. Ad ID. A value of 0 indicates that the ad is unattributed.
        # Corresponds to the JSON property `adId`
        # @return [Fixnum]
        attr_accessor :ad_id
      
        # Output only. For offline conversions, this is an ID provided by advertisers.
        # If an advertiser doesn't specify such an ID, Search Ads 360 generates one. For
        # online conversions, this is equal to the id column or the floodlight_order_id
        # column depending on the advertiser's Floodlight instructions.
        # Corresponds to the JSON property `advertiserConversionId`
        # @return [String]
        attr_accessor :advertiser_conversion_id
      
        # Output only. Asset field type of the conversion event.
        # Corresponds to the JSON property `assetFieldType`
        # @return [String]
        attr_accessor :asset_field_type
      
        # Output only. ID of the asset which was interacted with during the conversion
        # event.
        # Corresponds to the JSON property `assetId`
        # @return [Fixnum]
        attr_accessor :asset_id
      
        # Output only. What the conversion is attributed to: Visit or Keyword+Ad.
        # Corresponds to the JSON property `attributionType`
        # @return [String]
        attr_accessor :attribution_type
      
        # Output only. A unique string, for the visit that the conversion is attributed
        # to, that is passed to the landing page as the click id URL parameter.
        # Corresponds to the JSON property `clickId`
        # @return [String]
        attr_accessor :click_id
      
        # Output only. The timestamp of the conversion event.
        # Corresponds to the JSON property `conversionDateTime`
        # @return [String]
        attr_accessor :conversion_date_time
      
        # Output only. The timestamp of the last time the conversion was modified.
        # Corresponds to the JSON property `conversionLastModifiedDateTime`
        # @return [String]
        attr_accessor :conversion_last_modified_date_time
      
        # Output only. The quantity of items recorded by the conversion, as determined
        # by the qty url parameter. The advertiser is responsible for dynamically
        # populating the parameter (such as number of items sold in the conversion),
        # otherwise it defaults to 1.
        # Corresponds to the JSON property `conversionQuantity`
        # @return [Fixnum]
        attr_accessor :conversion_quantity
      
        # Output only. The adjusted revenue in micros for the conversion event. This
        # will always be in the currency of the serving account.
        # Corresponds to the JSON property `conversionRevenueMicros`
        # @return [Fixnum]
        attr_accessor :conversion_revenue_micros
      
        # Output only. The timestamp of the visit that the conversion is attributed to.
        # Corresponds to the JSON property `conversionVisitDateTime`
        # @return [String]
        attr_accessor :conversion_visit_date_time
      
        # Output only. Search Ads 360 criterion ID. A value of 0 indicates that the
        # criterion is unattributed.
        # Corresponds to the JSON property `criterionId`
        # @return [Fixnum]
        attr_accessor :criterion_id
      
        # Output only. The Floodlight order ID provided by the advertiser for the
        # conversion.
        # Corresponds to the JSON property `floodlightOrderId`
        # @return [String]
        attr_accessor :floodlight_order_id
      
        # Output only. The original, unchanged revenue associated with the Floodlight
        # event (in the currency of the current report), before Floodlight currency
        # instruction modifications.
        # Corresponds to the JSON property `floodlightOriginalRevenue`
        # @return [Fixnum]
        attr_accessor :floodlight_original_revenue
      
        # Output only. The ID of the conversion
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Output only. The SearchAds360 inventory account ID containing the product that
        # was clicked on. SearchAds360 generates this ID when you link an inventory
        # account in SearchAds360.
        # Corresponds to the JSON property `merchantId`
        # @return [Fixnum]
        attr_accessor :merchant_id
      
        # Output only. The sales channel of the product that was clicked on: Online or
        # Local.
        # Corresponds to the JSON property `productChannel`
        # @return [String]
        attr_accessor :product_channel
      
        # Output only. The country (ISO-3166-format) registered for the inventory feed
        # that contains the product clicked on.
        # Corresponds to the JSON property `productCountryCode`
        # @return [String]
        attr_accessor :product_country_code
      
        # Output only. The ID of the product clicked on.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # Output only. The language (ISO-639-1) that has been set for the Merchant
        # Center feed containing data about the product.
        # Corresponds to the JSON property `productLanguageCode`
        # @return [String]
        attr_accessor :product_language_code
      
        # Output only. The store in the Local Inventory Ad that was clicked on. This
        # should match the store IDs used in your local products feed.
        # Corresponds to the JSON property `productStoreId`
        # @return [String]
        attr_accessor :product_store_id
      
        # Output only. The resource name of the conversion. Conversion resource names
        # have the form: `customers/`customer_id`/conversions/`ad_group_id`~`
        # criterion_id`~`ds_conversion_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # Output only. The status of the conversion, either ENABLED or REMOVED..
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Output only. The SearchAds360 visit ID that the conversion is attributed to.
        # Corresponds to the JSON property `visitId`
        # @return [Fixnum]
        attr_accessor :visit_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_id = args[:ad_id] if args.key?(:ad_id)
          @advertiser_conversion_id = args[:advertiser_conversion_id] if args.key?(:advertiser_conversion_id)
          @asset_field_type = args[:asset_field_type] if args.key?(:asset_field_type)
          @asset_id = args[:asset_id] if args.key?(:asset_id)
          @attribution_type = args[:attribution_type] if args.key?(:attribution_type)
          @click_id = args[:click_id] if args.key?(:click_id)
          @conversion_date_time = args[:conversion_date_time] if args.key?(:conversion_date_time)
          @conversion_last_modified_date_time = args[:conversion_last_modified_date_time] if args.key?(:conversion_last_modified_date_time)
          @conversion_quantity = args[:conversion_quantity] if args.key?(:conversion_quantity)
          @conversion_revenue_micros = args[:conversion_revenue_micros] if args.key?(:conversion_revenue_micros)
          @conversion_visit_date_time = args[:conversion_visit_date_time] if args.key?(:conversion_visit_date_time)
          @criterion_id = args[:criterion_id] if args.key?(:criterion_id)
          @floodlight_order_id = args[:floodlight_order_id] if args.key?(:floodlight_order_id)
          @floodlight_original_revenue = args[:floodlight_original_revenue] if args.key?(:floodlight_original_revenue)
          @id = args[:id] if args.key?(:id)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @product_channel = args[:product_channel] if args.key?(:product_channel)
          @product_country_code = args[:product_country_code] if args.key?(:product_country_code)
          @product_id = args[:product_id] if args.key?(:product_id)
          @product_language_code = args[:product_language_code] if args.key?(:product_language_code)
          @product_store_id = args[:product_store_id] if args.key?(:product_store_id)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @status = args[:status] if args.key?(:status)
          @visit_id = args[:visit_id] if args.key?(:visit_id)
        end
      end
      
      # A conversion action.
      class GoogleAdsSearchads360V0ResourcesConversionAction
        include Google::Apis::Core::Hashable
      
        # App ID for an app conversion action.
        # Corresponds to the JSON property `appId`
        # @return [String]
        attr_accessor :app_id
      
        # Settings related to this conversion action's attribution model.
        # Corresponds to the JSON property `attributionModelSettings`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesConversionActionAttributionModelSettings]
        attr_accessor :attribution_model_settings
      
        # The category of conversions reported for this conversion action.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # The maximum number of days that may elapse between an interaction (for example,
        # a click) and a conversion event.
        # Corresponds to the JSON property `clickThroughLookbackWindowDays`
        # @return [Fixnum]
        attr_accessor :click_through_lookback_window_days
      
        # Output only. Timestamp of the Floodlight activity's creation, formatted in ISO
        # 8601.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # Settings related to a Floodlight conversion action.
        # Corresponds to the JSON property `floodlightSettings`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesConversionActionFloodlightSettings]
        attr_accessor :floodlight_settings
      
        # Output only. The ID of the conversion action.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Whether this conversion action should be included in the "
        # client_account_conversions" metric.
        # Corresponds to the JSON property `includeInClientAccountConversionsMetric`
        # @return [Boolean]
        attr_accessor :include_in_client_account_conversions_metric
        alias_method :include_in_client_account_conversions_metric?, :include_in_client_account_conversions_metric
      
        # Output only. Whether this conversion action should be included in the "
        # conversions" metric.
        # Corresponds to the JSON property `includeInConversionsMetric`
        # @return [Boolean]
        attr_accessor :include_in_conversions_metric
        alias_method :include_in_conversions_metric?, :include_in_conversions_metric
      
        # The name of the conversion action. This field is required and should not be
        # empty when creating new conversion actions.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The resource name of the conversion action owner customer, or
        # null if this is a system-defined conversion action.
        # Corresponds to the JSON property `ownerCustomer`
        # @return [String]
        attr_accessor :owner_customer
      
        # If a conversion action's primary_for_goal bit is false, the conversion action
        # is non-biddable for all campaigns regardless of their customer conversion goal
        # or campaign conversion goal. However, custom conversion goals do not respect
        # primary_for_goal, so if a campaign has a custom conversion goal configured
        # with a primary_for_goal = false conversion action, that conversion action is
        # still biddable. By default, primary_for_goal will be true if not set. In V9,
        # primary_for_goal can only be set to false after creation through an 'update'
        # operation because it's not declared as optional.
        # Corresponds to the JSON property `primaryForGoal`
        # @return [Boolean]
        attr_accessor :primary_for_goal
        alias_method :primary_for_goal?, :primary_for_goal
      
        # Immutable. The resource name of the conversion action. Conversion action
        # resource names have the form: `customers/`customer_id`/conversionActions/`
        # conversion_action_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # The status of this conversion action for conversion event accrual.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Immutable. The type of this conversion action.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Settings related to the value for conversion events associated with this
        # conversion action.
        # Corresponds to the JSON property `valueSettings`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesConversionActionValueSettings]
        attr_accessor :value_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_id = args[:app_id] if args.key?(:app_id)
          @attribution_model_settings = args[:attribution_model_settings] if args.key?(:attribution_model_settings)
          @category = args[:category] if args.key?(:category)
          @click_through_lookback_window_days = args[:click_through_lookback_window_days] if args.key?(:click_through_lookback_window_days)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @floodlight_settings = args[:floodlight_settings] if args.key?(:floodlight_settings)
          @id = args[:id] if args.key?(:id)
          @include_in_client_account_conversions_metric = args[:include_in_client_account_conversions_metric] if args.key?(:include_in_client_account_conversions_metric)
          @include_in_conversions_metric = args[:include_in_conversions_metric] if args.key?(:include_in_conversions_metric)
          @name = args[:name] if args.key?(:name)
          @owner_customer = args[:owner_customer] if args.key?(:owner_customer)
          @primary_for_goal = args[:primary_for_goal] if args.key?(:primary_for_goal)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @status = args[:status] if args.key?(:status)
          @type = args[:type] if args.key?(:type)
          @value_settings = args[:value_settings] if args.key?(:value_settings)
        end
      end
      
      # A collection of customer-wide settings related to Search Ads 360 Conversion
      # Tracking.
      class GoogleAdsSearchads360V0ResourcesConversionTrackingSetting
        include Google::Apis::Core::Hashable
      
        # Output only. Whether the customer has accepted customer data terms. If using
        # cross-account conversion tracking, this value is inherited from the manager.
        # This field is read-only. For more information, see https://support.google.com/
        # adspolicy/answer/7475709.
        # Corresponds to the JSON property `acceptedCustomerDataTerms`
        # @return [Boolean]
        attr_accessor :accepted_customer_data_terms
        alias_method :accepted_customer_data_terms?, :accepted_customer_data_terms
      
        # Output only. The conversion tracking id used for this account. This id doesn't
        # indicate whether the customer uses conversion tracking (
        # conversion_tracking_status does). This field is read-only.
        # Corresponds to the JSON property `conversionTrackingId`
        # @return [Fixnum]
        attr_accessor :conversion_tracking_id
      
        # Output only. Conversion tracking status. It indicates whether the customer is
        # using conversion tracking, and who is the conversion tracking owner of this
        # customer. If this customer is using cross-account conversion tracking, the
        # value returned will differ based on the `login-customer-id` of the request.
        # Corresponds to the JSON property `conversionTrackingStatus`
        # @return [String]
        attr_accessor :conversion_tracking_status
      
        # Output only. The conversion tracking id of the customer's manager. This is set
        # when the customer is opted into cross-account conversion tracking, and it
        # overrides conversion_tracking_id.
        # Corresponds to the JSON property `crossAccountConversionTrackingId`
        # @return [Fixnum]
        attr_accessor :cross_account_conversion_tracking_id
      
        # Output only. Whether the customer is opted-in for enhanced conversions for
        # leads. If using cross-account conversion tracking, this value is inherited
        # from the manager. This field is read-only.
        # Corresponds to the JSON property `enhancedConversionsForLeadsEnabled`
        # @return [Boolean]
        attr_accessor :enhanced_conversions_for_leads_enabled
        alias_method :enhanced_conversions_for_leads_enabled?, :enhanced_conversions_for_leads_enabled
      
        # Output only. The resource name of the customer where conversions are created
        # and managed. This field is read-only.
        # Corresponds to the JSON property `googleAdsConversionCustomer`
        # @return [String]
        attr_accessor :google_ads_conversion_customer
      
        # Output only. The conversion tracking id of the customer's manager. This is set
        # when the customer is opted into conversion tracking, and it overrides
        # conversion_tracking_id. This field can only be managed through the Google Ads
        # UI. This field is read-only.
        # Corresponds to the JSON property `googleAdsCrossAccountConversionTrackingId`
        # @return [Fixnum]
        attr_accessor :google_ads_cross_account_conversion_tracking_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accepted_customer_data_terms = args[:accepted_customer_data_terms] if args.key?(:accepted_customer_data_terms)
          @conversion_tracking_id = args[:conversion_tracking_id] if args.key?(:conversion_tracking_id)
          @conversion_tracking_status = args[:conversion_tracking_status] if args.key?(:conversion_tracking_status)
          @cross_account_conversion_tracking_id = args[:cross_account_conversion_tracking_id] if args.key?(:cross_account_conversion_tracking_id)
          @enhanced_conversions_for_leads_enabled = args[:enhanced_conversions_for_leads_enabled] if args.key?(:enhanced_conversions_for_leads_enabled)
          @google_ads_conversion_customer = args[:google_ads_conversion_customer] if args.key?(:google_ads_conversion_customer)
          @google_ads_cross_account_conversion_tracking_id = args[:google_ads_cross_account_conversion_tracking_id] if args.key?(:google_ads_cross_account_conversion_tracking_id)
        end
      end
      
      # A custom column. See Search Ads 360 custom column at https://support.google.
      # com/sa360/answer/9633916
      class GoogleAdsSearchads360V0ResourcesCustomColumn
        include Google::Apis::Core::Hashable
      
        # Output only. User-defined description of the custom column.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. ID of the custom column.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Output only. User-defined name of the custom column.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. True when the custom column is available to be used in the query
        # of SearchAds360Service.Search and SearchAds360Service.SearchStream.
        # Corresponds to the JSON property `queryable`
        # @return [Boolean]
        attr_accessor :queryable
        alias_method :queryable?, :queryable
      
        # Output only. The list of the referenced system columns of this custom column.
        # For example, A custom column "sum of impressions and clicks" has referenced
        # system columns of `"metrics.clicks", "metrics.impressions"`.
        # Corresponds to the JSON property `referencedSystemColumns`
        # @return [Array<String>]
        attr_accessor :referenced_system_columns
      
        # Output only. True when the custom column is referring to one or more
        # attributes.
        # Corresponds to the JSON property `referencesAttributes`
        # @return [Boolean]
        attr_accessor :references_attributes
        alias_method :references_attributes?, :references_attributes
      
        # Output only. True when the custom column is referring to one or more metrics.
        # Corresponds to the JSON property `referencesMetrics`
        # @return [Boolean]
        attr_accessor :references_metrics
        alias_method :references_metrics?, :references_metrics
      
        # Immutable. The resource name of the custom column. Custom column resource
        # names have the form: `customers/`customer_id`/customColumns/`custom_column_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # Output only. The type of the result value of the custom column.
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @queryable = args[:queryable] if args.key?(:queryable)
          @referenced_system_columns = args[:referenced_system_columns] if args.key?(:referenced_system_columns)
          @references_attributes = args[:references_attributes] if args.key?(:references_attributes)
          @references_metrics = args[:references_metrics] if args.key?(:references_metrics)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @value_type = args[:value_type] if args.key?(:value_type)
        end
      end
      
      # A customer.
      class GoogleAdsSearchads360V0ResourcesCustomer
        include Google::Apis::Core::Hashable
      
        # Output only. Account status, for example, Enabled, Paused, Removed, etc.
        # Corresponds to the JSON property `accountStatus`
        # @return [String]
        attr_accessor :account_status
      
        # Output only. Engine account type, for example, Google Ads, Microsoft
        # Advertising, Yahoo Japan, Baidu, Facebook, Engine Track, etc.
        # Corresponds to the JSON property `accountType`
        # @return [String]
        attr_accessor :account_type
      
        # Whether auto-tagging is enabled for the customer.
        # Corresponds to the JSON property `autoTaggingEnabled`
        # @return [Boolean]
        attr_accessor :auto_tagging_enabled
        alias_method :auto_tagging_enabled?, :auto_tagging_enabled
      
        # A collection of customer-wide settings related to Search Ads 360 Conversion
        # Tracking.
        # Corresponds to the JSON property `conversionTrackingSetting`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesConversionTrackingSetting]
        attr_accessor :conversion_tracking_setting
      
        # Output only. The timestamp when this customer was created. The timestamp is in
        # the customer's time zone and in "yyyy-MM-dd HH:mm:ss" format.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # Immutable. The currency in which the account operates. A subset of the
        # currency codes from the ISO 4217 standard is supported.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Optional, non-unique descriptive name of the customer.
        # Corresponds to the JSON property `descriptiveName`
        # @return [String]
        attr_accessor :descriptive_name
      
        # DoubleClick Campaign Manager (DCM) setting for a manager customer.
        # Corresponds to the JSON property `doubleClickCampaignManagerSetting`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting]
        attr_accessor :double_click_campaign_manager_setting
      
        # Output only. ID of the account in the external engine account.
        # Corresponds to the JSON property `engineId`
        # @return [String]
        attr_accessor :engine_id
      
        # The URL template for appending params to the final URL.
        # Corresponds to the JSON property `finalUrlSuffix`
        # @return [String]
        attr_accessor :final_url_suffix
      
        # Output only. The ID of the customer.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Output only. The datetime when this customer was last modified. The datetime
        # is in the customer's time zone and in "yyyy-MM-dd HH:mm:ss.ssssss" format.
        # Corresponds to the JSON property `lastModifiedTime`
        # @return [String]
        attr_accessor :last_modified_time
      
        # Output only. Whether the customer is a manager.
        # Corresponds to the JSON property `manager`
        # @return [Boolean]
        attr_accessor :manager
        alias_method :manager?, :manager
      
        # Immutable. The resource name of the customer. Customer resource names have the
        # form: `customers/`customer_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # Output only. The status of the customer.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Immutable. The local timezone ID of the customer.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        # The URL template for constructing a tracking URL out of parameters.
        # Corresponds to the JSON property `trackingUrlTemplate`
        # @return [String]
        attr_accessor :tracking_url_template
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_status = args[:account_status] if args.key?(:account_status)
          @account_type = args[:account_type] if args.key?(:account_type)
          @auto_tagging_enabled = args[:auto_tagging_enabled] if args.key?(:auto_tagging_enabled)
          @conversion_tracking_setting = args[:conversion_tracking_setting] if args.key?(:conversion_tracking_setting)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @descriptive_name = args[:descriptive_name] if args.key?(:descriptive_name)
          @double_click_campaign_manager_setting = args[:double_click_campaign_manager_setting] if args.key?(:double_click_campaign_manager_setting)
          @engine_id = args[:engine_id] if args.key?(:engine_id)
          @final_url_suffix = args[:final_url_suffix] if args.key?(:final_url_suffix)
          @id = args[:id] if args.key?(:id)
          @last_modified_time = args[:last_modified_time] if args.key?(:last_modified_time)
          @manager = args[:manager] if args.key?(:manager)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @status = args[:status] if args.key?(:status)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @tracking_url_template = args[:tracking_url_template] if args.key?(:tracking_url_template)
        end
      end
      
      # A link between a customer and an asset.
      class GoogleAdsSearchads360V0ResourcesCustomerAsset
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. The asset which is linked to the customer.
        # Corresponds to the JSON property `asset`
        # @return [String]
        attr_accessor :asset
      
        # Immutable. The resource name of the customer asset. CustomerAsset resource
        # names have the form: `customers/`customer_id`/customerAssets/`asset_id`~`
        # field_type``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # Status of the customer asset.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset = args[:asset] if args.key?(:asset)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # CustomerAssetSet is the linkage between a customer and an asset set. Adding a
      # CustomerAssetSet links an asset set with a customer.
      class GoogleAdsSearchads360V0ResourcesCustomerAssetSet
        include Google::Apis::Core::Hashable
      
        # Immutable. The asset set which is linked to the customer.
        # Corresponds to the JSON property `assetSet`
        # @return [String]
        attr_accessor :asset_set
      
        # Immutable. The customer to which this asset set is linked.
        # Corresponds to the JSON property `customer`
        # @return [String]
        attr_accessor :customer
      
        # Immutable. The resource name of the customer asset set. Asset set asset
        # resource names have the form: `customers/`customer_id`/customerAssetSets/`
        # asset_set_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # Output only. The status of the customer asset set asset. Read-only.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset_set = args[:asset_set] if args.key?(:asset_set)
          @customer = args[:customer] if args.key?(:customer)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # A link between the given customer and a client customer. CustomerClients only
      # exist for manager customers. All direct and indirect client customers are
      # included, as well as the manager itself.
      class GoogleAdsSearchads360V0ResourcesCustomerClient
        include Google::Apis::Core::Hashable
      
        # Output only. The resource names of the labels owned by the requesting customer
        # that are applied to the client customer. Label resource names have the form: `
        # customers/`customer_id`/labels/`label_id``
        # Corresponds to the JSON property `appliedLabels`
        # @return [Array<String>]
        attr_accessor :applied_labels
      
        # Output only. The resource name of the client-customer which is linked to the
        # given customer. Read only.
        # Corresponds to the JSON property `clientCustomer`
        # @return [String]
        attr_accessor :client_customer
      
        # Output only. Currency code (for example, 'USD', 'EUR') for the client. Read
        # only.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Output only. Descriptive name for the client. Read only.
        # Corresponds to the JSON property `descriptiveName`
        # @return [String]
        attr_accessor :descriptive_name
      
        # Output only. Specifies whether this is a hidden account. Read only.
        # Corresponds to the JSON property `hidden`
        # @return [Boolean]
        attr_accessor :hidden
        alias_method :hidden?, :hidden
      
        # Output only. The ID of the client customer. Read only.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Output only. Distance between given customer and client. For self link, the
        # level value will be 0. Read only.
        # Corresponds to the JSON property `level`
        # @return [Fixnum]
        attr_accessor :level
      
        # Output only. Identifies if the client is a manager. Read only.
        # Corresponds to the JSON property `manager`
        # @return [Boolean]
        attr_accessor :manager
        alias_method :manager?, :manager
      
        # Output only. The resource name of the customer client. CustomerClient resource
        # names have the form: `customers/`customer_id`/customerClients/`
        # client_customer_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # Output only. The status of the client customer. Read only.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Output only. Identifies if the client is a test account. Read only.
        # Corresponds to the JSON property `testAccount`
        # @return [Boolean]
        attr_accessor :test_account
        alias_method :test_account?, :test_account
      
        # Output only. Common Locale Data Repository (CLDR) string representation of the
        # time zone of the client, for example, America/Los_Angeles. Read only.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @applied_labels = args[:applied_labels] if args.key?(:applied_labels)
          @client_customer = args[:client_customer] if args.key?(:client_customer)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @descriptive_name = args[:descriptive_name] if args.key?(:descriptive_name)
          @hidden = args[:hidden] if args.key?(:hidden)
          @id = args[:id] if args.key?(:id)
          @level = args[:level] if args.key?(:level)
          @manager = args[:manager] if args.key?(:manager)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @status = args[:status] if args.key?(:status)
          @test_account = args[:test_account] if args.key?(:test_account)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # Represents customer-manager link relationship.
      class GoogleAdsSearchads360V0ResourcesCustomerManagerLink
        include Google::Apis::Core::Hashable
      
        # Output only. The manager customer linked to the customer.
        # Corresponds to the JSON property `managerCustomer`
        # @return [String]
        attr_accessor :manager_customer
      
        # Output only. ID of the customer-manager link. This field is read only.
        # Corresponds to the JSON property `managerLinkId`
        # @return [Fixnum]
        attr_accessor :manager_link_id
      
        # Immutable. Name of the resource. CustomerManagerLink resource names have the
        # form: `customers/`customer_id`/customerManagerLinks/`manager_customer_id`~`
        # manager_link_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # Status of the link between the customer and the manager.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @manager_customer = args[:manager_customer] if args.key?(:manager_customer)
          @manager_link_id = args[:manager_link_id] if args.key?(:manager_link_id)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # DoubleClick Campaign Manager (DCM) setting for a manager customer.
      class GoogleAdsSearchads360V0ResourcesDoubleClickCampaignManagerSetting
        include Google::Apis::Core::Hashable
      
        # Output only. ID of the Campaign Manager advertiser associated with this
        # customer.
        # Corresponds to the JSON property `advertiserId`
        # @return [Fixnum]
        attr_accessor :advertiser_id
      
        # Output only. ID of the Campaign Manager network associated with this customer.
        # Corresponds to the JSON property `networkId`
        # @return [Fixnum]
        attr_accessor :network_id
      
        # Output only. Time zone of the Campaign Manager network associated with this
        # customer in IANA Time Zone Database format, such as America/New_York.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @network_id = args[:network_id] if args.key?(:network_id)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # A dynamic search ads search term view.
      class GoogleAdsSearchads360V0ResourcesDynamicSearchAdsSearchTermView
        include Google::Apis::Core::Hashable
      
        # Output only. The dynamically selected landing page URL of the impression. This
        # field is read-only.
        # Corresponds to the JSON property `landingPage`
        # @return [String]
        attr_accessor :landing_page
      
        # Output only. The resource name of the dynamic search ads search term view.
        # Dynamic search ads search term view resource names have the form: `customers/`
        # customer_id`/dynamicSearchAdsSearchTermViews/`ad_group_id`~`
        # search_term_fingerprint`~`headline_fingerprint`~`landing_page_fingerprint`~`
        # page_url_fingerprint``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @landing_page = args[:landing_page] if args.key?(:landing_page)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # A gender view.
      class GoogleAdsSearchads360V0ResourcesGenderView
        include Google::Apis::Core::Hashable
      
        # Output only. The resource name of the gender view. Gender view resource names
        # have the form: `customers/`customer_id`/genderViews/`ad_group_id`~`
        # criterion_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # A geo target constant.
      class GoogleAdsSearchads360V0ResourcesGeoTargetConstant
        include Google::Apis::Core::Hashable
      
        # Output only. The fully qualified English name, consisting of the target's name
        # and that of its parent and country.
        # Corresponds to the JSON property `canonicalName`
        # @return [String]
        attr_accessor :canonical_name
      
        # Output only. The ISO-3166-1 alpha-2 country code that is associated with the
        # target.
        # Corresponds to the JSON property `countryCode`
        # @return [String]
        attr_accessor :country_code
      
        # Output only. The ID of the geo target constant.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Output only. Geo target constant English name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The resource name of the parent geo target constant. Geo target
        # constant resource names have the form: `geoTargetConstants/`
        # parent_geo_target_constant_id``
        # Corresponds to the JSON property `parentGeoTarget`
        # @return [String]
        attr_accessor :parent_geo_target
      
        # Output only. The resource name of the geo target constant. Geo target constant
        # resource names have the form: `geoTargetConstants/`geo_target_constant_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # Output only. Geo target constant status.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Output only. Geo target constant target type.
        # Corresponds to the JSON property `targetType`
        # @return [String]
        attr_accessor :target_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @canonical_name = args[:canonical_name] if args.key?(:canonical_name)
          @country_code = args[:country_code] if args.key?(:country_code)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @parent_geo_target = args[:parent_geo_target] if args.key?(:parent_geo_target)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @status = args[:status] if args.key?(:status)
          @target_type = args[:target_type] if args.key?(:target_type)
        end
      end
      
      # A keyword view.
      class GoogleAdsSearchads360V0ResourcesKeywordView
        include Google::Apis::Core::Hashable
      
        # Output only. The resource name of the keyword view. Keyword view resource
        # names have the form: `customers/`customer_id`/keywordViews/`ad_group_id`~`
        # criterion_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # A label.
      class GoogleAdsSearchads360V0ResourcesLabel
        include Google::Apis::Core::Hashable
      
        # Output only. ID of the label. Read only.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # The name of the label. This field is required and should not be empty when
        # creating a new label. The length of this string should be between 1 and 80,
        # inclusive.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Immutable. Name of the resource. Label resource names have the form: `
        # customers/`customer_id`/labels/`label_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # Output only. Status of the label. Read only.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # A type of label displaying text on a colored background.
        # Corresponds to the JSON property `textLabel`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonTextLabel]
        attr_accessor :text_label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @status = args[:status] if args.key?(:status)
          @text_label = args[:text_label] if args.key?(:text_label)
        end
      end
      
      # A language.
      class GoogleAdsSearchads360V0ResourcesLanguageConstant
        include Google::Apis::Core::Hashable
      
        # Output only. The language code, for example, "en_US", "en_AU", "es", "fr", etc.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Output only. The ID of the language constant.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Output only. The full name of the language in English, for example, "English (
        # US)", "Spanish", etc.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The resource name of the language constant. Language constant
        # resource names have the form: `languageConstants/`criterion_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # Output only. Whether the language is targetable.
        # Corresponds to the JSON property `targetable`
        # @return [Boolean]
        attr_accessor :targetable
        alias_method :targetable?, :targetable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @targetable = args[:targetable] if args.key?(:targetable)
        end
      end
      
      # Listing dimensions for the asset group listing group filter.
      class GoogleAdsSearchads360V0ResourcesListingGroupFilterDimension
        include Google::Apis::Core::Hashable
      
        # One element of a bidding category at a certain level. Top-level categories are
        # at level 1, their children at level 2, and so on. We currently support up to 5
        # levels. The user must specify a dimension type that indicates the level of the
        # category. All cases of the same subdivision must have the same dimension type (
        # category level).
        # Corresponds to the JSON property `productBiddingCategory`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBiddingCategory]
        attr_accessor :product_bidding_category
      
        # Brand of the product.
        # Corresponds to the JSON property `productBrand`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductBrand]
        attr_accessor :product_brand
      
        # Locality of a product offer.
        # Corresponds to the JSON property `productChannel`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductChannel]
        attr_accessor :product_channel
      
        # Condition of a product offer.
        # Corresponds to the JSON property `productCondition`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCondition]
        attr_accessor :product_condition
      
        # Custom attribute of a product offer.
        # Corresponds to the JSON property `productCustomAttribute`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductCustomAttribute]
        attr_accessor :product_custom_attribute
      
        # Item id of a product offer.
        # Corresponds to the JSON property `productItemId`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductItemId]
        attr_accessor :product_item_id
      
        # Type of a product offer.
        # Corresponds to the JSON property `productType`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionProductType]
        attr_accessor :product_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @product_bidding_category = args[:product_bidding_category] if args.key?(:product_bidding_category)
          @product_brand = args[:product_brand] if args.key?(:product_brand)
          @product_channel = args[:product_channel] if args.key?(:product_channel)
          @product_condition = args[:product_condition] if args.key?(:product_condition)
          @product_custom_attribute = args[:product_custom_attribute] if args.key?(:product_custom_attribute)
          @product_item_id = args[:product_item_id] if args.key?(:product_item_id)
          @product_type = args[:product_type] if args.key?(:product_type)
        end
      end
      
      # The path defining of dimensions defining a listing group filter.
      class GoogleAdsSearchads360V0ResourcesListingGroupFilterDimensionPath
        include Google::Apis::Core::Hashable
      
        # Output only. The complete path of dimensions through the listing group filter
        # hierarchy (excluding the root node) to this listing group filter.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesListingGroupFilterDimension>]
        attr_accessor :dimensions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
        end
      end
      
      # A location view summarizes the performance of campaigns by Location criteria.
      class GoogleAdsSearchads360V0ResourcesLocationView
        include Google::Apis::Core::Hashable
      
        # Output only. The resource name of the location view. Location view resource
        # names have the form: `customers/`customer_id`/locationViews/`campaign_id`~`
        # criterion_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # A Product Bidding Category.
      class GoogleAdsSearchads360V0ResourcesProductBiddingCategoryConstant
        include Google::Apis::Core::Hashable
      
        # Output only. Two-letter upper-case country code of the product bidding
        # category.
        # Corresponds to the JSON property `countryCode`
        # @return [String]
        attr_accessor :country_code
      
        # Output only. ID of the product bidding category. This ID is equivalent to the
        # google_product_category ID as described in this article: https://support.
        # google.com/merchants/answer/6324436.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Output only. Language code of the product bidding category.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Output only. Level of the product bidding category.
        # Corresponds to the JSON property `level`
        # @return [String]
        attr_accessor :level
      
        # Output only. Display value of the product bidding category localized according
        # to language_code.
        # Corresponds to the JSON property `localizedName`
        # @return [String]
        attr_accessor :localized_name
      
        # Output only. Resource name of the parent product bidding category.
        # Corresponds to the JSON property `productBiddingCategoryConstantParent`
        # @return [String]
        attr_accessor :product_bidding_category_constant_parent
      
        # Output only. The resource name of the product bidding category. Product
        # bidding category resource names have the form: `
        # productBiddingCategoryConstants/`country_code`~`level`~`id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # Output only. Status of the product bidding category.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country_code = args[:country_code] if args.key?(:country_code)
          @id = args[:id] if args.key?(:id)
          @language_code = args[:language_code] if args.key?(:language_code)
          @level = args[:level] if args.key?(:level)
          @localized_name = args[:localized_name] if args.key?(:localized_name)
          @product_bidding_category_constant_parent = args[:product_bidding_category_constant_parent] if args.key?(:product_bidding_category_constant_parent)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # A product group view.
      class GoogleAdsSearchads360V0ResourcesProductGroupView
        include Google::Apis::Core::Hashable
      
        # Output only. The resource name of the product group view. Product group view
        # resource names have the form: `customers/`customer_id`/productGroupViews/`
        # ad_group_id`~`criterion_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # A field or resource (artifact) used by SearchAds360Service.
      class GoogleAdsSearchads360V0ResourcesSearchAds360Field
        include Google::Apis::Core::Hashable
      
        # Output only. The names of all resources that are selectable with the described
        # artifact. Fields from these resources do not segment metrics when included in
        # search queries. This field is only set for artifacts whose category is
        # RESOURCE.
        # Corresponds to the JSON property `attributeResources`
        # @return [Array<String>]
        attr_accessor :attribute_resources
      
        # Output only. The category of the artifact.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # Output only. This field determines the operators that can be used with the
        # artifact in WHERE clauses.
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # Output only. Values the artifact can assume if it is a field of type ENUM.
        # This field is only set for artifacts of category SEGMENT or ATTRIBUTE.
        # Corresponds to the JSON property `enumValues`
        # @return [Array<String>]
        attr_accessor :enum_values
      
        # Output only. Whether the artifact can be used in a WHERE clause in search
        # queries.
        # Corresponds to the JSON property `filterable`
        # @return [Boolean]
        attr_accessor :filterable
        alias_method :filterable?, :filterable
      
        # Output only. Whether the field artifact is repeated.
        # Corresponds to the JSON property `isRepeated`
        # @return [Boolean]
        attr_accessor :is_repeated
        alias_method :is_repeated?, :is_repeated
      
        # Output only. This field lists the names of all metrics that are selectable
        # with the described artifact when it is used in the FROM clause. It is only set
        # for artifacts whose category is RESOURCE.
        # Corresponds to the JSON property `metrics`
        # @return [Array<String>]
        attr_accessor :metrics
      
        # Output only. The name of the artifact.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The resource name of the artifact. Artifact resource names have
        # the form: `SearchAds360Fields/`name``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # Output only. This field lists the names of all artifacts, whether a segment or
        # another resource, that segment metrics when included in search queries and
        # when the described artifact is used in the FROM clause. It is only set for
        # artifacts whose category is RESOURCE.
        # Corresponds to the JSON property `segments`
        # @return [Array<String>]
        attr_accessor :segments
      
        # Output only. Whether the artifact can be used in a SELECT clause in search
        # queries.
        # Corresponds to the JSON property `selectable`
        # @return [Boolean]
        attr_accessor :selectable
        alias_method :selectable?, :selectable
      
        # Output only. The names of all resources, segments, and metrics that are
        # selectable with the described artifact.
        # Corresponds to the JSON property `selectableWith`
        # @return [Array<String>]
        attr_accessor :selectable_with
      
        # Output only. Whether the artifact can be used in a ORDER BY clause in search
        # queries.
        # Corresponds to the JSON property `sortable`
        # @return [Boolean]
        attr_accessor :sortable
        alias_method :sortable?, :sortable
      
        # Output only. The URL of proto describing the artifact's data type.
        # Corresponds to the JSON property `typeUrl`
        # @return [String]
        attr_accessor :type_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_resources = args[:attribute_resources] if args.key?(:attribute_resources)
          @category = args[:category] if args.key?(:category)
          @data_type = args[:data_type] if args.key?(:data_type)
          @enum_values = args[:enum_values] if args.key?(:enum_values)
          @filterable = args[:filterable] if args.key?(:filterable)
          @is_repeated = args[:is_repeated] if args.key?(:is_repeated)
          @metrics = args[:metrics] if args.key?(:metrics)
          @name = args[:name] if args.key?(:name)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @segments = args[:segments] if args.key?(:segments)
          @selectable = args[:selectable] if args.key?(:selectable)
          @selectable_with = args[:selectable_with] if args.key?(:selectable_with)
          @sortable = args[:sortable] if args.key?(:sortable)
          @type_url = args[:type_url] if args.key?(:type_url)
        end
      end
      
      # Shopping performance view. Provides Shopping campaign statistics aggregated at
      # several product dimension levels. Product dimension values from Merchant
      # Center such as brand, category, custom attributes, product condition and
      # product type will reflect the state of each dimension as of the date and time
      # when the corresponding event was recorded.
      class GoogleAdsSearchads360V0ResourcesShoppingPerformanceView
        include Google::Apis::Core::Hashable
      
        # Output only. The resource name of the Shopping performance view. Shopping
        # performance view resource names have the form: `customers/`customer_id`/
        # shoppingPerformanceView`
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # A user list. This is a list of users a customer may target.
      class GoogleAdsSearchads360V0ResourcesUserList
        include Google::Apis::Core::Hashable
      
        # Output only. Id of the user list.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Name of this user list. Depending on its access_reason, the user list name may
        # not be unique (for example, if access_reason=SHARED)
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Immutable. The resource name of the user list. User list resource names have
        # the form: `customers/`customer_id`/userLists/`user_list_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # Output only. Type of this list. This field is read-only.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A visit.
      class GoogleAdsSearchads360V0ResourcesVisit
        include Google::Apis::Core::Hashable
      
        # Output only. Ad ID. A value of 0 indicates that the ad is unattributed.
        # Corresponds to the JSON property `adId`
        # @return [Fixnum]
        attr_accessor :ad_id
      
        # Output only. Asset field type of the visit event.
        # Corresponds to the JSON property `assetFieldType`
        # @return [String]
        attr_accessor :asset_field_type
      
        # Output only. ID of the asset which was interacted with during the visit event.
        # Corresponds to the JSON property `assetId`
        # @return [Fixnum]
        attr_accessor :asset_id
      
        # Output only. A unique string for each visit that is passed to the landing page
        # as the click id URL parameter.
        # Corresponds to the JSON property `clickId`
        # @return [String]
        attr_accessor :click_id
      
        # Output only. Search Ads 360 keyword ID. A value of 0 indicates that the
        # keyword is unattributed.
        # Corresponds to the JSON property `criterionId`
        # @return [Fixnum]
        attr_accessor :criterion_id
      
        # Output only. The ID of the visit.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Output only. The Search Ads 360 inventory account ID containing the product
        # that was clicked on. Search Ads 360 generates this ID when you link an
        # inventory account in Search Ads 360.
        # Corresponds to the JSON property `merchantId`
        # @return [Fixnum]
        attr_accessor :merchant_id
      
        # Output only. The sales channel of the product that was clicked on: Online or
        # Local.
        # Corresponds to the JSON property `productChannel`
        # @return [String]
        attr_accessor :product_channel
      
        # Output only. The country (ISO-3166 format) registered for the inventory feed
        # that contains the product clicked on.
        # Corresponds to the JSON property `productCountryCode`
        # @return [String]
        attr_accessor :product_country_code
      
        # Output only. The ID of the product clicked on.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # Output only. The language (ISO-639-1) that has been set for the Merchant
        # Center feed containing data about the product.
        # Corresponds to the JSON property `productLanguageCode`
        # @return [String]
        attr_accessor :product_language_code
      
        # Output only. The store in the Local Inventory Ad that was clicked on. This
        # should match the store IDs used in your local products feed.
        # Corresponds to the JSON property `productStoreId`
        # @return [String]
        attr_accessor :product_store_id
      
        # Output only. The resource name of the visit. Visit resource names have the
        # form: `customers/`customer_id`/visits/`ad_group_id`~`criterion_id`~`
        # ds_visit_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # Output only. The timestamp of the visit event. The timestamp is in the
        # customer's time zone and in "yyyy-MM-dd HH:mm:ss" format.
        # Corresponds to the JSON property `visitDateTime`
        # @return [String]
        attr_accessor :visit_date_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_id = args[:ad_id] if args.key?(:ad_id)
          @asset_field_type = args[:asset_field_type] if args.key?(:asset_field_type)
          @asset_id = args[:asset_id] if args.key?(:asset_id)
          @click_id = args[:click_id] if args.key?(:click_id)
          @criterion_id = args[:criterion_id] if args.key?(:criterion_id)
          @id = args[:id] if args.key?(:id)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @product_channel = args[:product_channel] if args.key?(:product_channel)
          @product_country_code = args[:product_country_code] if args.key?(:product_country_code)
          @product_id = args[:product_id] if args.key?(:product_id)
          @product_language_code = args[:product_language_code] if args.key?(:product_language_code)
          @product_store_id = args[:product_store_id] if args.key?(:product_store_id)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @visit_date_time = args[:visit_date_time] if args.key?(:visit_date_time)
        end
      end
      
      # A webpage view.
      class GoogleAdsSearchads360V0ResourcesWebpageView
        include Google::Apis::Core::Hashable
      
        # Output only. The resource name of the webpage view. Webpage view resource
        # names have the form: `customers/`customer_id`/webpageViews/`ad_group_id`~`
        # criterion_id``
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # Message for custom column header.
      class GoogleAdsSearchads360V0ServicesCustomColumnHeader
        include Google::Apis::Core::Hashable
      
        # The custom column ID.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # The user defined name of the custom column.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # True when the custom column references metrics.
        # Corresponds to the JSON property `referencesMetrics`
        # @return [Boolean]
        attr_accessor :references_metrics
        alias_method :references_metrics?, :references_metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @references_metrics = args[:references_metrics] if args.key?(:references_metrics)
        end
      end
      
      # Response message for CustomerService.ListAccessibleCustomers.
      class GoogleAdsSearchads360V0ServicesListAccessibleCustomersResponse
        include Google::Apis::Core::Hashable
      
        # Resource name of customers directly accessible by the user authenticating the
        # call.
        # Corresponds to the JSON property `resourceNames`
        # @return [Array<String>]
        attr_accessor :resource_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_names = args[:resource_names] if args.key?(:resource_names)
        end
      end
      
      # Response message for fetching all custom columns associated with a customer.
      class GoogleAdsSearchads360V0ServicesListCustomColumnsResponse
        include Google::Apis::Core::Hashable
      
        # The CustomColumns owned by the provided customer.
        # Corresponds to the JSON property `customColumns`
        # @return [Array<Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCustomColumn>]
        attr_accessor :custom_columns
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_columns = args[:custom_columns] if args.key?(:custom_columns)
        end
      end
      
      # A returned row from the query.
      class GoogleAdsSearchads360V0ServicesSearchAds360Row
        include Google::Apis::Core::Hashable
      
        # An ad group.
        # Corresponds to the JSON property `adGroup`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAdGroup]
        attr_accessor :ad_group
      
        # An ad group ad.
        # Corresponds to the JSON property `adGroupAd`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAdGroupAd]
        attr_accessor :ad_group_ad
      
        # A relationship between an ad group ad and a label.
        # Corresponds to the JSON property `adGroupAdLabel`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAdGroupAdLabel]
        attr_accessor :ad_group_ad_label
      
        # A link between an ad group and an asset.
        # Corresponds to the JSON property `adGroupAsset`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAdGroupAsset]
        attr_accessor :ad_group_asset
      
        # AdGroupAssetSet is the linkage between an ad group and an asset set. Creating
        # an AdGroupAssetSet links an asset set with an ad group.
        # Corresponds to the JSON property `adGroupAssetSet`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAdGroupAssetSet]
        attr_accessor :ad_group_asset_set
      
        # An ad group audience view. Includes performance data from interests and
        # remarketing lists for Display Network and YouTube Network ads, and remarketing
        # lists for search ads (RLSA), aggregated at the audience level.
        # Corresponds to the JSON property `adGroupAudienceView`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAdGroupAudienceView]
        attr_accessor :ad_group_audience_view
      
        # Represents an ad group bid modifier.
        # Corresponds to the JSON property `adGroupBidModifier`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAdGroupBidModifier]
        attr_accessor :ad_group_bid_modifier
      
        # An ad group criterion.
        # Corresponds to the JSON property `adGroupCriterion`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAdGroupCriterion]
        attr_accessor :ad_group_criterion
      
        # A relationship between an ad group criterion and a label.
        # Corresponds to the JSON property `adGroupCriterionLabel`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAdGroupCriterionLabel]
        attr_accessor :ad_group_criterion_label
      
        # A relationship between an ad group and a label.
        # Corresponds to the JSON property `adGroupLabel`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAdGroupLabel]
        attr_accessor :ad_group_label
      
        # An age range view.
        # Corresponds to the JSON property `ageRangeView`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAgeRangeView]
        attr_accessor :age_range_view
      
        # Asset is a part of an ad which can be shared across multiple ads. It can be an
        # image (ImageAsset), a video (YoutubeVideoAsset), etc. Assets are immutable and
        # cannot be removed. To stop an asset from serving, remove the asset from the
        # entity that is using it.
        # Corresponds to the JSON property `asset`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAsset]
        attr_accessor :asset
      
        # An asset group. AssetGroupAsset is used to link an asset to the asset group.
        # AssetGroupSignal is used to associate a signal to an asset group.
        # Corresponds to the JSON property `assetGroup`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAssetGroup]
        attr_accessor :asset_group
      
        # AssetGroupAsset is the link between an asset and an asset group. Adding an
        # AssetGroupAsset links an asset with an asset group.
        # Corresponds to the JSON property `assetGroupAsset`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAssetGroupAsset]
        attr_accessor :asset_group_asset
      
        # AssetGroupListingGroupFilter represents a listing group filter tree node in an
        # asset group.
        # Corresponds to the JSON property `assetGroupListingGroupFilter`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAssetGroupListingGroupFilter]
        attr_accessor :asset_group_listing_group_filter
      
        # AssetGroupSignal represents a signal in an asset group. The existence of a
        # signal tells the performance max campaign who's most likely to convert.
        # Performance Max uses the signal to look for new people with similar or
        # stronger intent to find conversions across Search, Display, Video, and more.
        # Corresponds to the JSON property `assetGroupSignal`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAssetGroupSignal]
        attr_accessor :asset_group_signal
      
        # A view on the usage of ad group ad asset combination.
        # Corresponds to the JSON property `assetGroupTopCombinationView`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAssetGroupTopCombinationView]
        attr_accessor :asset_group_top_combination_view
      
        # An asset set representing a collection of assets. Use AssetSetAsset to link an
        # asset to the asset set.
        # Corresponds to the JSON property `assetSet`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAssetSet]
        attr_accessor :asset_set
      
        # AssetSetAsset is the link between an asset and an asset set. Adding an
        # AssetSetAsset links an asset with an asset set.
        # Corresponds to the JSON property `assetSetAsset`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAssetSetAsset]
        attr_accessor :asset_set_asset
      
        # Audience is an effective targeting option that lets you intersect different
        # segment attributes, such as detailed demographics and affinities, to create
        # audiences that represent sections of your target segments.
        # Corresponds to the JSON property `audience`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesAudience]
        attr_accessor :audience
      
        # A bidding strategy.
        # Corresponds to the JSON property `biddingStrategy`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesBiddingStrategy]
        attr_accessor :bidding_strategy
      
        # A campaign.
        # Corresponds to the JSON property `campaign`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCampaign]
        attr_accessor :campaign
      
        # A link between a Campaign and an Asset.
        # Corresponds to the JSON property `campaignAsset`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCampaignAsset]
        attr_accessor :campaign_asset
      
        # CampaignAssetSet is the linkage between a campaign and an asset set. Adding a
        # CampaignAssetSet links an asset set with a campaign.
        # Corresponds to the JSON property `campaignAssetSet`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCampaignAssetSet]
        attr_accessor :campaign_asset_set
      
        # A campaign audience view. Includes performance data from interests and
        # remarketing lists for Display Network and YouTube Network ads, and remarketing
        # lists for search ads (RLSA), aggregated by campaign and audience criterion.
        # This view only includes audiences attached at the campaign level.
        # Corresponds to the JSON property `campaignAudienceView`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCampaignAudienceView]
        attr_accessor :campaign_audience_view
      
        # A campaign budget.
        # Corresponds to the JSON property `campaignBudget`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCampaignBudget]
        attr_accessor :campaign_budget
      
        # A campaign criterion.
        # Corresponds to the JSON property `campaignCriterion`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCampaignCriterion]
        attr_accessor :campaign_criterion
      
        # Represents a relationship between a campaign and a label.
        # Corresponds to the JSON property `campaignLabel`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCampaignLabel]
        attr_accessor :campaign_label
      
        # Cart data sales view.
        # Corresponds to the JSON property `cartDataSalesView`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCartDataSalesView]
        attr_accessor :cart_data_sales_view
      
        # A conversion.
        # Corresponds to the JSON property `conversion`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesConversion]
        attr_accessor :conversion
      
        # A conversion action.
        # Corresponds to the JSON property `conversionAction`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesConversionAction]
        attr_accessor :conversion_action
      
        # The custom columns.
        # Corresponds to the JSON property `customColumns`
        # @return [Array<Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonValue>]
        attr_accessor :custom_columns
      
        # A customer.
        # Corresponds to the JSON property `customer`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCustomer]
        attr_accessor :customer
      
        # A link between a customer and an asset.
        # Corresponds to the JSON property `customerAsset`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCustomerAsset]
        attr_accessor :customer_asset
      
        # CustomerAssetSet is the linkage between a customer and an asset set. Adding a
        # CustomerAssetSet links an asset set with a customer.
        # Corresponds to the JSON property `customerAssetSet`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCustomerAssetSet]
        attr_accessor :customer_asset_set
      
        # A link between the given customer and a client customer. CustomerClients only
        # exist for manager customers. All direct and indirect client customers are
        # included, as well as the manager itself.
        # Corresponds to the JSON property `customerClient`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCustomerClient]
        attr_accessor :customer_client
      
        # Represents customer-manager link relationship.
        # Corresponds to the JSON property `customerManagerLink`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCustomerManagerLink]
        attr_accessor :customer_manager_link
      
        # A dynamic search ads search term view.
        # Corresponds to the JSON property `dynamicSearchAdsSearchTermView`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesDynamicSearchAdsSearchTermView]
        attr_accessor :dynamic_search_ads_search_term_view
      
        # A gender view.
        # Corresponds to the JSON property `genderView`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesGenderView]
        attr_accessor :gender_view
      
        # A geo target constant.
        # Corresponds to the JSON property `geoTargetConstant`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesGeoTargetConstant]
        attr_accessor :geo_target_constant
      
        # A keyword view.
        # Corresponds to the JSON property `keywordView`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesKeywordView]
        attr_accessor :keyword_view
      
        # A label.
        # Corresponds to the JSON property `label`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesLabel]
        attr_accessor :label
      
        # A language.
        # Corresponds to the JSON property `languageConstant`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesLanguageConstant]
        attr_accessor :language_constant
      
        # A location view summarizes the performance of campaigns by Location criteria.
        # Corresponds to the JSON property `locationView`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesLocationView]
        attr_accessor :location_view
      
        # Metrics data.
        # Corresponds to the JSON property `metrics`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonMetrics]
        attr_accessor :metrics
      
        # A Product Bidding Category.
        # Corresponds to the JSON property `productBiddingCategoryConstant`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesProductBiddingCategoryConstant]
        attr_accessor :product_bidding_category_constant
      
        # A product group view.
        # Corresponds to the JSON property `productGroupView`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesProductGroupView]
        attr_accessor :product_group_view
      
        # Segment only fields.
        # Corresponds to the JSON property `segments`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0CommonSegments]
        attr_accessor :segments
      
        # Shopping performance view. Provides Shopping campaign statistics aggregated at
        # several product dimension levels. Product dimension values from Merchant
        # Center such as brand, category, custom attributes, product condition and
        # product type will reflect the state of each dimension as of the date and time
        # when the corresponding event was recorded.
        # Corresponds to the JSON property `shoppingPerformanceView`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesShoppingPerformanceView]
        attr_accessor :shopping_performance_view
      
        # A user list. This is a list of users a customer may target.
        # Corresponds to the JSON property `userList`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesUserList]
        attr_accessor :user_list
      
        # A visit.
        # Corresponds to the JSON property `visit`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesVisit]
        attr_accessor :visit
      
        # A webpage view.
        # Corresponds to the JSON property `webpageView`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesWebpageView]
        attr_accessor :webpage_view
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_group = args[:ad_group] if args.key?(:ad_group)
          @ad_group_ad = args[:ad_group_ad] if args.key?(:ad_group_ad)
          @ad_group_ad_label = args[:ad_group_ad_label] if args.key?(:ad_group_ad_label)
          @ad_group_asset = args[:ad_group_asset] if args.key?(:ad_group_asset)
          @ad_group_asset_set = args[:ad_group_asset_set] if args.key?(:ad_group_asset_set)
          @ad_group_audience_view = args[:ad_group_audience_view] if args.key?(:ad_group_audience_view)
          @ad_group_bid_modifier = args[:ad_group_bid_modifier] if args.key?(:ad_group_bid_modifier)
          @ad_group_criterion = args[:ad_group_criterion] if args.key?(:ad_group_criterion)
          @ad_group_criterion_label = args[:ad_group_criterion_label] if args.key?(:ad_group_criterion_label)
          @ad_group_label = args[:ad_group_label] if args.key?(:ad_group_label)
          @age_range_view = args[:age_range_view] if args.key?(:age_range_view)
          @asset = args[:asset] if args.key?(:asset)
          @asset_group = args[:asset_group] if args.key?(:asset_group)
          @asset_group_asset = args[:asset_group_asset] if args.key?(:asset_group_asset)
          @asset_group_listing_group_filter = args[:asset_group_listing_group_filter] if args.key?(:asset_group_listing_group_filter)
          @asset_group_signal = args[:asset_group_signal] if args.key?(:asset_group_signal)
          @asset_group_top_combination_view = args[:asset_group_top_combination_view] if args.key?(:asset_group_top_combination_view)
          @asset_set = args[:asset_set] if args.key?(:asset_set)
          @asset_set_asset = args[:asset_set_asset] if args.key?(:asset_set_asset)
          @audience = args[:audience] if args.key?(:audience)
          @bidding_strategy = args[:bidding_strategy] if args.key?(:bidding_strategy)
          @campaign = args[:campaign] if args.key?(:campaign)
          @campaign_asset = args[:campaign_asset] if args.key?(:campaign_asset)
          @campaign_asset_set = args[:campaign_asset_set] if args.key?(:campaign_asset_set)
          @campaign_audience_view = args[:campaign_audience_view] if args.key?(:campaign_audience_view)
          @campaign_budget = args[:campaign_budget] if args.key?(:campaign_budget)
          @campaign_criterion = args[:campaign_criterion] if args.key?(:campaign_criterion)
          @campaign_label = args[:campaign_label] if args.key?(:campaign_label)
          @cart_data_sales_view = args[:cart_data_sales_view] if args.key?(:cart_data_sales_view)
          @conversion = args[:conversion] if args.key?(:conversion)
          @conversion_action = args[:conversion_action] if args.key?(:conversion_action)
          @custom_columns = args[:custom_columns] if args.key?(:custom_columns)
          @customer = args[:customer] if args.key?(:customer)
          @customer_asset = args[:customer_asset] if args.key?(:customer_asset)
          @customer_asset_set = args[:customer_asset_set] if args.key?(:customer_asset_set)
          @customer_client = args[:customer_client] if args.key?(:customer_client)
          @customer_manager_link = args[:customer_manager_link] if args.key?(:customer_manager_link)
          @dynamic_search_ads_search_term_view = args[:dynamic_search_ads_search_term_view] if args.key?(:dynamic_search_ads_search_term_view)
          @gender_view = args[:gender_view] if args.key?(:gender_view)
          @geo_target_constant = args[:geo_target_constant] if args.key?(:geo_target_constant)
          @keyword_view = args[:keyword_view] if args.key?(:keyword_view)
          @label = args[:label] if args.key?(:label)
          @language_constant = args[:language_constant] if args.key?(:language_constant)
          @location_view = args[:location_view] if args.key?(:location_view)
          @metrics = args[:metrics] if args.key?(:metrics)
          @product_bidding_category_constant = args[:product_bidding_category_constant] if args.key?(:product_bidding_category_constant)
          @product_group_view = args[:product_group_view] if args.key?(:product_group_view)
          @segments = args[:segments] if args.key?(:segments)
          @shopping_performance_view = args[:shopping_performance_view] if args.key?(:shopping_performance_view)
          @user_list = args[:user_list] if args.key?(:user_list)
          @visit = args[:visit] if args.key?(:visit)
          @webpage_view = args[:webpage_view] if args.key?(:webpage_view)
        end
      end
      
      # Request message for SearchAds360FieldService.SearchSearchAds360Fields.
      class GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest
        include Google::Apis::Core::Hashable
      
        # Number of elements to retrieve in a single page. When too large a page is
        # requested, the server may decide to further limit the number of returned
        # resources.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Token of the page to retrieve. If not specified, the first page of results
        # will be returned. Use the value obtained from `next_page_token` in the
        # previous response in order to request the next page of results.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Required. The query string.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @query = args[:query] if args.key?(:query)
        end
      end
      
      # Response message for SearchAds360FieldService.SearchSearchAds360Fields.
      class GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse
        include Google::Apis::Core::Hashable
      
        # Pagination token used to retrieve the next page of results. Pass the content
        # of this string as the `page_token` attribute of the next request. `
        # next_page_token` is not returned for the last page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of fields that matched the query.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesSearchAds360Field>]
        attr_accessor :results
      
        # Total number of results that match the query ignoring the LIMIT clause.
        # Corresponds to the JSON property `totalResultsCount`
        # @return [Fixnum]
        attr_accessor :total_results_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @results = args[:results] if args.key?(:results)
          @total_results_count = args[:total_results_count] if args.key?(:total_results_count)
        end
      end
      
      # Request message for SearchAds360Service.Search.
      class GoogleAdsSearchads360V0ServicesSearchSearchAds360Request
        include Google::Apis::Core::Hashable
      
        # Number of elements to retrieve in a single page. When too large a page is
        # requested, the server may decide to further limit the number of returned
        # resources.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Token of the page to retrieve. If not specified, the first page of results
        # will be returned. Use the value obtained from `next_page_token` in the
        # previous response in order to request the next page of results.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Required. The query string.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # If true, the total number of results that match the query ignoring the LIMIT
        # clause will be included in the response. Default is false.
        # Corresponds to the JSON property `returnTotalResultsCount`
        # @return [Boolean]
        attr_accessor :return_total_results_count
        alias_method :return_total_results_count?, :return_total_results_count
      
        # Determines whether a summary row will be returned. By default, summary row is
        # not returned. If requested, the summary row will be sent in a response by
        # itself after all other query results are returned.
        # Corresponds to the JSON property `summaryRowSetting`
        # @return [String]
        attr_accessor :summary_row_setting
      
        # If true, the request is validated but not executed.
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @query = args[:query] if args.key?(:query)
          @return_total_results_count = args[:return_total_results_count] if args.key?(:return_total_results_count)
          @summary_row_setting = args[:summary_row_setting] if args.key?(:summary_row_setting)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
        end
      end
      
      # Response message for SearchAds360Service.Search.
      class GoogleAdsSearchads360V0ServicesSearchSearchAds360Response
        include Google::Apis::Core::Hashable
      
        # The headers of the custom columns in the results.
        # Corresponds to the JSON property `customColumnHeaders`
        # @return [Array<Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ServicesCustomColumnHeader>]
        attr_accessor :custom_column_headers
      
        # FieldMask that represents what fields were requested by the user.
        # Corresponds to the JSON property `fieldMask`
        # @return [String]
        attr_accessor :field_mask
      
        # Pagination token used to retrieve the next page of results. Pass the content
        # of this string as the `page_token` attribute of the next request. `
        # next_page_token` is not returned for the last page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of rows that matched the query.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ServicesSearchAds360Row>]
        attr_accessor :results
      
        # A returned row from the query.
        # Corresponds to the JSON property `summaryRow`
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ServicesSearchAds360Row]
        attr_accessor :summary_row
      
        # Total number of results that match the query ignoring the LIMIT clause.
        # Corresponds to the JSON property `totalResultsCount`
        # @return [Fixnum]
        attr_accessor :total_results_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_column_headers = args[:custom_column_headers] if args.key?(:custom_column_headers)
          @field_mask = args[:field_mask] if args.key?(:field_mask)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @results = args[:results] if args.key?(:results)
          @summary_row = args[:summary_row] if args.key?(:summary_row)
          @total_results_count = args[:total_results_count] if args.key?(:total_results_count)
        end
      end
    end
  end
end
