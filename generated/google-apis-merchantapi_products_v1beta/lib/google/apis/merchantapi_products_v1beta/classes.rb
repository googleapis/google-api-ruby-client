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
    module MerchantapiProductsV1beta
      
      # Attributes.
      class Attributes
        include Google::Apis::Core::Hashable
      
        # Additional URLs of images of the item.
        # Corresponds to the JSON property `additionalImageLinks`
        # @return [Array<String>]
        attr_accessor :additional_image_links
      
        # Used to group items in an arbitrary way. Only for CPA%, discouraged otherwise.
        # Corresponds to the JSON property `adsGrouping`
        # @return [String]
        attr_accessor :ads_grouping
      
        # Similar to ads_grouping, but only works on CPC.
        # Corresponds to the JSON property `adsLabels`
        # @return [Array<String>]
        attr_accessor :ads_labels
      
        # Allows advertisers to override the item URL when the product is shown within
        # the context of Product ads.
        # Corresponds to the JSON property `adsRedirect`
        # @return [String]
        attr_accessor :ads_redirect
      
        # Set to true if the item is targeted towards adults.
        # Corresponds to the JSON property `adult`
        # @return [Boolean]
        attr_accessor :adult
        alias_method :adult?, :adult
      
        # Target [age group](https://support.google.com/merchants/answer/6324463) of the
        # item.
        # Corresponds to the JSON property `ageGroup`
        # @return [String]
        attr_accessor :age_group
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `autoPricingMinPrice`
        # @return [Google::Apis::MerchantapiProductsV1beta::Price]
        attr_accessor :auto_pricing_min_price
      
        # Availability status of the item.
        # Corresponds to the JSON property `availability`
        # @return [String]
        attr_accessor :availability
      
        # The day a pre-ordered product becomes available for delivery, in [ISO 8601](
        # http://en.wikipedia.org/wiki/ISO_8601) format.
        # Corresponds to the JSON property `availabilityDate`
        # @return [String]
        attr_accessor :availability_date
      
        # Brand of the item.
        # Corresponds to the JSON property `brand`
        # @return [String]
        attr_accessor :brand
      
        # URL for the canonical version of your item's landing page.
        # Corresponds to the JSON property `canonicalLink`
        # @return [String]
        attr_accessor :canonical_link
      
        # Product Certifications, for example for energy efficiency labeling of products
        # recorded in the [EU EPREL](https://eprel.ec.europa.eu/screen/home) database.
        # See the [Help Center](https://support.google.com/merchants/answer/13528839)
        # article for more information.
        # Corresponds to the JSON property `certifications`
        # @return [Array<Google::Apis::MerchantapiProductsV1beta::Certification>]
        attr_accessor :certifications
      
        # Extra fields to export to the Cloud Retail program.
        # Corresponds to the JSON property `cloudExportAdditionalProperties`
        # @return [Array<Google::Apis::MerchantapiProductsV1beta::CloudExportAdditionalProperties>]
        attr_accessor :cloud_export_additional_properties
      
        # Color of the item.
        # Corresponds to the JSON property `color`
        # @return [String]
        attr_accessor :color
      
        # Condition or state of the item.
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `costOfGoodsSold`
        # @return [Google::Apis::MerchantapiProductsV1beta::Price]
        attr_accessor :cost_of_goods_sold
      
        # Custom label 0 for custom grouping of items in a Shopping campaign.
        # Corresponds to the JSON property `customLabel0`
        # @return [String]
        attr_accessor :custom_label0
      
        # Custom label 1 for custom grouping of items in a Shopping campaign.
        # Corresponds to the JSON property `customLabel1`
        # @return [String]
        attr_accessor :custom_label1
      
        # Custom label 2 for custom grouping of items in a Shopping campaign.
        # Corresponds to the JSON property `customLabel2`
        # @return [String]
        attr_accessor :custom_label2
      
        # Custom label 3 for custom grouping of items in a Shopping campaign.
        # Corresponds to the JSON property `customLabel3`
        # @return [String]
        attr_accessor :custom_label3
      
        # Custom label 4 for custom grouping of items in a Shopping campaign.
        # Corresponds to the JSON property `customLabel4`
        # @return [String]
        attr_accessor :custom_label4
      
        # Description of the item.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The date time when an offer becomes visible in search results across Google’s
        # YouTube surfaces, in [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601) format.
        # See [Disclosure date]( https://support.google.com/merchants/answer/13034208)
        # for more information.
        # Corresponds to the JSON property `disclosureDate`
        # @return [String]
        attr_accessor :disclosure_date
      
        # An identifier for an item for dynamic remarketing campaigns.
        # Corresponds to the JSON property `displayAdsId`
        # @return [String]
        attr_accessor :display_ads_id
      
        # URL directly to your item's landing page for dynamic remarketing campaigns.
        # Corresponds to the JSON property `displayAdsLink`
        # @return [String]
        attr_accessor :display_ads_link
      
        # Advertiser-specified recommendations.
        # Corresponds to the JSON property `displayAdsSimilarIds`
        # @return [Array<String>]
        attr_accessor :display_ads_similar_ids
      
        # Title of an item for dynamic remarketing campaigns.
        # Corresponds to the JSON property `displayAdsTitle`
        # @return [String]
        attr_accessor :display_ads_title
      
        # Offer margin for dynamic remarketing campaigns.
        # Corresponds to the JSON property `displayAdsValue`
        # @return [Float]
        attr_accessor :display_ads_value
      
        # The energy efficiency class as defined in EU directive 2010/30/EU.
        # Corresponds to the JSON property `energyEfficiencyClass`
        # @return [String]
        attr_accessor :energy_efficiency_class
      
        # The list of destinations to exclude for this target (corresponds to unchecked
        # check boxes in Merchant Center).
        # Corresponds to the JSON property `excludedDestinations`
        # @return [Array<String>]
        attr_accessor :excluded_destinations
      
        # Date on which the item should expire, as specified upon insertion, in [ISO
        # 8601](http://en.wikipedia.org/wiki/ISO_8601) format. The actual expiration
        # date is exposed in `productstatuses` as [googleExpirationDate](https://support.
        # google.com/merchants/answer/6324499) and might be earlier if `expirationDate`
        # is too far in the future.
        # Corresponds to the JSON property `expirationDate`
        # @return [String]
        attr_accessor :expiration_date
      
        # Required for multi-seller accounts. Use this attribute if you're a marketplace
        # uploading products for various sellers to your multi-seller account.
        # Corresponds to the JSON property `externalSellerId`
        # @return [String]
        attr_accessor :external_seller_id
      
        # Conditions to be met for a product to have free shipping.
        # Corresponds to the JSON property `freeShippingThreshold`
        # @return [Array<Google::Apis::MerchantapiProductsV1beta::FreeShippingThreshold>]
        attr_accessor :free_shipping_threshold
      
        # Target gender of the item.
        # Corresponds to the JSON property `gender`
        # @return [String]
        attr_accessor :gender
      
        # Google's category of the item (see [Google product taxonomy](https://support.
        # google.com/merchants/answer/1705911)). When querying products, this field will
        # contain the user provided value. There is currently no way to get back the
        # auto assigned google product categories through the API.
        # Corresponds to the JSON property `googleProductCategory`
        # @return [String]
        attr_accessor :google_product_category
      
        # Global Trade Item Number ([GTIN](https://support.google.com/merchants/answer/
        # 188494#gtin)) of the item.
        # Corresponds to the JSON property `gtin`
        # @return [String]
        attr_accessor :gtin
      
        # Set this value to false when the item does not have unique product identifiers
        # appropriate to its category, such as GTIN, MPN, and brand. Defaults to true,
        # if not provided.
        # Corresponds to the JSON property `identifierExists`
        # @return [Boolean]
        attr_accessor :identifier_exists
        alias_method :identifier_exists?, :identifier_exists
      
        # URL of an image of the item.
        # Corresponds to the JSON property `imageLink`
        # @return [String]
        attr_accessor :image_link
      
        # The list of destinations to include for this target (corresponds to checked
        # check boxes in Merchant Center). Default destinations are always included
        # unless provided in `excludedDestinations`.
        # Corresponds to the JSON property `includedDestinations`
        # @return [Array<String>]
        attr_accessor :included_destinations
      
        # A message that represents installment.
        # Corresponds to the JSON property `installment`
        # @return [Google::Apis::MerchantapiProductsV1beta::Installment]
        attr_accessor :installment
      
        # Whether the item is a merchant-defined bundle. A bundle is a custom grouping
        # of different products sold by a merchant for a single price.
        # Corresponds to the JSON property `isBundle`
        # @return [Boolean]
        attr_accessor :is_bundle
        alias_method :is_bundle?, :is_bundle
      
        # Shared identifier for all variants of the same product.
        # Corresponds to the JSON property `itemGroupId`
        # @return [String]
        attr_accessor :item_group_id
      
        # Additional URLs of lifestyle images of the item, used to explicitly identify
        # images that showcase your item in a real-world context. See the [Help Center
        # article](https://support.google.com/merchants/answer/9103186) for more
        # information.
        # Corresponds to the JSON property `lifestyleImageLinks`
        # @return [Array<String>]
        attr_accessor :lifestyle_image_links
      
        # URL directly linking to your item's page on your online store.
        # Corresponds to the JSON property `link`
        # @return [String]
        attr_accessor :link
      
        # Link template for merchant hosted local storefront.
        # Corresponds to the JSON property `linkTemplate`
        # @return [String]
        attr_accessor :link_template
      
        # A message that represents loyalty points.
        # Corresponds to the JSON property `loyaltyPoints`
        # @return [Google::Apis::MerchantapiProductsV1beta::LoyaltyPoints]
        attr_accessor :loyalty_points
      
        # A list of loyalty program information that is used to surface loyalty benefits
        # (for example, better pricing, points, etc) to the user of this item.
        # Corresponds to the JSON property `loyaltyPrograms`
        # @return [Array<Google::Apis::MerchantapiProductsV1beta::LoyaltyProgram>]
        attr_accessor :loyalty_programs
      
        # The material of which the item is made.
        # Corresponds to the JSON property `material`
        # @return [String]
        attr_accessor :material
      
        # The energy efficiency class as defined in EU directive 2010/30/EU.
        # Corresponds to the JSON property `maxEnergyEfficiencyClass`
        # @return [String]
        attr_accessor :max_energy_efficiency_class
      
        # Maximal product handling time (in business days).
        # Corresponds to the JSON property `maxHandlingTime`
        # @return [Fixnum]
        attr_accessor :max_handling_time
      
        # The energy efficiency class as defined in EU directive 2010/30/EU.
        # Corresponds to the JSON property `minEnergyEfficiencyClass`
        # @return [String]
        attr_accessor :min_energy_efficiency_class
      
        # Minimal product handling time (in business days).
        # Corresponds to the JSON property `minHandlingTime`
        # @return [Fixnum]
        attr_accessor :min_handling_time
      
        # URL for the mobile-optimized version of your item's landing page.
        # Corresponds to the JSON property `mobileLink`
        # @return [String]
        attr_accessor :mobile_link
      
        # Link template for merchant hosted local storefront optimized for mobile
        # devices.
        # Corresponds to the JSON property `mobileLinkTemplate`
        # @return [String]
        attr_accessor :mobile_link_template
      
        # Manufacturer Part Number ([MPN](https://support.google.com/merchants/answer/
        # 188494#mpn)) of the item.
        # Corresponds to the JSON property `mpn`
        # @return [String]
        attr_accessor :mpn
      
        # The number of identical products in a merchant-defined multipack.
        # Corresponds to the JSON property `multipack`
        # @return [Fixnum]
        attr_accessor :multipack
      
        # The item's pattern (for example, polka dots).
        # Corresponds to the JSON property `pattern`
        # @return [String]
        attr_accessor :pattern
      
        # Publication of this item will be temporarily [paused](https://support.google.
        # com/merchants/answer/11909930).
        # Corresponds to the JSON property `pause`
        # @return [String]
        attr_accessor :pause
      
        # The pick up option for the item.
        # Corresponds to the JSON property `pickupMethod`
        # @return [String]
        attr_accessor :pickup_method
      
        # Item store pickup timeline.
        # Corresponds to the JSON property `pickupSla`
        # @return [String]
        attr_accessor :pickup_sla
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::MerchantapiProductsV1beta::Price]
        attr_accessor :price
      
        # Technical specification or additional product details.
        # Corresponds to the JSON property `productDetails`
        # @return [Array<Google::Apis::MerchantapiProductsV1beta::ProductDetail>]
        attr_accessor :product_details
      
        # The dimension of the product.
        # Corresponds to the JSON property `productHeight`
        # @return [Google::Apis::MerchantapiProductsV1beta::ProductDimension]
        attr_accessor :product_height
      
        # Bullet points describing the most relevant highlights of a product.
        # Corresponds to the JSON property `productHighlights`
        # @return [Array<String>]
        attr_accessor :product_highlights
      
        # The dimension of the product.
        # Corresponds to the JSON property `productLength`
        # @return [Google::Apis::MerchantapiProductsV1beta::ProductDimension]
        attr_accessor :product_length
      
        # Categories of the item (formatted as in [product data specification](https://
        # support.google.com/merchants/answer/188494#product_type)).
        # Corresponds to the JSON property `productTypes`
        # @return [Array<String>]
        attr_accessor :product_types
      
        # The weight of the product.
        # Corresponds to the JSON property `productWeight`
        # @return [Google::Apis::MerchantapiProductsV1beta::ProductWeight]
        attr_accessor :product_weight
      
        # The dimension of the product.
        # Corresponds to the JSON property `productWidth`
        # @return [Google::Apis::MerchantapiProductsV1beta::ProductDimension]
        attr_accessor :product_width
      
        # The unique ID of a promotion.
        # Corresponds to the JSON property `promotionIds`
        # @return [Array<String>]
        attr_accessor :promotion_ids
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `salePrice`
        # @return [Google::Apis::MerchantapiProductsV1beta::Price]
        attr_accessor :sale_price
      
        # Represents a time interval, encoded as a Timestamp start (inclusive) and a
        # Timestamp end (exclusive). The start must be less than or equal to the end.
        # When the start equals the end, the interval is empty (matches no time). When
        # both start and end are unspecified, the interval matches any time.
        # Corresponds to the JSON property `salePriceEffectiveDate`
        # @return [Google::Apis::MerchantapiProductsV1beta::Interval]
        attr_accessor :sale_price_effective_date
      
        # The quantity of the product that is available for selling on Google. Supported
        # only for online products.
        # Corresponds to the JSON property `sellOnGoogleQuantity`
        # @return [Fixnum]
        attr_accessor :sell_on_google_quantity
      
        # Shipping rules.
        # Corresponds to the JSON property `shipping`
        # @return [Array<Google::Apis::MerchantapiProductsV1beta::Shipping>]
        attr_accessor :shipping
      
        # The ShippingDimension of the product.
        # Corresponds to the JSON property `shippingHeight`
        # @return [Google::Apis::MerchantapiProductsV1beta::ShippingDimension]
        attr_accessor :shipping_height
      
        # The shipping label of the product, used to group product in account-level
        # shipping rules.
        # Corresponds to the JSON property `shippingLabel`
        # @return [String]
        attr_accessor :shipping_label
      
        # The ShippingDimension of the product.
        # Corresponds to the JSON property `shippingLength`
        # @return [Google::Apis::MerchantapiProductsV1beta::ShippingDimension]
        attr_accessor :shipping_length
      
        # The ShippingWeight of the product.
        # Corresponds to the JSON property `shippingWeight`
        # @return [Google::Apis::MerchantapiProductsV1beta::ShippingWeight]
        attr_accessor :shipping_weight
      
        # The ShippingDimension of the product.
        # Corresponds to the JSON property `shippingWidth`
        # @return [Google::Apis::MerchantapiProductsV1beta::ShippingDimension]
        attr_accessor :shipping_width
      
        # List of country codes (ISO 3166-1 alpha-2) to exclude the offer from Shopping
        # Ads destination. Countries from this list are removed from countries
        # configured in data source settings.
        # Corresponds to the JSON property `shoppingAdsExcludedCountries`
        # @return [Array<String>]
        attr_accessor :shopping_ads_excluded_countries
      
        # Size of the item. Only one value is allowed. For variants with different sizes,
        # insert a separate product for each size with the same `itemGroupId` value (
        # see [https://support.google.com/merchants/answer/6324492](size definition)).
        # Corresponds to the JSON property `size`
        # @return [String]
        attr_accessor :size
      
        # System in which the size is specified. Recommended for apparel items.
        # Corresponds to the JSON property `sizeSystem`
        # @return [String]
        attr_accessor :size_system
      
        # The cut of the item. It can be used to represent combined size types for
        # apparel items. Maximum two of size types can be provided (see [https://support.
        # google.com/merchants/answer/6324497](size type)).
        # Corresponds to the JSON property `sizeTypes`
        # @return [Array<String>]
        attr_accessor :size_types
      
        # Structured description, for algorithmically (AI)-generated descriptions.
        # Corresponds to the JSON property `structuredDescription`
        # @return [Google::Apis::MerchantapiProductsV1beta::ProductStructuredDescription]
        attr_accessor :structured_description
      
        # Structured title, for algorithmically (AI)-generated titles.
        # Corresponds to the JSON property `structuredTitle`
        # @return [Google::Apis::MerchantapiProductsV1beta::ProductStructuredTitle]
        attr_accessor :structured_title
      
        # The SubscriptionCost of the product.
        # Corresponds to the JSON property `subscriptionCost`
        # @return [Google::Apis::MerchantapiProductsV1beta::SubscriptionCost]
        attr_accessor :subscription_cost
      
        # The tax category of the product, used to configure detailed tax nexus in
        # account-level tax settings.
        # Corresponds to the JSON property `taxCategory`
        # @return [String]
        attr_accessor :tax_category
      
        # Tax information.
        # Corresponds to the JSON property `taxes`
        # @return [Array<Google::Apis::MerchantapiProductsV1beta::Tax>]
        attr_accessor :taxes
      
        # Title of the item.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The transit time label of the product, used to group product in account-level
        # transit time tables.
        # Corresponds to the JSON property `transitTimeLabel`
        # @return [String]
        attr_accessor :transit_time_label
      
        # The UnitPricingBaseMeasure of the product.
        # Corresponds to the JSON property `unitPricingBaseMeasure`
        # @return [Google::Apis::MerchantapiProductsV1beta::UnitPricingBaseMeasure]
        attr_accessor :unit_pricing_base_measure
      
        # The UnitPricingMeasure of the product.
        # Corresponds to the JSON property `unitPricingMeasure`
        # @return [Google::Apis::MerchantapiProductsV1beta::UnitPricingMeasure]
        attr_accessor :unit_pricing_measure
      
        # URL of the 3D image of the item. See the [Help Center article](https://support.
        # google.com/merchants/answer/13674896) for more information.
        # Corresponds to the JSON property `virtualModelLink`
        # @return [String]
        attr_accessor :virtual_model_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_image_links = args[:additional_image_links] if args.key?(:additional_image_links)
          @ads_grouping = args[:ads_grouping] if args.key?(:ads_grouping)
          @ads_labels = args[:ads_labels] if args.key?(:ads_labels)
          @ads_redirect = args[:ads_redirect] if args.key?(:ads_redirect)
          @adult = args[:adult] if args.key?(:adult)
          @age_group = args[:age_group] if args.key?(:age_group)
          @auto_pricing_min_price = args[:auto_pricing_min_price] if args.key?(:auto_pricing_min_price)
          @availability = args[:availability] if args.key?(:availability)
          @availability_date = args[:availability_date] if args.key?(:availability_date)
          @brand = args[:brand] if args.key?(:brand)
          @canonical_link = args[:canonical_link] if args.key?(:canonical_link)
          @certifications = args[:certifications] if args.key?(:certifications)
          @cloud_export_additional_properties = args[:cloud_export_additional_properties] if args.key?(:cloud_export_additional_properties)
          @color = args[:color] if args.key?(:color)
          @condition = args[:condition] if args.key?(:condition)
          @cost_of_goods_sold = args[:cost_of_goods_sold] if args.key?(:cost_of_goods_sold)
          @custom_label0 = args[:custom_label0] if args.key?(:custom_label0)
          @custom_label1 = args[:custom_label1] if args.key?(:custom_label1)
          @custom_label2 = args[:custom_label2] if args.key?(:custom_label2)
          @custom_label3 = args[:custom_label3] if args.key?(:custom_label3)
          @custom_label4 = args[:custom_label4] if args.key?(:custom_label4)
          @description = args[:description] if args.key?(:description)
          @disclosure_date = args[:disclosure_date] if args.key?(:disclosure_date)
          @display_ads_id = args[:display_ads_id] if args.key?(:display_ads_id)
          @display_ads_link = args[:display_ads_link] if args.key?(:display_ads_link)
          @display_ads_similar_ids = args[:display_ads_similar_ids] if args.key?(:display_ads_similar_ids)
          @display_ads_title = args[:display_ads_title] if args.key?(:display_ads_title)
          @display_ads_value = args[:display_ads_value] if args.key?(:display_ads_value)
          @energy_efficiency_class = args[:energy_efficiency_class] if args.key?(:energy_efficiency_class)
          @excluded_destinations = args[:excluded_destinations] if args.key?(:excluded_destinations)
          @expiration_date = args[:expiration_date] if args.key?(:expiration_date)
          @external_seller_id = args[:external_seller_id] if args.key?(:external_seller_id)
          @free_shipping_threshold = args[:free_shipping_threshold] if args.key?(:free_shipping_threshold)
          @gender = args[:gender] if args.key?(:gender)
          @google_product_category = args[:google_product_category] if args.key?(:google_product_category)
          @gtin = args[:gtin] if args.key?(:gtin)
          @identifier_exists = args[:identifier_exists] if args.key?(:identifier_exists)
          @image_link = args[:image_link] if args.key?(:image_link)
          @included_destinations = args[:included_destinations] if args.key?(:included_destinations)
          @installment = args[:installment] if args.key?(:installment)
          @is_bundle = args[:is_bundle] if args.key?(:is_bundle)
          @item_group_id = args[:item_group_id] if args.key?(:item_group_id)
          @lifestyle_image_links = args[:lifestyle_image_links] if args.key?(:lifestyle_image_links)
          @link = args[:link] if args.key?(:link)
          @link_template = args[:link_template] if args.key?(:link_template)
          @loyalty_points = args[:loyalty_points] if args.key?(:loyalty_points)
          @loyalty_programs = args[:loyalty_programs] if args.key?(:loyalty_programs)
          @material = args[:material] if args.key?(:material)
          @max_energy_efficiency_class = args[:max_energy_efficiency_class] if args.key?(:max_energy_efficiency_class)
          @max_handling_time = args[:max_handling_time] if args.key?(:max_handling_time)
          @min_energy_efficiency_class = args[:min_energy_efficiency_class] if args.key?(:min_energy_efficiency_class)
          @min_handling_time = args[:min_handling_time] if args.key?(:min_handling_time)
          @mobile_link = args[:mobile_link] if args.key?(:mobile_link)
          @mobile_link_template = args[:mobile_link_template] if args.key?(:mobile_link_template)
          @mpn = args[:mpn] if args.key?(:mpn)
          @multipack = args[:multipack] if args.key?(:multipack)
          @pattern = args[:pattern] if args.key?(:pattern)
          @pause = args[:pause] if args.key?(:pause)
          @pickup_method = args[:pickup_method] if args.key?(:pickup_method)
          @pickup_sla = args[:pickup_sla] if args.key?(:pickup_sla)
          @price = args[:price] if args.key?(:price)
          @product_details = args[:product_details] if args.key?(:product_details)
          @product_height = args[:product_height] if args.key?(:product_height)
          @product_highlights = args[:product_highlights] if args.key?(:product_highlights)
          @product_length = args[:product_length] if args.key?(:product_length)
          @product_types = args[:product_types] if args.key?(:product_types)
          @product_weight = args[:product_weight] if args.key?(:product_weight)
          @product_width = args[:product_width] if args.key?(:product_width)
          @promotion_ids = args[:promotion_ids] if args.key?(:promotion_ids)
          @sale_price = args[:sale_price] if args.key?(:sale_price)
          @sale_price_effective_date = args[:sale_price_effective_date] if args.key?(:sale_price_effective_date)
          @sell_on_google_quantity = args[:sell_on_google_quantity] if args.key?(:sell_on_google_quantity)
          @shipping = args[:shipping] if args.key?(:shipping)
          @shipping_height = args[:shipping_height] if args.key?(:shipping_height)
          @shipping_label = args[:shipping_label] if args.key?(:shipping_label)
          @shipping_length = args[:shipping_length] if args.key?(:shipping_length)
          @shipping_weight = args[:shipping_weight] if args.key?(:shipping_weight)
          @shipping_width = args[:shipping_width] if args.key?(:shipping_width)
          @shopping_ads_excluded_countries = args[:shopping_ads_excluded_countries] if args.key?(:shopping_ads_excluded_countries)
          @size = args[:size] if args.key?(:size)
          @size_system = args[:size_system] if args.key?(:size_system)
          @size_types = args[:size_types] if args.key?(:size_types)
          @structured_description = args[:structured_description] if args.key?(:structured_description)
          @structured_title = args[:structured_title] if args.key?(:structured_title)
          @subscription_cost = args[:subscription_cost] if args.key?(:subscription_cost)
          @tax_category = args[:tax_category] if args.key?(:tax_category)
          @taxes = args[:taxes] if args.key?(:taxes)
          @title = args[:title] if args.key?(:title)
          @transit_time_label = args[:transit_time_label] if args.key?(:transit_time_label)
          @unit_pricing_base_measure = args[:unit_pricing_base_measure] if args.key?(:unit_pricing_base_measure)
          @unit_pricing_measure = args[:unit_pricing_measure] if args.key?(:unit_pricing_measure)
          @virtual_model_link = args[:virtual_model_link] if args.key?(:virtual_model_link)
        end
      end
      
      # Product [certification](https://support.google.com/merchants/answer/13528839),
      # initially introduced for EU energy efficiency labeling compliance using the EU
      # EPREL database.
      class Certification
        include Google::Apis::Core::Hashable
      
        # The certification authority, for example "European_Commission". Maximum length
        # is 2000 characters.
        # Corresponds to the JSON property `certificationAuthority`
        # @return [String]
        attr_accessor :certification_authority
      
        # The certification code. Maximum length is 2000 characters.
        # Corresponds to the JSON property `certificationCode`
        # @return [String]
        attr_accessor :certification_code
      
        # The name of the certification, for example "EPREL". Maximum length is 2000
        # characters.
        # Corresponds to the JSON property `certificationName`
        # @return [String]
        attr_accessor :certification_name
      
        # The certification value (also known as class, level or grade), for example "A+"
        # , "C", "gold". Maximum length is 2000 characters.
        # Corresponds to the JSON property `certificationValue`
        # @return [String]
        attr_accessor :certification_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certification_authority = args[:certification_authority] if args.key?(:certification_authority)
          @certification_code = args[:certification_code] if args.key?(:certification_code)
          @certification_name = args[:certification_name] if args.key?(:certification_name)
          @certification_value = args[:certification_value] if args.key?(:certification_value)
        end
      end
      
      # Product property for the Cloud Retail API. For example, properties for a TV
      # product could be "Screen-Resolution" or "Screen-Size".
      class CloudExportAdditionalProperties
        include Google::Apis::Core::Hashable
      
        # Boolean value of the given property. For example for a TV product, "True" or "
        # False" if the screen is UHD.
        # Corresponds to the JSON property `boolValue`
        # @return [Boolean]
        attr_accessor :bool_value
        alias_method :bool_value?, :bool_value
      
        # Float values of the given property. For example for a TV product 1.2345.
        # Maximum repeatedness of this value is 400. Values are stored in an arbitrary
        # but consistent order.
        # Corresponds to the JSON property `floatValue`
        # @return [Array<Float>]
        attr_accessor :float_value
      
        # Integer values of the given property. For example, 1080 for a TV product's
        # Screen Resolution. Maximum repeatedness of this value is 400. Values are
        # stored in an arbitrary but consistent order.
        # Corresponds to the JSON property `intValue`
        # @return [Array<Fixnum>]
        attr_accessor :int_value
      
        # Maximum float value of the given property. For example for a TV product 100.00.
        # Corresponds to the JSON property `maxValue`
        # @return [Float]
        attr_accessor :max_value
      
        # Minimum float value of the given property. For example for a TV product 1.00.
        # Corresponds to the JSON property `minValue`
        # @return [Float]
        attr_accessor :min_value
      
        # Name of the given property. For example, "Screen-Resolution" for a TV product.
        # Maximum string size is 256 characters.
        # Corresponds to the JSON property `propertyName`
        # @return [String]
        attr_accessor :property_name
      
        # Text value of the given property. For example, "8K(UHD)" could be a text value
        # for a TV product. Maximum repeatedness of this value is 400. Values are stored
        # in an arbitrary but consistent order. Maximum string size is 256 characters.
        # Corresponds to the JSON property `textValue`
        # @return [Array<String>]
        attr_accessor :text_value
      
        # Unit of the given property. For example, "Pixels" for a TV product. Maximum
        # string size is 256B.
        # Corresponds to the JSON property `unitCode`
        # @return [String]
        attr_accessor :unit_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bool_value = args[:bool_value] if args.key?(:bool_value)
          @float_value = args[:float_value] if args.key?(:float_value)
          @int_value = args[:int_value] if args.key?(:int_value)
          @max_value = args[:max_value] if args.key?(:max_value)
          @min_value = args[:min_value] if args.key?(:min_value)
          @property_name = args[:property_name] if args.key?(:property_name)
          @text_value = args[:text_value] if args.key?(:text_value)
          @unit_code = args[:unit_code] if args.key?(:unit_code)
        end
      end
      
      # A message that represents custom attributes. Exactly one of `value` or `
      # group_values` must not be empty.
      class CustomAttribute
        include Google::Apis::Core::Hashable
      
        # Subattributes within this attribute group. If `group_values` is not empty, `
        # value` must be empty.
        # Corresponds to the JSON property `groupValues`
        # @return [Array<Google::Apis::MerchantapiProductsV1beta::CustomAttribute>]
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
      
      # The destination status of the product status.
      class DestinationStatus
        include Google::Apis::Core::Hashable
      
        # List of country codes (ISO 3166-1 alpha-2) where the offer is approved.
        # Corresponds to the JSON property `approvedCountries`
        # @return [Array<String>]
        attr_accessor :approved_countries
      
        # List of country codes (ISO 3166-1 alpha-2) where the offer is disapproved.
        # Corresponds to the JSON property `disapprovedCountries`
        # @return [Array<String>]
        attr_accessor :disapproved_countries
      
        # List of country codes (ISO 3166-1 alpha-2) where the offer is pending approval.
        # Corresponds to the JSON property `pendingCountries`
        # @return [Array<String>]
        attr_accessor :pending_countries
      
        # The name of the reporting context.
        # Corresponds to the JSON property `reportingContext`
        # @return [String]
        attr_accessor :reporting_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @approved_countries = args[:approved_countries] if args.key?(:approved_countries)
          @disapproved_countries = args[:disapproved_countries] if args.key?(:disapproved_countries)
          @pending_countries = args[:pending_countries] if args.key?(:pending_countries)
          @reporting_context = args[:reporting_context] if args.key?(:reporting_context)
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
      
      # Conditions to be met for a product to have free shipping.
      class FreeShippingThreshold
        include Google::Apis::Core::Hashable
      
        # The [CLDR territory code](http://www.unicode.org/repos/cldr/tags/latest/common/
        # main/en.xml) of the country to which an item will ship.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `priceThreshold`
        # @return [Google::Apis::MerchantapiProductsV1beta::Price]
        attr_accessor :price_threshold
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country = args[:country] if args.key?(:country)
          @price_threshold = args[:price_threshold] if args.key?(:price_threshold)
        end
      end
      
      # A message that represents installment.
      class Installment
        include Google::Apis::Core::Hashable
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `amount`
        # @return [Google::Apis::MerchantapiProductsV1beta::Price]
        attr_accessor :amount
      
        # Type of installment payments. Supported values are: * "`finance`" * "`lease`"
        # Corresponds to the JSON property `creditType`
        # @return [String]
        attr_accessor :credit_type
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `downpayment`
        # @return [Google::Apis::MerchantapiProductsV1beta::Price]
        attr_accessor :downpayment
      
        # The number of installments the buyer has to pay.
        # Corresponds to the JSON property `months`
        # @return [Fixnum]
        attr_accessor :months
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amount = args[:amount] if args.key?(:amount)
          @credit_type = args[:credit_type] if args.key?(:credit_type)
          @downpayment = args[:downpayment] if args.key?(:downpayment)
          @months = args[:months] if args.key?(:months)
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
      
      # The ItemLevelIssue of the product status.
      class ItemLevelIssue
        include Google::Apis::Core::Hashable
      
        # List of country codes (ISO 3166-1 alpha-2) where issue applies to the offer.
        # Corresponds to the JSON property `applicableCountries`
        # @return [Array<String>]
        attr_accessor :applicable_countries
      
        # The attribute's name, if the issue is caused by a single attribute.
        # Corresponds to the JSON property `attribute`
        # @return [String]
        attr_accessor :attribute
      
        # The error code of the issue.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # A short issue description in English.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A detailed issue description in English.
        # Corresponds to the JSON property `detail`
        # @return [String]
        attr_accessor :detail
      
        # The URL of a web page to help with resolving this issue.
        # Corresponds to the JSON property `documentation`
        # @return [String]
        attr_accessor :documentation
      
        # The reporting context the issue applies to.
        # Corresponds to the JSON property `reportingContext`
        # @return [String]
        attr_accessor :reporting_context
      
        # Whether the issue can be resolved by the merchant.
        # Corresponds to the JSON property `resolution`
        # @return [String]
        attr_accessor :resolution
      
        # How this issue affects serving of the offer.
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
      
      # Response message for the ListProducts method.
      class ListProductsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The processed products from the specified account. These are your processed
        # products after applying rules and supplemental data sources.
        # Corresponds to the JSON property `products`
        # @return [Array<Google::Apis::MerchantapiProductsV1beta::Product>]
        attr_accessor :products
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @products = args[:products] if args.key?(:products)
        end
      end
      
      # A message that represents loyalty points.
      class LoyaltyPoints
        include Google::Apis::Core::Hashable
      
        # Name of loyalty points program. It is recommended to limit the name to 12 full-
        # width characters or 24 Roman characters.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The retailer's loyalty points in absolute value.
        # Corresponds to the JSON property `pointsValue`
        # @return [Fixnum]
        attr_accessor :points_value
      
        # The ratio of a point when converted to currency. Google assumes currency based
        # on Merchant Center settings. If ratio is left out, it defaults to 1.0.
        # Corresponds to the JSON property `ratio`
        # @return [Float]
        attr_accessor :ratio
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @points_value = args[:points_value] if args.key?(:points_value)
          @ratio = args[:ratio] if args.key?(:ratio)
        end
      end
      
      # A message that represents loyalty program.
      class LoyaltyProgram
        include Google::Apis::Core::Hashable
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `cashbackForFutureUse`
        # @return [Google::Apis::MerchantapiProductsV1beta::Price]
        attr_accessor :cashback_for_future_use
      
        # The amount of loyalty points earned on a purchase.
        # Corresponds to the JSON property `loyaltyPoints`
        # @return [Fixnum]
        attr_accessor :loyalty_points
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::MerchantapiProductsV1beta::Price]
        attr_accessor :price
      
        # The label of the loyalty program. This is an internal label that uniquely
        # identifies the relationship between a merchant entity and a loyalty program
        # entity. The label must be provided so that the system can associate the assets
        # below (for example, price and points) with a merchant. The corresponding
        # program must be linked to the merchant account.
        # Corresponds to the JSON property `programLabel`
        # @return [String]
        attr_accessor :program_label
      
        # The label of the tier within the loyalty program. Must match one of the labels
        # within the program.
        # Corresponds to the JSON property `tierLabel`
        # @return [String]
        attr_accessor :tier_label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cashback_for_future_use = args[:cashback_for_future_use] if args.key?(:cashback_for_future_use)
          @loyalty_points = args[:loyalty_points] if args.key?(:loyalty_points)
          @price = args[:price] if args.key?(:price)
          @program_label = args[:program_label] if args.key?(:program_label)
          @tier_label = args[:tier_label] if args.key?(:tier_label)
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
      
      # The processed product, built from multiple product inputs after applying rules
      # and supplemental data sources. This processed product matches what is shown in
      # your Merchant Center account and in Shopping ads and other surfaces across
      # Google. Each product is built from exactly one primary data source product
      # input, and multiple supplemental data source inputs. After inserting, updating,
      # or deleting a product input, it may take several minutes before the updated
      # processed product can be retrieved. All fields in the processed product and
      # its sub-messages match the name of their corresponding attribute in the [
      # Product data specification](https://support.google.com/merchants/answer/
      # 7052112) with some exceptions.
      class Product
        include Google::Apis::Core::Hashable
      
        # Attributes.
        # Corresponds to the JSON property `attributes`
        # @return [Google::Apis::MerchantapiProductsV1beta::Attributes]
        attr_accessor :attributes
      
        # Output only. The [channel](https://support.google.com/merchants/answer/7361332)
        # of the product.
        # Corresponds to the JSON property `channel`
        # @return [String]
        attr_accessor :channel
      
        # Output only. The two-letter [ISO 639-1](http://en.wikipedia.org/wiki/ISO_639-1)
        # language code for the product.
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # Output only. A list of custom (merchant-provided) attributes. It can also be
        # used to submit any attribute of the data specification in its generic form (
        # for example, `` "name": "size type", "value": "regular" ``). This is useful
        # for submitting attributes not explicitly exposed by the API, such as
        # additional attributes used for Buy on Google.
        # Corresponds to the JSON property `customAttributes`
        # @return [Array<Google::Apis::MerchantapiProductsV1beta::CustomAttribute>]
        attr_accessor :custom_attributes
      
        # Output only. The primary data source of the product.
        # Corresponds to the JSON property `dataSource`
        # @return [String]
        attr_accessor :data_source
      
        # Output only. The feed label for the product.
        # Corresponds to the JSON property `feedLabel`
        # @return [String]
        attr_accessor :feed_label
      
        # The name of the product. Format: `"`product.name=accounts/`account`/products/`
        # product``"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Your unique identifier for the product. This is the same for the
        # product input and processed product. Leading and trailing whitespaces are
        # stripped and multiple whitespaces are replaced by a single whitespace upon
        # submission. See the [product data specification](https://support.google.com/
        # merchants/answer/188494#id) for details.
        # Corresponds to the JSON property `offerId`
        # @return [String]
        attr_accessor :offer_id
      
        # The status of a product, data validation issues, that is, information about a
        # product computed asynchronously.
        # Corresponds to the JSON property `productStatus`
        # @return [Google::Apis::MerchantapiProductsV1beta::ProductStatus]
        attr_accessor :product_status
      
        # Output only. Represents the existing version (freshness) of the product, which
        # can be used to preserve the right order when multiple updates are done at the
        # same time. If set, the insertion is prevented when version number is lower
        # than the current version number of the existing product. Re-insertion (for
        # example, product refresh after 30 days) can be performed with the current `
        # version_number`. Only supported for insertions into primary data sources. If
        # the operation is prevented, the aborted exception will be thrown.
        # Corresponds to the JSON property `versionNumber`
        # @return [Fixnum]
        attr_accessor :version_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @channel = args[:channel] if args.key?(:channel)
          @content_language = args[:content_language] if args.key?(:content_language)
          @custom_attributes = args[:custom_attributes] if args.key?(:custom_attributes)
          @data_source = args[:data_source] if args.key?(:data_source)
          @feed_label = args[:feed_label] if args.key?(:feed_label)
          @name = args[:name] if args.key?(:name)
          @offer_id = args[:offer_id] if args.key?(:offer_id)
          @product_status = args[:product_status] if args.key?(:product_status)
          @version_number = args[:version_number] if args.key?(:version_number)
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
      
      # The product details.
      class ProductDetail
        include Google::Apis::Core::Hashable
      
        # The name of the product detail.
        # Corresponds to the JSON property `attributeName`
        # @return [String]
        attr_accessor :attribute_name
      
        # The value of the product detail.
        # Corresponds to the JSON property `attributeValue`
        # @return [String]
        attr_accessor :attribute_value
      
        # The section header used to group a set of product details.
        # Corresponds to the JSON property `sectionName`
        # @return [String]
        attr_accessor :section_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_name = args[:attribute_name] if args.key?(:attribute_name)
          @attribute_value = args[:attribute_value] if args.key?(:attribute_value)
          @section_name = args[:section_name] if args.key?(:section_name)
        end
      end
      
      # The dimension of the product.
      class ProductDimension
        include Google::Apis::Core::Hashable
      
        # Required. The dimension units. Acceptable values are: * "`in`" * "`cm`"
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # Required. The dimension value represented as a number. The value can have a
        # maximum precision of four decimal places.
        # Corresponds to the JSON property `value`
        # @return [Float]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @unit = args[:unit] if args.key?(:unit)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # This resource represents input data you submit for a product, not the
      # processed product that you see in Merchant Center, in Shopping ads, or across
      # Google surfaces. Product inputs, rules and supplemental data source data are
      # combined to create the processed product. Required product input attributes to
      # pass data validation checks are primarily defined in the [Products Data
      # Specification](https://support.google.com/merchants/answer/188494). The
      # following attributes are required: feedLabel, contentLanguage and offerId.
      # After inserting, updating, or deleting a product input, it may take several
      # minutes before the processed product can be retrieved. All fields in the
      # product input and its sub-messages match the English name of their
      # corresponding attribute in the vertical spec with [some exceptions](https://
      # support.google.com/merchants/answer/7052112).
      class ProductInput
        include Google::Apis::Core::Hashable
      
        # Attributes.
        # Corresponds to the JSON property `attributes`
        # @return [Google::Apis::MerchantapiProductsV1beta::Attributes]
        attr_accessor :attributes
      
        # Required. Immutable. The [channel](https://support.google.com/merchants/answer/
        # 7361332) of the product.
        # Corresponds to the JSON property `channel`
        # @return [String]
        attr_accessor :channel
      
        # Required. Immutable. The two-letter [ISO 639-1](http://en.wikipedia.org/wiki/
        # ISO_639-1) language code for the product.
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # Optional. A list of custom (merchant-provided) attributes. It can also be used
        # for submitting any attribute of the data specification in its generic form (
        # for example, `` "name": "size type", "value": "regular" ``). This is useful
        # for submitting attributes not explicitly exposed by the API, such as
        # additional attributes used for Buy on Google. Maximum allowed number of
        # characters for each custom attribute is 10240 (represents sum of characters
        # for name and value). Maximum 2500 custom attributes can be set per product,
        # with total size of 102.4kB. Underscores in custom attribute names are replaced
        # by spaces upon insertion.
        # Corresponds to the JSON property `customAttributes`
        # @return [Array<Google::Apis::MerchantapiProductsV1beta::CustomAttribute>]
        attr_accessor :custom_attributes
      
        # Required. Immutable. The [feed label](https://developers.google.com/shopping-
        # content/guides/products/feed-labels) for the product.
        # Corresponds to the JSON property `feedLabel`
        # @return [String]
        attr_accessor :feed_label
      
        # Identifier. The name of the product input. Format: `"`productinput.name=
        # accounts/`account`/productInputs/`productinput``"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Immutable. Your unique identifier for the product. This is the same
        # for the product input and processed product. Leading and trailing whitespaces
        # are stripped and multiple whitespaces are replaced by a single whitespace upon
        # submission. See the [products data specification](https://support.google.com/
        # merchants/answer/188494#id) for details.
        # Corresponds to the JSON property `offerId`
        # @return [String]
        attr_accessor :offer_id
      
        # Output only. The name of the processed product. Format: `"`product.name=
        # accounts/`account`/products/`product``"`
        # Corresponds to the JSON property `product`
        # @return [String]
        attr_accessor :product
      
        # Optional. Represents the existing version (freshness) of the product, which
        # can be used to preserve the right order when multiple updates are done at the
        # same time. If set, the insertion is prevented when version number is lower
        # than the current version number of the existing product. Re-insertion (for
        # example, product refresh after 30 days) can be performed with the current `
        # version_number`. Only supported for insertions into primary data sources. If
        # the operation is prevented, the aborted exception will be thrown.
        # Corresponds to the JSON property `versionNumber`
        # @return [Fixnum]
        attr_accessor :version_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @channel = args[:channel] if args.key?(:channel)
          @content_language = args[:content_language] if args.key?(:content_language)
          @custom_attributes = args[:custom_attributes] if args.key?(:custom_attributes)
          @feed_label = args[:feed_label] if args.key?(:feed_label)
          @name = args[:name] if args.key?(:name)
          @offer_id = args[:offer_id] if args.key?(:offer_id)
          @product = args[:product] if args.key?(:product)
          @version_number = args[:version_number] if args.key?(:version_number)
        end
      end
      
      # The status of a product, data validation issues, that is, information about a
      # product computed asynchronously.
      class ProductStatus
        include Google::Apis::Core::Hashable
      
        # Date on which the item has been created, in [ISO 8601](http://en.wikipedia.org/
        # wiki/ISO_8601) format.
        # Corresponds to the JSON property `creationDate`
        # @return [String]
        attr_accessor :creation_date
      
        # The intended destinations for the product.
        # Corresponds to the JSON property `destinationStatuses`
        # @return [Array<Google::Apis::MerchantapiProductsV1beta::DestinationStatus>]
        attr_accessor :destination_statuses
      
        # Date on which the item expires, in [ISO 8601](http://en.wikipedia.org/wiki/
        # ISO_8601) format.
        # Corresponds to the JSON property `googleExpirationDate`
        # @return [String]
        attr_accessor :google_expiration_date
      
        # A list of all issues associated with the product.
        # Corresponds to the JSON property `itemLevelIssues`
        # @return [Array<Google::Apis::MerchantapiProductsV1beta::ItemLevelIssue>]
        attr_accessor :item_level_issues
      
        # Date on which the item has been last updated, in [ISO 8601](http://en.
        # wikipedia.org/wiki/ISO_8601) format.
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
          @google_expiration_date = args[:google_expiration_date] if args.key?(:google_expiration_date)
          @item_level_issues = args[:item_level_issues] if args.key?(:item_level_issues)
          @last_update_date = args[:last_update_date] if args.key?(:last_update_date)
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
        # @return [Array<Google::Apis::MerchantapiProductsV1beta::ProductChange>]
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
      
      # Structured description, for algorithmically (AI)-generated descriptions.
      class ProductStructuredDescription
        include Google::Apis::Core::Hashable
      
        # The description text Maximum length is 5000 characters
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # The digital source type, for example "trained_algorithmic_media". Following [
        # IPTC](https://cv.iptc.org/newscodes/digitalsourcetype). Maximum length is 40
        # characters.
        # Corresponds to the JSON property `digitalSourceType`
        # @return [String]
        attr_accessor :digital_source_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @digital_source_type = args[:digital_source_type] if args.key?(:digital_source_type)
        end
      end
      
      # Structured title, for algorithmically (AI)-generated titles.
      class ProductStructuredTitle
        include Google::Apis::Core::Hashable
      
        # The title text Maximum length is 150 characters
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # The digital source type, for example "trained_algorithmic_media". Following [
        # IPTC](https://cv.iptc.org/newscodes/digitalsourcetype). Maximum length is 40
        # characters.
        # Corresponds to the JSON property `digitalSourceType`
        # @return [String]
        attr_accessor :digital_source_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @digital_source_type = args[:digital_source_type] if args.key?(:digital_source_type)
        end
      end
      
      # The weight of the product.
      class ProductWeight
        include Google::Apis::Core::Hashable
      
        # Required. The weight unit. Acceptable values are: * "`g`" * "`kg`" * "`oz`" * "
        # `lb`"
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # Required. The weight represented as a number. The weight can have a maximum
        # precision of four decimal places.
        # Corresponds to the JSON property `value`
        # @return [Float]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @unit = args[:unit] if args.key?(:unit)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # The Shipping of the product.
      class Shipping
        include Google::Apis::Core::Hashable
      
        # The [CLDR territory code](http://www.unicode.org/repos/cldr/tags/latest/common/
        # main/en.xml) of the country to which an item will ship.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # The location where the shipping is applicable, represented by a location group
        # name.
        # Corresponds to the JSON property `locationGroupName`
        # @return [String]
        attr_accessor :location_group_name
      
        # The numeric ID of a location that the shipping rate applies to as defined in
        # the [AdWords API](https://developers.google.com/adwords/api/docs/appendix/
        # geotargeting).
        # Corresponds to the JSON property `locationId`
        # @return [Fixnum]
        attr_accessor :location_id
      
        # Maximum handling time (inclusive) between when the order is received and
        # shipped in business days. 0 means that the order is shipped on the same day as
        # it is received if it happens before the cut-off time. Both maxHandlingTime and
        # maxTransitTime are required if providing shipping speeds. minHandlingTime is
        # optional if maxHandlingTime is present.
        # Corresponds to the JSON property `maxHandlingTime`
        # @return [Fixnum]
        attr_accessor :max_handling_time
      
        # Maximum transit time (inclusive) between when the order has shipped and when
        # it is delivered in business days. 0 means that the order is delivered on the
        # same day as it ships. Both maxHandlingTime and maxTransitTime are required if
        # providing shipping speeds. minTransitTime is optional if maxTransitTime is
        # present.
        # Corresponds to the JSON property `maxTransitTime`
        # @return [Fixnum]
        attr_accessor :max_transit_time
      
        # Minimum handling time (inclusive) between when the order is received and
        # shipped in business days. 0 means that the order is shipped on the same day as
        # it is received if it happens before the cut-off time. minHandlingTime can only
        # be present together with maxHandlingTime; but it is not required if
        # maxHandlingTime is present.
        # Corresponds to the JSON property `minHandlingTime`
        # @return [Fixnum]
        attr_accessor :min_handling_time
      
        # Minimum transit time (inclusive) between when the order has shipped and when
        # it is delivered in business days. 0 means that the order is delivered on the
        # same day as it ships. minTransitTime can only be present together with
        # maxTransitTime; but it is not required if maxTransitTime is present.
        # Corresponds to the JSON property `minTransitTime`
        # @return [Fixnum]
        attr_accessor :min_transit_time
      
        # The postal code range that the shipping rate applies to, represented by a
        # postal code, a postal code prefix followed by a * wildcard, a range between
        # two postal codes or two postal code prefixes of equal length.
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::MerchantapiProductsV1beta::Price]
        attr_accessor :price
      
        # The geographic region to which a shipping rate applies. See [region](https://
        # support.google.com/merchants/answer/6324484) for more information.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # A free-form description of the service class or delivery speed.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country = args[:country] if args.key?(:country)
          @location_group_name = args[:location_group_name] if args.key?(:location_group_name)
          @location_id = args[:location_id] if args.key?(:location_id)
          @max_handling_time = args[:max_handling_time] if args.key?(:max_handling_time)
          @max_transit_time = args[:max_transit_time] if args.key?(:max_transit_time)
          @min_handling_time = args[:min_handling_time] if args.key?(:min_handling_time)
          @min_transit_time = args[:min_transit_time] if args.key?(:min_transit_time)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @price = args[:price] if args.key?(:price)
          @region = args[:region] if args.key?(:region)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # The ShippingDimension of the product.
      class ShippingDimension
        include Google::Apis::Core::Hashable
      
        # The unit of value.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # The dimension of the product used to calculate the shipping cost of the item.
        # Corresponds to the JSON property `value`
        # @return [Float]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @unit = args[:unit] if args.key?(:unit)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # The ShippingWeight of the product.
      class ShippingWeight
        include Google::Apis::Core::Hashable
      
        # The unit of value.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # The weight of the product used to calculate the shipping cost of the item.
        # Corresponds to the JSON property `value`
        # @return [Float]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @unit = args[:unit] if args.key?(:unit)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # The SubscriptionCost of the product.
      class SubscriptionCost
        include Google::Apis::Core::Hashable
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `amount`
        # @return [Google::Apis::MerchantapiProductsV1beta::Price]
        attr_accessor :amount
      
        # The type of subscription period. Supported values are: * "`month`" * "`year`"
        # Corresponds to the JSON property `period`
        # @return [String]
        attr_accessor :period
      
        # The number of subscription periods the buyer has to pay.
        # Corresponds to the JSON property `periodLength`
        # @return [Fixnum]
        attr_accessor :period_length
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amount = args[:amount] if args.key?(:amount)
          @period = args[:period] if args.key?(:period)
          @period_length = args[:period_length] if args.key?(:period_length)
        end
      end
      
      # The Tax of the product.
      class Tax
        include Google::Apis::Core::Hashable
      
        # The country within which the item is taxed, specified as a [CLDR territory
        # code](http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml).
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # The numeric ID of a location that the tax rate applies to as defined in the [
        # AdWords API](https://developers.google.com/adwords/api/docs/appendix/
        # geotargeting).
        # Corresponds to the JSON property `locationId`
        # @return [Fixnum]
        attr_accessor :location_id
      
        # The postal code range that the tax rate applies to, represented by a ZIP code,
        # a ZIP code prefix using * wildcard, a range between two ZIP codes or two ZIP
        # code prefixes of equal length. Examples: 94114, 94*, 94002-95460, 94*-95*.
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # The percentage of tax rate that applies to the item price.
        # Corresponds to the JSON property `rate`
        # @return [Float]
        attr_accessor :rate
      
        # The geographic region to which the tax rate applies.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # Set to true if tax is charged on shipping.
        # Corresponds to the JSON property `taxShip`
        # @return [Boolean]
        attr_accessor :tax_ship
        alias_method :tax_ship?, :tax_ship
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country = args[:country] if args.key?(:country)
          @location_id = args[:location_id] if args.key?(:location_id)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @rate = args[:rate] if args.key?(:rate)
          @region = args[:region] if args.key?(:region)
          @tax_ship = args[:tax_ship] if args.key?(:tax_ship)
        end
      end
      
      # The UnitPricingBaseMeasure of the product.
      class UnitPricingBaseMeasure
        include Google::Apis::Core::Hashable
      
        # The unit of the denominator.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # The denominator of the unit price.
        # Corresponds to the JSON property `value`
        # @return [Fixnum]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @unit = args[:unit] if args.key?(:unit)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # The UnitPricingMeasure of the product.
      class UnitPricingMeasure
        include Google::Apis::Core::Hashable
      
        # The unit of the measure.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # The measure of an item.
        # Corresponds to the JSON property `value`
        # @return [Float]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @unit = args[:unit] if args.key?(:unit)
          @value = args[:value] if args.key?(:value)
        end
      end
    end
  end
end
