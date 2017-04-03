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
    module ManufacturersV1
      
      # 
      class ListProductsResponse
        include Google::Apis::Core::Hashable
      
        # List of the products.
        # Corresponds to the JSON property `products`
        # @return [Array<Google::Apis::ManufacturersV1::Product>]
        attr_accessor :products
      
        # The token for the retrieval of the next page of product statuses.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @products = args[:products] if args.key?(:products)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A product detail of the product. For more information, see
      # https://support.google.com/manufacturers/answer/6124116#productdetail.
      class ProductDetail
        include Google::Apis::Core::Hashable
      
        # The value of the attribute.
        # Corresponds to the JSON property `attributeValue`
        # @return [String]
        attr_accessor :attribute_value
      
        # A short section name that can be reused between multiple product details.
        # Corresponds to the JSON property `sectionName`
        # @return [String]
        attr_accessor :section_name
      
        # The name of the attribute.
        # Corresponds to the JSON property `attributeName`
        # @return [String]
        attr_accessor :attribute_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_value = args[:attribute_value] if args.key?(:attribute_value)
          @section_name = args[:section_name] if args.key?(:section_name)
          @attribute_name = args[:attribute_name] if args.key?(:attribute_name)
        end
      end
      
      # Product issue.
      class Issue
        include Google::Apis::Core::Hashable
      
        # The timestamp when this issue appeared.
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        # The severity of the issue.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # Description of the issue.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The server-generated type of the issue, for example,
        # “INCORRECT_TEXT_FORMATTING”, “IMAGE_NOT_SERVEABLE”, etc.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # If present, the attribute that triggered the issue. For more information
        # about attributes, see
        # https://support.google.com/manufacturers/answer/6124116.
        # Corresponds to the JSON property `attribute`
        # @return [String]
        attr_accessor :attribute
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
          @severity = args[:severity] if args.key?(:severity)
          @description = args[:description] if args.key?(:description)
          @type = args[:type] if args.key?(:type)
          @attribute = args[:attribute] if args.key?(:attribute)
        end
      end
      
      # A feature description of the product. For more information, see
      # https://support.google.com/manufacturers/answer/6124116#featuredesc.
      class FeatureDescription
        include Google::Apis::Core::Hashable
      
        # A detailed description of the feature.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # An image.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::ManufacturersV1::Image]
        attr_accessor :image
      
        # A short description of the feature.
        # Corresponds to the JSON property `headline`
        # @return [String]
        attr_accessor :headline
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
          @image = args[:image] if args.key?(:image)
          @headline = args[:headline] if args.key?(:headline)
        end
      end
      
      # A price.
      class Price
        include Google::Apis::Core::Hashable
      
        # The currency in which the price is denoted.
        # Corresponds to the JSON property `currency`
        # @return [String]
        attr_accessor :currency
      
        # The numeric value of the price.
        # Corresponds to the JSON property `amount`
        # @return [String]
        attr_accessor :amount
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency = args[:currency] if args.key?(:currency)
          @amount = args[:amount] if args.key?(:amount)
        end
      end
      
      # An image.
      class Image
        include Google::Apis::Core::Hashable
      
        # The status of the image.
        # @OutputOnly
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The type of the image, i.e., crawled or uploaded.
        # @OutputOnly
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The URL of the image. For crawled images, this is the provided URL. For
        # uploaded images, this is a serving URL from Google if the image has been
        # processed successfully.
        # Corresponds to the JSON property `imageUrl`
        # @return [String]
        attr_accessor :image_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @status = args[:status] if args.key?(:status)
          @type = args[:type] if args.key?(:type)
          @image_url = args[:image_url] if args.key?(:image_url)
        end
      end
      
      # Attributes of the product. For more information, see
      # https://support.google.com/manufacturers/answer/6124116.
      class Attributes
        include Google::Apis::Core::Hashable
      
        # The pattern of the product. For more information, see
        # https://support.google.com/manufacturers/answer/6124116#pattern.
        # Corresponds to the JSON property `pattern`
        # @return [String]
        attr_accessor :pattern
      
        # An image.
        # Corresponds to the JSON property `imageLink`
        # @return [Google::Apis::ManufacturersV1::Image]
        attr_accessor :image_link
      
        # The category of the product. For more information, see
        # https://support.google.com/manufacturers/answer/6124116#producttype.
        # Corresponds to the JSON property `productType`
        # @return [Array<String>]
        attr_accessor :product_type
      
        # The format of the product. For more information, see
        # https://support.google.com/manufacturers/answer/6124116#format.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # The additional images of the product. For more information, see
        # https://support.google.com/manufacturers/answer/6124116#addlimage.
        # Corresponds to the JSON property `additionalImageLink`
        # @return [Array<Google::Apis::ManufacturersV1::Image>]
        attr_accessor :additional_image_link
      
        # The videos of the product. For more information, see
        # https://support.google.com/manufacturers/answer/6124116#video.
        # Corresponds to the JSON property `videoLink`
        # @return [Array<String>]
        attr_accessor :video_link
      
        # The color of the product. For more information, see
        # https://support.google.com/manufacturers/answer/6124116#color.
        # Corresponds to the JSON property `color`
        # @return [String]
        attr_accessor :color
      
        # The canonical name of the product. For more information, see
        # https://support.google.com/manufacturers/answer/6124116#productname.
        # Corresponds to the JSON property `productName`
        # @return [String]
        attr_accessor :product_name
      
        # The size type of the product. For more information, see
        # https://support.google.com/manufacturers/answer/6124116#sizetype.
        # Corresponds to the JSON property `sizeType`
        # @return [String]
        attr_accessor :size_type
      
        # A price.
        # Corresponds to the JSON property `suggestedRetailPrice`
        # @return [Google::Apis::ManufacturersV1::Price]
        attr_accessor :suggested_retail_price
      
        # The rich format description of the product. For more information, see
        # https://support.google.com/manufacturers/answer/6124116#featuredesc.
        # Corresponds to the JSON property `featureDescription`
        # @return [Array<Google::Apis::ManufacturersV1::FeatureDescription>]
        attr_accessor :feature_description
      
        # The size of the product. For more information, see
        # https://support.google.com/manufacturers/answer/6124116#size.
        # Corresponds to the JSON property `size`
        # @return [String]
        attr_accessor :size
      
        # The title of the product. For more information, see
        # https://support.google.com/manufacturers/answer/6124116#title.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The number of products in a single package. For more information, see
        # https://support.google.com/manufacturers/answer/6124116#count.
        # Corresponds to the JSON property `count`
        # @return [Google::Apis::ManufacturersV1::Count]
        attr_accessor :count
      
        # The brand name of the product. For more information, see
        # https://support.google.com/manufacturers/answer/6124116#brand.
        # Corresponds to the JSON property `brand`
        # @return [String]
        attr_accessor :brand
      
        # The material of the product. For more information, see
        # https://support.google.com/manufacturers/answer/6124116#material.
        # Corresponds to the JSON property `material`
        # @return [String]
        attr_accessor :material
      
        # The disclosure date of the product. For more information, see
        # https://support.google.com/manufacturers/answer/6124116#disclosure.
        # Corresponds to the JSON property `disclosureDate`
        # @return [String]
        attr_accessor :disclosure_date
      
        # The scent of the product. For more information, see
        # https://support.google.com/manufacturers/answer/6124116#scent.
        # Corresponds to the JSON property `scent`
        # @return [String]
        attr_accessor :scent
      
        # The target age group of the product. For more information, see
        # https://support.google.com/manufacturers/answer/6124116#agegroup.
        # Corresponds to the JSON property `ageGroup`
        # @return [String]
        attr_accessor :age_group
      
        # The flavor of the product. For more information, see
        # https://support.google.com/manufacturers/answer/6124116#flavor.
        # Corresponds to the JSON property `flavor`
        # @return [String]
        attr_accessor :flavor
      
        # The details of the product. For more information, see
        # https://support.google.com/manufacturers/answer/6124116#productdetail.
        # Corresponds to the JSON property `productDetail`
        # @return [Array<Google::Apis::ManufacturersV1::ProductDetail>]
        attr_accessor :product_detail
      
        # The Manufacturer Part Number (MPN) of the product. For more information,
        # see https://support.google.com/manufacturers/answer/6124116#mpn.
        # Corresponds to the JSON property `mpn`
        # @return [String]
        attr_accessor :mpn
      
        # The URL of the detail page of the product. For more information, see
        # https://support.google.com/manufacturers/answer/6124116#productpage.
        # Corresponds to the JSON property `productPageUrl`
        # @return [String]
        attr_accessor :product_page_url
      
        # The release date of the product. For more information, see
        # https://support.google.com/manufacturers/answer/6124116#release.
        # Corresponds to the JSON property `releaseDate`
        # @return [String]
        attr_accessor :release_date
      
        # The Global Trade Item Number (GTIN) of the product. For more information,
        # see https://support.google.com/manufacturers/answer/6124116#gtin.
        # Corresponds to the JSON property `gtin`
        # @return [Array<String>]
        attr_accessor :gtin
      
        # The item group id of the product. For more information, see
        # https://support.google.com/manufacturers/answer/6124116#itemgroupid.
        # Corresponds to the JSON property `itemGroupId`
        # @return [String]
        attr_accessor :item_group_id
      
        # The name of the group of products related to the product. For more
        # information, see
        # https://support.google.com/manufacturers/answer/6124116#productline.
        # Corresponds to the JSON property `productLine`
        # @return [String]
        attr_accessor :product_line
      
        # The capacity of a product. For more information, see
        # https://support.google.com/manufacturers/answer/6124116#capacity.
        # Corresponds to the JSON property `capacity`
        # @return [Google::Apis::ManufacturersV1::Capacity]
        attr_accessor :capacity
      
        # The description of the product. For more information, see
        # https://support.google.com/manufacturers/answer/6124116#description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The target gender of the product. For more information, see
        # https://support.google.com/manufacturers/answer/6124116#gender.
        # Corresponds to the JSON property `gender`
        # @return [String]
        attr_accessor :gender
      
        # The size system of the product. For more information, see
        # https://support.google.com/manufacturers/answer/6124116#sizesystem.
        # Corresponds to the JSON property `sizeSystem`
        # @return [String]
        attr_accessor :size_system
      
        # The theme of the product. For more information, see
        # https://support.google.com/manufacturers/answer/6124116#theme.
        # Corresponds to the JSON property `theme`
        # @return [String]
        attr_accessor :theme
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pattern = args[:pattern] if args.key?(:pattern)
          @image_link = args[:image_link] if args.key?(:image_link)
          @product_type = args[:product_type] if args.key?(:product_type)
          @format = args[:format] if args.key?(:format)
          @additional_image_link = args[:additional_image_link] if args.key?(:additional_image_link)
          @video_link = args[:video_link] if args.key?(:video_link)
          @color = args[:color] if args.key?(:color)
          @product_name = args[:product_name] if args.key?(:product_name)
          @size_type = args[:size_type] if args.key?(:size_type)
          @suggested_retail_price = args[:suggested_retail_price] if args.key?(:suggested_retail_price)
          @feature_description = args[:feature_description] if args.key?(:feature_description)
          @size = args[:size] if args.key?(:size)
          @title = args[:title] if args.key?(:title)
          @count = args[:count] if args.key?(:count)
          @brand = args[:brand] if args.key?(:brand)
          @material = args[:material] if args.key?(:material)
          @disclosure_date = args[:disclosure_date] if args.key?(:disclosure_date)
          @scent = args[:scent] if args.key?(:scent)
          @age_group = args[:age_group] if args.key?(:age_group)
          @flavor = args[:flavor] if args.key?(:flavor)
          @product_detail = args[:product_detail] if args.key?(:product_detail)
          @mpn = args[:mpn] if args.key?(:mpn)
          @product_page_url = args[:product_page_url] if args.key?(:product_page_url)
          @release_date = args[:release_date] if args.key?(:release_date)
          @gtin = args[:gtin] if args.key?(:gtin)
          @item_group_id = args[:item_group_id] if args.key?(:item_group_id)
          @product_line = args[:product_line] if args.key?(:product_line)
          @capacity = args[:capacity] if args.key?(:capacity)
          @description = args[:description] if args.key?(:description)
          @gender = args[:gender] if args.key?(:gender)
          @size_system = args[:size_system] if args.key?(:size_system)
          @theme = args[:theme] if args.key?(:theme)
        end
      end
      
      # The number of products in a single package. For more information, see
      # https://support.google.com/manufacturers/answer/6124116#count.
      class Count
        include Google::Apis::Core::Hashable
      
        # The numeric value of the number of products in a package.
        # Corresponds to the JSON property `value`
        # @return [Fixnum]
        attr_accessor :value
      
        # The unit in which these products are counted.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
          @unit = args[:unit] if args.key?(:unit)
        end
      end
      
      # Product data.
      class Product
        include Google::Apis::Core::Hashable
      
        # A server-generated list of issues associated with the product.
        # @OutputOnly
        # Corresponds to the JSON property `issues`
        # @return [Array<Google::Apis::ManufacturersV1::Issue>]
        attr_accessor :issues
      
        # Names of the attributes of the product deleted manually via the
        # Manufacturer Center UI.
        # @OutputOnly
        # Corresponds to the JSON property `manuallyDeletedAttributes`
        # @return [Array<String>]
        attr_accessor :manually_deleted_attributes
      
        # Attributes of the product. For more information, see
        # https://support.google.com/manufacturers/answer/6124116.
        # Corresponds to the JSON property `finalAttributes`
        # @return [Google::Apis::ManufacturersV1::Attributes]
        attr_accessor :final_attributes
      
        # The ID of the product. For more information, see
        # https://support.google.com/manufacturers/answer/6124116#id.
        # @OutputOnly
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # Attributes of the product. For more information, see
        # https://support.google.com/manufacturers/answer/6124116.
        # Corresponds to the JSON property `uploadedAttributes`
        # @return [Google::Apis::ManufacturersV1::Attributes]
        attr_accessor :uploaded_attributes
      
        # Parent ID in the format `accounts/`account_id``.
        # `account_id` - The ID of the Manufacturer Center account.
        # @OutputOnly
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Attributes of the product. For more information, see
        # https://support.google.com/manufacturers/answer/6124116.
        # Corresponds to the JSON property `manuallyProvidedAttributes`
        # @return [Google::Apis::ManufacturersV1::Attributes]
        attr_accessor :manually_provided_attributes
      
        # The content language of the product as a two-letter ISO 639-1 language code
        # (for example, en).
        # @OutputOnly
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # The target country of the product as a CLDR territory code (for example,
        # US).
        # @OutputOnly
        # Corresponds to the JSON property `targetCountry`
        # @return [String]
        attr_accessor :target_country
      
        # Name in the format ``target_country`:`content_language`:`product_id``.
        # `target_country`   - The target country of the product as a CLDR territory
        # code (for example, US).
        # `content_language` - The content language of the product as a two-letter
        # ISO 639-1 language code (for example, en).
        # `product_id`     -   The ID of the product. For more information, see
        # https://support.google.com/manufacturers/answer/6124116#
        # id.
        # @OutputOnly
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issues = args[:issues] if args.key?(:issues)
          @manually_deleted_attributes = args[:manually_deleted_attributes] if args.key?(:manually_deleted_attributes)
          @final_attributes = args[:final_attributes] if args.key?(:final_attributes)
          @product_id = args[:product_id] if args.key?(:product_id)
          @uploaded_attributes = args[:uploaded_attributes] if args.key?(:uploaded_attributes)
          @parent = args[:parent] if args.key?(:parent)
          @manually_provided_attributes = args[:manually_provided_attributes] if args.key?(:manually_provided_attributes)
          @content_language = args[:content_language] if args.key?(:content_language)
          @target_country = args[:target_country] if args.key?(:target_country)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The capacity of a product. For more information, see
      # https://support.google.com/manufacturers/answer/6124116#capacity.
      class Capacity
        include Google::Apis::Core::Hashable
      
        # The numeric value of the capacity.
        # Corresponds to the JSON property `value`
        # @return [Fixnum]
        attr_accessor :value
      
        # The unit of the capacity, i.e., MB, GB, or TB.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
          @unit = args[:unit] if args.key?(:unit)
        end
      end
    end
  end
end
