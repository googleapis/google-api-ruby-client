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
      
      class ListProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Issue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Attributes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Product
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :products, as: 'products', class: Google::Apis::ManufacturersV1::Product, decorator: Google::Apis::ManufacturersV1::Product::Representation
      
        end
      end
      
      class Issue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :severity, as: 'severity'
          property :description, as: 'description'
          property :attribute, as: 'attribute'
          property :type, as: 'type'
        end
      end
      
      class Attributes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :product_page_url, as: 'productPageUrl'
          property :mpn, as: 'mpn'
          property :title, as: 'title'
          property :product_line, as: 'productLine'
          property :product_name, as: 'productName'
          property :brand, as: 'brand'
          collection :product_type, as: 'productType'
          collection :gtin, as: 'gtin'
        end
      end
      
      class Product
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parent, as: 'parent'
          property :target_country, as: 'targetCountry'
          property :content_language, as: 'contentLanguage'
          collection :manually_deleted_attributes, as: 'manuallyDeletedAttributes'
          property :product_id, as: 'productId'
          property :final_attributes, as: 'finalAttributes', class: Google::Apis::ManufacturersV1::Attributes, decorator: Google::Apis::ManufacturersV1::Attributes::Representation
      
          collection :issues, as: 'issues', class: Google::Apis::ManufacturersV1::Issue, decorator: Google::Apis::ManufacturersV1::Issue::Representation
      
          property :name, as: 'name'
          property :uploaded_attributes, as: 'uploadedAttributes', class: Google::Apis::ManufacturersV1::Attributes, decorator: Google::Apis::ManufacturersV1::Attributes::Representation
      
          property :manually_provided_attributes, as: 'manuallyProvidedAttributes', class: Google::Apis::ManufacturersV1::Attributes, decorator: Google::Apis::ManufacturersV1::Attributes::Representation
      
        end
      end
    end
  end
end
