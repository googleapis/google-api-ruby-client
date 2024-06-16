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
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LfpInventory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LfpSale
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LfpStore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLfpStoresResponse
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
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class LfpInventory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :availability, as: 'availability'
          property :collection_time, as: 'collectionTime'
          property :content_language, as: 'contentLanguage'
          property :feed_label, as: 'feedLabel'
          property :gtin, as: 'gtin'
          property :name, as: 'name'
          property :offer_id, as: 'offerId'
          property :pickup_method, as: 'pickupMethod'
          property :pickup_sla, as: 'pickupSla'
          property :price, as: 'price', class: Google::Apis::MerchantapiLfpV1beta::Price, decorator: Google::Apis::MerchantapiLfpV1beta::Price::Representation
      
          property :quantity, :numeric_string => true, as: 'quantity'
          property :region_code, as: 'regionCode'
          property :store_code, as: 'storeCode'
          property :target_account, :numeric_string => true, as: 'targetAccount'
        end
      end
      
      class LfpSale
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_language, as: 'contentLanguage'
          property :feed_label, as: 'feedLabel'
          property :gtin, as: 'gtin'
          property :name, as: 'name'
          property :offer_id, as: 'offerId'
          property :price, as: 'price', class: Google::Apis::MerchantapiLfpV1beta::Price, decorator: Google::Apis::MerchantapiLfpV1beta::Price::Representation
      
          property :quantity, :numeric_string => true, as: 'quantity'
          property :region_code, as: 'regionCode'
          property :sale_time, as: 'saleTime'
          property :store_code, as: 'storeCode'
          property :target_account, :numeric_string => true, as: 'targetAccount'
          property :uid, as: 'uid'
        end
      end
      
      class LfpStore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :gcid_category, as: 'gcidCategory'
          property :matching_state, as: 'matchingState'
          property :matching_state_hint, as: 'matchingStateHint'
          property :name, as: 'name'
          property :phone_number, as: 'phoneNumber'
          property :place_id, as: 'placeId'
          property :store_address, as: 'storeAddress'
          property :store_code, as: 'storeCode'
          property :store_name, as: 'storeName'
          property :target_account, :numeric_string => true, as: 'targetAccount'
          property :website_uri, as: 'websiteUri'
        end
      end
      
      class ListLfpStoresResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :lfp_stores, as: 'lfpStores', class: Google::Apis::MerchantapiLfpV1beta::LfpStore, decorator: Google::Apis::MerchantapiLfpV1beta::LfpStore::Representation
      
          property :next_page_token, as: 'nextPageToken'
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
          collection :changes, as: 'changes', class: Google::Apis::MerchantapiLfpV1beta::ProductChange, decorator: Google::Apis::MerchantapiLfpV1beta::ProductChange::Representation
      
          property :managing_account, as: 'managingAccount'
          property :resource, as: 'resource'
          property :resource_id, as: 'resourceId'
          property :resource_type, as: 'resourceType'
        end
      end
    end
  end
end
