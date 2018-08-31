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
    module ContentV2sandbox
      
      # 
      class Amount
        include Google::Apis::Core::Hashable
      
        # [required] Value before taxes.
        # Corresponds to the JSON property `pretax`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :pretax
      
        # [required] Tax value.
        # Corresponds to the JSON property `tax`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :tax
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pretax = args[:pretax] if args.key?(:pretax)
          @tax = args[:tax] if args.key?(:tax)
        end
      end
      
      # An error returned by the API.
      class Error
        include Google::Apis::Core::Hashable
      
        # The domain of the error.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # A description of the error.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # The error code.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain = args[:domain] if args.key?(:domain)
          @message = args[:message] if args.key?(:message)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # A list of errors returned by a failed batch entry.
      class Errors
        include Google::Apis::Core::Hashable
      
        # The HTTP status of the first error in errors.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of errors.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::ContentV2sandbox::Error>]
        attr_accessor :errors
      
        # The message of the first error in errors.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @errors = args[:errors] if args.key?(:errors)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # 
      class InvoiceSummary
        include Google::Apis::Core::Hashable
      
        # Summary of the total amounts of the additional charges.
        # Corresponds to the JSON property `additionalChargeSummaries`
        # @return [Array<Google::Apis::ContentV2sandbox::InvoiceSummaryAdditionalChargeSummary>]
        attr_accessor :additional_charge_summaries
      
        # [required] Customer balance on this invoice. A negative amount means the
        # customer is paying, a positive one means the customer is receiving money. Note:
        # the sum of merchant_balance, customer_balance and google_balance must always
        # be zero.
        # Furthermore the absolute value of this amount is expected to be equal to the
        # sum of product amount and additional charges, minus promotions.
        # Corresponds to the JSON property `customerBalance`
        # @return [Google::Apis::ContentV2sandbox::Amount]
        attr_accessor :customer_balance
      
        # [required] Google balance on this invoice. A negative amount means Google is
        # paying, a positive one means Google is receiving money. Note: the sum of
        # merchant_balance, customer_balance and google_balance must always be zero.
        # Corresponds to the JSON property `googleBalance`
        # @return [Google::Apis::ContentV2sandbox::Amount]
        attr_accessor :google_balance
      
        # [required] Merchant balance on this invoice. A negative amount means the
        # merchant is paying, a positive one means the merchant is receiving money. Note:
        # the sum of merchant_balance, customer_balance and google_balance must always
        # be zero.
        # Corresponds to the JSON property `merchantBalance`
        # @return [Google::Apis::ContentV2sandbox::Amount]
        attr_accessor :merchant_balance
      
        # [required] Total price for the product.
        # Corresponds to the JSON property `productTotal`
        # @return [Google::Apis::ContentV2sandbox::Amount]
        attr_accessor :product_total
      
        # Summary for each promotion.
        # Corresponds to the JSON property `promotionSummaries`
        # @return [Array<Google::Apis::ContentV2sandbox::Promotion>]
        attr_accessor :promotion_summaries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_charge_summaries = args[:additional_charge_summaries] if args.key?(:additional_charge_summaries)
          @customer_balance = args[:customer_balance] if args.key?(:customer_balance)
          @google_balance = args[:google_balance] if args.key?(:google_balance)
          @merchant_balance = args[:merchant_balance] if args.key?(:merchant_balance)
          @product_total = args[:product_total] if args.key?(:product_total)
          @promotion_summaries = args[:promotion_summaries] if args.key?(:promotion_summaries)
        end
      end
      
      # 
      class InvoiceSummaryAdditionalChargeSummary
        include Google::Apis::Core::Hashable
      
        # [required] Total additional charge for this type.
        # Corresponds to the JSON property `totalAmount`
        # @return [Google::Apis::ContentV2sandbox::Amount]
        attr_accessor :total_amount
      
        # [required] Type of the additional charge.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @total_amount = args[:total_amount] if args.key?(:total_amount)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class Order
        include Google::Apis::Core::Hashable
      
        # Whether the order was acknowledged.
        # Corresponds to the JSON property `acknowledged`
        # @return [Boolean]
        attr_accessor :acknowledged
        alias_method :acknowledged?, :acknowledged
      
        # The channel type of the order: "purchaseOnGoogle" or "googleExpress".
        # Corresponds to the JSON property `channelType`
        # @return [String]
        attr_accessor :channel_type
      
        # The details of the customer who placed the order.
        # Corresponds to the JSON property `customer`
        # @return [Google::Apis::ContentV2sandbox::OrderCustomer]
        attr_accessor :customer
      
        # The details for the delivery.
        # Corresponds to the JSON property `deliveryDetails`
        # @return [Google::Apis::ContentV2sandbox::OrderDeliveryDetails]
        attr_accessor :delivery_details
      
        # The REST id of the order. Globally unique.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # order".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Line items that are ordered.
        # Corresponds to the JSON property `lineItems`
        # @return [Array<Google::Apis::ContentV2sandbox::OrderLineItem>]
        attr_accessor :line_items
      
        # 
        # Corresponds to the JSON property `merchantId`
        # @return [Fixnum]
        attr_accessor :merchant_id
      
        # Merchant-provided id of the order.
        # Corresponds to the JSON property `merchantOrderId`
        # @return [String]
        attr_accessor :merchant_order_id
      
        # The net amount for the order. For example, if an order was originally for a
        # grand total of $100 and a refund was issued for $20, the net amount will be $
        # 80.
        # Corresponds to the JSON property `netAmount`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :net_amount
      
        # The details of the payment method.
        # Corresponds to the JSON property `paymentMethod`
        # @return [Google::Apis::ContentV2sandbox::OrderPaymentMethod]
        attr_accessor :payment_method
      
        # The status of the payment.
        # Corresponds to the JSON property `paymentStatus`
        # @return [String]
        attr_accessor :payment_status
      
        # The date when the order was placed, in ISO 8601 format.
        # Corresponds to the JSON property `placedDate`
        # @return [String]
        attr_accessor :placed_date
      
        # The details of the merchant provided promotions applied to the order. More
        # details about the program are here.
        # Corresponds to the JSON property `promotions`
        # @return [Array<Google::Apis::ContentV2sandbox::OrderPromotion>]
        attr_accessor :promotions
      
        # Refunds for the order.
        # Corresponds to the JSON property `refunds`
        # @return [Array<Google::Apis::ContentV2sandbox::OrderRefund>]
        attr_accessor :refunds
      
        # Shipments of the order.
        # Corresponds to the JSON property `shipments`
        # @return [Array<Google::Apis::ContentV2sandbox::OrderShipment>]
        attr_accessor :shipments
      
        # The total cost of shipping for all items.
        # Corresponds to the JSON property `shippingCost`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :shipping_cost
      
        # The tax for the total shipping cost.
        # Corresponds to the JSON property `shippingCostTax`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :shipping_cost_tax
      
        # The requested shipping option.
        # Corresponds to the JSON property `shippingOption`
        # @return [String]
        attr_accessor :shipping_option
      
        # The status of the order.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @acknowledged = args[:acknowledged] if args.key?(:acknowledged)
          @channel_type = args[:channel_type] if args.key?(:channel_type)
          @customer = args[:customer] if args.key?(:customer)
          @delivery_details = args[:delivery_details] if args.key?(:delivery_details)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @line_items = args[:line_items] if args.key?(:line_items)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @merchant_order_id = args[:merchant_order_id] if args.key?(:merchant_order_id)
          @net_amount = args[:net_amount] if args.key?(:net_amount)
          @payment_method = args[:payment_method] if args.key?(:payment_method)
          @payment_status = args[:payment_status] if args.key?(:payment_status)
          @placed_date = args[:placed_date] if args.key?(:placed_date)
          @promotions = args[:promotions] if args.key?(:promotions)
          @refunds = args[:refunds] if args.key?(:refunds)
          @shipments = args[:shipments] if args.key?(:shipments)
          @shipping_cost = args[:shipping_cost] if args.key?(:shipping_cost)
          @shipping_cost_tax = args[:shipping_cost_tax] if args.key?(:shipping_cost_tax)
          @shipping_option = args[:shipping_option] if args.key?(:shipping_option)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # 
      class OrderAddress
        include Google::Apis::Core::Hashable
      
        # CLDR country code (e.g. "US").
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # Strings representing the lines of the printed label for mailing the order, for
        # example:
        # John Smith
        # 1600 Amphitheatre Parkway
        # Mountain View, CA, 94043
        # United States
        # Corresponds to the JSON property `fullAddress`
        # @return [Array<String>]
        attr_accessor :full_address
      
        # Whether the address is a post office box.
        # Corresponds to the JSON property `isPostOfficeBox`
        # @return [Boolean]
        attr_accessor :is_post_office_box
        alias_method :is_post_office_box?, :is_post_office_box
      
        # City, town or commune. May also include dependent localities or sublocalities (
        # e.g. neighborhoods or suburbs).
        # Corresponds to the JSON property `locality`
        # @return [String]
        attr_accessor :locality
      
        # Postal Code or ZIP (e.g. "94043").
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # Name of the recipient.
        # Corresponds to the JSON property `recipientName`
        # @return [String]
        attr_accessor :recipient_name
      
        # Top-level administrative subdivision of the country. For example, a state like
        # California ("CA") or a province like Quebec ("QC").
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # Street-level part of the address.
        # Corresponds to the JSON property `streetAddress`
        # @return [Array<String>]
        attr_accessor :street_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country = args[:country] if args.key?(:country)
          @full_address = args[:full_address] if args.key?(:full_address)
          @is_post_office_box = args[:is_post_office_box] if args.key?(:is_post_office_box)
          @locality = args[:locality] if args.key?(:locality)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @recipient_name = args[:recipient_name] if args.key?(:recipient_name)
          @region = args[:region] if args.key?(:region)
          @street_address = args[:street_address] if args.key?(:street_address)
        end
      end
      
      # 
      class OrderCancellation
        include Google::Apis::Core::Hashable
      
        # The actor that created the cancellation.
        # Corresponds to the JSON property `actor`
        # @return [String]
        attr_accessor :actor
      
        # Date on which the cancellation has been created, in ISO 8601 format.
        # Corresponds to the JSON property `creationDate`
        # @return [String]
        attr_accessor :creation_date
      
        # The quantity that was canceled.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # The reason for the cancellation. Orders that are cancelled with a noInventory
        # reason will lead to the removal of the product from Shopping Actions until you
        # make an update to that product. This will not affect your Shopping ads.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # The explanation of the reason.
        # Corresponds to the JSON property `reasonText`
        # @return [String]
        attr_accessor :reason_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actor = args[:actor] if args.key?(:actor)
          @creation_date = args[:creation_date] if args.key?(:creation_date)
          @quantity = args[:quantity] if args.key?(:quantity)
          @reason = args[:reason] if args.key?(:reason)
          @reason_text = args[:reason_text] if args.key?(:reason_text)
        end
      end
      
      # 
      class OrderCustomer
        include Google::Apis::Core::Hashable
      
        # Email address that should be used for order related communications. In certain
        # cases this might not be a real users email, but a proxy email.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Deprecated. Please use marketingRightsInfo instead.
        # Corresponds to the JSON property `explicitMarketingPreference`
        # @return [Boolean]
        attr_accessor :explicit_marketing_preference
        alias_method :explicit_marketing_preference?, :explicit_marketing_preference
      
        # Full name of the customer.
        # Corresponds to the JSON property `fullName`
        # @return [String]
        attr_accessor :full_name
      
        # Customer's marketing preferences.
        # Corresponds to the JSON property `marketingRightsInfo`
        # @return [Google::Apis::ContentV2sandbox::OrderCustomerMarketingRightsInfo]
        attr_accessor :marketing_rights_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @explicit_marketing_preference = args[:explicit_marketing_preference] if args.key?(:explicit_marketing_preference)
          @full_name = args[:full_name] if args.key?(:full_name)
          @marketing_rights_info = args[:marketing_rights_info] if args.key?(:marketing_rights_info)
        end
      end
      
      # 
      class OrderCustomerMarketingRightsInfo
        include Google::Apis::Core::Hashable
      
        # Last known user selection regarding marketing preferences. In certain cases
        # this selection might not be known, so this field would be empty.
        # Corresponds to the JSON property `explicitMarketingPreference`
        # @return [String]
        attr_accessor :explicit_marketing_preference
      
        # Timestamp when last time marketing preference was updated. Could be empty, if
        # user wasn't offered a selection yet.
        # Corresponds to the JSON property `lastUpdatedTimestamp`
        # @return [String]
        attr_accessor :last_updated_timestamp
      
        # Email address that can be used for marketing purposes. This field is only
        # filled when explicitMarketingPreference is equal to 'granted'.
        # Corresponds to the JSON property `marketingEmailAddress`
        # @return [String]
        attr_accessor :marketing_email_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @explicit_marketing_preference = args[:explicit_marketing_preference] if args.key?(:explicit_marketing_preference)
          @last_updated_timestamp = args[:last_updated_timestamp] if args.key?(:last_updated_timestamp)
          @marketing_email_address = args[:marketing_email_address] if args.key?(:marketing_email_address)
        end
      end
      
      # 
      class OrderDeliveryDetails
        include Google::Apis::Core::Hashable
      
        # The delivery address
        # Corresponds to the JSON property `address`
        # @return [Google::Apis::ContentV2sandbox::OrderAddress]
        attr_accessor :address
      
        # The phone number of the person receiving the delivery.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
        end
      end
      
      # 
      class OrderLineItem
        include Google::Apis::Core::Hashable
      
        # Annotations that are attached to the line item.
        # Corresponds to the JSON property `annotations`
        # @return [Array<Google::Apis::ContentV2sandbox::OrderMerchantProvidedAnnotation>]
        attr_accessor :annotations
      
        # Cancellations of the line item.
        # Corresponds to the JSON property `cancellations`
        # @return [Array<Google::Apis::ContentV2sandbox::OrderCancellation>]
        attr_accessor :cancellations
      
        # The id of the line item.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Total price for the line item. For example, if two items for $10 are purchased,
        # the total price will be $20.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :price
      
        # Product data from the time of the order placement.
        # Corresponds to the JSON property `product`
        # @return [Google::Apis::ContentV2sandbox::OrderLineItemProduct]
        attr_accessor :product
      
        # Number of items canceled.
        # Corresponds to the JSON property `quantityCanceled`
        # @return [Fixnum]
        attr_accessor :quantity_canceled
      
        # Number of items delivered.
        # Corresponds to the JSON property `quantityDelivered`
        # @return [Fixnum]
        attr_accessor :quantity_delivered
      
        # Number of items ordered.
        # Corresponds to the JSON property `quantityOrdered`
        # @return [Fixnum]
        attr_accessor :quantity_ordered
      
        # Number of items pending.
        # Corresponds to the JSON property `quantityPending`
        # @return [Fixnum]
        attr_accessor :quantity_pending
      
        # Number of items returned.
        # Corresponds to the JSON property `quantityReturned`
        # @return [Fixnum]
        attr_accessor :quantity_returned
      
        # Number of items shipped.
        # Corresponds to the JSON property `quantityShipped`
        # @return [Fixnum]
        attr_accessor :quantity_shipped
      
        # Details of the return policy for the line item.
        # Corresponds to the JSON property `returnInfo`
        # @return [Google::Apis::ContentV2sandbox::OrderLineItemReturnInfo]
        attr_accessor :return_info
      
        # Returns of the line item.
        # Corresponds to the JSON property `returns`
        # @return [Array<Google::Apis::ContentV2sandbox::OrderReturn>]
        attr_accessor :returns
      
        # Details of the requested shipping for the line item.
        # Corresponds to the JSON property `shippingDetails`
        # @return [Google::Apis::ContentV2sandbox::OrderLineItemShippingDetails]
        attr_accessor :shipping_details
      
        # Total tax amount for the line item. For example, if two items are purchased,
        # and each have a cost tax of $2, the total tax amount will be $4.
        # Corresponds to the JSON property `tax`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :tax
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @cancellations = args[:cancellations] if args.key?(:cancellations)
          @id = args[:id] if args.key?(:id)
          @price = args[:price] if args.key?(:price)
          @product = args[:product] if args.key?(:product)
          @quantity_canceled = args[:quantity_canceled] if args.key?(:quantity_canceled)
          @quantity_delivered = args[:quantity_delivered] if args.key?(:quantity_delivered)
          @quantity_ordered = args[:quantity_ordered] if args.key?(:quantity_ordered)
          @quantity_pending = args[:quantity_pending] if args.key?(:quantity_pending)
          @quantity_returned = args[:quantity_returned] if args.key?(:quantity_returned)
          @quantity_shipped = args[:quantity_shipped] if args.key?(:quantity_shipped)
          @return_info = args[:return_info] if args.key?(:return_info)
          @returns = args[:returns] if args.key?(:returns)
          @shipping_details = args[:shipping_details] if args.key?(:shipping_details)
          @tax = args[:tax] if args.key?(:tax)
        end
      end
      
      # 
      class OrderLineItemProduct
        include Google::Apis::Core::Hashable
      
        # Brand of the item.
        # Corresponds to the JSON property `brand`
        # @return [String]
        attr_accessor :brand
      
        # The item's channel (online or local).
        # Corresponds to the JSON property `channel`
        # @return [String]
        attr_accessor :channel
      
        # Condition or state of the item.
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        # The two-letter ISO 639-1 language code for the item.
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # Global Trade Item Number (GTIN) of the item.
        # Corresponds to the JSON property `gtin`
        # @return [String]
        attr_accessor :gtin
      
        # The REST id of the product.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # URL of an image of the item.
        # Corresponds to the JSON property `imageLink`
        # @return [String]
        attr_accessor :image_link
      
        # Shared identifier for all variants of the same product.
        # Corresponds to the JSON property `itemGroupId`
        # @return [String]
        attr_accessor :item_group_id
      
        # Manufacturer Part Number (MPN) of the item.
        # Corresponds to the JSON property `mpn`
        # @return [String]
        attr_accessor :mpn
      
        # An identifier of the item.
        # Corresponds to the JSON property `offerId`
        # @return [String]
        attr_accessor :offer_id
      
        # Price of the item.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :price
      
        # URL to the cached image shown to the user when order was placed.
        # Corresponds to the JSON property `shownImage`
        # @return [String]
        attr_accessor :shown_image
      
        # The CLDR territory code of the target country of the product.
        # Corresponds to the JSON property `targetCountry`
        # @return [String]
        attr_accessor :target_country
      
        # The title of the product.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Variant attributes for the item. These are dimensions of the product, such as
        # color, gender, material, pattern, and size. You can find a comprehensive list
        # of variant attributes here.
        # Corresponds to the JSON property `variantAttributes`
        # @return [Array<Google::Apis::ContentV2sandbox::OrderLineItemProductVariantAttribute>]
        attr_accessor :variant_attributes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @brand = args[:brand] if args.key?(:brand)
          @channel = args[:channel] if args.key?(:channel)
          @condition = args[:condition] if args.key?(:condition)
          @content_language = args[:content_language] if args.key?(:content_language)
          @gtin = args[:gtin] if args.key?(:gtin)
          @id = args[:id] if args.key?(:id)
          @image_link = args[:image_link] if args.key?(:image_link)
          @item_group_id = args[:item_group_id] if args.key?(:item_group_id)
          @mpn = args[:mpn] if args.key?(:mpn)
          @offer_id = args[:offer_id] if args.key?(:offer_id)
          @price = args[:price] if args.key?(:price)
          @shown_image = args[:shown_image] if args.key?(:shown_image)
          @target_country = args[:target_country] if args.key?(:target_country)
          @title = args[:title] if args.key?(:title)
          @variant_attributes = args[:variant_attributes] if args.key?(:variant_attributes)
        end
      end
      
      # 
      class OrderLineItemProductVariantAttribute
        include Google::Apis::Core::Hashable
      
        # The dimension of the variant.
        # Corresponds to the JSON property `dimension`
        # @return [String]
        attr_accessor :dimension
      
        # The value for the dimension.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension = args[:dimension] if args.key?(:dimension)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class OrderLineItemReturnInfo
        include Google::Apis::Core::Hashable
      
        # How many days later the item can be returned.
        # Corresponds to the JSON property `daysToReturn`
        # @return [Fixnum]
        attr_accessor :days_to_return
      
        # Whether the item is returnable.
        # Corresponds to the JSON property `isReturnable`
        # @return [Boolean]
        attr_accessor :is_returnable
        alias_method :is_returnable?, :is_returnable
      
        # URL of the item return policy.
        # Corresponds to the JSON property `policyUrl`
        # @return [String]
        attr_accessor :policy_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @days_to_return = args[:days_to_return] if args.key?(:days_to_return)
          @is_returnable = args[:is_returnable] if args.key?(:is_returnable)
          @policy_url = args[:policy_url] if args.key?(:policy_url)
        end
      end
      
      # 
      class OrderLineItemShippingDetails
        include Google::Apis::Core::Hashable
      
        # The delivery by date, in ISO 8601 format.
        # Corresponds to the JSON property `deliverByDate`
        # @return [String]
        attr_accessor :deliver_by_date
      
        # Details of the shipping method.
        # Corresponds to the JSON property `method`
        # @return [Google::Apis::ContentV2sandbox::OrderLineItemShippingDetailsMethod]
        attr_accessor :method_prop
      
        # The ship by date, in ISO 8601 format.
        # Corresponds to the JSON property `shipByDate`
        # @return [String]
        attr_accessor :ship_by_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deliver_by_date = args[:deliver_by_date] if args.key?(:deliver_by_date)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @ship_by_date = args[:ship_by_date] if args.key?(:ship_by_date)
        end
      end
      
      # 
      class OrderLineItemShippingDetailsMethod
        include Google::Apis::Core::Hashable
      
        # The carrier for the shipping. Optional. See shipments[].carrier for a list of
        # acceptable values.
        # Corresponds to the JSON property `carrier`
        # @return [String]
        attr_accessor :carrier
      
        # Maximum transit time.
        # Corresponds to the JSON property `maxDaysInTransit`
        # @return [Fixnum]
        attr_accessor :max_days_in_transit
      
        # The name of the shipping method.
        # Corresponds to the JSON property `methodName`
        # @return [String]
        attr_accessor :method_name
      
        # Minimum transit time.
        # Corresponds to the JSON property `minDaysInTransit`
        # @return [Fixnum]
        attr_accessor :min_days_in_transit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @carrier = args[:carrier] if args.key?(:carrier)
          @max_days_in_transit = args[:max_days_in_transit] if args.key?(:max_days_in_transit)
          @method_name = args[:method_name] if args.key?(:method_name)
          @min_days_in_transit = args[:min_days_in_transit] if args.key?(:min_days_in_transit)
        end
      end
      
      # 
      class OrderMerchantProvidedAnnotation
        include Google::Apis::Core::Hashable
      
        # Key for additional merchant provided (as key-value pairs) annotation about the
        # line item.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Value for additional merchant provided (as key-value pairs) annotation about
        # the line item.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class OrderPaymentMethod
        include Google::Apis::Core::Hashable
      
        # The billing address.
        # Corresponds to the JSON property `billingAddress`
        # @return [Google::Apis::ContentV2sandbox::OrderAddress]
        attr_accessor :billing_address
      
        # The card expiration month (January = 1, February = 2 etc.).
        # Corresponds to the JSON property `expirationMonth`
        # @return [Fixnum]
        attr_accessor :expiration_month
      
        # The card expiration year (4-digit, e.g. 2015).
        # Corresponds to the JSON property `expirationYear`
        # @return [Fixnum]
        attr_accessor :expiration_year
      
        # The last four digits of the card number.
        # Corresponds to the JSON property `lastFourDigits`
        # @return [String]
        attr_accessor :last_four_digits
      
        # The billing phone number.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # The type of instrument.
        # Acceptable values are:
        # - "AMEX"
        # - "DISCOVER"
        # - "JCB"
        # - "MASTERCARD"
        # - "UNIONPAY"
        # - "VISA"
        # - ""
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_address = args[:billing_address] if args.key?(:billing_address)
          @expiration_month = args[:expiration_month] if args.key?(:expiration_month)
          @expiration_year = args[:expiration_year] if args.key?(:expiration_year)
          @last_four_digits = args[:last_four_digits] if args.key?(:last_four_digits)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class OrderPromotion
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `benefits`
        # @return [Array<Google::Apis::ContentV2sandbox::OrderPromotionBenefit>]
        attr_accessor :benefits
      
        # The date and time frame when the promotion is active and ready for validation
        # review. Note that the promotion live time may be delayed for a few hours due
        # to the validation review.
        # Start date and end date are separated by a forward slash (/). The start date
        # is specified by the format (YYYY-MM-DD), followed by the letter ?T?, the time
        # of the day when the sale starts (in Greenwich Mean Time, GMT), followed by an
        # expression of the time zone for the sale. The end date is in the same format.
        # Corresponds to the JSON property `effectiveDates`
        # @return [String]
        attr_accessor :effective_dates
      
        # Optional. The text code that corresponds to the promotion when applied on the
        # retailer?s website.
        # Corresponds to the JSON property `genericRedemptionCode`
        # @return [String]
        attr_accessor :generic_redemption_code
      
        # The unique ID of the promotion.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The full title of the promotion.
        # Corresponds to the JSON property `longTitle`
        # @return [String]
        attr_accessor :long_title
      
        # Whether the promotion is applicable to all products or only specific products.
        # Corresponds to the JSON property `productApplicability`
        # @return [String]
        attr_accessor :product_applicability
      
        # Indicates that the promotion is valid online.
        # Corresponds to the JSON property `redemptionChannel`
        # @return [String]
        attr_accessor :redemption_channel
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @benefits = args[:benefits] if args.key?(:benefits)
          @effective_dates = args[:effective_dates] if args.key?(:effective_dates)
          @generic_redemption_code = args[:generic_redemption_code] if args.key?(:generic_redemption_code)
          @id = args[:id] if args.key?(:id)
          @long_title = args[:long_title] if args.key?(:long_title)
          @product_applicability = args[:product_applicability] if args.key?(:product_applicability)
          @redemption_channel = args[:redemption_channel] if args.key?(:redemption_channel)
        end
      end
      
      # 
      class OrderPromotionBenefit
        include Google::Apis::Core::Hashable
      
        # The discount in the order price when the promotion is applied.
        # Corresponds to the JSON property `discount`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :discount
      
        # The OfferId(s) that were purchased in this order and map to this specific
        # benefit of the promotion.
        # Corresponds to the JSON property `offerIds`
        # @return [Array<String>]
        attr_accessor :offer_ids
      
        # Further describes the benefit of the promotion. Note that we will expand on
        # this enumeration as we support new promotion sub-types.
        # Corresponds to the JSON property `subType`
        # @return [String]
        attr_accessor :sub_type
      
        # The impact on tax when the promotion is applied.
        # Corresponds to the JSON property `taxImpact`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :tax_impact
      
        # Describes whether the promotion applies to products (e.g. 20% off) or to
        # shipping (e.g. Free Shipping).
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @discount = args[:discount] if args.key?(:discount)
          @offer_ids = args[:offer_ids] if args.key?(:offer_ids)
          @sub_type = args[:sub_type] if args.key?(:sub_type)
          @tax_impact = args[:tax_impact] if args.key?(:tax_impact)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class OrderRefund
        include Google::Apis::Core::Hashable
      
        # The actor that created the refund.
        # Corresponds to the JSON property `actor`
        # @return [String]
        attr_accessor :actor
      
        # The amount that is refunded.
        # Corresponds to the JSON property `amount`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :amount
      
        # Date on which the item has been created, in ISO 8601 format.
        # Corresponds to the JSON property `creationDate`
        # @return [String]
        attr_accessor :creation_date
      
        # The reason for the refund.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # The explanation of the reason.
        # Corresponds to the JSON property `reasonText`
        # @return [String]
        attr_accessor :reason_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actor = args[:actor] if args.key?(:actor)
          @amount = args[:amount] if args.key?(:amount)
          @creation_date = args[:creation_date] if args.key?(:creation_date)
          @reason = args[:reason] if args.key?(:reason)
          @reason_text = args[:reason_text] if args.key?(:reason_text)
        end
      end
      
      # 
      class OrderReturn
        include Google::Apis::Core::Hashable
      
        # The actor that created the refund.
        # Corresponds to the JSON property `actor`
        # @return [String]
        attr_accessor :actor
      
        # Date on which the item has been created, in ISO 8601 format.
        # Corresponds to the JSON property `creationDate`
        # @return [String]
        attr_accessor :creation_date
      
        # Quantity that is returned.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # The reason for the return.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # The explanation of the reason.
        # Corresponds to the JSON property `reasonText`
        # @return [String]
        attr_accessor :reason_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actor = args[:actor] if args.key?(:actor)
          @creation_date = args[:creation_date] if args.key?(:creation_date)
          @quantity = args[:quantity] if args.key?(:quantity)
          @reason = args[:reason] if args.key?(:reason)
          @reason_text = args[:reason_text] if args.key?(:reason_text)
        end
      end
      
      # 
      class OrderShipment
        include Google::Apis::Core::Hashable
      
        # The carrier handling the shipment.
        # Acceptable values are:
        # - "gsx"
        # - "ups"
        # - "usps"
        # - "fedex"
        # - "dhl"
        # - "ecourier"
        # - "cxt"
        # - "google"
        # - "ontrac"
        # - "emsy"
        # - "ont"
        # - "deliv"
        # - "dynamex"
        # - "lasership"
        # - "mpx"
        # - "uds"
        # Corresponds to the JSON property `carrier`
        # @return [String]
        attr_accessor :carrier
      
        # Date on which the shipment has been created, in ISO 8601 format.
        # Corresponds to the JSON property `creationDate`
        # @return [String]
        attr_accessor :creation_date
      
        # Date on which the shipment has been delivered, in ISO 8601 format. Present
        # only if status is delivered
        # Corresponds to the JSON property `deliveryDate`
        # @return [String]
        attr_accessor :delivery_date
      
        # The id of the shipment.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The line items that are shipped.
        # Corresponds to the JSON property `lineItems`
        # @return [Array<Google::Apis::ContentV2sandbox::OrderShipmentLineItemShipment>]
        attr_accessor :line_items
      
        # The status of the shipment.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The tracking id for the shipment.
        # Corresponds to the JSON property `trackingId`
        # @return [String]
        attr_accessor :tracking_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @carrier = args[:carrier] if args.key?(:carrier)
          @creation_date = args[:creation_date] if args.key?(:creation_date)
          @delivery_date = args[:delivery_date] if args.key?(:delivery_date)
          @id = args[:id] if args.key?(:id)
          @line_items = args[:line_items] if args.key?(:line_items)
          @status = args[:status] if args.key?(:status)
          @tracking_id = args[:tracking_id] if args.key?(:tracking_id)
        end
      end
      
      # 
      class OrderShipmentLineItemShipment
        include Google::Apis::Core::Hashable
      
        # The id of the line item that is shipped. Either lineItemId or productId is
        # required.
        # Corresponds to the JSON property `lineItemId`
        # @return [String]
        attr_accessor :line_item_id
      
        # The ID of the product to ship. This is the REST ID used in the products
        # service. Either lineItemId or productId is required.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # The quantity that is shipped.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @line_item_id = args[:line_item_id] if args.key?(:line_item_id)
          @product_id = args[:product_id] if args.key?(:product_id)
          @quantity = args[:quantity] if args.key?(:quantity)
        end
      end
      
      # 
      class OrderinvoicesCreateChargeInvoiceRequest
        include Google::Apis::Core::Hashable
      
        # [required] The ID of the invoice.
        # Corresponds to the JSON property `invoiceId`
        # @return [String]
        attr_accessor :invoice_id
      
        # [required] Invoice summary.
        # Corresponds to the JSON property `invoiceSummary`
        # @return [Google::Apis::ContentV2sandbox::InvoiceSummary]
        attr_accessor :invoice_summary
      
        # [required] Invoice details per line item.
        # Corresponds to the JSON property `lineItemInvoices`
        # @return [Array<Google::Apis::ContentV2sandbox::ShipmentInvoiceLineItemInvoice>]
        attr_accessor :line_item_invoices
      
        # [required] The ID of the operation, unique across all operations for a given
        # order.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # [required] ID of the shipment group.
        # Corresponds to the JSON property `shipmentGroupId`
        # @return [String]
        attr_accessor :shipment_group_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @invoice_id = args[:invoice_id] if args.key?(:invoice_id)
          @invoice_summary = args[:invoice_summary] if args.key?(:invoice_summary)
          @line_item_invoices = args[:line_item_invoices] if args.key?(:line_item_invoices)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @shipment_group_id = args[:shipment_group_id] if args.key?(:shipment_group_id)
        end
      end
      
      # 
      class OrderinvoicesCreateChargeInvoiceResponse
        include Google::Apis::Core::Hashable
      
        # The status of the execution.
        # Corresponds to the JSON property `executionStatus`
        # @return [String]
        attr_accessor :execution_status
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # orderinvoicesCreateChargeInvoiceResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_status = args[:execution_status] if args.key?(:execution_status)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class OrderinvoicesCreateRefundInvoiceRequest
        include Google::Apis::Core::Hashable
      
        # [required] The ID of the invoice.
        # Corresponds to the JSON property `invoiceId`
        # @return [String]
        attr_accessor :invoice_id
      
        # [required] The ID of the operation, unique across all operations for a given
        # order.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # Option to create a refund-only invoice. Exactly one of refundOnlyOption or
        # returnOption must be provided.
        # Corresponds to the JSON property `refundOnlyOption`
        # @return [Google::Apis::ContentV2sandbox::OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption]
        attr_accessor :refund_only_option
      
        # Option to create an invoice for a refund and mark all items within the invoice
        # as returned. Exactly one of refundOnlyOption or returnOption must be provided.
        # Corresponds to the JSON property `returnOption`
        # @return [Google::Apis::ContentV2sandbox::OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption]
        attr_accessor :return_option
      
        # Invoice details for different shipment groups.
        # Corresponds to the JSON property `shipmentInvoices`
        # @return [Array<Google::Apis::ContentV2sandbox::ShipmentInvoice>]
        attr_accessor :shipment_invoices
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @invoice_id = args[:invoice_id] if args.key?(:invoice_id)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @refund_only_option = args[:refund_only_option] if args.key?(:refund_only_option)
          @return_option = args[:return_option] if args.key?(:return_option)
          @shipment_invoices = args[:shipment_invoices] if args.key?(:shipment_invoices)
        end
      end
      
      # 
      class OrderinvoicesCreateRefundInvoiceResponse
        include Google::Apis::Core::Hashable
      
        # The status of the execution.
        # Corresponds to the JSON property `executionStatus`
        # @return [String]
        attr_accessor :execution_status
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # orderinvoicesCreateRefundInvoiceResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_status = args[:execution_status] if args.key?(:execution_status)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
        include Google::Apis::Core::Hashable
      
        # Optional description of the refund reason.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [required] Reason for the refund.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # 
      class OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
        include Google::Apis::Core::Hashable
      
        # Optional description of the return reason.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [required] Reason for the return.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # 
      class OrderpaymentsNotifyAuthApprovedRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `authAmountPretax`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :auth_amount_pretax
      
        # 
        # Corresponds to the JSON property `authAmountTax`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :auth_amount_tax
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auth_amount_pretax = args[:auth_amount_pretax] if args.key?(:auth_amount_pretax)
          @auth_amount_tax = args[:auth_amount_tax] if args.key?(:auth_amount_tax)
        end
      end
      
      # 
      class OrderpaymentsNotifyAuthApprovedResponse
        include Google::Apis::Core::Hashable
      
        # The status of the execution.
        # Corresponds to the JSON property `executionStatus`
        # @return [String]
        attr_accessor :execution_status
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # orderpaymentsNotifyAuthApprovedResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_status = args[:execution_status] if args.key?(:execution_status)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class OrderpaymentsNotifyAuthDeclinedRequest
        include Google::Apis::Core::Hashable
      
        # Reason why payment authorization was declined.
        # Corresponds to the JSON property `declineReason`
        # @return [String]
        attr_accessor :decline_reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @decline_reason = args[:decline_reason] if args.key?(:decline_reason)
        end
      end
      
      # 
      class OrderpaymentsNotifyAuthDeclinedResponse
        include Google::Apis::Core::Hashable
      
        # The status of the execution.
        # Corresponds to the JSON property `executionStatus`
        # @return [String]
        attr_accessor :execution_status
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # orderpaymentsNotifyAuthDeclinedResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_status = args[:execution_status] if args.key?(:execution_status)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class OrderpaymentsNotifyChargeRequest
        include Google::Apis::Core::Hashable
      
        # Whether charge was successful.
        # Corresponds to the JSON property `chargeState`
        # @return [String]
        attr_accessor :charge_state
      
        # Invoice ID from orderInvoice service that corresponds to the charge.
        # Corresponds to the JSON property `invoiceId`
        # @return [String]
        attr_accessor :invoice_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @charge_state = args[:charge_state] if args.key?(:charge_state)
          @invoice_id = args[:invoice_id] if args.key?(:invoice_id)
        end
      end
      
      # 
      class OrderpaymentsNotifyChargeResponse
        include Google::Apis::Core::Hashable
      
        # The status of the execution.
        # Corresponds to the JSON property `executionStatus`
        # @return [String]
        attr_accessor :execution_status
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # orderpaymentsNotifyChargeResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_status = args[:execution_status] if args.key?(:execution_status)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class OrderpaymentsNotifyRefundRequest
        include Google::Apis::Core::Hashable
      
        # Invoice ID from orderInvoice service that corresponds to the charge.
        # Corresponds to the JSON property `invoiceId`
        # @return [String]
        attr_accessor :invoice_id
      
        # Whether refund was successful.
        # Corresponds to the JSON property `refundState`
        # @return [String]
        attr_accessor :refund_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @invoice_id = args[:invoice_id] if args.key?(:invoice_id)
          @refund_state = args[:refund_state] if args.key?(:refund_state)
        end
      end
      
      # 
      class OrderpaymentsNotifyRefundResponse
        include Google::Apis::Core::Hashable
      
        # The status of the execution.
        # Corresponds to the JSON property `executionStatus`
        # @return [String]
        attr_accessor :execution_status
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # orderpaymentsNotifyRefundResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_status = args[:execution_status] if args.key?(:execution_status)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class OrdersAcknowledgeRequest
        include Google::Apis::Core::Hashable
      
        # The ID of the operation. Unique across all operations for a given order.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
        end
      end
      
      # 
      class OrdersAcknowledgeResponse
        include Google::Apis::Core::Hashable
      
        # The status of the execution.
        # Corresponds to the JSON property `executionStatus`
        # @return [String]
        attr_accessor :execution_status
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersAcknowledgeResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_status = args[:execution_status] if args.key?(:execution_status)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class OrdersAdvanceTestOrderResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersAdvanceTestOrderResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class OrdersCancelLineItemRequest
        include Google::Apis::Core::Hashable
      
        # Deprecated. Please use amountPretax and amountTax instead.
        # Corresponds to the JSON property `amount`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :amount
      
        # Amount to refund for the cancelation. Optional. If not set, Google will
        # calculate the default based on the price and tax of the items involved. The
        # amount must not be larger than the net amount left on the order.
        # Corresponds to the JSON property `amountPretax`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :amount_pretax
      
        # Tax amount that correspond to cancellation amount in amountPretax.
        # Corresponds to the JSON property `amountTax`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :amount_tax
      
        # The ID of the line item to cancel. Either lineItemId or productId is required.
        # Corresponds to the JSON property `lineItemId`
        # @return [String]
        attr_accessor :line_item_id
      
        # The ID of the operation. Unique across all operations for a given order.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # The ID of the product to cancel. This is the REST ID used in the products
        # service. Either lineItemId or productId is required.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # The quantity to cancel.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # The reason for the cancellation.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # The explanation of the reason.
        # Corresponds to the JSON property `reasonText`
        # @return [String]
        attr_accessor :reason_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amount = args[:amount] if args.key?(:amount)
          @amount_pretax = args[:amount_pretax] if args.key?(:amount_pretax)
          @amount_tax = args[:amount_tax] if args.key?(:amount_tax)
          @line_item_id = args[:line_item_id] if args.key?(:line_item_id)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @product_id = args[:product_id] if args.key?(:product_id)
          @quantity = args[:quantity] if args.key?(:quantity)
          @reason = args[:reason] if args.key?(:reason)
          @reason_text = args[:reason_text] if args.key?(:reason_text)
        end
      end
      
      # 
      class OrdersCancelLineItemResponse
        include Google::Apis::Core::Hashable
      
        # The status of the execution.
        # Corresponds to the JSON property `executionStatus`
        # @return [String]
        attr_accessor :execution_status
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersCancelLineItemResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_status = args[:execution_status] if args.key?(:execution_status)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class OrdersCancelRequest
        include Google::Apis::Core::Hashable
      
        # The ID of the operation. Unique across all operations for a given order.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # The reason for the cancellation.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # The explanation of the reason.
        # Corresponds to the JSON property `reasonText`
        # @return [String]
        attr_accessor :reason_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @reason = args[:reason] if args.key?(:reason)
          @reason_text = args[:reason_text] if args.key?(:reason_text)
        end
      end
      
      # 
      class OrdersCancelResponse
        include Google::Apis::Core::Hashable
      
        # The status of the execution.
        # Corresponds to the JSON property `executionStatus`
        # @return [String]
        attr_accessor :execution_status
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersCancelResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_status = args[:execution_status] if args.key?(:execution_status)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class OrdersCancelTestOrderByCustomerRequest
        include Google::Apis::Core::Hashable
      
        # The reason for the cancellation.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # 
      class OrdersCancelTestOrderByCustomerResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersCancelTestOrderByCustomerResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class OrdersCreateTestOrderRequest
        include Google::Apis::Core::Hashable
      
        # The  CLDR territory code of the country of the test order to create. Affects
        # the currency and addresses of orders created via template_name, or the
        # addresses of orders created via test_order.
        # Acceptable values are:
        # - "US"
        # - "FR"  Defaults to US.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # The test order template to use. Specify as an alternative to testOrder as a
        # shortcut for retrieving a template and then creating an order using that
        # template.
        # Corresponds to the JSON property `templateName`
        # @return [String]
        attr_accessor :template_name
      
        # The test order to create.
        # Corresponds to the JSON property `testOrder`
        # @return [Google::Apis::ContentV2sandbox::TestOrder]
        attr_accessor :test_order
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country = args[:country] if args.key?(:country)
          @template_name = args[:template_name] if args.key?(:template_name)
          @test_order = args[:test_order] if args.key?(:test_order)
        end
      end
      
      # 
      class OrdersCreateTestOrderResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersCreateTestOrderResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The ID of the newly created test order.
        # Corresponds to the JSON property `orderId`
        # @return [String]
        attr_accessor :order_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @order_id = args[:order_id] if args.key?(:order_id)
        end
      end
      
      # 
      class OrdersCustomBatchRequest
        include Google::Apis::Core::Hashable
      
        # The request entries to be processed in the batch.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # 
      class OrdersCustomBatchRequestEntry
        include Google::Apis::Core::Hashable
      
        # An entry ID, unique within the batch request.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # Required for cancel method.
        # Corresponds to the JSON property `cancel`
        # @return [Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntryCancel]
        attr_accessor :cancel
      
        # Required for cancelLineItem method.
        # Corresponds to the JSON property `cancelLineItem`
        # @return [Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntryCancelLineItem]
        attr_accessor :cancel_line_item
      
        # Required for inStoreReturnLineItem method.
        # Corresponds to the JSON property `inStoreRefundLineItem`
        # @return [Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntryInStoreRefundLineItem]
        attr_accessor :in_store_refund_line_item
      
        # The ID of the managing account.
        # Corresponds to the JSON property `merchantId`
        # @return [Fixnum]
        attr_accessor :merchant_id
      
        # The merchant order id. Required for updateMerchantOrderId and
        # getByMerchantOrderId methods.
        # Corresponds to the JSON property `merchantOrderId`
        # @return [String]
        attr_accessor :merchant_order_id
      
        # The method to apply.
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # The ID of the operation. Unique across all operations for a given order.
        # Required for all methods beside get and getByMerchantOrderId.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # The ID of the order. Required for all methods beside getByMerchantOrderId.
        # Corresponds to the JSON property `orderId`
        # @return [String]
        attr_accessor :order_id
      
        # Required for refund method.
        # Corresponds to the JSON property `refund`
        # @return [Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntryRefund]
        attr_accessor :refund
      
        # Required for rejectReturnLineItem method.
        # Corresponds to the JSON property `rejectReturnLineItem`
        # @return [Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntryRejectReturnLineItem]
        attr_accessor :reject_return_line_item
      
        # Required for returnLineItem method.
        # Corresponds to the JSON property `returnLineItem`
        # @return [Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntryReturnLineItem]
        attr_accessor :return_line_item
      
        # Required for returnRefundLineItem method.
        # Corresponds to the JSON property `returnRefundLineItem`
        # @return [Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntryReturnRefundLineItem]
        attr_accessor :return_refund_line_item
      
        # Required for setLineItemMetadata method.
        # Corresponds to the JSON property `setLineItemMetadata`
        # @return [Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntrySetLineItemMetadata]
        attr_accessor :set_line_item_metadata
      
        # Required for shipLineItems method.
        # Corresponds to the JSON property `shipLineItems`
        # @return [Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntryShipLineItems]
        attr_accessor :ship_line_items
      
        # Required for updateLineItemShippingDate method.
        # Corresponds to the JSON property `updateLineItemShippingDetails`
        # @return [Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntryUpdateLineItemShippingDetails]
        attr_accessor :update_line_item_shipping_details
      
        # Required for updateShipment method.
        # Corresponds to the JSON property `updateShipment`
        # @return [Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntryUpdateShipment]
        attr_accessor :update_shipment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @cancel = args[:cancel] if args.key?(:cancel)
          @cancel_line_item = args[:cancel_line_item] if args.key?(:cancel_line_item)
          @in_store_refund_line_item = args[:in_store_refund_line_item] if args.key?(:in_store_refund_line_item)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @merchant_order_id = args[:merchant_order_id] if args.key?(:merchant_order_id)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @order_id = args[:order_id] if args.key?(:order_id)
          @refund = args[:refund] if args.key?(:refund)
          @reject_return_line_item = args[:reject_return_line_item] if args.key?(:reject_return_line_item)
          @return_line_item = args[:return_line_item] if args.key?(:return_line_item)
          @return_refund_line_item = args[:return_refund_line_item] if args.key?(:return_refund_line_item)
          @set_line_item_metadata = args[:set_line_item_metadata] if args.key?(:set_line_item_metadata)
          @ship_line_items = args[:ship_line_items] if args.key?(:ship_line_items)
          @update_line_item_shipping_details = args[:update_line_item_shipping_details] if args.key?(:update_line_item_shipping_details)
          @update_shipment = args[:update_shipment] if args.key?(:update_shipment)
        end
      end
      
      # 
      class OrdersCustomBatchRequestEntryCancel
        include Google::Apis::Core::Hashable
      
        # The reason for the cancellation.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # The explanation of the reason.
        # Corresponds to the JSON property `reasonText`
        # @return [String]
        attr_accessor :reason_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reason = args[:reason] if args.key?(:reason)
          @reason_text = args[:reason_text] if args.key?(:reason_text)
        end
      end
      
      # 
      class OrdersCustomBatchRequestEntryCancelLineItem
        include Google::Apis::Core::Hashable
      
        # Deprecated. Please use amountPretax and amountTax instead.
        # Corresponds to the JSON property `amount`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :amount
      
        # Amount to refund for the cancelation. Optional. If not set, Google will
        # calculate the default based on the price and tax of the items involved. The
        # amount must not be larger than the net amount left on the order.
        # Corresponds to the JSON property `amountPretax`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :amount_pretax
      
        # Tax amount that correspond to cancellation amount in amountPretax.
        # Corresponds to the JSON property `amountTax`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :amount_tax
      
        # The ID of the line item to cancel. Either lineItemId or productId is required.
        # Corresponds to the JSON property `lineItemId`
        # @return [String]
        attr_accessor :line_item_id
      
        # The ID of the product to cancel. This is the REST ID used in the products
        # service. Either lineItemId or productId is required.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # The quantity to cancel.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # The reason for the cancellation.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # The explanation of the reason.
        # Corresponds to the JSON property `reasonText`
        # @return [String]
        attr_accessor :reason_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amount = args[:amount] if args.key?(:amount)
          @amount_pretax = args[:amount_pretax] if args.key?(:amount_pretax)
          @amount_tax = args[:amount_tax] if args.key?(:amount_tax)
          @line_item_id = args[:line_item_id] if args.key?(:line_item_id)
          @product_id = args[:product_id] if args.key?(:product_id)
          @quantity = args[:quantity] if args.key?(:quantity)
          @reason = args[:reason] if args.key?(:reason)
          @reason_text = args[:reason_text] if args.key?(:reason_text)
        end
      end
      
      # 
      class OrdersCustomBatchRequestEntryInStoreRefundLineItem
        include Google::Apis::Core::Hashable
      
        # The amount that is refunded. Required.
        # Corresponds to the JSON property `amountPretax`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :amount_pretax
      
        # Tax amount that correspond to refund amount in amountPretax. Required.
        # Corresponds to the JSON property `amountTax`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :amount_tax
      
        # The ID of the line item to return. Either lineItemId or productId is required.
        # Corresponds to the JSON property `lineItemId`
        # @return [String]
        attr_accessor :line_item_id
      
        # The ID of the product to return. This is the REST ID used in the products
        # service. Either lineItemId or productId is required.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # The quantity to return and refund.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # The reason for the return.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # The explanation of the reason.
        # Corresponds to the JSON property `reasonText`
        # @return [String]
        attr_accessor :reason_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amount_pretax = args[:amount_pretax] if args.key?(:amount_pretax)
          @amount_tax = args[:amount_tax] if args.key?(:amount_tax)
          @line_item_id = args[:line_item_id] if args.key?(:line_item_id)
          @product_id = args[:product_id] if args.key?(:product_id)
          @quantity = args[:quantity] if args.key?(:quantity)
          @reason = args[:reason] if args.key?(:reason)
          @reason_text = args[:reason_text] if args.key?(:reason_text)
        end
      end
      
      # 
      class OrdersCustomBatchRequestEntryRefund
        include Google::Apis::Core::Hashable
      
        # Deprecated. Please use amountPretax and amountTax instead.
        # Corresponds to the JSON property `amount`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :amount
      
        # The amount that is refunded. Either amount or amountPretax and amountTax
        # should be filled.
        # Corresponds to the JSON property `amountPretax`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :amount_pretax
      
        # Tax amount that correspond to refund amount in amountPretax.
        # Corresponds to the JSON property `amountTax`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :amount_tax
      
        # The reason for the refund.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # The explanation of the reason.
        # Corresponds to the JSON property `reasonText`
        # @return [String]
        attr_accessor :reason_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amount = args[:amount] if args.key?(:amount)
          @amount_pretax = args[:amount_pretax] if args.key?(:amount_pretax)
          @amount_tax = args[:amount_tax] if args.key?(:amount_tax)
          @reason = args[:reason] if args.key?(:reason)
          @reason_text = args[:reason_text] if args.key?(:reason_text)
        end
      end
      
      # 
      class OrdersCustomBatchRequestEntryRejectReturnLineItem
        include Google::Apis::Core::Hashable
      
        # The ID of the line item to return. Either lineItemId or productId is required.
        # Corresponds to the JSON property `lineItemId`
        # @return [String]
        attr_accessor :line_item_id
      
        # The ID of the product to return. This is the REST ID used in the products
        # service. Either lineItemId or productId is required.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # The quantity to return and refund.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # The reason for the return.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # The explanation of the reason.
        # Corresponds to the JSON property `reasonText`
        # @return [String]
        attr_accessor :reason_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @line_item_id = args[:line_item_id] if args.key?(:line_item_id)
          @product_id = args[:product_id] if args.key?(:product_id)
          @quantity = args[:quantity] if args.key?(:quantity)
          @reason = args[:reason] if args.key?(:reason)
          @reason_text = args[:reason_text] if args.key?(:reason_text)
        end
      end
      
      # 
      class OrdersCustomBatchRequestEntryReturnLineItem
        include Google::Apis::Core::Hashable
      
        # The ID of the line item to return. Either lineItemId or productId is required.
        # Corresponds to the JSON property `lineItemId`
        # @return [String]
        attr_accessor :line_item_id
      
        # The ID of the product to return. This is the REST ID used in the products
        # service. Either lineItemId or productId is required.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # The quantity to return.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # The reason for the return.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # The explanation of the reason.
        # Corresponds to the JSON property `reasonText`
        # @return [String]
        attr_accessor :reason_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @line_item_id = args[:line_item_id] if args.key?(:line_item_id)
          @product_id = args[:product_id] if args.key?(:product_id)
          @quantity = args[:quantity] if args.key?(:quantity)
          @reason = args[:reason] if args.key?(:reason)
          @reason_text = args[:reason_text] if args.key?(:reason_text)
        end
      end
      
      # 
      class OrdersCustomBatchRequestEntryReturnRefundLineItem
        include Google::Apis::Core::Hashable
      
        # The amount that is refunded. If omitted, refundless return is assumed (same as
        # calling returnLineItem method). Optional, but if filled then both amountPretax
        # and amountTax must be set.
        # Corresponds to the JSON property `amountPretax`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :amount_pretax
      
        # Tax amount that correspond to refund amount in amountPretax.
        # Corresponds to the JSON property `amountTax`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :amount_tax
      
        # The ID of the line item to return. Either lineItemId or productId is required.
        # Corresponds to the JSON property `lineItemId`
        # @return [String]
        attr_accessor :line_item_id
      
        # The ID of the product to return. This is the REST ID used in the products
        # service. Either lineItemId or productId is required.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # The quantity to return and refund.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # The reason for the return.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # The explanation of the reason.
        # Corresponds to the JSON property `reasonText`
        # @return [String]
        attr_accessor :reason_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amount_pretax = args[:amount_pretax] if args.key?(:amount_pretax)
          @amount_tax = args[:amount_tax] if args.key?(:amount_tax)
          @line_item_id = args[:line_item_id] if args.key?(:line_item_id)
          @product_id = args[:product_id] if args.key?(:product_id)
          @quantity = args[:quantity] if args.key?(:quantity)
          @reason = args[:reason] if args.key?(:reason)
          @reason_text = args[:reason_text] if args.key?(:reason_text)
        end
      end
      
      # 
      class OrdersCustomBatchRequestEntrySetLineItemMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `annotations`
        # @return [Array<Google::Apis::ContentV2sandbox::OrderMerchantProvidedAnnotation>]
        attr_accessor :annotations
      
        # The ID of the line item to set metadata. Either lineItemId or productId is
        # required.
        # Corresponds to the JSON property `lineItemId`
        # @return [String]
        attr_accessor :line_item_id
      
        # The ID of the product to set metadata. This is the REST ID used in the
        # products service. Either lineItemId or productId is required.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @line_item_id = args[:line_item_id] if args.key?(:line_item_id)
          @product_id = args[:product_id] if args.key?(:product_id)
        end
      end
      
      # 
      class OrdersCustomBatchRequestEntryShipLineItems
        include Google::Apis::Core::Hashable
      
        # Deprecated. Please use shipmentInfo instead. The carrier handling the shipment.
        # See shipments[].carrier in the  Orders resource representation for a list of
        # acceptable values.
        # Corresponds to the JSON property `carrier`
        # @return [String]
        attr_accessor :carrier
      
        # Line items to ship.
        # Corresponds to the JSON property `lineItems`
        # @return [Array<Google::Apis::ContentV2sandbox::OrderShipmentLineItemShipment>]
        attr_accessor :line_items
      
        # ID of the shipment group. Required for orders that use the orderinvoices
        # service.
        # Corresponds to the JSON property `shipmentGroupId`
        # @return [String]
        attr_accessor :shipment_group_id
      
        # Deprecated. Please use shipmentInfo instead. The ID of the shipment.
        # Corresponds to the JSON property `shipmentId`
        # @return [String]
        attr_accessor :shipment_id
      
        # Shipment information. This field is repeated because a single line item can be
        # shipped in several packages (and have several tracking IDs).
        # Corresponds to the JSON property `shipmentInfos`
        # @return [Array<Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo>]
        attr_accessor :shipment_infos
      
        # Deprecated. Please use shipmentInfo instead. The tracking id for the shipment.
        # Corresponds to the JSON property `trackingId`
        # @return [String]
        attr_accessor :tracking_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @carrier = args[:carrier] if args.key?(:carrier)
          @line_items = args[:line_items] if args.key?(:line_items)
          @shipment_group_id = args[:shipment_group_id] if args.key?(:shipment_group_id)
          @shipment_id = args[:shipment_id] if args.key?(:shipment_id)
          @shipment_infos = args[:shipment_infos] if args.key?(:shipment_infos)
          @tracking_id = args[:tracking_id] if args.key?(:tracking_id)
        end
      end
      
      # 
      class OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo
        include Google::Apis::Core::Hashable
      
        # The carrier handling the shipment. See shipments[].carrier in the  Orders
        # resource representation for a list of acceptable values.
        # Corresponds to the JSON property `carrier`
        # @return [String]
        attr_accessor :carrier
      
        # The ID of the shipment.
        # Corresponds to the JSON property `shipmentId`
        # @return [String]
        attr_accessor :shipment_id
      
        # The tracking id for the shipment.
        # Corresponds to the JSON property `trackingId`
        # @return [String]
        attr_accessor :tracking_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @carrier = args[:carrier] if args.key?(:carrier)
          @shipment_id = args[:shipment_id] if args.key?(:shipment_id)
          @tracking_id = args[:tracking_id] if args.key?(:tracking_id)
        end
      end
      
      # 
      class OrdersCustomBatchRequestEntryUpdateLineItemShippingDetails
        include Google::Apis::Core::Hashable
      
        # Updated delivery by date, in ISO 8601 format. If not specified only ship by
        # date is updated.
        # Corresponds to the JSON property `deliverByDate`
        # @return [String]
        attr_accessor :deliver_by_date
      
        # The ID of the line item to set metadata. Either lineItemId or productId is
        # required.
        # Corresponds to the JSON property `lineItemId`
        # @return [String]
        attr_accessor :line_item_id
      
        # The ID of the product to set metadata. This is the REST ID used in the
        # products service. Either lineItemId or productId is required.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # Updated ship by date, in ISO 8601 format. If not specified only deliver by
        # date is updated.
        # Corresponds to the JSON property `shipByDate`
        # @return [String]
        attr_accessor :ship_by_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deliver_by_date = args[:deliver_by_date] if args.key?(:deliver_by_date)
          @line_item_id = args[:line_item_id] if args.key?(:line_item_id)
          @product_id = args[:product_id] if args.key?(:product_id)
          @ship_by_date = args[:ship_by_date] if args.key?(:ship_by_date)
        end
      end
      
      # 
      class OrdersCustomBatchRequestEntryUpdateShipment
        include Google::Apis::Core::Hashable
      
        # The carrier handling the shipment. Not updated if missing. See shipments[].
        # carrier in the  Orders resource representation for a list of acceptable values.
        # Corresponds to the JSON property `carrier`
        # @return [String]
        attr_accessor :carrier
      
        # Date on which the shipment has been delivered, in ISO 8601 format. Optional
        # and can be provided only if status is delivered.
        # Corresponds to the JSON property `deliveryDate`
        # @return [String]
        attr_accessor :delivery_date
      
        # The ID of the shipment.
        # Corresponds to the JSON property `shipmentId`
        # @return [String]
        attr_accessor :shipment_id
      
        # New status for the shipment. Not updated if missing.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The tracking id for the shipment. Not updated if missing.
        # Corresponds to the JSON property `trackingId`
        # @return [String]
        attr_accessor :tracking_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @carrier = args[:carrier] if args.key?(:carrier)
          @delivery_date = args[:delivery_date] if args.key?(:delivery_date)
          @shipment_id = args[:shipment_id] if args.key?(:shipment_id)
          @status = args[:status] if args.key?(:status)
          @tracking_id = args[:tracking_id] if args.key?(:tracking_id)
        end
      end
      
      # 
      class OrdersCustomBatchResponse
        include Google::Apis::Core::Hashable
      
        # The result of the execution of the batch requests.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2sandbox::OrdersCustomBatchResponseEntry>]
        attr_accessor :entries
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersCustomBatchResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class OrdersCustomBatchResponseEntry
        include Google::Apis::Core::Hashable
      
        # The ID of the request entry this entry responds to.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # A list of errors returned by a failed batch entry.
        # Corresponds to the JSON property `errors`
        # @return [Google::Apis::ContentV2sandbox::Errors]
        attr_accessor :errors
      
        # The status of the execution. Only defined if
        # - the request was successful; and
        # - the method is not get, getByMerchantOrderId, or one of the test methods.
        # Corresponds to the JSON property `executionStatus`
        # @return [String]
        attr_accessor :execution_status
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersCustomBatchResponseEntry".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The retrieved order. Only defined if the method is get and if the request was
        # successful.
        # Corresponds to the JSON property `order`
        # @return [Google::Apis::ContentV2sandbox::Order]
        attr_accessor :order
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @errors = args[:errors] if args.key?(:errors)
          @execution_status = args[:execution_status] if args.key?(:execution_status)
          @kind = args[:kind] if args.key?(:kind)
          @order = args[:order] if args.key?(:order)
        end
      end
      
      # 
      class OrdersGetByMerchantOrderIdResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersGetByMerchantOrderIdResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The requested order.
        # Corresponds to the JSON property `order`
        # @return [Google::Apis::ContentV2sandbox::Order]
        attr_accessor :order
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @order = args[:order] if args.key?(:order)
        end
      end
      
      # 
      class OrdersGetTestOrderTemplateResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersGetTestOrderTemplateResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The requested test order template.
        # Corresponds to the JSON property `template`
        # @return [Google::Apis::ContentV2sandbox::TestOrder]
        attr_accessor :template
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @template = args[:template] if args.key?(:template)
        end
      end
      
      # 
      class OrdersInStoreRefundLineItemRequest
        include Google::Apis::Core::Hashable
      
        # The amount that is refunded. Required.
        # Corresponds to the JSON property `amountPretax`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :amount_pretax
      
        # Tax amount that correspond to refund amount in amountPretax. Required.
        # Corresponds to the JSON property `amountTax`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :amount_tax
      
        # The ID of the line item to return. Either lineItemId or productId is required.
        # Corresponds to the JSON property `lineItemId`
        # @return [String]
        attr_accessor :line_item_id
      
        # The ID of the operation. Unique across all operations for a given order.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # The ID of the product to return. This is the REST ID used in the products
        # service. Either lineItemId or productId is required.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # The quantity to return and refund.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # The reason for the return.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # The explanation of the reason.
        # Corresponds to the JSON property `reasonText`
        # @return [String]
        attr_accessor :reason_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amount_pretax = args[:amount_pretax] if args.key?(:amount_pretax)
          @amount_tax = args[:amount_tax] if args.key?(:amount_tax)
          @line_item_id = args[:line_item_id] if args.key?(:line_item_id)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @product_id = args[:product_id] if args.key?(:product_id)
          @quantity = args[:quantity] if args.key?(:quantity)
          @reason = args[:reason] if args.key?(:reason)
          @reason_text = args[:reason_text] if args.key?(:reason_text)
        end
      end
      
      # 
      class OrdersInStoreRefundLineItemResponse
        include Google::Apis::Core::Hashable
      
        # The status of the execution.
        # Corresponds to the JSON property `executionStatus`
        # @return [String]
        attr_accessor :execution_status
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersInStoreRefundLineItemResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_status = args[:execution_status] if args.key?(:execution_status)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class OrdersListResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token for the retrieval of the next page of orders.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ContentV2sandbox::Order>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # 
      class OrdersRefundRequest
        include Google::Apis::Core::Hashable
      
        # Deprecated. Please use amountPretax and amountTax instead.
        # Corresponds to the JSON property `amount`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :amount
      
        # The amount that is refunded. Either amount or amountPretax and amountTax
        # should be filled.
        # Corresponds to the JSON property `amountPretax`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :amount_pretax
      
        # Tax amount that correspond to refund amount in amountPretax.
        # Corresponds to the JSON property `amountTax`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :amount_tax
      
        # The ID of the operation. Unique across all operations for a given order.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # The reason for the refund.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # The explanation of the reason.
        # Corresponds to the JSON property `reasonText`
        # @return [String]
        attr_accessor :reason_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amount = args[:amount] if args.key?(:amount)
          @amount_pretax = args[:amount_pretax] if args.key?(:amount_pretax)
          @amount_tax = args[:amount_tax] if args.key?(:amount_tax)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @reason = args[:reason] if args.key?(:reason)
          @reason_text = args[:reason_text] if args.key?(:reason_text)
        end
      end
      
      # 
      class OrdersRefundResponse
        include Google::Apis::Core::Hashable
      
        # The status of the execution.
        # Corresponds to the JSON property `executionStatus`
        # @return [String]
        attr_accessor :execution_status
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersRefundResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_status = args[:execution_status] if args.key?(:execution_status)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class OrdersRejectReturnLineItemRequest
        include Google::Apis::Core::Hashable
      
        # The ID of the line item to return. Either lineItemId or productId is required.
        # Corresponds to the JSON property `lineItemId`
        # @return [String]
        attr_accessor :line_item_id
      
        # The ID of the operation. Unique across all operations for a given order.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # The ID of the product to return. This is the REST ID used in the products
        # service. Either lineItemId or productId is required.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # The quantity to return and refund.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # The reason for the return.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # The explanation of the reason.
        # Corresponds to the JSON property `reasonText`
        # @return [String]
        attr_accessor :reason_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @line_item_id = args[:line_item_id] if args.key?(:line_item_id)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @product_id = args[:product_id] if args.key?(:product_id)
          @quantity = args[:quantity] if args.key?(:quantity)
          @reason = args[:reason] if args.key?(:reason)
          @reason_text = args[:reason_text] if args.key?(:reason_text)
        end
      end
      
      # 
      class OrdersRejectReturnLineItemResponse
        include Google::Apis::Core::Hashable
      
        # The status of the execution.
        # Corresponds to the JSON property `executionStatus`
        # @return [String]
        attr_accessor :execution_status
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersRejectReturnLineItemResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_status = args[:execution_status] if args.key?(:execution_status)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class OrdersReturnLineItemRequest
        include Google::Apis::Core::Hashable
      
        # The ID of the line item to return. Either lineItemId or productId is required.
        # Corresponds to the JSON property `lineItemId`
        # @return [String]
        attr_accessor :line_item_id
      
        # The ID of the operation. Unique across all operations for a given order.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # The ID of the product to return. This is the REST ID used in the products
        # service. Either lineItemId or productId is required.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # The quantity to return.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # The reason for the return.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # The explanation of the reason.
        # Corresponds to the JSON property `reasonText`
        # @return [String]
        attr_accessor :reason_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @line_item_id = args[:line_item_id] if args.key?(:line_item_id)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @product_id = args[:product_id] if args.key?(:product_id)
          @quantity = args[:quantity] if args.key?(:quantity)
          @reason = args[:reason] if args.key?(:reason)
          @reason_text = args[:reason_text] if args.key?(:reason_text)
        end
      end
      
      # 
      class OrdersReturnLineItemResponse
        include Google::Apis::Core::Hashable
      
        # The status of the execution.
        # Corresponds to the JSON property `executionStatus`
        # @return [String]
        attr_accessor :execution_status
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersReturnLineItemResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_status = args[:execution_status] if args.key?(:execution_status)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class OrdersReturnRefundLineItemRequest
        include Google::Apis::Core::Hashable
      
        # The amount that is refunded. If omitted, refundless return is assumed (same as
        # calling returnLineItem method). Optional, but if filled then both amountPretax
        # and amountTax must be set.
        # Corresponds to the JSON property `amountPretax`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :amount_pretax
      
        # Tax amount that correspond to refund amount in amountPretax.
        # Corresponds to the JSON property `amountTax`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :amount_tax
      
        # The ID of the line item to return. Either lineItemId or productId is required.
        # Corresponds to the JSON property `lineItemId`
        # @return [String]
        attr_accessor :line_item_id
      
        # The ID of the operation. Unique across all operations for a given order.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # The ID of the product to return. This is the REST ID used in the products
        # service. Either lineItemId or productId is required.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # The quantity to return and refund.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # The reason for the return.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # The explanation of the reason.
        # Corresponds to the JSON property `reasonText`
        # @return [String]
        attr_accessor :reason_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amount_pretax = args[:amount_pretax] if args.key?(:amount_pretax)
          @amount_tax = args[:amount_tax] if args.key?(:amount_tax)
          @line_item_id = args[:line_item_id] if args.key?(:line_item_id)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @product_id = args[:product_id] if args.key?(:product_id)
          @quantity = args[:quantity] if args.key?(:quantity)
          @reason = args[:reason] if args.key?(:reason)
          @reason_text = args[:reason_text] if args.key?(:reason_text)
        end
      end
      
      # 
      class OrdersReturnRefundLineItemResponse
        include Google::Apis::Core::Hashable
      
        # The status of the execution.
        # Corresponds to the JSON property `executionStatus`
        # @return [String]
        attr_accessor :execution_status
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersReturnRefundLineItemResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_status = args[:execution_status] if args.key?(:execution_status)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class OrdersSetLineItemMetadataRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `annotations`
        # @return [Array<Google::Apis::ContentV2sandbox::OrderMerchantProvidedAnnotation>]
        attr_accessor :annotations
      
        # The ID of the line item to set metadata. Either lineItemId or productId is
        # required.
        # Corresponds to the JSON property `lineItemId`
        # @return [String]
        attr_accessor :line_item_id
      
        # The ID of the operation. Unique across all operations for a given order.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # The ID of the product to set metadata. This is the REST ID used in the
        # products service. Either lineItemId or productId is required.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @line_item_id = args[:line_item_id] if args.key?(:line_item_id)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @product_id = args[:product_id] if args.key?(:product_id)
        end
      end
      
      # 
      class OrdersSetLineItemMetadataResponse
        include Google::Apis::Core::Hashable
      
        # The status of the execution.
        # Corresponds to the JSON property `executionStatus`
        # @return [String]
        attr_accessor :execution_status
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersSetLineItemMetadataResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_status = args[:execution_status] if args.key?(:execution_status)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class OrdersShipLineItemsRequest
        include Google::Apis::Core::Hashable
      
        # Deprecated. Please use shipmentInfo instead. The carrier handling the shipment.
        # See shipments[].carrier in the  Orders resource representation for a list of
        # acceptable values.
        # Corresponds to the JSON property `carrier`
        # @return [String]
        attr_accessor :carrier
      
        # Line items to ship.
        # Corresponds to the JSON property `lineItems`
        # @return [Array<Google::Apis::ContentV2sandbox::OrderShipmentLineItemShipment>]
        attr_accessor :line_items
      
        # The ID of the operation. Unique across all operations for a given order.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # ID of the shipment group. Required for orders that use the orderinvoices
        # service.
        # Corresponds to the JSON property `shipmentGroupId`
        # @return [String]
        attr_accessor :shipment_group_id
      
        # Deprecated. Please use shipmentInfo instead. The ID of the shipment.
        # Corresponds to the JSON property `shipmentId`
        # @return [String]
        attr_accessor :shipment_id
      
        # Shipment information. This field is repeated because a single line item can be
        # shipped in several packages (and have several tracking IDs).
        # Corresponds to the JSON property `shipmentInfos`
        # @return [Array<Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo>]
        attr_accessor :shipment_infos
      
        # Deprecated. Please use shipmentInfo instead. The tracking id for the shipment.
        # Corresponds to the JSON property `trackingId`
        # @return [String]
        attr_accessor :tracking_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @carrier = args[:carrier] if args.key?(:carrier)
          @line_items = args[:line_items] if args.key?(:line_items)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @shipment_group_id = args[:shipment_group_id] if args.key?(:shipment_group_id)
          @shipment_id = args[:shipment_id] if args.key?(:shipment_id)
          @shipment_infos = args[:shipment_infos] if args.key?(:shipment_infos)
          @tracking_id = args[:tracking_id] if args.key?(:tracking_id)
        end
      end
      
      # 
      class OrdersShipLineItemsResponse
        include Google::Apis::Core::Hashable
      
        # The status of the execution.
        # Corresponds to the JSON property `executionStatus`
        # @return [String]
        attr_accessor :execution_status
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersShipLineItemsResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_status = args[:execution_status] if args.key?(:execution_status)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class OrdersUpdateLineItemShippingDetailsRequest
        include Google::Apis::Core::Hashable
      
        # Updated delivery by date, in ISO 8601 format. If not specified only ship by
        # date is updated.
        # Corresponds to the JSON property `deliverByDate`
        # @return [String]
        attr_accessor :deliver_by_date
      
        # The ID of the line item to set metadata. Either lineItemId or productId is
        # required.
        # Corresponds to the JSON property `lineItemId`
        # @return [String]
        attr_accessor :line_item_id
      
        # The ID of the operation. Unique across all operations for a given order.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # The ID of the product to set metadata. This is the REST ID used in the
        # products service. Either lineItemId or productId is required.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # Updated ship by date, in ISO 8601 format. If not specified only deliver by
        # date is updated.
        # Corresponds to the JSON property `shipByDate`
        # @return [String]
        attr_accessor :ship_by_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deliver_by_date = args[:deliver_by_date] if args.key?(:deliver_by_date)
          @line_item_id = args[:line_item_id] if args.key?(:line_item_id)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @product_id = args[:product_id] if args.key?(:product_id)
          @ship_by_date = args[:ship_by_date] if args.key?(:ship_by_date)
        end
      end
      
      # 
      class OrdersUpdateLineItemShippingDetailsResponse
        include Google::Apis::Core::Hashable
      
        # The status of the execution.
        # Corresponds to the JSON property `executionStatus`
        # @return [String]
        attr_accessor :execution_status
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersUpdateLineItemShippingDetailsResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_status = args[:execution_status] if args.key?(:execution_status)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class OrdersUpdateMerchantOrderIdRequest
        include Google::Apis::Core::Hashable
      
        # The merchant order id to be assigned to the order. Must be unique per merchant.
        # Corresponds to the JSON property `merchantOrderId`
        # @return [String]
        attr_accessor :merchant_order_id
      
        # The ID of the operation. Unique across all operations for a given order.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @merchant_order_id = args[:merchant_order_id] if args.key?(:merchant_order_id)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
        end
      end
      
      # 
      class OrdersUpdateMerchantOrderIdResponse
        include Google::Apis::Core::Hashable
      
        # The status of the execution.
        # Corresponds to the JSON property `executionStatus`
        # @return [String]
        attr_accessor :execution_status
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersUpdateMerchantOrderIdResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_status = args[:execution_status] if args.key?(:execution_status)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class OrdersUpdateShipmentRequest
        include Google::Apis::Core::Hashable
      
        # The carrier handling the shipment. Not updated if missing. See shipments[].
        # carrier in the  Orders resource representation for a list of acceptable values.
        # Corresponds to the JSON property `carrier`
        # @return [String]
        attr_accessor :carrier
      
        # Date on which the shipment has been delivered, in ISO 8601 format. Optional
        # and can be provided only if status is delivered.
        # Corresponds to the JSON property `deliveryDate`
        # @return [String]
        attr_accessor :delivery_date
      
        # The ID of the operation. Unique across all operations for a given order.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # The ID of the shipment.
        # Corresponds to the JSON property `shipmentId`
        # @return [String]
        attr_accessor :shipment_id
      
        # New status for the shipment. Not updated if missing.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The tracking id for the shipment. Not updated if missing.
        # Corresponds to the JSON property `trackingId`
        # @return [String]
        attr_accessor :tracking_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @carrier = args[:carrier] if args.key?(:carrier)
          @delivery_date = args[:delivery_date] if args.key?(:delivery_date)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @shipment_id = args[:shipment_id] if args.key?(:shipment_id)
          @status = args[:status] if args.key?(:status)
          @tracking_id = args[:tracking_id] if args.key?(:tracking_id)
        end
      end
      
      # 
      class OrdersUpdateShipmentResponse
        include Google::Apis::Core::Hashable
      
        # The status of the execution.
        # Corresponds to the JSON property `executionStatus`
        # @return [String]
        attr_accessor :execution_status
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersUpdateShipmentResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_status = args[:execution_status] if args.key?(:execution_status)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class Price
        include Google::Apis::Core::Hashable
      
        # The currency of the price.
        # Corresponds to the JSON property `currency`
        # @return [String]
        attr_accessor :currency
      
        # The price represented as a number.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency = args[:currency] if args.key?(:currency)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class Promotion
        include Google::Apis::Core::Hashable
      
        # [required] Amount of the promotion. The values here are the promotion applied
        # to the unit price pretax and to the total of the tax amounts.
        # Corresponds to the JSON property `promotionAmount`
        # @return [Google::Apis::ContentV2sandbox::Amount]
        attr_accessor :promotion_amount
      
        # [required] ID of the promotion.
        # Corresponds to the JSON property `promotionId`
        # @return [String]
        attr_accessor :promotion_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @promotion_amount = args[:promotion_amount] if args.key?(:promotion_amount)
          @promotion_id = args[:promotion_id] if args.key?(:promotion_id)
        end
      end
      
      # 
      class ShipmentInvoice
        include Google::Apis::Core::Hashable
      
        # [required] Invoice summary.
        # Corresponds to the JSON property `invoiceSummary`
        # @return [Google::Apis::ContentV2sandbox::InvoiceSummary]
        attr_accessor :invoice_summary
      
        # [required] Invoice details per line item.
        # Corresponds to the JSON property `lineItemInvoices`
        # @return [Array<Google::Apis::ContentV2sandbox::ShipmentInvoiceLineItemInvoice>]
        attr_accessor :line_item_invoices
      
        # [required] ID of the shipment group.
        # Corresponds to the JSON property `shipmentGroupId`
        # @return [String]
        attr_accessor :shipment_group_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @invoice_summary = args[:invoice_summary] if args.key?(:invoice_summary)
          @line_item_invoices = args[:line_item_invoices] if args.key?(:line_item_invoices)
          @shipment_group_id = args[:shipment_group_id] if args.key?(:shipment_group_id)
        end
      end
      
      # 
      class ShipmentInvoiceLineItemInvoice
        include Google::Apis::Core::Hashable
      
        # ID of the line item. Either lineItemId or productId must be set.
        # Corresponds to the JSON property `lineItemId`
        # @return [String]
        attr_accessor :line_item_id
      
        # ID of the product. This is the REST ID used in the products service. Either
        # lineItemId or productId must be set.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # [required] Unit IDs to define specific units within the line item.
        # Corresponds to the JSON property `shipmentUnitIds`
        # @return [Array<String>]
        attr_accessor :shipment_unit_ids
      
        # [required] Invoice details for a single unit.
        # Corresponds to the JSON property `unitInvoice`
        # @return [Google::Apis::ContentV2sandbox::UnitInvoice]
        attr_accessor :unit_invoice
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @line_item_id = args[:line_item_id] if args.key?(:line_item_id)
          @product_id = args[:product_id] if args.key?(:product_id)
          @shipment_unit_ids = args[:shipment_unit_ids] if args.key?(:shipment_unit_ids)
          @unit_invoice = args[:unit_invoice] if args.key?(:unit_invoice)
        end
      end
      
      # 
      class TestOrder
        include Google::Apis::Core::Hashable
      
        # The details of the customer who placed the order.
        # Corresponds to the JSON property `customer`
        # @return [Google::Apis::ContentV2sandbox::TestOrderCustomer]
        attr_accessor :customer
      
        # Whether the orderinvoices service should support this order.
        # Corresponds to the JSON property `enableOrderinvoices`
        # @return [Boolean]
        attr_accessor :enable_orderinvoices
        alias_method :enable_orderinvoices?, :enable_orderinvoices
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # testOrder".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Line items that are ordered. At least one line item must be provided.
        # Corresponds to the JSON property `lineItems`
        # @return [Array<Google::Apis::ContentV2sandbox::TestOrderLineItem>]
        attr_accessor :line_items
      
        # Determines if test order must be pulled by merchant or pushed to merchant via
        # push integration.
        # Corresponds to the JSON property `notificationMode`
        # @return [String]
        attr_accessor :notification_mode
      
        # The details of the payment method.
        # Corresponds to the JSON property `paymentMethod`
        # @return [Google::Apis::ContentV2sandbox::TestOrderPaymentMethod]
        attr_accessor :payment_method
      
        # Identifier of one of the predefined delivery addresses for the delivery.
        # Corresponds to the JSON property `predefinedDeliveryAddress`
        # @return [String]
        attr_accessor :predefined_delivery_address
      
        # The details of the merchant provided promotions applied to the order. More
        # details about the program are here.
        # Corresponds to the JSON property `promotions`
        # @return [Array<Google::Apis::ContentV2sandbox::OrderPromotion>]
        attr_accessor :promotions
      
        # The total cost of shipping for all items.
        # Corresponds to the JSON property `shippingCost`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :shipping_cost
      
        # The tax for the total shipping cost.
        # Corresponds to the JSON property `shippingCostTax`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :shipping_cost_tax
      
        # The requested shipping option.
        # Corresponds to the JSON property `shippingOption`
        # @return [String]
        attr_accessor :shipping_option
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer = args[:customer] if args.key?(:customer)
          @enable_orderinvoices = args[:enable_orderinvoices] if args.key?(:enable_orderinvoices)
          @kind = args[:kind] if args.key?(:kind)
          @line_items = args[:line_items] if args.key?(:line_items)
          @notification_mode = args[:notification_mode] if args.key?(:notification_mode)
          @payment_method = args[:payment_method] if args.key?(:payment_method)
          @predefined_delivery_address = args[:predefined_delivery_address] if args.key?(:predefined_delivery_address)
          @promotions = args[:promotions] if args.key?(:promotions)
          @shipping_cost = args[:shipping_cost] if args.key?(:shipping_cost)
          @shipping_cost_tax = args[:shipping_cost_tax] if args.key?(:shipping_cost_tax)
          @shipping_option = args[:shipping_option] if args.key?(:shipping_option)
        end
      end
      
      # 
      class TestOrderCustomer
        include Google::Apis::Core::Hashable
      
        # Email address of the customer.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Deprecated. Please use marketingRightsInfo instead.
        # Corresponds to the JSON property `explicitMarketingPreference`
        # @return [Boolean]
        attr_accessor :explicit_marketing_preference
        alias_method :explicit_marketing_preference?, :explicit_marketing_preference
      
        # Full name of the customer.
        # Corresponds to the JSON property `fullName`
        # @return [String]
        attr_accessor :full_name
      
        # Customer's marketing preferences.
        # Corresponds to the JSON property `marketingRightsInfo`
        # @return [Google::Apis::ContentV2sandbox::TestOrderCustomerMarketingRightsInfo]
        attr_accessor :marketing_rights_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @explicit_marketing_preference = args[:explicit_marketing_preference] if args.key?(:explicit_marketing_preference)
          @full_name = args[:full_name] if args.key?(:full_name)
          @marketing_rights_info = args[:marketing_rights_info] if args.key?(:marketing_rights_info)
        end
      end
      
      # 
      class TestOrderCustomerMarketingRightsInfo
        include Google::Apis::Core::Hashable
      
        # Last know user use selection regards marketing preferences. In certain cases
        # selection might not be known, so this field would be empty.
        # Corresponds to the JSON property `explicitMarketingPreference`
        # @return [String]
        attr_accessor :explicit_marketing_preference
      
        # Timestamp when last time marketing preference was updated. Could be empty, if
        # user wasn't offered a selection yet.
        # Corresponds to the JSON property `lastUpdatedTimestamp`
        # @return [String]
        attr_accessor :last_updated_timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @explicit_marketing_preference = args[:explicit_marketing_preference] if args.key?(:explicit_marketing_preference)
          @last_updated_timestamp = args[:last_updated_timestamp] if args.key?(:last_updated_timestamp)
        end
      end
      
      # 
      class TestOrderLineItem
        include Google::Apis::Core::Hashable
      
        # Product data from the time of the order placement.
        # Corresponds to the JSON property `product`
        # @return [Google::Apis::ContentV2sandbox::TestOrderLineItemProduct]
        attr_accessor :product
      
        # Number of items ordered.
        # Corresponds to the JSON property `quantityOrdered`
        # @return [Fixnum]
        attr_accessor :quantity_ordered
      
        # Details of the return policy for the line item.
        # Corresponds to the JSON property `returnInfo`
        # @return [Google::Apis::ContentV2sandbox::OrderLineItemReturnInfo]
        attr_accessor :return_info
      
        # Details of the requested shipping for the line item.
        # Corresponds to the JSON property `shippingDetails`
        # @return [Google::Apis::ContentV2sandbox::OrderLineItemShippingDetails]
        attr_accessor :shipping_details
      
        # Unit tax for the line item.
        # Corresponds to the JSON property `unitTax`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :unit_tax
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @product = args[:product] if args.key?(:product)
          @quantity_ordered = args[:quantity_ordered] if args.key?(:quantity_ordered)
          @return_info = args[:return_info] if args.key?(:return_info)
          @shipping_details = args[:shipping_details] if args.key?(:shipping_details)
          @unit_tax = args[:unit_tax] if args.key?(:unit_tax)
        end
      end
      
      # 
      class TestOrderLineItemProduct
        include Google::Apis::Core::Hashable
      
        # Brand of the item.
        # Corresponds to the JSON property `brand`
        # @return [String]
        attr_accessor :brand
      
        # The item's channel.
        # Corresponds to the JSON property `channel`
        # @return [String]
        attr_accessor :channel
      
        # Condition or state of the item.
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        # The two-letter ISO 639-1 language code for the item.
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # Global Trade Item Number (GTIN) of the item. Optional.
        # Corresponds to the JSON property `gtin`
        # @return [String]
        attr_accessor :gtin
      
        # URL of an image of the item.
        # Corresponds to the JSON property `imageLink`
        # @return [String]
        attr_accessor :image_link
      
        # Shared identifier for all variants of the same product. Optional.
        # Corresponds to the JSON property `itemGroupId`
        # @return [String]
        attr_accessor :item_group_id
      
        # Manufacturer Part Number (MPN) of the item. Optional.
        # Corresponds to the JSON property `mpn`
        # @return [String]
        attr_accessor :mpn
      
        # An identifier of the item.
        # Corresponds to the JSON property `offerId`
        # @return [String]
        attr_accessor :offer_id
      
        # The price for the product.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :price
      
        # The CLDR territory code of the target country of the product.
        # Corresponds to the JSON property `targetCountry`
        # @return [String]
        attr_accessor :target_country
      
        # The title of the product.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Variant attributes for the item. Optional.
        # Corresponds to the JSON property `variantAttributes`
        # @return [Array<Google::Apis::ContentV2sandbox::OrderLineItemProductVariantAttribute>]
        attr_accessor :variant_attributes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @brand = args[:brand] if args.key?(:brand)
          @channel = args[:channel] if args.key?(:channel)
          @condition = args[:condition] if args.key?(:condition)
          @content_language = args[:content_language] if args.key?(:content_language)
          @gtin = args[:gtin] if args.key?(:gtin)
          @image_link = args[:image_link] if args.key?(:image_link)
          @item_group_id = args[:item_group_id] if args.key?(:item_group_id)
          @mpn = args[:mpn] if args.key?(:mpn)
          @offer_id = args[:offer_id] if args.key?(:offer_id)
          @price = args[:price] if args.key?(:price)
          @target_country = args[:target_country] if args.key?(:target_country)
          @title = args[:title] if args.key?(:title)
          @variant_attributes = args[:variant_attributes] if args.key?(:variant_attributes)
        end
      end
      
      # 
      class TestOrderPaymentMethod
        include Google::Apis::Core::Hashable
      
        # The card expiration month (January = 1, February = 2 etc.).
        # Corresponds to the JSON property `expirationMonth`
        # @return [Fixnum]
        attr_accessor :expiration_month
      
        # The card expiration year (4-digit, e.g. 2015).
        # Corresponds to the JSON property `expirationYear`
        # @return [Fixnum]
        attr_accessor :expiration_year
      
        # The last four digits of the card number.
        # Corresponds to the JSON property `lastFourDigits`
        # @return [String]
        attr_accessor :last_four_digits
      
        # The billing address.
        # Corresponds to the JSON property `predefinedBillingAddress`
        # @return [String]
        attr_accessor :predefined_billing_address
      
        # The type of instrument. Note that real orders might have different values than
        # the four values accepted by createTestOrder.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expiration_month = args[:expiration_month] if args.key?(:expiration_month)
          @expiration_year = args[:expiration_year] if args.key?(:expiration_year)
          @last_four_digits = args[:last_four_digits] if args.key?(:last_four_digits)
          @predefined_billing_address = args[:predefined_billing_address] if args.key?(:predefined_billing_address)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class UnitInvoice
        include Google::Apis::Core::Hashable
      
        # Additional charges for a unit, e.g. shipping costs.
        # Corresponds to the JSON property `additionalCharges`
        # @return [Array<Google::Apis::ContentV2sandbox::UnitInvoiceAdditionalCharge>]
        attr_accessor :additional_charges
      
        # Promotions applied to a unit.
        # Corresponds to the JSON property `promotions`
        # @return [Array<Google::Apis::ContentV2sandbox::Promotion>]
        attr_accessor :promotions
      
        # [required] Price of the unit, before applying taxes.
        # Corresponds to the JSON property `unitPricePretax`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :unit_price_pretax
      
        # Tax amounts to apply to the unit price.
        # Corresponds to the JSON property `unitPriceTaxes`
        # @return [Array<Google::Apis::ContentV2sandbox::UnitInvoiceTaxLine>]
        attr_accessor :unit_price_taxes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_charges = args[:additional_charges] if args.key?(:additional_charges)
          @promotions = args[:promotions] if args.key?(:promotions)
          @unit_price_pretax = args[:unit_price_pretax] if args.key?(:unit_price_pretax)
          @unit_price_taxes = args[:unit_price_taxes] if args.key?(:unit_price_taxes)
        end
      end
      
      # 
      class UnitInvoiceAdditionalCharge
        include Google::Apis::Core::Hashable
      
        # [required] Amount of the additional charge.
        # Corresponds to the JSON property `additionalChargeAmount`
        # @return [Google::Apis::ContentV2sandbox::Amount]
        attr_accessor :additional_charge_amount
      
        # Promotions applied to the additional charge.
        # Corresponds to the JSON property `additionalChargePromotions`
        # @return [Array<Google::Apis::ContentV2sandbox::Promotion>]
        attr_accessor :additional_charge_promotions
      
        # [required] Type of the additional charge.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_charge_amount = args[:additional_charge_amount] if args.key?(:additional_charge_amount)
          @additional_charge_promotions = args[:additional_charge_promotions] if args.key?(:additional_charge_promotions)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class UnitInvoiceTaxLine
        include Google::Apis::Core::Hashable
      
        # [required] Tax amount for the tax type.
        # Corresponds to the JSON property `taxAmount`
        # @return [Google::Apis::ContentV2sandbox::Price]
        attr_accessor :tax_amount
      
        # Optional name of the tax type. This should only be provided if taxType is
        # otherFeeTax.
        # Corresponds to the JSON property `taxName`
        # @return [String]
        attr_accessor :tax_name
      
        # [required] Type of the tax.
        # Corresponds to the JSON property `taxType`
        # @return [String]
        attr_accessor :tax_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tax_amount = args[:tax_amount] if args.key?(:tax_amount)
          @tax_name = args[:tax_name] if args.key?(:tax_name)
          @tax_type = args[:tax_type] if args.key?(:tax_type)
        end
      end
    end
  end
end
