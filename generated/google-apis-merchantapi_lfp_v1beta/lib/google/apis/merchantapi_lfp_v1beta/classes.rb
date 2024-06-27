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
    module MerchantapiLfpV1beta
      
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
      
      # Local Inventory for the merchant.
      class LfpInventory
        include Google::Apis::Core::Hashable
      
        # Required. Availability of the product at this store. For accepted attribute
        # values, see the [local product inventory data specification](https://support.
        # google.com/merchants/answer/3061342)
        # Corresponds to the JSON property `availability`
        # @return [String]
        attr_accessor :availability
      
        # Optional. The time when the inventory is collected. If not set, it will be set
        # to the time when the inventory is submitted.
        # Corresponds to the JSON property `collectionTime`
        # @return [String]
        attr_accessor :collection_time
      
        # Required. The two-letter ISO 639-1 language code for the item.
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # Optional. The [feed label](https://developers.google.com/shopping-content/
        # guides/products/feed-labels) for the product. If this is not set, it will
        # default to `regionCode`.
        # Corresponds to the JSON property `feedLabel`
        # @return [String]
        attr_accessor :feed_label
      
        # Optional. The Global Trade Item Number of the product.
        # Corresponds to the JSON property `gtin`
        # @return [String]
        attr_accessor :gtin
      
        # Output only. Identifier. The name for the `LfpInventory` resource. Format: `
        # accounts/`account`/lfpInventories/`target_merchant`~`store_code`~`offer``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Immutable. A unique identifier for the product. If both inventories
        # and sales are submitted for a merchant, this id should match for the same
        # product. **Note**: if the merchant sells the same product new and used, they
        # should have different IDs.
        # Corresponds to the JSON property `offerId`
        # @return [String]
        attr_accessor :offer_id
      
        # Optional. Supported pickup method for this offer. Unless the value is "not
        # supported", this field must be submitted together with `pickupSla`. For
        # accepted attribute values, see the [local product inventory data specification]
        # (https://support.google.com/merchants/answer/3061342).
        # Corresponds to the JSON property `pickupMethod`
        # @return [String]
        attr_accessor :pickup_method
      
        # Optional. Expected date that an order will be ready for pickup relative to the
        # order date. Must be submitted together with `pickupMethod`. For accepted
        # attribute values, see the [local product inventory data specification](https://
        # support.google.com/merchants/answer/3061342).
        # Corresponds to the JSON property `pickupSla`
        # @return [String]
        attr_accessor :pickup_sla
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::MerchantapiLfpV1beta::Price]
        attr_accessor :price
      
        # Optional. Quantity of the product available at this store. Must be greater
        # than or equal to zero.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # Required. The [CLDR territory code](https://github.com/unicode-org/cldr/blob/
        # latest/common/main/en.xml) for the country where the product is sold.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # Required. The identifier of the merchant's store. Either the store code
        # inserted through `InsertLfpStore` or the store code in the Business Profile.
        # Corresponds to the JSON property `storeCode`
        # @return [String]
        attr_accessor :store_code
      
        # Required. The Merchant Center ID of the merchant to submit the inventory for.
        # Corresponds to the JSON property `targetAccount`
        # @return [Fixnum]
        attr_accessor :target_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @availability = args[:availability] if args.key?(:availability)
          @collection_time = args[:collection_time] if args.key?(:collection_time)
          @content_language = args[:content_language] if args.key?(:content_language)
          @feed_label = args[:feed_label] if args.key?(:feed_label)
          @gtin = args[:gtin] if args.key?(:gtin)
          @name = args[:name] if args.key?(:name)
          @offer_id = args[:offer_id] if args.key?(:offer_id)
          @pickup_method = args[:pickup_method] if args.key?(:pickup_method)
          @pickup_sla = args[:pickup_sla] if args.key?(:pickup_sla)
          @price = args[:price] if args.key?(:price)
          @quantity = args[:quantity] if args.key?(:quantity)
          @region_code = args[:region_code] if args.key?(:region_code)
          @store_code = args[:store_code] if args.key?(:store_code)
          @target_account = args[:target_account] if args.key?(:target_account)
        end
      end
      
      # A sale for the merchant.
      class LfpSale
        include Google::Apis::Core::Hashable
      
        # Required. The two-letter ISO 639-1 language code for the item.
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # Optional. The [feed label](https://developers.google.com/shopping-content/
        # guides/products/feed-labels) for the product. If this is not set, it will
        # default to `regionCode`.
        # Corresponds to the JSON property `feedLabel`
        # @return [String]
        attr_accessor :feed_label
      
        # Required. The Global Trade Item Number of the sold product.
        # Corresponds to the JSON property `gtin`
        # @return [String]
        attr_accessor :gtin
      
        # Output only. Identifier. The name of the `LfpSale` resource. Format: `accounts/
        # `account`/lfpSales/`sale``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. A unique identifier for the product. If both inventories and sales
        # are submitted for a merchant, this id should match for the same product. **
        # Note**: if the merchant sells the same product new and used, they should have
        # different IDs.
        # Corresponds to the JSON property `offerId`
        # @return [String]
        attr_accessor :offer_id
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::MerchantapiLfpV1beta::Price]
        attr_accessor :price
      
        # Required. The relative change of the available quantity. Negative for items
        # returned.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # Required. The [CLDR territory code](https://github.com/unicode-org/cldr/blob/
        # latest/common/main/en.xml) for the country where the product is sold.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # Required. The timestamp for the sale.
        # Corresponds to the JSON property `saleTime`
        # @return [String]
        attr_accessor :sale_time
      
        # Required. The identifier of the merchant's store. Either a `storeCode`
        # inserted through the API or the code of the store in the Business Profile.
        # Corresponds to the JSON property `storeCode`
        # @return [String]
        attr_accessor :store_code
      
        # Required. The Merchant Center ID of the merchant to submit the sale for.
        # Corresponds to the JSON property `targetAccount`
        # @return [Fixnum]
        attr_accessor :target_account
      
        # Output only. System generated globally unique ID for the `LfpSale`.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_language = args[:content_language] if args.key?(:content_language)
          @feed_label = args[:feed_label] if args.key?(:feed_label)
          @gtin = args[:gtin] if args.key?(:gtin)
          @name = args[:name] if args.key?(:name)
          @offer_id = args[:offer_id] if args.key?(:offer_id)
          @price = args[:price] if args.key?(:price)
          @quantity = args[:quantity] if args.key?(:quantity)
          @region_code = args[:region_code] if args.key?(:region_code)
          @sale_time = args[:sale_time] if args.key?(:sale_time)
          @store_code = args[:store_code] if args.key?(:store_code)
          @target_account = args[:target_account] if args.key?(:target_account)
          @uid = args[:uid] if args.key?(:uid)
        end
      end
      
      # A store for the merchant. This will be used to match to a store under the
      # Google Business Profile of the target merchant. If a matching store can't be
      # found, the inventories or sales submitted with the store code will not be used.
      class LfpStore
        include Google::Apis::Core::Hashable
      
        # Optional. [Google My Business category id](https://gcid-explorer.corp.google.
        # com/static/gcid.html).
        # Corresponds to the JSON property `gcidCategory`
        # @return [Array<String>]
        attr_accessor :gcid_category
      
        # Optional. Output only. The state of matching to a Google Business Profile. See
        # matchingStateHint for further details if no match is found.
        # Corresponds to the JSON property `matchingState`
        # @return [String]
        attr_accessor :matching_state
      
        # Optional. Output only. The hint of why the matching has failed. This is only
        # set when matchingState=`STORE_MATCHING_STATE_FAILED`. Possible values are: - "`
        # linked-store-not-found`": There aren't any Google Business Profile stores
        # available for matching. - "`store-match-not-found`": The provided `LfpStore`
        # couldn't be matched to any of the connected Google Business Profile stores.
        # Merchant Center account is connected correctly and stores are available on
        # Google Business Profile, but the `LfpStore` location address does not match
        # with Google Business Profile stores' addresses. Update the `LfpStore` address
        # or Google Business Profile store address to match correctly. - "`store-match-
        # unverified`": The provided `LfpStore` couldn't be matched to any of the
        # connected Google Business Profile stores, as the matched Google Business
        # Profile store is unverified. Go through the Google Business Profile
        # verification process to match correctly.
        # Corresponds to the JSON property `matchingStateHint`
        # @return [String]
        attr_accessor :matching_state_hint
      
        # Output only. Identifier. The name of the `LfpStore` resource. Format: `
        # accounts/`account`/lfpStores/`target_merchant`~`store_code``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The store phone number in [E.164](https://en.wikipedia.org/wiki/E.
        # 164) format. Example: `+15556767888`
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # Optional. The [Google Place Id](https://developers.google.com/maps/
        # documentation/places/web-service/place-id#id-overview) of the store location.
        # Corresponds to the JSON property `placeId`
        # @return [String]
        attr_accessor :place_id
      
        # Required. The street address of the store. Example: 1600 Amphitheatre Pkwy,
        # Mountain View, CA 94043, USA.
        # Corresponds to the JSON property `storeAddress`
        # @return [String]
        attr_accessor :store_address
      
        # Required. Immutable. A store identifier that is unique for the target merchant.
        # Corresponds to the JSON property `storeCode`
        # @return [String]
        attr_accessor :store_code
      
        # Optional. The merchant or store name.
        # Corresponds to the JSON property `storeName`
        # @return [String]
        attr_accessor :store_name
      
        # Required. The Merchant Center id of the merchant to submit the store for.
        # Corresponds to the JSON property `targetAccount`
        # @return [Fixnum]
        attr_accessor :target_account
      
        # Optional. The website URL for the store or merchant.
        # Corresponds to the JSON property `websiteUri`
        # @return [String]
        attr_accessor :website_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcid_category = args[:gcid_category] if args.key?(:gcid_category)
          @matching_state = args[:matching_state] if args.key?(:matching_state)
          @matching_state_hint = args[:matching_state_hint] if args.key?(:matching_state_hint)
          @name = args[:name] if args.key?(:name)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @place_id = args[:place_id] if args.key?(:place_id)
          @store_address = args[:store_address] if args.key?(:store_address)
          @store_code = args[:store_code] if args.key?(:store_code)
          @store_name = args[:store_name] if args.key?(:store_name)
          @target_account = args[:target_account] if args.key?(:target_account)
          @website_uri = args[:website_uri] if args.key?(:website_uri)
        end
      end
      
      # Response message for the ListLfpStores method.
      class ListLfpStoresResponse
        include Google::Apis::Core::Hashable
      
        # The stores from the specified merchant.
        # Corresponds to the JSON property `lfpStores`
        # @return [Array<Google::Apis::MerchantapiLfpV1beta::LfpStore>]
        attr_accessor :lfp_stores
      
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
          @lfp_stores = args[:lfp_stores] if args.key?(:lfp_stores)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
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
        # @return [Array<Google::Apis::MerchantapiLfpV1beta::ProductChange>]
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
    end
  end
end
