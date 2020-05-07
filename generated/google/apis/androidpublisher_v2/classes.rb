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
    module AndroidpublisherV2
      
      # 
      class PageInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `resultPerPage`
        # @return [Fixnum]
        attr_accessor :result_per_page
      
        # 
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        # 
        # Corresponds to the JSON property `totalResults`
        # @return [Fixnum]
        attr_accessor :total_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @result_per_page = args[:result_per_page] if args.key?(:result_per_page)
          @start_index = args[:start_index] if args.key?(:start_index)
          @total_results = args[:total_results] if args.key?(:total_results)
        end
      end
      
      # A ProductPurchase resource indicates the status of a user's inapp product
      # purchase.
      class ProductPurchase
        include Google::Apis::Core::Hashable
      
        # The consumption state of the inapp product. Possible values are:
        # - Yet to be consumed
        # - Consumed
        # Corresponds to the JSON property `consumptionState`
        # @return [Fixnum]
        attr_accessor :consumption_state
      
        # A developer-specified string that contains supplemental information about an
        # order.
        # Corresponds to the JSON property `developerPayload`
        # @return [String]
        attr_accessor :developer_payload
      
        # This kind represents an inappPurchase object in the androidpublisher service.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The order id associated with the purchase of the inapp product.
        # Corresponds to the JSON property `orderId`
        # @return [String]
        attr_accessor :order_id
      
        # The purchase state of the order. Possible values are:
        # - Purchased
        # - Canceled
        # - Pending
        # Corresponds to the JSON property `purchaseState`
        # @return [Fixnum]
        attr_accessor :purchase_state
      
        # The time the product was purchased, in milliseconds since the epoch (Jan 1,
        # 1970).
        # Corresponds to the JSON property `purchaseTimeMillis`
        # @return [Fixnum]
        attr_accessor :purchase_time_millis
      
        # The type of purchase of the inapp product. This field is only set if this
        # purchase was not made using the standard in-app billing flow. Possible values
        # are:
        # - Test (i.e. purchased from a license testing account)
        # - Promo (i.e. purchased using a promo code)
        # - Rewarded (i.e. from watching a video ad instead of paying)
        # Corresponds to the JSON property `purchaseType`
        # @return [Fixnum]
        attr_accessor :purchase_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consumption_state = args[:consumption_state] if args.key?(:consumption_state)
          @developer_payload = args[:developer_payload] if args.key?(:developer_payload)
          @kind = args[:kind] if args.key?(:kind)
          @order_id = args[:order_id] if args.key?(:order_id)
          @purchase_state = args[:purchase_state] if args.key?(:purchase_state)
          @purchase_time_millis = args[:purchase_time_millis] if args.key?(:purchase_time_millis)
          @purchase_type = args[:purchase_type] if args.key?(:purchase_type)
        end
      end
      
      # 
      class TokenPagination
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `previousPageToken`
        # @return [String]
        attr_accessor :previous_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @previous_page_token = args[:previous_page_token] if args.key?(:previous_page_token)
        end
      end
      
      # A VoidedPurchase resource indicates a purchase that was either canceled/
      # refunded/charged-back.
      class VoidedPurchase
        include Google::Apis::Core::Hashable
      
        # This kind represents a voided purchase object in the androidpublisher service.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The time at which the purchase was made, in milliseconds since the epoch (Jan
        # 1, 1970).
        # Corresponds to the JSON property `purchaseTimeMillis`
        # @return [Fixnum]
        attr_accessor :purchase_time_millis
      
        # The token which uniquely identifies a one-time purchase or subscription. To
        # uniquely identify subscription renewals use order_id (available starting from
        # version 3 of the API).
        # Corresponds to the JSON property `purchaseToken`
        # @return [String]
        attr_accessor :purchase_token
      
        # The time at which the purchase was canceled/refunded/charged-back, in
        # milliseconds since the epoch (Jan 1, 1970).
        # Corresponds to the JSON property `voidedTimeMillis`
        # @return [Fixnum]
        attr_accessor :voided_time_millis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @purchase_time_millis = args[:purchase_time_millis] if args.key?(:purchase_time_millis)
          @purchase_token = args[:purchase_token] if args.key?(:purchase_token)
          @voided_time_millis = args[:voided_time_millis] if args.key?(:voided_time_millis)
        end
      end
      
      # 
      class VoidedPurchasesListResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `pageInfo`
        # @return [Google::Apis::AndroidpublisherV2::PageInfo]
        attr_accessor :page_info
      
        # 
        # Corresponds to the JSON property `tokenPagination`
        # @return [Google::Apis::AndroidpublisherV2::TokenPagination]
        attr_accessor :token_pagination
      
        # 
        # Corresponds to the JSON property `voidedPurchases`
        # @return [Array<Google::Apis::AndroidpublisherV2::VoidedPurchase>]
        attr_accessor :voided_purchases
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_info = args[:page_info] if args.key?(:page_info)
          @token_pagination = args[:token_pagination] if args.key?(:token_pagination)
          @voided_purchases = args[:voided_purchases] if args.key?(:voided_purchases)
        end
      end
    end
  end
end
