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
    module MybusinessplaceactionsV1
      
      class AvailableDay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FeeDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FixedFee
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FulfillmentOption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPlaceActionLinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPlaceActionTypeMetadataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MinimumFee
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Money
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NoFee
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrderOnlineMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PlaceActionLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PlaceActionTypeMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AvailableDay
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fulfillment_date, as: 'fulfillmentDate', class: Google::Apis::MybusinessplaceactionsV1::Date, decorator: Google::Apis::MybusinessplaceactionsV1::Date::Representation
      
          property :last_ordering_time, as: 'lastOrderingTime'
        end
      end
      
      class Date
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FeeDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_fee, as: 'baseFee', class: Google::Apis::MybusinessplaceactionsV1::MinimumFee, decorator: Google::Apis::MybusinessplaceactionsV1::MinimumFee::Representation
      
          property :fixed_fee, as: 'fixedFee', class: Google::Apis::MybusinessplaceactionsV1::FixedFee, decorator: Google::Apis::MybusinessplaceactionsV1::FixedFee::Representation
      
          property :no_fee, as: 'noFee', class: Google::Apis::MybusinessplaceactionsV1::NoFee, decorator: Google::Apis::MybusinessplaceactionsV1::NoFee::Representation
      
        end
      end
      
      class FixedFee
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount, as: 'amount', class: Google::Apis::MybusinessplaceactionsV1::Money, decorator: Google::Apis::MybusinessplaceactionsV1::Money::Representation
      
        end
      end
      
      class FulfillmentOption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :available_day, as: 'availableDay', class: Google::Apis::MybusinessplaceactionsV1::AvailableDay, decorator: Google::Apis::MybusinessplaceactionsV1::AvailableDay::Representation
      
          property :fee_details, as: 'feeDetails', class: Google::Apis::MybusinessplaceactionsV1::FeeDetails, decorator: Google::Apis::MybusinessplaceactionsV1::FeeDetails::Representation
      
          property :fulfillment_type, as: 'fulfillmentType'
          property :minimum_order, as: 'minimumOrder', class: Google::Apis::MybusinessplaceactionsV1::Money, decorator: Google::Apis::MybusinessplaceactionsV1::Money::Representation
      
        end
      end
      
      class ListPlaceActionLinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :place_action_links, as: 'placeActionLinks', class: Google::Apis::MybusinessplaceactionsV1::PlaceActionLink, decorator: Google::Apis::MybusinessplaceactionsV1::PlaceActionLink::Representation
      
        end
      end
      
      class ListPlaceActionTypeMetadataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :place_action_type_metadata, as: 'placeActionTypeMetadata', class: Google::Apis::MybusinessplaceactionsV1::PlaceActionTypeMetadata, decorator: Google::Apis::MybusinessplaceactionsV1::PlaceActionTypeMetadata::Representation
      
        end
      end
      
      class MinimumFee
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_fee_amount, as: 'baseFeeAmount', class: Google::Apis::MybusinessplaceactionsV1::Money, decorator: Google::Apis::MybusinessplaceactionsV1::Money::Representation
      
        end
      end
      
      class Money
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency_code, as: 'currencyCode'
          property :nanos, as: 'nanos'
          property :units, :numeric_string => true, as: 'units'
        end
      end
      
      class NoFee
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class OrderOnlineMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :fulfillment_option, as: 'fulfillmentOption', class: Google::Apis::MybusinessplaceactionsV1::FulfillmentOption, decorator: Google::Apis::MybusinessplaceactionsV1::FulfillmentOption::Representation
      
        end
      end
      
      class PlaceActionLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :is_editable, as: 'isEditable'
          property :is_preferred, as: 'isPreferred'
          property :name, as: 'name'
          property :order_online_metadata, as: 'orderOnlineMetadata', class: Google::Apis::MybusinessplaceactionsV1::OrderOnlineMetadata, decorator: Google::Apis::MybusinessplaceactionsV1::OrderOnlineMetadata::Representation
      
          property :place_action_type, as: 'placeActionType'
          property :provider_type, as: 'providerType'
          property :update_time, as: 'updateTime'
          property :uri, as: 'uri'
        end
      end
      
      class PlaceActionTypeMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :place_action_type, as: 'placeActionType'
        end
      end
    end
  end
end
