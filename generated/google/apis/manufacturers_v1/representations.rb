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
      
      class Image
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Attributes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Count
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Product
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Capacity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FeatureDescription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Issue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Price
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Image
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :image_url, as: 'imageUrl'
          property :status, as: 'status'
        end
      end
      
      class Attributes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :flavor, as: 'flavor'
          collection :product_detail, as: 'productDetail', class: Google::Apis::ManufacturersV1::ProductDetail, decorator: Google::Apis::ManufacturersV1::ProductDetail::Representation
      
          property :age_group, as: 'ageGroup'
          property :mpn, as: 'mpn'
          property :product_page_url, as: 'productPageUrl'
          property :release_date, as: 'releaseDate'
          property :item_group_id, as: 'itemGroupId'
          collection :gtin, as: 'gtin'
          property :product_line, as: 'productLine'
          property :capacity, as: 'capacity', class: Google::Apis::ManufacturersV1::Capacity, decorator: Google::Apis::ManufacturersV1::Capacity::Representation
      
          property :description, as: 'description'
          property :gender, as: 'gender'
          property :size_system, as: 'sizeSystem'
          property :theme, as: 'theme'
          property :pattern, as: 'pattern'
          property :image_link, as: 'imageLink', class: Google::Apis::ManufacturersV1::Image, decorator: Google::Apis::ManufacturersV1::Image::Representation
      
          collection :product_type, as: 'productType'
          property :format, as: 'format'
          collection :additional_image_link, as: 'additionalImageLink', class: Google::Apis::ManufacturersV1::Image, decorator: Google::Apis::ManufacturersV1::Image::Representation
      
          collection :video_link, as: 'videoLink'
          property :color, as: 'color'
          property :product_name, as: 'productName'
          property :size_type, as: 'sizeType'
          property :suggested_retail_price, as: 'suggestedRetailPrice', class: Google::Apis::ManufacturersV1::Price, decorator: Google::Apis::ManufacturersV1::Price::Representation
      
          collection :feature_description, as: 'featureDescription', class: Google::Apis::ManufacturersV1::FeatureDescription, decorator: Google::Apis::ManufacturersV1::FeatureDescription::Representation
      
          property :size, as: 'size'
          property :title, as: 'title'
          property :count, as: 'count', class: Google::Apis::ManufacturersV1::Count, decorator: Google::Apis::ManufacturersV1::Count::Representation
      
          property :brand, as: 'brand'
          property :material, as: 'material'
          property :disclosure_date, as: 'disclosureDate'
          property :scent, as: 'scent'
        end
      end
      
      class Count
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, :numeric_string => true, as: 'value'
          property :unit, as: 'unit'
        end
      end
      
      class Product
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :manually_provided_attributes, as: 'manuallyProvidedAttributes', class: Google::Apis::ManufacturersV1::Attributes, decorator: Google::Apis::ManufacturersV1::Attributes::Representation
      
          property :content_language, as: 'contentLanguage'
          property :target_country, as: 'targetCountry'
          property :name, as: 'name'
          collection :issues, as: 'issues', class: Google::Apis::ManufacturersV1::Issue, decorator: Google::Apis::ManufacturersV1::Issue::Representation
      
          collection :manually_deleted_attributes, as: 'manuallyDeletedAttributes'
          property :final_attributes, as: 'finalAttributes', class: Google::Apis::ManufacturersV1::Attributes, decorator: Google::Apis::ManufacturersV1::Attributes::Representation
      
          property :product_id, as: 'productId'
          property :uploaded_attributes, as: 'uploadedAttributes', class: Google::Apis::ManufacturersV1::Attributes, decorator: Google::Apis::ManufacturersV1::Attributes::Representation
      
          property :parent, as: 'parent'
        end
      end
      
      class Capacity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, :numeric_string => true, as: 'value'
          property :unit, as: 'unit'
        end
      end
      
      class ListProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :products, as: 'products', class: Google::Apis::ManufacturersV1::Product, decorator: Google::Apis::ManufacturersV1::Product::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ProductDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_name, as: 'attributeName'
          property :attribute_value, as: 'attributeValue'
          property :section_name, as: 'sectionName'
        end
      end
      
      class FeatureDescription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image, as: 'image', class: Google::Apis::ManufacturersV1::Image, decorator: Google::Apis::ManufacturersV1::Image::Representation
      
          property :headline, as: 'headline'
          property :text, as: 'text'
        end
      end
      
      class Issue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :type, as: 'type'
          property :attribute, as: 'attribute'
          property :timestamp, as: 'timestamp'
          property :severity, as: 'severity'
        end
      end
      
      class Price
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount, as: 'amount'
          property :currency, as: 'currency'
        end
      end
    end
  end
end
