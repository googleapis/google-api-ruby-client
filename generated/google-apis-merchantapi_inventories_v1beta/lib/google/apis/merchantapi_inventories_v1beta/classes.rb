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
    module MerchantapiInventoriesV1beta
      
      # A message that represents custom attributes. Exactly one of `value` or `
      # group_values` must not be empty.
      class CustomAttribute
        include Google::Apis::Core::Hashable
      
        # Subattributes within this attribute group. If `group_values` is not empty, `
        # value` must be empty.
        # Corresponds to the JSON property `groupValues`
        # @return [Array<Google::Apis::MerchantapiInventoriesV1beta::CustomAttribute>]
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
      
      # Response message for the `ListLocalInventories` method.
      class ListLocalInventoriesResponse
        include Google::Apis::Core::Hashable
      
        # The `LocalInventory` resources for the given product from the specified
        # account.
        # Corresponds to the JSON property `localInventories`
        # @return [Array<Google::Apis::MerchantapiInventoriesV1beta::LocalInventory>]
        attr_accessor :local_inventories
      
        # A token, which can be sent as `pageToken` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @local_inventories = args[:local_inventories] if args.key?(:local_inventories)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for the `ListRegionalInventories` method.
      class ListRegionalInventoriesResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `pageToken` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The `RegionalInventory` resources for the given product from the specified
        # account.
        # Corresponds to the JSON property `regionalInventories`
        # @return [Array<Google::Apis::MerchantapiInventoriesV1beta::RegionalInventory>]
        attr_accessor :regional_inventories
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @regional_inventories = args[:regional_inventories] if args.key?(:regional_inventories)
        end
      end
      
      # Local inventory information for the product. Represents in-store information
      # for a specific product at the store specified by `storeCode`. For a list of
      # all accepted attribute values, see the [local product inventory data
      # specification](https://support.google.com/merchants/answer/3061342).
      class LocalInventory
        include Google::Apis::Core::Hashable
      
        # Output only. The account that owns the product. This field will be ignored if
        # set by the client.
        # Corresponds to the JSON property `account`
        # @return [Fixnum]
        attr_accessor :account
      
        # Availability of the product at this store. For accepted attribute values, see
        # the [local product inventory data specification](https://support.google.com/
        # merchants/answer/3061342)
        # Corresponds to the JSON property `availability`
        # @return [String]
        attr_accessor :availability
      
        # A list of custom (merchant-provided) attributes. You can also use `
        # CustomAttribute` to submit any attribute of the data specification in its
        # generic form.
        # Corresponds to the JSON property `customAttributes`
        # @return [Array<Google::Apis::MerchantapiInventoriesV1beta::CustomAttribute>]
        attr_accessor :custom_attributes
      
        # Location of the product inside the store. Maximum length is 20 bytes.
        # Corresponds to the JSON property `instoreProductLocation`
        # @return [String]
        attr_accessor :instore_product_location
      
        # Output only. The name of the `LocalInventory` resource. Format: `accounts/`
        # account`/products/`product`/localInventories/`store_code``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Supported pickup method for this product. Unless the value is `"not supported"`
        # , this field must be submitted together with `pickupSla`. For accepted
        # attribute values, see the [local product inventory data specification](https://
        # support.google.com/merchants/answer/3061342)
        # Corresponds to the JSON property `pickupMethod`
        # @return [String]
        attr_accessor :pickup_method
      
        # Relative time period from the order date for an order for this product, from
        # this store, to be ready for pickup. Must be submitted with `pickupMethod`. For
        # accepted attribute values, see the [local product inventory data specification]
        # (https://support.google.com/merchants/answer/3061342)
        # Corresponds to the JSON property `pickupSla`
        # @return [String]
        attr_accessor :pickup_sla
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::MerchantapiInventoriesV1beta::Price]
        attr_accessor :price
      
        # Quantity of the product available at this store. Must be greater than or equal
        # to zero.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `salePrice`
        # @return [Google::Apis::MerchantapiInventoriesV1beta::Price]
        attr_accessor :sale_price
      
        # Represents a time interval, encoded as a Timestamp start (inclusive) and a
        # Timestamp end (exclusive). The start must be less than or equal to the end.
        # When the start equals the end, the interval is empty (matches no time). When
        # both start and end are unspecified, the interval matches any time.
        # Corresponds to the JSON property `salePriceEffectiveDate`
        # @return [Google::Apis::MerchantapiInventoriesV1beta::Interval]
        attr_accessor :sale_price_effective_date
      
        # Required. Immutable. Store code (the store ID from your Business Profile) of
        # the physical store the product is sold in. See the [Local product inventory
        # data specification](https://support.google.com/merchants/answer/3061342) for
        # more information.
        # Corresponds to the JSON property `storeCode`
        # @return [String]
        attr_accessor :store_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] if args.key?(:account)
          @availability = args[:availability] if args.key?(:availability)
          @custom_attributes = args[:custom_attributes] if args.key?(:custom_attributes)
          @instore_product_location = args[:instore_product_location] if args.key?(:instore_product_location)
          @name = args[:name] if args.key?(:name)
          @pickup_method = args[:pickup_method] if args.key?(:pickup_method)
          @pickup_sla = args[:pickup_sla] if args.key?(:pickup_sla)
          @price = args[:price] if args.key?(:price)
          @quantity = args[:quantity] if args.key?(:quantity)
          @sale_price = args[:sale_price] if args.key?(:sale_price)
          @sale_price_effective_date = args[:sale_price_effective_date] if args.key?(:sale_price_effective_date)
          @store_code = args[:store_code] if args.key?(:store_code)
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
        # @return [Array<Google::Apis::MerchantapiInventoriesV1beta::ProductChange>]
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
      
      # Regional inventory information for the product. Represents specific
      # information like price and availability for a given product in a specific `
      # region`. For a list of all accepted attribute values, see the [regional
      # product inventory data specification](https://support.google.com/merchants/
      # answer/9698880).
      class RegionalInventory
        include Google::Apis::Core::Hashable
      
        # Output only. The account that owns the product. This field will be ignored if
        # set by the client.
        # Corresponds to the JSON property `account`
        # @return [Fixnum]
        attr_accessor :account
      
        # Availability of the product in this region. For accepted attribute values, see
        # the [regional product inventory data specification](https://support.google.com/
        # merchants/answer/3061342)
        # Corresponds to the JSON property `availability`
        # @return [String]
        attr_accessor :availability
      
        # A list of custom (merchant-provided) attributes. You can also use `
        # CustomAttribute` to submit any attribute of the data specification in its
        # generic form.
        # Corresponds to the JSON property `customAttributes`
        # @return [Array<Google::Apis::MerchantapiInventoriesV1beta::CustomAttribute>]
        attr_accessor :custom_attributes
      
        # Output only. The name of the `RegionalInventory` resource. Format: ``
        # regional_inventory.name=accounts/`account`/products/`product`/
        # regionalInventories/`region``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::MerchantapiInventoriesV1beta::Price]
        attr_accessor :price
      
        # Required. Immutable. ID of the region for this `RegionalInventory` resource.
        # See the [Regional availability and pricing](https://support.google.com/
        # merchants/answer/9698880) for more details.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `salePrice`
        # @return [Google::Apis::MerchantapiInventoriesV1beta::Price]
        attr_accessor :sale_price
      
        # Represents a time interval, encoded as a Timestamp start (inclusive) and a
        # Timestamp end (exclusive). The start must be less than or equal to the end.
        # When the start equals the end, the interval is empty (matches no time). When
        # both start and end are unspecified, the interval matches any time.
        # Corresponds to the JSON property `salePriceEffectiveDate`
        # @return [Google::Apis::MerchantapiInventoriesV1beta::Interval]
        attr_accessor :sale_price_effective_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] if args.key?(:account)
          @availability = args[:availability] if args.key?(:availability)
          @custom_attributes = args[:custom_attributes] if args.key?(:custom_attributes)
          @name = args[:name] if args.key?(:name)
          @price = args[:price] if args.key?(:price)
          @region = args[:region] if args.key?(:region)
          @sale_price = args[:sale_price] if args.key?(:sale_price)
          @sale_price_effective_date = args[:sale_price_effective_date] if args.key?(:sale_price_effective_date)
        end
      end
    end
  end
end
