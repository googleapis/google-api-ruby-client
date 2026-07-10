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
      
      # Response message for ListLogicalProductVariants.
      class ListLogicalProductVariantsResponse
        include Google::Apis::Core::Hashable
      
        # Matched LogicalProductVariants
        # Corresponds to the JSON property `logicalProductVariants`
        # @return [Array<Google::Apis::CloudproductregistryV1::LogicalProductVariant>]
        attr_accessor :logical_product_variants
      
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
          @logical_product_variants = args[:logical_product_variants] if args.key?(:logical_product_variants)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListLogicalProducts.
      class ListLogicalProductsResponse
        include Google::Apis::Core::Hashable
      
        # Matched LogicalProducts
        # Corresponds to the JSON property `logicalProducts`
        # @return [Array<Google::Apis::CloudproductregistryV1::LogicalProduct>]
        attr_accessor :logical_products
      
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
          @logical_products = args[:logical_products] if args.key?(:logical_products)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListProductSuites.
      class ListProductSuitesResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Matched ProductSuites
        # Corresponds to the JSON property `productSuites`
        # @return [Array<Google::Apis::CloudproductregistryV1::ProductSuite>]
        attr_accessor :product_suites
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @product_suites = args[:product_suites] if args.key?(:product_suites)
        end
      end
      
      # Represents an independent service offering that can be provisioned by a
      # customer.
      class LogicalProduct
        include Google::Apis::Core::Hashable
      
        # Output only. Current Lifecycle state of the logical product.
        # Corresponds to the JSON property `lifecycleState`
        # @return [String]
        attr_accessor :lifecycle_state
      
        # Identifier. The resource name of the LogicalProduct. Format: logicalProducts/`
        # logical_product`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Product suite associated with the logical product. Format: productSuites/`
        # product_suite`.
        # Corresponds to the JSON property `productSuite`
        # @return [String]
        attr_accessor :product_suite
      
        # Output only. Indicates whether the logical product has been replaced. If `
        # false`, the product is active. If `true`, the product has been replaced by
        # another type, and the `replacement` field contains the resource name of that
        # replacement.
        # Corresponds to the JSON property `replaced`
        # @return [Boolean]
        attr_accessor :replaced
        alias_method :replaced?, :replaced
      
        # Output only. The resource name of the Logical Entity that the logical product
        # is replaced by. This field is only populated when this logical product is
        # replaced by some other type. Eg: logicalProducts/`logical_product`/variants/`
        # variant`, productSuites/`product_suite`, etc.
        # Corresponds to the JSON property `replacement`
        # @return [String]
        attr_accessor :replacement
      
        # Display name of the LogicalProduct.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Output only. Child variant resource references. Format: logicalProducts/`
        # logical_product`/variants/`variant`
        # Corresponds to the JSON property `variants`
        # @return [Array<String>]
        attr_accessor :variants
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lifecycle_state = args[:lifecycle_state] if args.key?(:lifecycle_state)
          @name = args[:name] if args.key?(:name)
          @product_suite = args[:product_suite] if args.key?(:product_suite)
          @replaced = args[:replaced] if args.key?(:replaced)
          @replacement = args[:replacement] if args.key?(:replacement)
          @title = args[:title] if args.key?(:title)
          @variants = args[:variants] if args.key?(:variants)
        end
      end
      
      # Represents a distinct offering derived from a primary product that retains
      # core functionalities but offers specialized features for a specific market
      # segment.
      class LogicalProductVariant
        include Google::Apis::Core::Hashable
      
        # Output only. Current Lifecycle state of the logical product variant.
        # Corresponds to the JSON property `lifecycleState`
        # @return [String]
        attr_accessor :lifecycle_state
      
        # Identifier. The resource name of the LogicalProductVariant. Format:
        # logicalProducts/`logical_product`/variants/`variant`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Indicates whether the logical product variant has been replaced.
        # If `false`, the variant is active. If `true`, the variant has been replaced by
        # another type, and the `replacement` field contains the resource name of that
        # replacement.
        # Corresponds to the JSON property `replaced`
        # @return [Boolean]
        attr_accessor :replaced
        alias_method :replaced?, :replaced
      
        # Output only. The resource name of the Logical Entity that the logical product
        # variant is replaced by. This field is only populated when this logical product
        # variant is replaced by some other type. Eg: logicalProducts/`logical_product`,
        # productSuites/`product_suite`, etc.
        # Corresponds to the JSON property `replacement`
        # @return [String]
        attr_accessor :replacement
      
        # Display name of the LogicalProductVariant.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lifecycle_state = args[:lifecycle_state] if args.key?(:lifecycle_state)
          @name = args[:name] if args.key?(:name)
          @replaced = args[:replaced] if args.key?(:replaced)
          @replacement = args[:replacement] if args.key?(:replacement)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Response message for LookupEntity.
      class LookupEntityResponse
        include Google::Apis::Core::Hashable
      
        # Represents an independent service offering that can be provisioned by a
        # customer.
        # Corresponds to the JSON property `logicalProduct`
        # @return [Google::Apis::CloudproductregistryV1::LogicalProduct]
        attr_accessor :logical_product
      
        # Represents a distinct offering derived from a primary product that retains
        # core functionalities but offers specialized features for a specific market
        # segment.
        # Corresponds to the JSON property `logicalProductVariant`
        # @return [Google::Apis::CloudproductregistryV1::LogicalProductVariant]
        attr_accessor :logical_product_variant
      
        # Represents a unified grouping of products sharing a common brand and market
        # positioning.
        # Corresponds to the JSON property `productSuite`
        # @return [Google::Apis::CloudproductregistryV1::ProductSuite]
        attr_accessor :product_suite
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @logical_product = args[:logical_product] if args.key?(:logical_product)
          @logical_product_variant = args[:logical_product_variant] if args.key?(:logical_product_variant)
          @product_suite = args[:product_suite] if args.key?(:product_suite)
        end
      end
      
      # Represents a unified grouping of products sharing a common brand and market
      # positioning.
      class ProductSuite
        include Google::Apis::Core::Hashable
      
        # Output only. LogicalProducts under this suite. Format: logicalProducts/`
        # logical_product`
        # Corresponds to the JSON property `logicalProducts`
        # @return [Array<String>]
        attr_accessor :logical_products
      
        # Identifier. The resource name of the ProductSuite. Format: productSuites/`
        # product_suite`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Indicates whether the product suite has been replaced. If `false`,
        # the product suite is active. If `true`, the product suite has been replaced
        # by another type, and the `replacement` field contains the resource name of
        # that replacement.
        # Corresponds to the JSON property `replaced`
        # @return [Boolean]
        attr_accessor :replaced
        alias_method :replaced?, :replaced
      
        # Output only. The resource name of the Logical Entity that the product suite is
        # replaced by. This field is only populated when this product suite is replaced
        # by some other type. Eg: logicalProducts/`logical_product`, logicalProducts/`
        # logical_product`/variants/`variant`, etc.
        # Corresponds to the JSON property `replacement`
        # @return [String]
        attr_accessor :replacement
      
        # Title of the ProductSuite.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @logical_products = args[:logical_products] if args.key?(:logical_products)
          @name = args[:name] if args.key?(:name)
          @replaced = args[:replaced] if args.key?(:replaced)
          @replacement = args[:replacement] if args.key?(:replacement)
          @title = args[:title] if args.key?(:title)
        end
      end
    end
  end
end
