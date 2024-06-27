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
    module MerchantapiPromotionsV1beta
      
      # Attributes.
      class Attributes
        include Google::Apis::Core::Hashable
      
        # Optional. Product filter by [brand exclusion](https://support.google.com/
        # merchants/answer/13861679?ref_topic=13773355&sjid=17642868584668136159-NC) for
        # the promotion. The product filter attributes only applies when the products
        # eligible for promotion product applicability `product_applicability` attribute
        # is set to [specific_products](https://support.google.com/merchants/answer/
        # 13837299?ref_topic=13773355&sjid=17642868584668136159-NC).
        # Corresponds to the JSON property `brandExclusion`
        # @return [Array<String>]
        attr_accessor :brand_exclusion
      
        # Optional. Product filter by brand for the promotion. The product filter
        # attributes only applies when the products eligible for promotion product
        # applicability `product_applicability` attribute is set to [specific_products](
        # https://support.google.com/merchants/answer/13837299?ref_topic=13773355&sjid=
        # 17642868584668136159-NC).
        # Corresponds to the JSON property `brandInclusion`
        # @return [Array<String>]
        attr_accessor :brand_inclusion
      
        # Required. The [coupon value type] (https://support.google.com/merchants/answer/
        # 13861986?ref_topic=13773355&sjid=17642868584668136159-NC) attribute to signal
        # the type of promotion that you are running. Depending on type of the selected
        # coupon value [some attributes are required](https://support.google.com/
        # merchants/answer/6393006?ref_topic=7322920).
        # Corresponds to the JSON property `couponValueType`
        # @return [String]
        attr_accessor :coupon_value_type
      
        # Optional. [Free gift description](https://support.google.com/merchants/answer/
        # 13847245?ref_topic=13773355&sjid=17642868584668136159-NC) for the promotion.
        # Corresponds to the JSON property `freeGiftDescription`
        # @return [String]
        attr_accessor :free_gift_description
      
        # Optional. [Free gift item ID](https://support.google.com/merchants/answer/
        # 13857152?ref_topic=13773355&sjid=17642868584668136159-NC) for the promotion.
        # Corresponds to the JSON property `freeGiftItemId`
        # @return [String]
        attr_accessor :free_gift_item_id
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `freeGiftValue`
        # @return [Google::Apis::MerchantapiPromotionsV1beta::Price]
        attr_accessor :free_gift_value
      
        # Optional. Generic redemption code for the promotion. To be used with the `
        # offerType` field and must meet the [minimum requirements](https://support.
        # google.com/merchants/answer/13837405?ref_topic=13773355&sjid=
        # 17642868584668136159-NC).
        # Corresponds to the JSON property `genericRedemptionCode`
        # @return [String]
        attr_accessor :generic_redemption_code
      
        # Optional. The number of items discounted in the promotion. The attribute is
        # set when `couponValueType` is equal to `buy_m_get_n_money_off` or `
        # buy_m_get_n_percent_off`.
        # Corresponds to the JSON property `getThisQuantityDiscounted`
        # @return [Fixnum]
        attr_accessor :get_this_quantity_discounted
      
        # Optional. Product filter by [item group ID](https://support.google.com/
        # merchants/answer/13837298?ref_topic=13773355&sjid=17642868584668136159-NC).
        # The product filter attributes only applies when the products eligible for
        # promotion product applicability `product_applicability` attribute is set to [
        # specific_products](https://support.google.com/merchants/answer/13837299?
        # ref_topic=13773355&sjid=17642868584668136159-NC). exclusion for the promotion.
        # Corresponds to the JSON property `itemGroupIdExclusion`
        # @return [Array<String>]
        attr_accessor :item_group_id_exclusion
      
        # Optional. Product filter by item group ID for the promotion. The product
        # filter attributes only applies when the products eligible for promotion
        # product applicability [product_applicability] attribute is set to [
        # specific_products](https://support.google.com/merchants/answer/13837299?
        # ref_topic=13773355&sjid=17642868584668136159-NC).
        # Corresponds to the JSON property `itemGroupIdInclusion`
        # @return [Array<String>]
        attr_accessor :item_group_id_inclusion
      
        # Optional. Product filter by [item ID exclusion](https://support.google.com/
        # merchants/answer/13863524?ref_topic=13773355&sjid=17642868584668136159-NC) for
        # the promotion. The product filter attributes only applies when the products
        # eligible for promotion product applicability `product_applicability` attribute
        # is set to [specific_products](https://support.google.com/merchants/answer/
        # 13837299?ref_topic=13773355&sjid=17642868584668136159-NC).
        # Corresponds to the JSON property `itemIdExclusion`
        # @return [Array<String>]
        attr_accessor :item_id_exclusion
      
        # Optional. Product filter by [item ID](https://support.google.com/merchants/
        # answer/13861565?ref_topic=13773355&sjid=17642868584668136159-NC) for the
        # promotion. The product filter attributes only applies when the products
        # eligible for promotion product applicability `product_applicability` attribute
        # is set to [specific_products](https://support.google.com/merchants/answer/
        # 13837299?ref_topic=13773355&sjid=17642868584668136159-NC).
        # Corresponds to the JSON property `itemIdInclusion`
        # @return [Array<String>]
        attr_accessor :item_id_inclusion
      
        # Optional. [Maximum purchase quantity](https://support.google.com/merchants/
        # answer/13861564?ref_topic=13773355&sjid=17642868584668136159-NC) for the
        # promotion.
        # Corresponds to the JSON property `limitQuantity`
        # @return [Fixnum]
        attr_accessor :limit_quantity
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `limitValue`
        # @return [Google::Apis::MerchantapiPromotionsV1beta::Price]
        attr_accessor :limit_value
      
        # Required. [Long title](https://support.google.com/merchants/answer/13838102?
        # ref_topic=13773355&sjid=17642868584668136159-NC) for the promotion.
        # Corresponds to the JSON property `longTitle`
        # @return [String]
        attr_accessor :long_title
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `minimumPurchaseAmount`
        # @return [Google::Apis::MerchantapiPromotionsV1beta::Price]
        attr_accessor :minimum_purchase_amount
      
        # Optional. [Minimum purchase quantity](https://support.google.com/merchants/
        # answer/13838182?ref_topic=13773355&sjid=17642868584668136159-NC) for the
        # promotion.
        # Corresponds to the JSON property `minimumPurchaseQuantity`
        # @return [Fixnum]
        attr_accessor :minimum_purchase_quantity
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `moneyOffAmount`
        # @return [Google::Apis::MerchantapiPromotionsV1beta::Price]
        attr_accessor :money_off_amount
      
        # Required. [Type](https://support.google.com/merchants/answer/13837405?
        # ref_topic=13773355&sjid=17642868584668136159-NC) of the promotion. Use this
        # attribute to indicate whether or not customers need a coupon code to redeem
        # your promotion.
        # Corresponds to the JSON property `offerType`
        # @return [String]
        attr_accessor :offer_type
      
        # Optional. The [percentage discount](https://support.google.com/merchants/
        # answer/13837404?sjid=17642868584668136159-NC) offered in the promotion.
        # Corresponds to the JSON property `percentOff`
        # @return [Fixnum]
        attr_accessor :percent_off
      
        # Required. Applicability of the promotion to either all products or [only
        # specific products](https://support.google.com/merchants/answer/6396257?
        # ref_topic=6396150&sjid=17642868584668136159-NC).
        # Corresponds to the JSON property `productApplicability`
        # @return [String]
        attr_accessor :product_applicability
      
        # Optional. Product filter by [product type exclusion](https://support.google.
        # com/merchants/answer/13863746?ref_topic=13773355&sjid=17642868584668136159-NC)
        # for the promotion. The product filter attributes only applies when the
        # products eligible for promotion product applicability `product_applicability`
        # attribute is set to [specific_products](https://support.google.com/merchants/
        # answer/13837299?ref_topic=13773355&sjid=17642868584668136159-NC).
        # Corresponds to the JSON property `productTypeExclusion`
        # @return [Array<String>]
        attr_accessor :product_type_exclusion
      
        # Optional. Product filter by product type for the promotion. The product filter
        # attributes only applies when the products eligible for promotion product
        # applicability `product_applicability` attribute is set to [specific_products](
        # https://support.google.com/merchants/answer/13837299?ref_topic=13773355&sjid=
        # 17642868584668136159-NC).
        # Corresponds to the JSON property `productTypeInclusion`
        # @return [Array<String>]
        attr_accessor :product_type_inclusion
      
        # Required. The list of destinations where the promotion applies to. If you don'
        # t specify a destination by including a supported value in your data source,
        # your promotion will display in Shopping ads and free listings by default. You
        # may have previously submitted the following values as destinations for your
        # products: Shopping Actions, Surfaces across Google, Local surfaces across
        # Google. To represent these values use `FREE_LISTINGS`, `FREE_LOCAL_LISTINGS`, `
        # LOCAL_INVENTORY_ADS`. For more details see [Promotion destination](https://
        # support.google.com/merchants/answer/13837465?sjid=5155774230887277618-NC)
        # Corresponds to the JSON property `promotionDestinations`
        # @return [Array<String>]
        attr_accessor :promotion_destinations
      
        # Represents a time interval, encoded as a Timestamp start (inclusive) and a
        # Timestamp end (exclusive). The start must be less than or equal to the end.
        # When the start equals the end, the interval is empty (matches no time). When
        # both start and end are unspecified, the interval matches any time.
        # Corresponds to the JSON property `promotionDisplayTimePeriod`
        # @return [Google::Apis::MerchantapiPromotionsV1beta::Interval]
        attr_accessor :promotion_display_time_period
      
        # Represents a time interval, encoded as a Timestamp start (inclusive) and a
        # Timestamp end (exclusive). The start must be less than or equal to the end.
        # When the start equals the end, the interval is empty (matches no time). When
        # both start and end are unspecified, the interval matches any time.
        # Corresponds to the JSON property `promotionEffectiveTimePeriod`
        # @return [Google::Apis::MerchantapiPromotionsV1beta::Interval]
        attr_accessor :promotion_effective_time_period
      
        # Optional. URL to the page on the merchant's site where the promotion shows.
        # Local Inventory ads promotions throw an error if no `promotion_url` is
        # included. URL is used to confirm that the promotion is valid and can be
        # redeemed.
        # Corresponds to the JSON property `promotionUrl`
        # @return [String]
        attr_accessor :promotion_url
      
        # Optional. Whether the promotion applies to [all stores, or only specified
        # stores](https://support.google.com/merchants/answer/13857563?sjid=
        # 17642868584668136159-NC). Local Inventory ads promotions throw an error if no
        # store applicability is included. An `INVALID_ARGUMENT` error is thrown if `
        # store_applicability` is set to `ALL_STORES` and `store_codes_inclusion` or `
        # score_code_exclusion` is set to a value.
        # Corresponds to the JSON property `storeApplicability`
        # @return [String]
        attr_accessor :store_applicability
      
        # Optional. [Store codes to exclude](https://support.google.com/merchants/answer/
        # 13859586?ref_topic=13773355&sjid=17642868584668136159-NC) for the promotion.
        # The store filter attributes only applies when the `store_applicability`
        # attribute is set to [specific_stores](https://support.google.com/merchants/
        # answer/13857563?ref_topic=13773355&sjid=17642868584668136159-NC).
        # Corresponds to the JSON property `storeCodesExclusion`
        # @return [Array<String>]
        attr_accessor :store_codes_exclusion
      
        # Optional. [Store codes to include](https://support.google.com/merchants/answer/
        # 13857470?ref_topic=13773355&sjid=17642868584668136159-NC) for the promotion.
        # The store filter attributes only applies when the `store_applicability`
        # attribute is set to [specific_stores](https://support.google.com/merchants/
        # answer/13857563?ref_topic=13773355&sjid=17642868584668136159-NC). Store code (
        # the store ID from your Business Profile) of the physical store the product is
        # sold in. See the [Local product inventory data specification](https://support.
        # google.com/merchants/answer/3061342) for more information.
        # Corresponds to the JSON property `storeCodesInclusion`
        # @return [Array<String>]
        attr_accessor :store_codes_inclusion
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @brand_exclusion = args[:brand_exclusion] if args.key?(:brand_exclusion)
          @brand_inclusion = args[:brand_inclusion] if args.key?(:brand_inclusion)
          @coupon_value_type = args[:coupon_value_type] if args.key?(:coupon_value_type)
          @free_gift_description = args[:free_gift_description] if args.key?(:free_gift_description)
          @free_gift_item_id = args[:free_gift_item_id] if args.key?(:free_gift_item_id)
          @free_gift_value = args[:free_gift_value] if args.key?(:free_gift_value)
          @generic_redemption_code = args[:generic_redemption_code] if args.key?(:generic_redemption_code)
          @get_this_quantity_discounted = args[:get_this_quantity_discounted] if args.key?(:get_this_quantity_discounted)
          @item_group_id_exclusion = args[:item_group_id_exclusion] if args.key?(:item_group_id_exclusion)
          @item_group_id_inclusion = args[:item_group_id_inclusion] if args.key?(:item_group_id_inclusion)
          @item_id_exclusion = args[:item_id_exclusion] if args.key?(:item_id_exclusion)
          @item_id_inclusion = args[:item_id_inclusion] if args.key?(:item_id_inclusion)
          @limit_quantity = args[:limit_quantity] if args.key?(:limit_quantity)
          @limit_value = args[:limit_value] if args.key?(:limit_value)
          @long_title = args[:long_title] if args.key?(:long_title)
          @minimum_purchase_amount = args[:minimum_purchase_amount] if args.key?(:minimum_purchase_amount)
          @minimum_purchase_quantity = args[:minimum_purchase_quantity] if args.key?(:minimum_purchase_quantity)
          @money_off_amount = args[:money_off_amount] if args.key?(:money_off_amount)
          @offer_type = args[:offer_type] if args.key?(:offer_type)
          @percent_off = args[:percent_off] if args.key?(:percent_off)
          @product_applicability = args[:product_applicability] if args.key?(:product_applicability)
          @product_type_exclusion = args[:product_type_exclusion] if args.key?(:product_type_exclusion)
          @product_type_inclusion = args[:product_type_inclusion] if args.key?(:product_type_inclusion)
          @promotion_destinations = args[:promotion_destinations] if args.key?(:promotion_destinations)
          @promotion_display_time_period = args[:promotion_display_time_period] if args.key?(:promotion_display_time_period)
          @promotion_effective_time_period = args[:promotion_effective_time_period] if args.key?(:promotion_effective_time_period)
          @promotion_url = args[:promotion_url] if args.key?(:promotion_url)
          @store_applicability = args[:store_applicability] if args.key?(:store_applicability)
          @store_codes_exclusion = args[:store_codes_exclusion] if args.key?(:store_codes_exclusion)
          @store_codes_inclusion = args[:store_codes_inclusion] if args.key?(:store_codes_inclusion)
        end
      end
      
      # A message that represents custom attributes. Exactly one of `value` or `
      # group_values` must not be empty.
      class CustomAttribute
        include Google::Apis::Core::Hashable
      
        # Subattributes within this attribute group. If `group_values` is not empty, `
        # value` must be empty.
        # Corresponds to the JSON property `groupValues`
        # @return [Array<Google::Apis::MerchantapiPromotionsV1beta::CustomAttribute>]
        attr_accessor :group_values
      
        # The name of the attribute.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The value of the attribute. If `value` is not empty, `group_values` must be
        # empty.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group_values = args[:group_values] if args.key?(:group_values)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # The status for the specified destination.
      class DestinationStatus
        include Google::Apis::Core::Hashable
      
        # Output only. The name of the promotion destination.
        # Corresponds to the JSON property `reportingContext`
        # @return [String]
        attr_accessor :reporting_context
      
        # Output only. The status for the specified destination.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reporting_context = args[:reporting_context] if args.key?(:reporting_context)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Request message for the `InsertPromotion` method.
      class InsertPromotionRequest
        include Google::Apis::Core::Hashable
      
        # Required. The data source of the [promotion](https://support.google.com/
        # merchants/answer/6396268?sjid=5155774230887277618-NC) Format: `accounts/`
        # account`/dataSources/`datasource``.
        # Corresponds to the JSON property `dataSource`
        # @return [String]
        attr_accessor :data_source
      
        # Represents a promotion. See the following articles for more details. Required
        # promotion input attributes to pass data validation checks are primarily
        # defined below: * [Promotions data specification](https://support.google.com/
        # merchants/answer/2906014) * [Local promotions data specification](https://
        # support.google.com/merchants/answer/10146130) After inserting, updating a
        # promotion input, it may take several minutes before the final promotion can be
        # retrieved.
        # Corresponds to the JSON property `promotion`
        # @return [Google::Apis::MerchantapiPromotionsV1beta::Promotion]
        attr_accessor :promotion
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_source = args[:data_source] if args.key?(:data_source)
          @promotion = args[:promotion] if args.key?(:promotion)
        end
      end
      
      # Represents a time interval, encoded as a Timestamp start (inclusive) and a
      # Timestamp end (exclusive). The start must be less than or equal to the end.
      # When the start equals the end, the interval is empty (matches no time). When
      # both start and end are unspecified, the interval matches any time.
      class Interval
        include Google::Apis::Core::Hashable
      
        # Optional. Exclusive end of the interval. If specified, a Timestamp matching
        # this interval will have to be before the end.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Optional. Inclusive start of the interval. If specified, a Timestamp matching
        # this interval will have to be the same or after the start.
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
      
      # The issue associated with the promotion.
      class ItemLevelIssue
        include Google::Apis::Core::Hashable
      
        # Output only. List of country codes (ISO 3166-1 alpha-2) where issue applies to
        # the offer.
        # Corresponds to the JSON property `applicableCountries`
        # @return [Array<String>]
        attr_accessor :applicable_countries
      
        # Output only. The attribute's name, if the issue is caused by a single
        # attribute.
        # Corresponds to the JSON property `attribute`
        # @return [String]
        attr_accessor :attribute
      
        # Output only. The error code of the issue.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Output only. A short issue description in English.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. A detailed issue description in English.
        # Corresponds to the JSON property `detail`
        # @return [String]
        attr_accessor :detail
      
        # Output only. The URL of a web page to help with resolving this issue.
        # Corresponds to the JSON property `documentation`
        # @return [String]
        attr_accessor :documentation
      
        # Output only. The destination the issue applies to.
        # Corresponds to the JSON property `reportingContext`
        # @return [String]
        attr_accessor :reporting_context
      
        # Output only. Whether the issue can be resolved by the merchant.
        # Corresponds to the JSON property `resolution`
        # @return [String]
        attr_accessor :resolution
      
        # Output only. How this issue affects serving of the promotion.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @applicable_countries = args[:applicable_countries] if args.key?(:applicable_countries)
          @attribute = args[:attribute] if args.key?(:attribute)
          @code = args[:code] if args.key?(:code)
          @description = args[:description] if args.key?(:description)
          @detail = args[:detail] if args.key?(:detail)
          @documentation = args[:documentation] if args.key?(:documentation)
          @reporting_context = args[:reporting_context] if args.key?(:reporting_context)
          @resolution = args[:resolution] if args.key?(:resolution)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # Response message for the `ListPromotions` method.
      class ListPromotionsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The processed promotions from the specified account.
        # Corresponds to the JSON property `promotions`
        # @return [Array<Google::Apis::MerchantapiPromotionsV1beta::Promotion>]
        attr_accessor :promotions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @promotions = args[:promotions] if args.key?(:promotions)
        end
      end
      
      # The price represented as a number and currency.
      class Price
        include Google::Apis::Core::Hashable
      
        # The price represented as a number in micros (1 million micros is an equivalent
        # to one's currency standard unit, for example, 1 USD = 1000000 micros).
        # Corresponds to the JSON property `amountMicros`
        # @return [Fixnum]
        attr_accessor :amount_micros
      
        # The currency of the price using three-letter acronyms according to [ISO 4217](
        # http://en.wikipedia.org/wiki/ISO_4217).
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amount_micros = args[:amount_micros] if args.key?(:amount_micros)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
        end
      end
      
      # The change that happened to the product including old value, new value,
      # country code as the region code and reporting context.
      class ProductChange
        include Google::Apis::Core::Hashable
      
        # The new value of the changed resource or attribute.
        # Corresponds to the JSON property `newValue`
        # @return [String]
        attr_accessor :new_value
      
        # The old value of the changed resource or attribute.
        # Corresponds to the JSON property `oldValue`
        # @return [String]
        attr_accessor :old_value
      
        # Countries that have the change (if applicable)
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # Reporting contexts that have the change (if applicable)
        # Corresponds to the JSON property `reportingContext`
        # @return [String]
        attr_accessor :reporting_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_value = args[:new_value] if args.key?(:new_value)
          @old_value = args[:old_value] if args.key?(:old_value)
          @region_code = args[:region_code] if args.key?(:region_code)
          @reporting_context = args[:reporting_context] if args.key?(:reporting_context)
        end
      end
      
      # The message that the merchant will receive to notify about product status
      # change event
      class ProductStatusChangeMessage
        include Google::Apis::Core::Hashable
      
        # The target account that owns the entity that changed. Format : `accounts/`
        # merchant_id``
        # Corresponds to the JSON property `account`
        # @return [String]
        attr_accessor :account
      
        # The attribute in the resource that changed, in this case it will be always `
        # Status`.
        # Corresponds to the JSON property `attribute`
        # @return [String]
        attr_accessor :attribute
      
        # A message to describe the change that happened to the product
        # Corresponds to the JSON property `changes`
        # @return [Array<Google::Apis::MerchantapiPromotionsV1beta::ProductChange>]
        attr_accessor :changes
      
        # The account that manages the merchant's account. can be the same as merchant
        # id if it is standalone account. Format : `accounts/`service_provider_id``
        # Corresponds to the JSON property `managingAccount`
        # @return [String]
        attr_accessor :managing_account
      
        # The product name. Format: ``product.name=accounts/`account`/products/`product``
        # `
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # The product id.
        # Corresponds to the JSON property `resourceId`
        # @return [String]
        attr_accessor :resource_id
      
        # The resource that changed, in this case it will always be `Product`.
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] if args.key?(:account)
          @attribute = args[:attribute] if args.key?(:attribute)
          @changes = args[:changes] if args.key?(:changes)
          @managing_account = args[:managing_account] if args.key?(:managing_account)
          @resource = args[:resource] if args.key?(:resource)
          @resource_id = args[:resource_id] if args.key?(:resource_id)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
        end
      end
      
      # Represents a promotion. See the following articles for more details. Required
      # promotion input attributes to pass data validation checks are primarily
      # defined below: * [Promotions data specification](https://support.google.com/
      # merchants/answer/2906014) * [Local promotions data specification](https://
      # support.google.com/merchants/answer/10146130) After inserting, updating a
      # promotion input, it may take several minutes before the final promotion can be
      # retrieved.
      class Promotion
        include Google::Apis::Core::Hashable
      
        # Attributes.
        # Corresponds to the JSON property `attributes`
        # @return [Google::Apis::MerchantapiPromotionsV1beta::Attributes]
        attr_accessor :attributes
      
        # Required. The two-letter [ISO 639-1](http://en.wikipedia.org/wiki/ISO_639-1)
        # language code for the promotion. Promotions is only for [selected languages](
        # https://support.google.com/merchants/answer/4588281?ref_topic=6396150&sjid=
        # 18314938579342094533-NC#option3&zippy=).
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # Optional. A list of custom (merchant-provided) attributes. It can also be used
        # for submitting any attribute of the data specification in its generic form (
        # for example, `` "name": "size type", "value": "regular" ``). This is useful
        # for submitting attributes not explicitly exposed by the API.
        # Corresponds to the JSON property `customAttributes`
        # @return [Array<Google::Apis::MerchantapiPromotionsV1beta::CustomAttribute>]
        attr_accessor :custom_attributes
      
        # Output only. The primary data source of the promotion.
        # Corresponds to the JSON property `dataSource`
        # @return [String]
        attr_accessor :data_source
      
        # Identifier. The name of the promotion. Format: `accounts/`account`/promotions/`
        # promotion``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The user provided promotion ID to uniquely identify the promotion.
        # Follow [minimum requirements](https://support.google.com/merchants/answer/
        # 7050148?ref_topic=7322920&sjid=871860036916537104-NC#minimum_requirements) to
        # prevent promotion disapprovals.
        # Corresponds to the JSON property `promotionId`
        # @return [String]
        attr_accessor :promotion_id
      
        # The status of the promotion.
        # Corresponds to the JSON property `promotionStatus`
        # @return [Google::Apis::MerchantapiPromotionsV1beta::PromotionStatus]
        attr_accessor :promotion_status
      
        # Required. [Redemption channel](https://support.google.com/merchants/answer/
        # 13837674?ref_topic=13773355&sjid=17642868584668136159-NC) for the promotion.
        # At least one channel is required.
        # Corresponds to the JSON property `redemptionChannel`
        # @return [Array<String>]
        attr_accessor :redemption_channel
      
        # Required. The target country used as part of the unique identifier.
        # Represented as a [CLDR territory code](https://github.com/unicode-org/cldr/
        # blob/latest/common/main/en.xml). Promotions are only available in selected
        # countries, [Free Listings and Shopping ads](https://support.google.com/
        # merchants/answer/4588460) [Local Inventory ads](https://support.google.com/
        # merchants/answer/10146326)
        # Corresponds to the JSON property `targetCountry`
        # @return [String]
        attr_accessor :target_country
      
        # Optional. Represents the existing version (freshness) of the promotion, which
        # can be used to preserve the right order when multiple updates are done at the
        # same time. If set, the insertion is prevented when version number is lower
        # than the current version number of the existing promotion. Re-insertion (for
        # example, promotion refresh after 30 days) can be performed with the current `
        # version_number`. If the operation is prevented, the aborted exception will be
        # thrown.
        # Corresponds to the JSON property `versionNumber`
        # @return [Fixnum]
        attr_accessor :version_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @content_language = args[:content_language] if args.key?(:content_language)
          @custom_attributes = args[:custom_attributes] if args.key?(:custom_attributes)
          @data_source = args[:data_source] if args.key?(:data_source)
          @name = args[:name] if args.key?(:name)
          @promotion_id = args[:promotion_id] if args.key?(:promotion_id)
          @promotion_status = args[:promotion_status] if args.key?(:promotion_status)
          @redemption_channel = args[:redemption_channel] if args.key?(:redemption_channel)
          @target_country = args[:target_country] if args.key?(:target_country)
          @version_number = args[:version_number] if args.key?(:version_number)
        end
      end
      
      # The status of the promotion.
      class PromotionStatus
        include Google::Apis::Core::Hashable
      
        # Output only. Date on which the promotion has been created in [ISO 8601](http://
        # en.wikipedia.org/wiki/ISO_8601) format: Date, time, and offset, for example `
        # 2020-01-02T09:00:00+01:00` or `2020-01-02T09:00:00Z`
        # Corresponds to the JSON property `creationDate`
        # @return [String]
        attr_accessor :creation_date
      
        # Output only. The intended destinations for the promotion.
        # Corresponds to the JSON property `destinationStatuses`
        # @return [Array<Google::Apis::MerchantapiPromotionsV1beta::DestinationStatus>]
        attr_accessor :destination_statuses
      
        # Output only. A list of issues associated with the promotion.
        # Corresponds to the JSON property `itemLevelIssues`
        # @return [Array<Google::Apis::MerchantapiPromotionsV1beta::ItemLevelIssue>]
        attr_accessor :item_level_issues
      
        # Output only. Date on which the promotion status has been last updated in [ISO
        # 8601](http://en.wikipedia.org/wiki/ISO_8601) format: Date, time, and offset,
        # for example `2020-01-02T09:00:00+01:00` or `2020-01-02T09:00:00Z`
        # Corresponds to the JSON property `lastUpdateDate`
        # @return [String]
        attr_accessor :last_update_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_date = args[:creation_date] if args.key?(:creation_date)
          @destination_statuses = args[:destination_statuses] if args.key?(:destination_statuses)
          @item_level_issues = args[:item_level_issues] if args.key?(:item_level_issues)
          @last_update_date = args[:last_update_date] if args.key?(:last_update_date)
        end
      end
    end
  end
end
