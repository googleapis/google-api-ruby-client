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
    module CloudproductregistryV1
      
      class ListLogicalProductVariantsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLogicalProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListProductSuitesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogicalProduct
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogicalProductVariant
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LookupEntityResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductSuite
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLogicalProductVariantsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :logical_product_variants, as: 'logicalProductVariants', class: Google::Apis::CloudproductregistryV1::LogicalProductVariant, decorator: Google::Apis::CloudproductregistryV1::LogicalProductVariant::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLogicalProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :logical_products, as: 'logicalProducts', class: Google::Apis::CloudproductregistryV1::LogicalProduct, decorator: Google::Apis::CloudproductregistryV1::LogicalProduct::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListProductSuitesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :product_suites, as: 'productSuites', class: Google::Apis::CloudproductregistryV1::ProductSuite, decorator: Google::Apis::CloudproductregistryV1::ProductSuite::Representation
      
        end
      end
      
      class LogicalProduct
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lifecycle_state, as: 'lifecycleState'
          property :name, as: 'name'
          property :product_suite, as: 'productSuite'
          property :replaced, as: 'replaced'
          property :replacement, as: 'replacement'
          property :title, as: 'title'
          collection :variants, as: 'variants'
        end
      end
      
      class LogicalProductVariant
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lifecycle_state, as: 'lifecycleState'
          property :name, as: 'name'
          property :replaced, as: 'replaced'
          property :replacement, as: 'replacement'
          property :title, as: 'title'
        end
      end
      
      class LookupEntityResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :logical_product, as: 'logicalProduct', class: Google::Apis::CloudproductregistryV1::LogicalProduct, decorator: Google::Apis::CloudproductregistryV1::LogicalProduct::Representation
      
          property :logical_product_variant, as: 'logicalProductVariant', class: Google::Apis::CloudproductregistryV1::LogicalProductVariant, decorator: Google::Apis::CloudproductregistryV1::LogicalProductVariant::Representation
      
          property :product_suite, as: 'productSuite', class: Google::Apis::CloudproductregistryV1::ProductSuite, decorator: Google::Apis::CloudproductregistryV1::ProductSuite::Representation
      
        end
      end
      
      class ProductSuite
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :logical_products, as: 'logicalProducts'
          property :name, as: 'name'
          property :replaced, as: 'replaced'
          property :replacement, as: 'replacement'
          property :title, as: 'title'
        end
      end
    end
  end
end
