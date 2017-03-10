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
      
      class Issue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Product
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Attributes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Issue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :type, as: 'type'
          property :attribute, as: 'attribute'
          property :severity, as: 'severity'
        end
      end
      
      class Product
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :manually_deleted_attributes, as: 'manuallyDeletedAttributes'
          collection :issues, as: 'issues', class: Google::Apis::ManufacturersV1::Issue, decorator: Google::Apis::ManufacturersV1::Issue::Representation
      
          property :final_attributes, as: 'finalAttributes', class: Google::Apis::ManufacturersV1::Attributes, decorator: Google::Apis::ManufacturersV1::Attributes::Representation
      
          property :product_id, as: 'productId'
          property :uploaded_attributes, as: 'uploadedAttributes', class: Google::Apis::ManufacturersV1::Attributes, decorator: Google::Apis::ManufacturersV1::Attributes::Representation
      
          property :parent, as: 'parent'
          property :manually_provided_attributes, as: 'manuallyProvidedAttributes', class: Google::Apis::ManufacturersV1::Attributes, decorator: Google::Apis::ManufacturersV1::Attributes::Representation
      
          property :target_country, as: 'targetCountry'
          property :content_language, as: 'contentLanguage'
          property :name, as: 'name'
        end
      end
      
      class Attributes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :gtin, as: 'gtin'
          property :title, as: 'title'
          property :product_line, as: 'productLine'
          property :brand, as: 'brand'
          property :product_name, as: 'productName'
          collection :product_type, as: 'productType'
          property :mpn, as: 'mpn'
          property :product_page_url, as: 'productPageUrl'
        end
      end
      
      class ListProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :products, as: 'products', class: Google::Apis::ManufacturersV1::Product, decorator: Google::Apis::ManufacturersV1::Product::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
    end
  end
end
