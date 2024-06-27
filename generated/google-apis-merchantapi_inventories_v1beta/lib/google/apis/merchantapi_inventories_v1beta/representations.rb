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
      
      class CustomAttribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Interval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocalInventoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListRegionalInventoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocalInventory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Price
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductChange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductStatusChangeMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionalInventory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomAttribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :group_values, as: 'groupValues', class: Google::Apis::MerchantapiInventoriesV1beta::CustomAttribute, decorator: Google::Apis::MerchantapiInventoriesV1beta::CustomAttribute::Representation
      
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Interval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class ListLocalInventoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :local_inventories, as: 'localInventories', class: Google::Apis::MerchantapiInventoriesV1beta::LocalInventory, decorator: Google::Apis::MerchantapiInventoriesV1beta::LocalInventory::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListRegionalInventoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :regional_inventories, as: 'regionalInventories', class: Google::Apis::MerchantapiInventoriesV1beta::RegionalInventory, decorator: Google::Apis::MerchantapiInventoriesV1beta::RegionalInventory::Representation
      
        end
      end
      
      class LocalInventory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, :numeric_string => true, as: 'account'
          property :availability, as: 'availability'
          collection :custom_attributes, as: 'customAttributes', class: Google::Apis::MerchantapiInventoriesV1beta::CustomAttribute, decorator: Google::Apis::MerchantapiInventoriesV1beta::CustomAttribute::Representation
      
          property :instore_product_location, as: 'instoreProductLocation'
          property :name, as: 'name'
          property :pickup_method, as: 'pickupMethod'
          property :pickup_sla, as: 'pickupSla'
          property :price, as: 'price', class: Google::Apis::MerchantapiInventoriesV1beta::Price, decorator: Google::Apis::MerchantapiInventoriesV1beta::Price::Representation
      
          property :quantity, :numeric_string => true, as: 'quantity'
          property :sale_price, as: 'salePrice', class: Google::Apis::MerchantapiInventoriesV1beta::Price, decorator: Google::Apis::MerchantapiInventoriesV1beta::Price::Representation
      
          property :sale_price_effective_date, as: 'salePriceEffectiveDate', class: Google::Apis::MerchantapiInventoriesV1beta::Interval, decorator: Google::Apis::MerchantapiInventoriesV1beta::Interval::Representation
      
          property :store_code, as: 'storeCode'
        end
      end
      
      class Price
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount_micros, :numeric_string => true, as: 'amountMicros'
          property :currency_code, as: 'currencyCode'
        end
      end
      
      class ProductChange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_value, as: 'newValue'
          property :old_value, as: 'oldValue'
          property :region_code, as: 'regionCode'
          property :reporting_context, as: 'reportingContext'
        end
      end
      
      class ProductStatusChangeMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, as: 'account'
          property :attribute, as: 'attribute'
          collection :changes, as: 'changes', class: Google::Apis::MerchantapiInventoriesV1beta::ProductChange, decorator: Google::Apis::MerchantapiInventoriesV1beta::ProductChange::Representation
      
          property :managing_account, as: 'managingAccount'
          property :resource, as: 'resource'
          property :resource_id, as: 'resourceId'
          property :resource_type, as: 'resourceType'
        end
      end
      
      class RegionalInventory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, :numeric_string => true, as: 'account'
          property :availability, as: 'availability'
          collection :custom_attributes, as: 'customAttributes', class: Google::Apis::MerchantapiInventoriesV1beta::CustomAttribute, decorator: Google::Apis::MerchantapiInventoriesV1beta::CustomAttribute::Representation
      
          property :name, as: 'name'
          property :price, as: 'price', class: Google::Apis::MerchantapiInventoriesV1beta::Price, decorator: Google::Apis::MerchantapiInventoriesV1beta::Price::Representation
      
          property :region, as: 'region'
          property :sale_price, as: 'salePrice', class: Google::Apis::MerchantapiInventoriesV1beta::Price, decorator: Google::Apis::MerchantapiInventoriesV1beta::Price::Representation
      
          property :sale_price_effective_date, as: 'salePriceEffectiveDate', class: Google::Apis::MerchantapiInventoriesV1beta::Interval, decorator: Google::Apis::MerchantapiInventoriesV1beta::Interval::Representation
      
        end
      end
    end
  end
end
