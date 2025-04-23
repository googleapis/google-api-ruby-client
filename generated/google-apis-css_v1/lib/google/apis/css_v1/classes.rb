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
    module CssV1
      
      # Information about CSS/MC account.
      class Account
        include Google::Apis::Core::Hashable
      
        # Output only. The type of this account.
        # Corresponds to the JSON property `accountType`
        # @return [String]
        attr_accessor :account_type
      
        # Automatically created label IDs assigned to the MC account by CSS Center.
        # Corresponds to the JSON property `automaticLabelIds`
        # @return [Array<Fixnum>]
        attr_accessor :automatic_label_ids
      
        # The CSS/MC account's short display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Immutable. The CSS/MC account's full name.
        # Corresponds to the JSON property `fullName`
        # @return [String]
        attr_accessor :full_name
      
        # Output only. Immutable. The CSS/MC account's homepage.
        # Corresponds to the JSON property `homepageUri`
        # @return [String]
        attr_accessor :homepage_uri
      
        # Manually created label IDs assigned to the CSS/MC account by a CSS parent
        # account.
        # Corresponds to the JSON property `labelIds`
        # @return [Array<Fixnum>]
        attr_accessor :label_ids
      
        # The label resource name. Format: accounts/`account`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The CSS/MC account's parent resource. CSS group for CSS domains; CSS domain
        # for MC accounts. Returned only if the user has access to the parent account.
        # Note: For MC sub-accounts, this is also the CSS domain that is the parent
        # resource of the MCA account, since we are effectively flattening the hierarchy.
        # "
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_type = args[:account_type] if args.key?(:account_type)
          @automatic_label_ids = args[:automatic_label_ids] if args.key?(:automatic_label_ids)
          @display_name = args[:display_name] if args.key?(:display_name)
          @full_name = args[:full_name] if args.key?(:full_name)
          @homepage_uri = args[:homepage_uri] if args.key?(:homepage_uri)
          @label_ids = args[:label_ids] if args.key?(:label_ids)
          @name = args[:name] if args.key?(:name)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # Label assigned by CSS domain or CSS group to one of its sub-accounts.
      class AccountLabel
        include Google::Apis::Core::Hashable
      
        # Output only. The ID of account this label belongs to.
        # Corresponds to the JSON property `accountId`
        # @return [Fixnum]
        attr_accessor :account_id
      
        # The description of this label.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The display name of this label.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The ID of the label.
        # Corresponds to the JSON property `labelId`
        # @return [Fixnum]
        attr_accessor :label_id
      
        # Output only. The type of this label.
        # Corresponds to the JSON property `labelType`
        # @return [String]
        attr_accessor :label_type
      
        # The resource name of the label. Format: accounts/`account`/labels/`label`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @label_id = args[:label_id] if args.key?(:label_id)
          @label_type = args[:label_type] if args.key?(:label_type)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Attributes for CSS Product.
      class Attributes
        include Google::Apis::Core::Hashable
      
        # Additional URL of images of the item.
        # Corresponds to the JSON property `additionalImageLinks`
        # @return [Array<String>]
        attr_accessor :additional_image_links
      
        # Set to true if the item is targeted towards adults.
        # Corresponds to the JSON property `adult`
        # @return [Boolean]
        attr_accessor :adult
        alias_method :adult?, :adult
      
        # Target age group of the item.
        # Corresponds to the JSON property `ageGroup`
        # @return [String]
        attr_accessor :age_group
      
        # Product Related Attributes.[14-36] Brand of the item.
        # Corresponds to the JSON property `brand`
        # @return [String]
        attr_accessor :brand
      
        # A list of certificates claimed by the CSS for the given product.
        # Corresponds to the JSON property `certifications`
        # @return [Array<Google::Apis::CssV1::Certification>]
        attr_accessor :certifications
      
        # Color of the item.
        # Corresponds to the JSON property `color`
        # @return [String]
        attr_accessor :color
      
        # Allows advertisers to override the item URL when the product is shown within
        # the context of Product Ads.
        # Corresponds to the JSON property `cppAdsRedirect`
        # @return [String]
        attr_accessor :cpp_ads_redirect
      
        # URL directly linking to your the Product Detail Page of the CSS.
        # Corresponds to the JSON property `cppLink`
        # @return [String]
        attr_accessor :cpp_link
      
        # URL for the mobile-optimized version of the Product Detail Page of the CSS.
        # Corresponds to the JSON property `cppMobileLink`
        # @return [String]
        attr_accessor :cpp_mobile_link
      
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
      
        # The list of destinations to exclude for this target (corresponds to unchecked
        # check boxes in Merchant Center).
        # Corresponds to the JSON property `excludedDestinations`
        # @return [Array<String>]
        attr_accessor :excluded_destinations
      
        # Date on which the item should expire, as specified upon insertion, in [ISO
        # 8601](http://en.wikipedia.org/wiki/ISO_8601) format. The actual expiration
        # date is exposed in `productstatuses` as [googleExpirationDate](https://support.
        # google.com/merchants/answer/6324499) and might be earlier if `expirationDate`
        # is too far in the future. Note: It may take 2+ days from the expiration date
        # for the item to actually get deleted.
        # Corresponds to the JSON property `expirationDate`
        # @return [String]
        attr_accessor :expiration_date
      
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
      
        # Condition of the headline offer.
        # Corresponds to the JSON property `headlineOfferCondition`
        # @return [String]
        attr_accessor :headline_offer_condition
      
        # A message that represents installment.
        # Corresponds to the JSON property `headlineOfferInstallment`
        # @return [Google::Apis::CssV1::HeadlineOfferInstallment]
        attr_accessor :headline_offer_installment
      
        # Link to the headline offer.
        # Corresponds to the JSON property `headlineOfferLink`
        # @return [String]
        attr_accessor :headline_offer_link
      
        # Mobile Link to the headline offer.
        # Corresponds to the JSON property `headlineOfferMobileLink`
        # @return [String]
        attr_accessor :headline_offer_mobile_link
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `headlineOfferPrice`
        # @return [Google::Apis::CssV1::Price]
        attr_accessor :headline_offer_price
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `headlineOfferShippingPrice`
        # @return [Google::Apis::CssV1::Price]
        attr_accessor :headline_offer_shipping_price
      
        # The SubscriptionCost of the product.
        # Corresponds to the JSON property `headlineOfferSubscriptionCost`
        # @return [Google::Apis::CssV1::HeadlineOfferSubscriptionCost]
        attr_accessor :headline_offer_subscription_cost
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `highPrice`
        # @return [Google::Apis::CssV1::Price]
        attr_accessor :high_price
      
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
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `lowPrice`
        # @return [Google::Apis::CssV1::Price]
        attr_accessor :low_price
      
        # The material of which the item is made.
        # Corresponds to the JSON property `material`
        # @return [String]
        attr_accessor :material
      
        # Manufacturer Part Number ([MPN](https://support.google.com/merchants/answer/
        # 188494#mpn)) of the item.
        # Corresponds to the JSON property `mpn`
        # @return [String]
        attr_accessor :mpn
      
        # The number of identical products in a merchant-defined multipack.
        # Corresponds to the JSON property `multipack`
        # @return [Fixnum]
        attr_accessor :multipack
      
        # The number of CSS Products.
        # Corresponds to the JSON property `numberOfOffers`
        # @return [Fixnum]
        attr_accessor :number_of_offers
      
        # The item's pattern (e.g. polka dots).
        # Corresponds to the JSON property `pattern`
        # @return [String]
        attr_accessor :pattern
      
        # Publication of this item will be temporarily paused.
        # Corresponds to the JSON property `pause`
        # @return [String]
        attr_accessor :pause
      
        # Technical specification or additional product details.
        # Corresponds to the JSON property `productDetails`
        # @return [Array<Google::Apis::CssV1::ProductDetail>]
        attr_accessor :product_details
      
        # The dimension of the product.
        # Corresponds to the JSON property `productHeight`
        # @return [Google::Apis::CssV1::ProductDimension]
        attr_accessor :product_height
      
        # Bullet points describing the most relevant highlights of a product.
        # Corresponds to the JSON property `productHighlights`
        # @return [Array<String>]
        attr_accessor :product_highlights
      
        # The dimension of the product.
        # Corresponds to the JSON property `productLength`
        # @return [Google::Apis::CssV1::ProductDimension]
        attr_accessor :product_length
      
        # Categories of the item (formatted as in [products data specification](https://
        # support.google.com/merchants/answer/6324406)).
        # Corresponds to the JSON property `productTypes`
        # @return [Array<String>]
        attr_accessor :product_types
      
        # The weight of the product.
        # Corresponds to the JSON property `productWeight`
        # @return [Google::Apis::CssV1::ProductWeight]
        attr_accessor :product_weight
      
        # The dimension of the product.
        # Corresponds to the JSON property `productWidth`
        # @return [Google::Apis::CssV1::ProductDimension]
        attr_accessor :product_width
      
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
      
        # Title of the item.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_image_links = args[:additional_image_links] if args.key?(:additional_image_links)
          @adult = args[:adult] if args.key?(:adult)
          @age_group = args[:age_group] if args.key?(:age_group)
          @brand = args[:brand] if args.key?(:brand)
          @certifications = args[:certifications] if args.key?(:certifications)
          @color = args[:color] if args.key?(:color)
          @cpp_ads_redirect = args[:cpp_ads_redirect] if args.key?(:cpp_ads_redirect)
          @cpp_link = args[:cpp_link] if args.key?(:cpp_link)
          @cpp_mobile_link = args[:cpp_mobile_link] if args.key?(:cpp_mobile_link)
          @custom_label0 = args[:custom_label0] if args.key?(:custom_label0)
          @custom_label1 = args[:custom_label1] if args.key?(:custom_label1)
          @custom_label2 = args[:custom_label2] if args.key?(:custom_label2)
          @custom_label3 = args[:custom_label3] if args.key?(:custom_label3)
          @custom_label4 = args[:custom_label4] if args.key?(:custom_label4)
          @description = args[:description] if args.key?(:description)
          @excluded_destinations = args[:excluded_destinations] if args.key?(:excluded_destinations)
          @expiration_date = args[:expiration_date] if args.key?(:expiration_date)
          @gender = args[:gender] if args.key?(:gender)
          @google_product_category = args[:google_product_category] if args.key?(:google_product_category)
          @gtin = args[:gtin] if args.key?(:gtin)
          @headline_offer_condition = args[:headline_offer_condition] if args.key?(:headline_offer_condition)
          @headline_offer_installment = args[:headline_offer_installment] if args.key?(:headline_offer_installment)
          @headline_offer_link = args[:headline_offer_link] if args.key?(:headline_offer_link)
          @headline_offer_mobile_link = args[:headline_offer_mobile_link] if args.key?(:headline_offer_mobile_link)
          @headline_offer_price = args[:headline_offer_price] if args.key?(:headline_offer_price)
          @headline_offer_shipping_price = args[:headline_offer_shipping_price] if args.key?(:headline_offer_shipping_price)
          @headline_offer_subscription_cost = args[:headline_offer_subscription_cost] if args.key?(:headline_offer_subscription_cost)
          @high_price = args[:high_price] if args.key?(:high_price)
          @image_link = args[:image_link] if args.key?(:image_link)
          @included_destinations = args[:included_destinations] if args.key?(:included_destinations)
          @is_bundle = args[:is_bundle] if args.key?(:is_bundle)
          @item_group_id = args[:item_group_id] if args.key?(:item_group_id)
          @low_price = args[:low_price] if args.key?(:low_price)
          @material = args[:material] if args.key?(:material)
          @mpn = args[:mpn] if args.key?(:mpn)
          @multipack = args[:multipack] if args.key?(:multipack)
          @number_of_offers = args[:number_of_offers] if args.key?(:number_of_offers)
          @pattern = args[:pattern] if args.key?(:pattern)
          @pause = args[:pause] if args.key?(:pause)
          @product_details = args[:product_details] if args.key?(:product_details)
          @product_height = args[:product_height] if args.key?(:product_height)
          @product_highlights = args[:product_highlights] if args.key?(:product_highlights)
          @product_length = args[:product_length] if args.key?(:product_length)
          @product_types = args[:product_types] if args.key?(:product_types)
          @product_weight = args[:product_weight] if args.key?(:product_weight)
          @product_width = args[:product_width] if args.key?(:product_width)
          @size = args[:size] if args.key?(:size)
          @size_system = args[:size_system] if args.key?(:size_system)
          @size_types = args[:size_types] if args.key?(:size_types)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # The certification for the product. Use the this attribute to describe
      # certifications, such as energy efficiency ratings, associated with a product.
      class Certification
        include Google::Apis::Core::Hashable
      
        # The authority or certification body responsible for issuing the certification.
        # At this time, the most common value is "EC" or “European_Commission” for
        # energy labels in the EU.
        # Corresponds to the JSON property `authority`
        # @return [String]
        attr_accessor :authority
      
        # The code of the certification. For example, for the EPREL certificate with the
        # link https://eprel.ec.europa.eu/screen/product/dishwashers2019/123456 the code
        # is 123456. The code is required for European Energy Labels.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # The name of the certification. At this time, the most common value is "EPREL",
        # which represents energy efficiency certifications in the EU European Registry
        # for Energy Labeling (EPREL) database.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authority = args[:authority] if args.key?(:authority)
          @code = args[:code] if args.key?(:code)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The processed CSS Product.
      class CssProduct
        include Google::Apis::Core::Hashable
      
        # Attributes for CSS Product.
        # Corresponds to the JSON property `attributes`
        # @return [Google::Apis::CssV1::Attributes]
        attr_accessor :attributes
      
        # Output only. The two-letter [ISO 639-1](http://en.wikipedia.org/wiki/ISO_639-1)
        # language code for the product.
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # The status of the Css Product, data validation issues, that is, information
        # about the Css Product computed asynchronously.
        # Corresponds to the JSON property `cssProductStatus`
        # @return [Google::Apis::CssV1::CssProductStatus]
        attr_accessor :css_product_status
      
        # Output only. A list of custom (CSS-provided) attributes. It can also be used
        # to submit any attribute of the feed specification in its generic form (for
        # example, `` "name": "size type", "value": "regular" ``). This is useful for
        # submitting attributes not explicitly exposed by the API, such as additional
        # attributes used for Buy on Google.
        # Corresponds to the JSON property `customAttributes`
        # @return [Array<Google::Apis::CssV1::CustomAttribute>]
        attr_accessor :custom_attributes
      
        # Output only. The feed label for the product.
        # Corresponds to the JSON property `feedLabel`
        # @return [String]
        attr_accessor :feed_label
      
        # The name of the CSS Product. Format: `"accounts/`account`/cssProducts/`
        # css_product`"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Your unique raw identifier for the product.
        # Corresponds to the JSON property `rawProvidedId`
        # @return [String]
        attr_accessor :raw_provided_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @content_language = args[:content_language] if args.key?(:content_language)
          @css_product_status = args[:css_product_status] if args.key?(:css_product_status)
          @custom_attributes = args[:custom_attributes] if args.key?(:custom_attributes)
          @feed_label = args[:feed_label] if args.key?(:feed_label)
          @name = args[:name] if args.key?(:name)
          @raw_provided_id = args[:raw_provided_id] if args.key?(:raw_provided_id)
        end
      end
      
      # This resource represents input data you submit for a CSS Product, not the
      # processed CSS Product that you see in CSS Center, in Shopping Ads, or across
      # Google surfaces.
      class CssProductInput
        include Google::Apis::Core::Hashable
      
        # Attributes for CSS Product.
        # Corresponds to the JSON property `attributes`
        # @return [Google::Apis::CssV1::Attributes]
        attr_accessor :attributes
      
        # Required. The two-letter [ISO 639-1](http://en.wikipedia.org/wiki/ISO_639-1)
        # language code for the CSS Product.
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # A list of custom (CSS-provided) attributes. It can also be used for submitting
        # any attribute of the feed specification in its generic form (for example: `` "
        # name": "size type", "value": "regular" ``). This is useful for submitting
        # attributes not explicitly exposed by the API, such as additional attributes
        # used for Buy on Google.
        # Corresponds to the JSON property `customAttributes`
        # @return [Array<Google::Apis::CssV1::CustomAttribute>]
        attr_accessor :custom_attributes
      
        # Required. The [feed label](https://developers.google.com/shopping-content/
        # guides/products/feed-labels) for the CSS Product. Feed Label is synonymous to "
        # target country" and hence should always be a valid region code. For example: '
        # DE' for Germany, 'FR' for France.
        # Corresponds to the JSON property `feedLabel`
        # @return [String]
        attr_accessor :feed_label
      
        # Output only. The name of the processed CSS Product. Format: `accounts/`account`
        # /cssProducts/`css_product`` "
        # Corresponds to the JSON property `finalName`
        # @return [String]
        attr_accessor :final_name
      
        # DEPRECATED. Use expiration_date instead. Represents the existing version (
        # freshness) of the CSS Product, which can be used to preserve the right order
        # when multiple updates are done at the same time. This field must not be set to
        # the future time. If set, the update is prevented if a newer version of the
        # item already exists in our system (that is the last update time of the
        # existing CSS products is later than the freshness time set in the update). If
        # the update happens, the last update time is then set to this freshness time.
        # If not set, the update will not be prevented and the last update time will
        # default to when this request was received by the CSS API. If the operation is
        # prevented, the aborted exception will be thrown.
        # Corresponds to the JSON property `freshnessTime`
        # @return [String]
        attr_accessor :freshness_time
      
        # The name of the CSS Product input. Format: `accounts/`account`/
        # cssProductInputs/`css_product_input``, where the last section `
        # css_product_input` consists of 3 parts: contentLanguage~feedLabel~offerId.
        # Example: accounts/123/cssProductInputs/de~DE~rawProvidedId123
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Your unique identifier for the CSS Product. This is the same for the
        # CSS Product input and processed CSS Product. We only allow ids with
        # alphanumerics, underscores and dashes. See the [products feed specification](
        # https://support.google.com/merchants/answer/188494#id) for details.
        # Corresponds to the JSON property `rawProvidedId`
        # @return [String]
        attr_accessor :raw_provided_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @content_language = args[:content_language] if args.key?(:content_language)
          @custom_attributes = args[:custom_attributes] if args.key?(:custom_attributes)
          @feed_label = args[:feed_label] if args.key?(:feed_label)
          @final_name = args[:final_name] if args.key?(:final_name)
          @freshness_time = args[:freshness_time] if args.key?(:freshness_time)
          @name = args[:name] if args.key?(:name)
          @raw_provided_id = args[:raw_provided_id] if args.key?(:raw_provided_id)
        end
      end
      
      # The status of the Css Product, data validation issues, that is, information
      # about the Css Product computed asynchronously.
      class CssProductStatus
        include Google::Apis::Core::Hashable
      
        # Date on which the item has been created, in [ISO 8601](http://en.wikipedia.org/
        # wiki/ISO_8601) format.
        # Corresponds to the JSON property `creationDate`
        # @return [String]
        attr_accessor :creation_date
      
        # The intended destinations for the product.
        # Corresponds to the JSON property `destinationStatuses`
        # @return [Array<Google::Apis::CssV1::DestinationStatus>]
        attr_accessor :destination_statuses
      
        # Date on which the item expires, in [ISO 8601](http://en.wikipedia.org/wiki/
        # ISO_8601) format.
        # Corresponds to the JSON property `googleExpirationDate`
        # @return [String]
        attr_accessor :google_expiration_date
      
        # A list of all issues associated with the product.
        # Corresponds to the JSON property `itemLevelIssues`
        # @return [Array<Google::Apis::CssV1::ItemLevelIssue>]
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
      
      # A message that represents custom attributes. Exactly one of `value` or `
      # group_values` must not be empty.
      class CustomAttribute
        include Google::Apis::Core::Hashable
      
        # Subattributes within this attribute group. If `group_values` is not empty, `
        # value` must be empty.
        # Corresponds to the JSON property `groupValues`
        # @return [Array<Google::Apis::CssV1::CustomAttribute>]
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
      
        # List of country codes (ISO 3166-1 alpha-2) where the CSS Product is approved.
        # Corresponds to the JSON property `approvedCountries`
        # @return [Array<String>]
        attr_accessor :approved_countries
      
        # The name of the destination
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        # List of country codes (ISO 3166-1 alpha-2) where the CSS Product is
        # disapproved.
        # Corresponds to the JSON property `disapprovedCountries`
        # @return [Array<String>]
        attr_accessor :disapproved_countries
      
        # List of country codes (ISO 3166-1 alpha-2) where the CSS Product is pending
        # approval.
        # Corresponds to the JSON property `pendingCountries`
        # @return [Array<String>]
        attr_accessor :pending_countries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @approved_countries = args[:approved_countries] if args.key?(:approved_countries)
          @destination = args[:destination] if args.key?(:destination)
          @disapproved_countries = args[:disapproved_countries] if args.key?(:disapproved_countries)
          @pending_countries = args[:pending_countries] if args.key?(:pending_countries)
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
      
      # A message that represents installment.
      class HeadlineOfferInstallment
        include Google::Apis::Core::Hashable
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `amount`
        # @return [Google::Apis::CssV1::Price]
        attr_accessor :amount
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `downpayment`
        # @return [Google::Apis::CssV1::Price]
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
          @downpayment = args[:downpayment] if args.key?(:downpayment)
          @months = args[:months] if args.key?(:months)
        end
      end
      
      # The SubscriptionCost of the product.
      class HeadlineOfferSubscriptionCost
        include Google::Apis::Core::Hashable
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `amount`
        # @return [Google::Apis::CssV1::Price]
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
      
      # The ItemLevelIssue of the product status.
      class ItemLevelIssue
        include Google::Apis::Core::Hashable
      
        # List of country codes (ISO 3166-1 alpha-2) where issue applies to the CSS
        # Product.
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
      
        # The destination the issue applies to.
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        # A detailed issue description in English.
        # Corresponds to the JSON property `detail`
        # @return [String]
        attr_accessor :detail
      
        # The URL of a web page to help with resolving this issue.
        # Corresponds to the JSON property `documentation`
        # @return [String]
        attr_accessor :documentation
      
        # Whether the issue can be resolved by the merchant.
        # Corresponds to the JSON property `resolution`
        # @return [String]
        attr_accessor :resolution
      
        # How this issue affects serving of the CSS Product.
        # Corresponds to the JSON property `servability`
        # @return [String]
        attr_accessor :servability
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @applicable_countries = args[:applicable_countries] if args.key?(:applicable_countries)
          @attribute = args[:attribute] if args.key?(:attribute)
          @code = args[:code] if args.key?(:code)
          @description = args[:description] if args.key?(:description)
          @destination = args[:destination] if args.key?(:destination)
          @detail = args[:detail] if args.key?(:detail)
          @documentation = args[:documentation] if args.key?(:documentation)
          @resolution = args[:resolution] if args.key?(:resolution)
          @servability = args[:servability] if args.key?(:servability)
        end
      end
      
      # Response message for the `ListAccountLabels` method.
      class ListAccountLabelsResponse
        include Google::Apis::Core::Hashable
      
        # The labels from the specified account.
        # Corresponds to the JSON property `accountLabels`
        # @return [Array<Google::Apis::CssV1::AccountLabel>]
        attr_accessor :account_labels
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_labels = args[:account_labels] if args.key?(:account_labels)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for the `ListChildAccounts` method.
      class ListChildAccountsResponse
        include Google::Apis::Core::Hashable
      
        # The CSS/MC accounts returned for the specified CSS parent account.
        # Corresponds to the JSON property `accounts`
        # @return [Array<Google::Apis::CssV1::Account>]
        attr_accessor :accounts
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accounts = args[:accounts] if args.key?(:accounts)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for the ListCssProducts method.
      class ListCssProductsResponse
        include Google::Apis::Core::Hashable
      
        # The processed CSS products from the specified account. These are your
        # processed CSS products after applying rules and supplemental feeds.
        # Corresponds to the JSON property `cssProducts`
        # @return [Array<Google::Apis::CssV1::CssProduct>]
        attr_accessor :css_products
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @css_products = args[:css_products] if args.key?(:css_products)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for the ListMethodGroups method.
      class ListQuotaGroupsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The methods, current quota usage and limits per each group. The quota is
        # shared between all methods in the group. The groups are sorted in descending
        # order based on quota_usage.
        # Corresponds to the JSON property `quotaGroups`
        # @return [Array<Google::Apis::CssV1::QuotaGroup>]
        attr_accessor :quota_groups
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @quota_groups = args[:quota_groups] if args.key?(:quota_groups)
        end
      end
      
      # The method details per method in the CSS API.
      class MethodDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The name of the method for example `cssproductsservice.
        # listcssproducts`.
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # Output only. The path for the method such as `v1/cssproductsservice.
        # listcssproducts`.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Output only. The sub-API that the method belongs to. In the CSS API, this is
        # always `css`.
        # Corresponds to the JSON property `subapi`
        # @return [String]
        attr_accessor :subapi
      
        # Output only. The API version that the method belongs to.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @path = args[:path] if args.key?(:path)
          @subapi = args[:subapi] if args.key?(:subapi)
          @version = args[:version] if args.key?(:version)
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
      
      # The group information for methods in the CSS API. The quota is shared between
      # all methods in the group. Even if none of the methods within the group have
      # usage the information for the group is returned.
      class QuotaGroup
        include Google::Apis::Core::Hashable
      
        # Output only. List of all methods group quota applies to.
        # Corresponds to the JSON property `methodDetails`
        # @return [Array<Google::Apis::CssV1::MethodDetails>]
        attr_accessor :method_details
      
        # Identifier. The resource name of the quota group. Format: accounts/`account`/
        # quotas/`group` Example: `accounts/12345678/quotas/css-products-insert` Note:
        # The `group` part is not guaranteed to follow a specific pattern.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The maximum number of calls allowed per day for the group.
        # Corresponds to the JSON property `quotaLimit`
        # @return [Fixnum]
        attr_accessor :quota_limit
      
        # Output only. The maximum number of calls allowed per minute for the group.
        # Corresponds to the JSON property `quotaMinuteLimit`
        # @return [Fixnum]
        attr_accessor :quota_minute_limit
      
        # Output only. The current quota usage, meaning the number of calls already made
        # on a given day to the methods in the group. The daily quota limits reset at at
        # 12:00 PM midday UTC.
        # Corresponds to the JSON property `quotaUsage`
        # @return [Fixnum]
        attr_accessor :quota_usage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @method_details = args[:method_details] if args.key?(:method_details)
          @name = args[:name] if args.key?(:name)
          @quota_limit = args[:quota_limit] if args.key?(:quota_limit)
          @quota_minute_limit = args[:quota_minute_limit] if args.key?(:quota_minute_limit)
          @quota_usage = args[:quota_usage] if args.key?(:quota_usage)
        end
      end
      
      # The request message for the `UpdateLabels` method.
      class UpdateAccountLabelsRequest
        include Google::Apis::Core::Hashable
      
        # The list of label IDs to overwrite the existing account label IDs. If the list
        # is empty, all currently assigned label IDs will be deleted.
        # Corresponds to the JSON property `labelIds`
        # @return [Array<Fixnum>]
        attr_accessor :label_ids
      
        # Optional. Only required when updating MC account labels. The CSS domain that
        # is the parent resource of the MC account. Format: accounts/`account`
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label_ids = args[:label_ids] if args.key?(:label_ids)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
    end
  end
end
