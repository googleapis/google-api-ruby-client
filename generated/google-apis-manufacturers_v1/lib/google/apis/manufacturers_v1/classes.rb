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
    module ManufacturersV1
      
      # Attributes of the product. For more information, see https://support.google.
      # com/manufacturers/answer/6124116.
      class Attributes
        include Google::Apis::Core::Hashable
      
        # The additional images of the product. For more information, see https://
        # support.google.com/manufacturers/answer/6124116#addlimage.
        # Corresponds to the JSON property `additionalImageLink`
        # @return [Array<Google::Apis::ManufacturersV1::Image>]
        attr_accessor :additional_image_link
      
        # The target age group of the product. For more information, see https://support.
        # google.com/manufacturers/answer/6124116#agegroup.
        # Corresponds to the JSON property `ageGroup`
        # @return [String]
        attr_accessor :age_group
      
        # The brand name of the product. For more information, see https://support.
        # google.com/manufacturers/answer/6124116#brand.
        # Corresponds to the JSON property `brand`
        # @return [String]
        attr_accessor :brand
      
        # The capacity of a product. For more information, see https://support.google.
        # com/manufacturers/answer/6124116#capacity.
        # Corresponds to the JSON property `capacity`
        # @return [Google::Apis::ManufacturersV1::Capacity]
        attr_accessor :capacity
      
        # The color of the product. For more information, see https://support.google.com/
        # manufacturers/answer/6124116#color.
        # Corresponds to the JSON property `color`
        # @return [String]
        attr_accessor :color
      
        # The number of products in a single package. For more information, see https://
        # support.google.com/manufacturers/answer/6124116#count.
        # Corresponds to the JSON property `count`
        # @return [Google::Apis::ManufacturersV1::Count]
        attr_accessor :count
      
        # The description of the product. For more information, see https://support.
        # google.com/manufacturers/answer/6124116#description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The disclosure date of the product. For more information, see https://support.
        # google.com/manufacturers/answer/6124116#disclosure.
        # Corresponds to the JSON property `disclosureDate`
        # @return [String]
        attr_accessor :disclosure_date
      
        # A list of excluded destinations such as "ClientExport", "ClientShoppingCatalog"
        # or "PartnerShoppingCatalog". For more information, see https://support.google.
        # com/manufacturers/answer/7443550
        # Corresponds to the JSON property `excludedDestination`
        # @return [Array<String>]
        attr_accessor :excluded_destination
      
        # The rich format description of the product. For more information, see https://
        # support.google.com/manufacturers/answer/6124116#featuredesc.
        # Corresponds to the JSON property `featureDescription`
        # @return [Array<Google::Apis::ManufacturersV1::FeatureDescription>]
        attr_accessor :feature_description
      
        # The flavor of the product. For more information, see https://support.google.
        # com/manufacturers/answer/6124116#flavor.
        # Corresponds to the JSON property `flavor`
        # @return [String]
        attr_accessor :flavor
      
        # The format of the product. For more information, see https://support.google.
        # com/manufacturers/answer/6124116#format.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # The target gender of the product. For more information, see https://support.
        # google.com/manufacturers/answer/6124116#gender.
        # Corresponds to the JSON property `gender`
        # @return [String]
        attr_accessor :gender
      
        # Grocery Attributes. See more at https://support.google.com/manufacturers/
        # answer/12098458#grocery.
        # Corresponds to the JSON property `grocery`
        # @return [Google::Apis::ManufacturersV1::Grocery]
        attr_accessor :grocery
      
        # The Global Trade Item Number (GTIN) of the product. For more information, see
        # https://support.google.com/manufacturers/answer/6124116#gtin.
        # Corresponds to the JSON property `gtin`
        # @return [Array<String>]
        attr_accessor :gtin
      
        # An image.
        # Corresponds to the JSON property `imageLink`
        # @return [Google::Apis::ManufacturersV1::Image]
        attr_accessor :image_link
      
        # A list of included destinations such as "ClientExport", "ClientShoppingCatalog"
        # or "PartnerShoppingCatalog". For more information, see https://support.google.
        # com/manufacturers/answer/7443550
        # Corresponds to the JSON property `includedDestination`
        # @return [Array<String>]
        attr_accessor :included_destination
      
        # The item group id of the product. For more information, see https://support.
        # google.com/manufacturers/answer/6124116#itemgroupid.
        # Corresponds to the JSON property `itemGroupId`
        # @return [String]
        attr_accessor :item_group_id
      
        # The material of the product. For more information, see https://support.google.
        # com/manufacturers/answer/6124116#material.
        # Corresponds to the JSON property `material`
        # @return [String]
        attr_accessor :material
      
        # The Manufacturer Part Number (MPN) of the product. For more information, see
        # https://support.google.com/manufacturers/answer/6124116#mpn.
        # Corresponds to the JSON property `mpn`
        # @return [String]
        attr_accessor :mpn
      
        # Nutrition Attributes. See more at https://support.google.com/manufacturers/
        # answer/12098458#food-servings.
        # Corresponds to the JSON property `nutrition`
        # @return [Google::Apis::ManufacturersV1::Nutrition]
        attr_accessor :nutrition
      
        # The pattern of the product. For more information, see https://support.google.
        # com/manufacturers/answer/6124116#pattern.
        # Corresponds to the JSON property `pattern`
        # @return [String]
        attr_accessor :pattern
      
        # The details of the product. For more information, see https://support.google.
        # com/manufacturers/answer/6124116#productdetail.
        # Corresponds to the JSON property `productDetail`
        # @return [Array<Google::Apis::ManufacturersV1::ProductDetail>]
        attr_accessor :product_detail
      
        # The product highlights. For more information, see https://support.google.com/
        # manufacturers/answer/10066942
        # Corresponds to the JSON property `productHighlight`
        # @return [Array<String>]
        attr_accessor :product_highlight
      
        # The name of the group of products related to the product. For more information,
        # see https://support.google.com/manufacturers/answer/6124116#productline.
        # Corresponds to the JSON property `productLine`
        # @return [String]
        attr_accessor :product_line
      
        # The canonical name of the product. For more information, see https://support.
        # google.com/manufacturers/answer/6124116#productname.
        # Corresponds to the JSON property `productName`
        # @return [String]
        attr_accessor :product_name
      
        # The URL of the detail page of the product. For more information, see https://
        # support.google.com/manufacturers/answer/6124116#productpage.
        # Corresponds to the JSON property `productPageUrl`
        # @return [String]
        attr_accessor :product_page_url
      
        # The type or category of the product. For more information, see https://support.
        # google.com/manufacturers/answer/6124116#producttype.
        # Corresponds to the JSON property `productType`
        # @return [Array<String>]
        attr_accessor :product_type
      
        # The release date of the product. For more information, see https://support.
        # google.com/manufacturers/answer/6124116#release.
        # Corresponds to the JSON property `releaseDate`
        # @return [String]
        attr_accessor :release_date
      
        # Rich product content. For more information, see https://support.google.com/
        # manufacturers/answer/9389865
        # Corresponds to the JSON property `richProductContent`
        # @return [Array<String>]
        attr_accessor :rich_product_content
      
        # The scent of the product. For more information, see https://support.google.com/
        # manufacturers/answer/6124116#scent.
        # Corresponds to the JSON property `scent`
        # @return [String]
        attr_accessor :scent
      
        # The size of the product. For more information, see https://support.google.com/
        # manufacturers/answer/6124116#size.
        # Corresponds to the JSON property `size`
        # @return [String]
        attr_accessor :size
      
        # The size system of the product. For more information, see https://support.
        # google.com/manufacturers/answer/6124116#sizesystem.
        # Corresponds to the JSON property `sizeSystem`
        # @return [String]
        attr_accessor :size_system
      
        # The size type of the product. For more information, see https://support.google.
        # com/manufacturers/answer/6124116#sizetype.
        # Corresponds to the JSON property `sizeType`
        # @return [Array<String>]
        attr_accessor :size_type
      
        # A price.
        # Corresponds to the JSON property `suggestedRetailPrice`
        # @return [Google::Apis::ManufacturersV1::Price]
        attr_accessor :suggested_retail_price
      
        # The target client id. Should only be used in the accounts of the data partners.
        # For more information, see https://support.google.com/manufacturers/answer/
        # 10857344
        # Corresponds to the JSON property `targetClientId`
        # @return [String]
        attr_accessor :target_client_id
      
        # The theme of the product. For more information, see https://support.google.com/
        # manufacturers/answer/6124116#theme.
        # Corresponds to the JSON property `theme`
        # @return [String]
        attr_accessor :theme
      
        # The title of the product. For more information, see https://support.google.com/
        # manufacturers/answer/6124116#title.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The videos of the product. For more information, see https://support.google.
        # com/manufacturers/answer/6124116#video.
        # Corresponds to the JSON property `videoLink`
        # @return [Array<String>]
        attr_accessor :video_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_image_link = args[:additional_image_link] if args.key?(:additional_image_link)
          @age_group = args[:age_group] if args.key?(:age_group)
          @brand = args[:brand] if args.key?(:brand)
          @capacity = args[:capacity] if args.key?(:capacity)
          @color = args[:color] if args.key?(:color)
          @count = args[:count] if args.key?(:count)
          @description = args[:description] if args.key?(:description)
          @disclosure_date = args[:disclosure_date] if args.key?(:disclosure_date)
          @excluded_destination = args[:excluded_destination] if args.key?(:excluded_destination)
          @feature_description = args[:feature_description] if args.key?(:feature_description)
          @flavor = args[:flavor] if args.key?(:flavor)
          @format = args[:format] if args.key?(:format)
          @gender = args[:gender] if args.key?(:gender)
          @grocery = args[:grocery] if args.key?(:grocery)
          @gtin = args[:gtin] if args.key?(:gtin)
          @image_link = args[:image_link] if args.key?(:image_link)
          @included_destination = args[:included_destination] if args.key?(:included_destination)
          @item_group_id = args[:item_group_id] if args.key?(:item_group_id)
          @material = args[:material] if args.key?(:material)
          @mpn = args[:mpn] if args.key?(:mpn)
          @nutrition = args[:nutrition] if args.key?(:nutrition)
          @pattern = args[:pattern] if args.key?(:pattern)
          @product_detail = args[:product_detail] if args.key?(:product_detail)
          @product_highlight = args[:product_highlight] if args.key?(:product_highlight)
          @product_line = args[:product_line] if args.key?(:product_line)
          @product_name = args[:product_name] if args.key?(:product_name)
          @product_page_url = args[:product_page_url] if args.key?(:product_page_url)
          @product_type = args[:product_type] if args.key?(:product_type)
          @release_date = args[:release_date] if args.key?(:release_date)
          @rich_product_content = args[:rich_product_content] if args.key?(:rich_product_content)
          @scent = args[:scent] if args.key?(:scent)
          @size = args[:size] if args.key?(:size)
          @size_system = args[:size_system] if args.key?(:size_system)
          @size_type = args[:size_type] if args.key?(:size_type)
          @suggested_retail_price = args[:suggested_retail_price] if args.key?(:suggested_retail_price)
          @target_client_id = args[:target_client_id] if args.key?(:target_client_id)
          @theme = args[:theme] if args.key?(:theme)
          @title = args[:title] if args.key?(:title)
          @video_link = args[:video_link] if args.key?(:video_link)
        end
      end
      
      # The capacity of a product. For more information, see https://support.google.
      # com/manufacturers/answer/6124116#capacity.
      class Capacity
        include Google::Apis::Core::Hashable
      
        # The unit of the capacity, i.e., MB, GB, or TB.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # The numeric value of the capacity.
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
      
      # Description of a certification.
      class Certification
        include Google::Apis::Core::Hashable
      
        # Required. Name of the certification body.
        # Corresponds to the JSON property `authority`
        # @return [String]
        attr_accessor :authority
      
        # Optional. A URL link to the certification.
        # Corresponds to the JSON property `link`
        # @return [String]
        attr_accessor :link
      
        # Optional. A URL link to the certification logo.
        # Corresponds to the JSON property `logo`
        # @return [String]
        attr_accessor :logo
      
        # Required. Name of the certification.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The expiration date (UTC).
        # Corresponds to the JSON property `validUntil`
        # @return [String]
        attr_accessor :valid_until
      
        # Required. A custom value of the certification.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authority = args[:authority] if args.key?(:authority)
          @link = args[:link] if args.key?(:link)
          @logo = args[:logo] if args.key?(:logo)
          @name = args[:name] if args.key?(:name)
          @valid_until = args[:valid_until] if args.key?(:valid_until)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # The number of products in a single package. For more information, see https://
      # support.google.com/manufacturers/answer/6124116#count.
      class Count
        include Google::Apis::Core::Hashable
      
        # The unit in which these products are counted.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # The numeric value of the number of products in a package.
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
      
      # The destination status.
      class DestinationStatus
        include Google::Apis::Core::Hashable
      
        # The name of the destination.
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        # The status of the destination.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination = args[:destination] if args.key?(:destination)
          @status = args[:status] if args.key?(:status)
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
      
      # A feature description of the product. For more information, see https://
      # support.google.com/manufacturers/answer/6124116#featuredesc.
      class FeatureDescription
        include Google::Apis::Core::Hashable
      
        # A short description of the feature.
        # Corresponds to the JSON property `headline`
        # @return [String]
        attr_accessor :headline
      
        # An image.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::ManufacturersV1::Image]
        attr_accessor :image
      
        # A detailed description of the feature.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @headline = args[:headline] if args.key?(:headline)
          @image = args[:image] if args.key?(:image)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Combination of float amount and unit.
      class FloatUnit
        include Google::Apis::Core::Hashable
      
        # amount.
        # Corresponds to the JSON property `amount`
        # @return [Float]
        attr_accessor :amount
      
        # unit.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amount = args[:amount] if args.key?(:amount)
          @unit = args[:unit] if args.key?(:unit)
        end
      end
      
      # 
      class Grocery
        include Google::Apis::Core::Hashable
      
        # Active ingredients.
        # Corresponds to the JSON property `activeIngredients`
        # @return [String]
        attr_accessor :active_ingredients
      
        # Alcohol by volume.
        # Corresponds to the JSON property `alcoholByVolume`
        # @return [Float]
        attr_accessor :alcohol_by_volume
      
        # Allergens.
        # Corresponds to the JSON property `allergens`
        # @return [String]
        attr_accessor :allergens
      
        # Derived nutrition claim.
        # Corresponds to the JSON property `derivedNutritionClaim`
        # @return [Array<String>]
        attr_accessor :derived_nutrition_claim
      
        # Directions.
        # Corresponds to the JSON property `directions`
        # @return [String]
        attr_accessor :directions
      
        # Indications.
        # Corresponds to the JSON property `indications`
        # @return [String]
        attr_accessor :indications
      
        # Ingredients.
        # Corresponds to the JSON property `ingredients`
        # @return [String]
        attr_accessor :ingredients
      
        # Nutrition claim.
        # Corresponds to the JSON property `nutritionClaim`
        # @return [Array<String>]
        attr_accessor :nutrition_claim
      
        # Storage instructions.
        # Corresponds to the JSON property `storageInstructions`
        # @return [String]
        attr_accessor :storage_instructions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_ingredients = args[:active_ingredients] if args.key?(:active_ingredients)
          @alcohol_by_volume = args[:alcohol_by_volume] if args.key?(:alcohol_by_volume)
          @allergens = args[:allergens] if args.key?(:allergens)
          @derived_nutrition_claim = args[:derived_nutrition_claim] if args.key?(:derived_nutrition_claim)
          @directions = args[:directions] if args.key?(:directions)
          @indications = args[:indications] if args.key?(:indications)
          @ingredients = args[:ingredients] if args.key?(:ingredients)
          @nutrition_claim = args[:nutrition_claim] if args.key?(:nutrition_claim)
          @storage_instructions = args[:storage_instructions] if args.key?(:storage_instructions)
        end
      end
      
      # An image.
      class Image
        include Google::Apis::Core::Hashable
      
        # The URL of the image. For crawled images, this is the provided URL. For
        # uploaded images, this is a serving URL from Google if the image has been
        # processed successfully.
        # Corresponds to the JSON property `imageUrl`
        # @return [String]
        attr_accessor :image_url
      
        # The status of the image. @OutputOnly
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The type of the image, i.e., crawled or uploaded. @OutputOnly
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image_url = args[:image_url] if args.key?(:image_url)
          @status = args[:status] if args.key?(:status)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Product issue.
      class Issue
        include Google::Apis::Core::Hashable
      
        # If present, the attribute that triggered the issue. For more information about
        # attributes, see https://support.google.com/manufacturers/answer/6124116.
        # Corresponds to the JSON property `attribute`
        # @return [String]
        attr_accessor :attribute
      
        # Longer description of the issue focused on how to resolve it.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The destination this issue applies to.
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        # What needs to happen to resolve the issue.
        # Corresponds to the JSON property `resolution`
        # @return [String]
        attr_accessor :resolution
      
        # The severity of the issue.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # The timestamp when this issue appeared.
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        # Short title describing the nature of the issue.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The server-generated type of the issue, for example, “
        # INCORRECT_TEXT_FORMATTING”, “IMAGE_NOT_SERVEABLE”, etc.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute = args[:attribute] if args.key?(:attribute)
          @description = args[:description] if args.key?(:description)
          @destination = args[:destination] if args.key?(:destination)
          @resolution = args[:resolution] if args.key?(:resolution)
          @severity = args[:severity] if args.key?(:severity)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
          @title = args[:title] if args.key?(:title)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Response for ListProductCertifications method.
      class ListProductCertificationsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The product certifications from the specified certification body.
        # Corresponds to the JSON property `productCertifications`
        # @return [Array<Google::Apis::ManufacturersV1::ProductCertification>]
        attr_accessor :product_certifications
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @product_certifications = args[:product_certifications] if args.key?(:product_certifications)
        end
      end
      
      # 
      class ListProductsResponse
        include Google::Apis::Core::Hashable
      
        # The token for the retrieval of the next page of product statuses.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of the products.
        # Corresponds to the JSON property `products`
        # @return [Array<Google::Apis::ManufacturersV1::Product>]
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
      
      # 
      class Nutrition
        include Google::Apis::Core::Hashable
      
        # Combination of float amount and unit.
        # Corresponds to the JSON property `addedSugars`
        # @return [Google::Apis::ManufacturersV1::FloatUnit]
        attr_accessor :added_sugars
      
        # Added sugars daily percentage.
        # Corresponds to the JSON property `addedSugarsDailyPercentage`
        # @return [Float]
        attr_accessor :added_sugars_daily_percentage
      
        # Combination of float amount and unit.
        # Corresponds to the JSON property `calcium`
        # @return [Google::Apis::ManufacturersV1::FloatUnit]
        attr_accessor :calcium
      
        # Calcium daily percentage.
        # Corresponds to the JSON property `calciumDailyPercentage`
        # @return [Float]
        attr_accessor :calcium_daily_percentage
      
        # Combination of float amount and unit.
        # Corresponds to the JSON property `cholesterol`
        # @return [Google::Apis::ManufacturersV1::FloatUnit]
        attr_accessor :cholesterol
      
        # Cholesterol daily percentage.
        # Corresponds to the JSON property `cholesterolDailyPercentage`
        # @return [Float]
        attr_accessor :cholesterol_daily_percentage
      
        # Combination of float amount and unit.
        # Corresponds to the JSON property `dietaryFiber`
        # @return [Google::Apis::ManufacturersV1::FloatUnit]
        attr_accessor :dietary_fiber
      
        # Dietary fiber daily percentage.
        # Corresponds to the JSON property `dietaryFiberDailyPercentage`
        # @return [Float]
        attr_accessor :dietary_fiber_daily_percentage
      
        # Combination of float amount and unit.
        # Corresponds to the JSON property `energy`
        # @return [Google::Apis::ManufacturersV1::FloatUnit]
        attr_accessor :energy
      
        # Combination of float amount and unit.
        # Corresponds to the JSON property `energyFromFat`
        # @return [Google::Apis::ManufacturersV1::FloatUnit]
        attr_accessor :energy_from_fat
      
        # Folate daily percentage.
        # Corresponds to the JSON property `folateDailyPercentage`
        # @return [Float]
        attr_accessor :folate_daily_percentage
      
        # Combination of float amount and unit.
        # Corresponds to the JSON property `folateFolicAcid`
        # @return [Google::Apis::ManufacturersV1::FloatUnit]
        attr_accessor :folate_folic_acid
      
        # Folate mcg DFE.
        # Corresponds to the JSON property `folateMcgDfe`
        # @return [Float]
        attr_accessor :folate_mcg_dfe
      
        # Combination of float amount and unit.
        # Corresponds to the JSON property `iron`
        # @return [Google::Apis::ManufacturersV1::FloatUnit]
        attr_accessor :iron
      
        # Iron daily percentage.
        # Corresponds to the JSON property `ironDailyPercentage`
        # @return [Float]
        attr_accessor :iron_daily_percentage
      
        # Combination of float amount and unit.
        # Corresponds to the JSON property `monounsaturatedFat`
        # @return [Google::Apis::ManufacturersV1::FloatUnit]
        attr_accessor :monounsaturated_fat
      
        # Nutrition fact measure.
        # Corresponds to the JSON property `nutritionFactMeasure`
        # @return [String]
        attr_accessor :nutrition_fact_measure
      
        # Combination of float amount and unit.
        # Corresponds to the JSON property `polyols`
        # @return [Google::Apis::ManufacturersV1::FloatUnit]
        attr_accessor :polyols
      
        # Combination of float amount and unit.
        # Corresponds to the JSON property `polyunsaturatedFat`
        # @return [Google::Apis::ManufacturersV1::FloatUnit]
        attr_accessor :polyunsaturated_fat
      
        # Combination of float amount and unit.
        # Corresponds to the JSON property `potassium`
        # @return [Google::Apis::ManufacturersV1::FloatUnit]
        attr_accessor :potassium
      
        # Potassium daily percentage.
        # Corresponds to the JSON property `potassiumDailyPercentage`
        # @return [Float]
        attr_accessor :potassium_daily_percentage
      
        # Prepared size description.
        # Corresponds to the JSON property `preparedSizeDescription`
        # @return [String]
        attr_accessor :prepared_size_description
      
        # Combination of float amount and unit.
        # Corresponds to the JSON property `protein`
        # @return [Google::Apis::ManufacturersV1::FloatUnit]
        attr_accessor :protein
      
        # Protein daily percentage.
        # Corresponds to the JSON property `proteinDailyPercentage`
        # @return [Float]
        attr_accessor :protein_daily_percentage
      
        # Combination of float amount and unit.
        # Corresponds to the JSON property `saturatedFat`
        # @return [Google::Apis::ManufacturersV1::FloatUnit]
        attr_accessor :saturated_fat
      
        # Saturated fat daily percentage.
        # Corresponds to the JSON property `saturatedFatDailyPercentage`
        # @return [Float]
        attr_accessor :saturated_fat_daily_percentage
      
        # Food Serving Size. Serving size description.
        # Corresponds to the JSON property `servingSizeDescription`
        # @return [String]
        attr_accessor :serving_size_description
      
        # Combination of float amount and unit.
        # Corresponds to the JSON property `servingSizeMeasure`
        # @return [Google::Apis::ManufacturersV1::FloatUnit]
        attr_accessor :serving_size_measure
      
        # Servings per container.
        # Corresponds to the JSON property `servingsPerContainer`
        # @return [String]
        attr_accessor :servings_per_container
      
        # Combination of float amount and unit.
        # Corresponds to the JSON property `sodium`
        # @return [Google::Apis::ManufacturersV1::FloatUnit]
        attr_accessor :sodium
      
        # Sodium daily percentage.
        # Corresponds to the JSON property `sodiumDailyPercentage`
        # @return [Float]
        attr_accessor :sodium_daily_percentage
      
        # Combination of float amount and unit.
        # Corresponds to the JSON property `starch`
        # @return [Google::Apis::ManufacturersV1::FloatUnit]
        attr_accessor :starch
      
        # Combination of float amount and unit.
        # Corresponds to the JSON property `totalCarbohydrate`
        # @return [Google::Apis::ManufacturersV1::FloatUnit]
        attr_accessor :total_carbohydrate
      
        # Total carbohydrate daily percentage.
        # Corresponds to the JSON property `totalCarbohydrateDailyPercentage`
        # @return [Float]
        attr_accessor :total_carbohydrate_daily_percentage
      
        # Combination of float amount and unit.
        # Corresponds to the JSON property `totalFat`
        # @return [Google::Apis::ManufacturersV1::FloatUnit]
        attr_accessor :total_fat
      
        # Total fat daily percentage.
        # Corresponds to the JSON property `totalFatDailyPercentage`
        # @return [Float]
        attr_accessor :total_fat_daily_percentage
      
        # Combination of float amount and unit.
        # Corresponds to the JSON property `totalSugars`
        # @return [Google::Apis::ManufacturersV1::FloatUnit]
        attr_accessor :total_sugars
      
        # Total sugars daily percentage.
        # Corresponds to the JSON property `totalSugarsDailyPercentage`
        # @return [Float]
        attr_accessor :total_sugars_daily_percentage
      
        # Combination of float amount and unit.
        # Corresponds to the JSON property `transFat`
        # @return [Google::Apis::ManufacturersV1::FloatUnit]
        attr_accessor :trans_fat
      
        # Trans fat daily percentage.
        # Corresponds to the JSON property `transFatDailyPercentage`
        # @return [Float]
        attr_accessor :trans_fat_daily_percentage
      
        # Combination of float amount and unit.
        # Corresponds to the JSON property `vitaminD`
        # @return [Google::Apis::ManufacturersV1::FloatUnit]
        attr_accessor :vitamin_d
      
        # Vitamin D daily percentage.
        # Corresponds to the JSON property `vitaminDDailyPercentage`
        # @return [Float]
        attr_accessor :vitamin_d_daily_percentage
      
        # Voluntary nutrition fact.
        # Corresponds to the JSON property `voluntaryNutritionFact`
        # @return [Array<Google::Apis::ManufacturersV1::VoluntaryNutritionFact>]
        attr_accessor :voluntary_nutrition_fact
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @added_sugars = args[:added_sugars] if args.key?(:added_sugars)
          @added_sugars_daily_percentage = args[:added_sugars_daily_percentage] if args.key?(:added_sugars_daily_percentage)
          @calcium = args[:calcium] if args.key?(:calcium)
          @calcium_daily_percentage = args[:calcium_daily_percentage] if args.key?(:calcium_daily_percentage)
          @cholesterol = args[:cholesterol] if args.key?(:cholesterol)
          @cholesterol_daily_percentage = args[:cholesterol_daily_percentage] if args.key?(:cholesterol_daily_percentage)
          @dietary_fiber = args[:dietary_fiber] if args.key?(:dietary_fiber)
          @dietary_fiber_daily_percentage = args[:dietary_fiber_daily_percentage] if args.key?(:dietary_fiber_daily_percentage)
          @energy = args[:energy] if args.key?(:energy)
          @energy_from_fat = args[:energy_from_fat] if args.key?(:energy_from_fat)
          @folate_daily_percentage = args[:folate_daily_percentage] if args.key?(:folate_daily_percentage)
          @folate_folic_acid = args[:folate_folic_acid] if args.key?(:folate_folic_acid)
          @folate_mcg_dfe = args[:folate_mcg_dfe] if args.key?(:folate_mcg_dfe)
          @iron = args[:iron] if args.key?(:iron)
          @iron_daily_percentage = args[:iron_daily_percentage] if args.key?(:iron_daily_percentage)
          @monounsaturated_fat = args[:monounsaturated_fat] if args.key?(:monounsaturated_fat)
          @nutrition_fact_measure = args[:nutrition_fact_measure] if args.key?(:nutrition_fact_measure)
          @polyols = args[:polyols] if args.key?(:polyols)
          @polyunsaturated_fat = args[:polyunsaturated_fat] if args.key?(:polyunsaturated_fat)
          @potassium = args[:potassium] if args.key?(:potassium)
          @potassium_daily_percentage = args[:potassium_daily_percentage] if args.key?(:potassium_daily_percentage)
          @prepared_size_description = args[:prepared_size_description] if args.key?(:prepared_size_description)
          @protein = args[:protein] if args.key?(:protein)
          @protein_daily_percentage = args[:protein_daily_percentage] if args.key?(:protein_daily_percentage)
          @saturated_fat = args[:saturated_fat] if args.key?(:saturated_fat)
          @saturated_fat_daily_percentage = args[:saturated_fat_daily_percentage] if args.key?(:saturated_fat_daily_percentage)
          @serving_size_description = args[:serving_size_description] if args.key?(:serving_size_description)
          @serving_size_measure = args[:serving_size_measure] if args.key?(:serving_size_measure)
          @servings_per_container = args[:servings_per_container] if args.key?(:servings_per_container)
          @sodium = args[:sodium] if args.key?(:sodium)
          @sodium_daily_percentage = args[:sodium_daily_percentage] if args.key?(:sodium_daily_percentage)
          @starch = args[:starch] if args.key?(:starch)
          @total_carbohydrate = args[:total_carbohydrate] if args.key?(:total_carbohydrate)
          @total_carbohydrate_daily_percentage = args[:total_carbohydrate_daily_percentage] if args.key?(:total_carbohydrate_daily_percentage)
          @total_fat = args[:total_fat] if args.key?(:total_fat)
          @total_fat_daily_percentage = args[:total_fat_daily_percentage] if args.key?(:total_fat_daily_percentage)
          @total_sugars = args[:total_sugars] if args.key?(:total_sugars)
          @total_sugars_daily_percentage = args[:total_sugars_daily_percentage] if args.key?(:total_sugars_daily_percentage)
          @trans_fat = args[:trans_fat] if args.key?(:trans_fat)
          @trans_fat_daily_percentage = args[:trans_fat_daily_percentage] if args.key?(:trans_fat_daily_percentage)
          @vitamin_d = args[:vitamin_d] if args.key?(:vitamin_d)
          @vitamin_d_daily_percentage = args[:vitamin_d_daily_percentage] if args.key?(:vitamin_d_daily_percentage)
          @voluntary_nutrition_fact = args[:voluntary_nutrition_fact] if args.key?(:voluntary_nutrition_fact)
        end
      end
      
      # A price.
      class Price
        include Google::Apis::Core::Hashable
      
        # The numeric value of the price.
        # Corresponds to the JSON property `amount`
        # @return [String]
        attr_accessor :amount
      
        # The currency in which the price is denoted.
        # Corresponds to the JSON property `currency`
        # @return [String]
        attr_accessor :currency
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amount = args[:amount] if args.key?(:amount)
          @currency = args[:currency] if args.key?(:currency)
        end
      end
      
      # Product data.
      class Product
        include Google::Apis::Core::Hashable
      
        # Attributes of the product. For more information, see https://support.google.
        # com/manufacturers/answer/6124116.
        # Corresponds to the JSON property `attributes`
        # @return [Google::Apis::ManufacturersV1::Attributes]
        attr_accessor :attributes
      
        # The content language of the product as a two-letter ISO 639-1 language code (
        # for example, en).
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # The status of the destinations.
        # Corresponds to the JSON property `destinationStatuses`
        # @return [Array<Google::Apis::ManufacturersV1::DestinationStatus>]
        attr_accessor :destination_statuses
      
        # A server-generated list of issues associated with the product.
        # Corresponds to the JSON property `issues`
        # @return [Array<Google::Apis::ManufacturersV1::Issue>]
        attr_accessor :issues
      
        # Name in the format ``target_country`:`content_language`:`product_id``. `
        # target_country` - The target country of the product as a CLDR territory code (
        # for example, US). `content_language` - The content language of the product as
        # a two-letter ISO 639-1 language code (for example, en). `product_id` - The ID
        # of the product. For more information, see https://support.google.com/
        # manufacturers/answer/6124116#id.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Parent ID in the format `accounts/`account_id``. `account_id` - The ID of the
        # Manufacturer Center account.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # The ID of the product. For more information, see https://support.google.com/
        # manufacturers/answer/6124116#id.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # The target country of the product as a CLDR territory code (for example, US).
        # Corresponds to the JSON property `targetCountry`
        # @return [String]
        attr_accessor :target_country
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @content_language = args[:content_language] if args.key?(:content_language)
          @destination_statuses = args[:destination_statuses] if args.key?(:destination_statuses)
          @issues = args[:issues] if args.key?(:issues)
          @name = args[:name] if args.key?(:name)
          @parent = args[:parent] if args.key?(:parent)
          @product_id = args[:product_id] if args.key?(:product_id)
          @target_country = args[:target_country] if args.key?(:target_country)
        end
      end
      
      # Product certification data.
      class ProductCertification
        include Google::Apis::Core::Hashable
      
        # Required. This is the product's brand name. The brand is used to help identify
        # your product.
        # Corresponds to the JSON property `brand`
        # @return [String]
        attr_accessor :brand
      
        # Required. A list of certifications to link to the described product.
        # Corresponds to the JSON property `certification`
        # @return [Array<Google::Apis::ManufacturersV1::Certification>]
        attr_accessor :certification
      
        # Optional. A 2-letter country code (ISO 3166-1 Alpha 2).
        # Corresponds to the JSON property `countryCode`
        # @return [Array<String>]
        attr_accessor :country_code
      
        # Output only. The statuses of the destinations.
        # Corresponds to the JSON property `destinationStatuses`
        # @return [Array<Google::Apis::ManufacturersV1::DestinationStatus>]
        attr_accessor :destination_statuses
      
        # Output only. A server-generated list of issues associated with the product.
        # Corresponds to the JSON property `issues`
        # @return [Array<Google::Apis::ManufacturersV1::Issue>]
        attr_accessor :issues
      
        # Optional. These are the Manufacturer Part Numbers (MPN). MPNs are used to
        # uniquely identify a specific product among all products from the same
        # manufacturer
        # Corresponds to the JSON property `mpn`
        # @return [Array<String>]
        attr_accessor :mpn
      
        # Required. The unique name identifier of a product certification Format:
        # accounts/`account`/languages/`language_code`/productCertifications/`id` Where `
        # id` is a some unique identifier and `language_code` is a 2-letter ISO 639-1
        # code of a Shopping supported language according to https://support.google.com/
        # merchants/answer/160637.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Another name for GTIN.
        # Corresponds to the JSON property `productCode`
        # @return [Array<String>]
        attr_accessor :product_code
      
        # Optional. These are your own product categorization system in your product
        # data.
        # Corresponds to the JSON property `productType`
        # @return [Array<String>]
        attr_accessor :product_type
      
        # Required. This is to clearly identify the product you are certifying.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @brand = args[:brand] if args.key?(:brand)
          @certification = args[:certification] if args.key?(:certification)
          @country_code = args[:country_code] if args.key?(:country_code)
          @destination_statuses = args[:destination_statuses] if args.key?(:destination_statuses)
          @issues = args[:issues] if args.key?(:issues)
          @mpn = args[:mpn] if args.key?(:mpn)
          @name = args[:name] if args.key?(:name)
          @product_code = args[:product_code] if args.key?(:product_code)
          @product_type = args[:product_type] if args.key?(:product_type)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # A product detail of the product. For more information, see https://support.
      # google.com/manufacturers/answer/6124116#productdetail.
      class ProductDetail
        include Google::Apis::Core::Hashable
      
        # The name of the attribute.
        # Corresponds to the JSON property `attributeName`
        # @return [String]
        attr_accessor :attribute_name
      
        # The value of the attribute.
        # Corresponds to the JSON property `attributeValue`
        # @return [String]
        attr_accessor :attribute_value
      
        # A short section name that can be reused between multiple product details.
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
      
      # Voluntary Nutrition Facts.
      class VoluntaryNutritionFact
        include Google::Apis::Core::Hashable
      
        # Daily percentage.
        # Corresponds to the JSON property `dailyPercentage`
        # @return [Float]
        attr_accessor :daily_percentage
      
        # Name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Combination of float amount and unit.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::ManufacturersV1::FloatUnit]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @daily_percentage = args[:daily_percentage] if args.key?(:daily_percentage)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
        end
      end
    end
  end
end
