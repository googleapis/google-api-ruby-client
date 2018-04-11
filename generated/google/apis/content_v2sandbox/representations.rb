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
      
      class Error
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Errors
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Order
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrderAddress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrderCancellation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrderCustomer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrderCustomerMarketingRightsInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrderDeliveryDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrderLineItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrderLineItemProduct
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrderLineItemProductVariantAttribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrderLineItemReturnInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrderLineItemShippingDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrderLineItemShippingDetailsMethod
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrderMerchantProvidedAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrderPaymentMethod
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrderPromotion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrderPromotionBenefit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrderRefund
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrderReturn
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrderShipment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrderShipmentLineItemShipment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersAcknowledgeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersAcknowledgeResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersAdvanceTestOrderResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersCancelLineItemRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersCancelLineItemResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersCancelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersCancelResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersCreateTestOrderRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersCreateTestOrderResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersCustomBatchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersCustomBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersCustomBatchRequestEntryCancel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersCustomBatchRequestEntryCancelLineItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersCustomBatchRequestEntryInStoreRefundLineItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersCustomBatchRequestEntryRefund
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersCustomBatchRequestEntryRejectReturnLineItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersCustomBatchRequestEntryReturnLineItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersCustomBatchRequestEntryReturnRefundLineItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersCustomBatchRequestEntrySetLineItemMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersCustomBatchRequestEntryShipLineItems
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersCustomBatchRequestEntryUpdateLineItemShippingDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersCustomBatchRequestEntryUpdateShipment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersCustomBatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersCustomBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersGetByMerchantOrderIdResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersGetTestOrderTemplateResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersInStoreRefundLineItemRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersInStoreRefundLineItemResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersRefundRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersRefundResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersRejectReturnLineItemRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersRejectReturnLineItemResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersReturnLineItemRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersReturnLineItemResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersReturnRefundLineItemRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersReturnRefundLineItemResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersSetLineItemMetadataRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersSetLineItemMetadataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersShipLineItemsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersShipLineItemsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersUpdateLineItemShippingDetailsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersUpdateLineItemShippingDetailsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersUpdateMerchantOrderIdRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersUpdateMerchantOrderIdResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersUpdateShipmentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrdersUpdateShipmentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Price
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestOrder
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestOrderCustomer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestOrderCustomerMarketingRightsInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestOrderLineItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestOrderLineItemProduct
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestOrderPaymentMethod
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Error
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain, as: 'domain'
          property :message, as: 'message'
          property :reason, as: 'reason'
        end
      end
      
      class Errors
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :errors, as: 'errors', class: Google::Apis::ContentV2sandbox::Error, decorator: Google::Apis::ContentV2sandbox::Error::Representation
      
          property :message, as: 'message'
        end
      end
      
      class Order
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acknowledged, as: 'acknowledged'
          property :channel_type, as: 'channelType'
          property :customer, as: 'customer', class: Google::Apis::ContentV2sandbox::OrderCustomer, decorator: Google::Apis::ContentV2sandbox::OrderCustomer::Representation
      
          property :delivery_details, as: 'deliveryDetails', class: Google::Apis::ContentV2sandbox::OrderDeliveryDetails, decorator: Google::Apis::ContentV2sandbox::OrderDeliveryDetails::Representation
      
          property :id, as: 'id'
          property :kind, as: 'kind'
          collection :line_items, as: 'lineItems', class: Google::Apis::ContentV2sandbox::OrderLineItem, decorator: Google::Apis::ContentV2sandbox::OrderLineItem::Representation
      
          property :merchant_id, :numeric_string => true, as: 'merchantId'
          property :merchant_order_id, as: 'merchantOrderId'
          property :net_amount, as: 'netAmount', class: Google::Apis::ContentV2sandbox::Price, decorator: Google::Apis::ContentV2sandbox::Price::Representation
      
          property :payment_method, as: 'paymentMethod', class: Google::Apis::ContentV2sandbox::OrderPaymentMethod, decorator: Google::Apis::ContentV2sandbox::OrderPaymentMethod::Representation
      
          property :payment_status, as: 'paymentStatus'
          property :placed_date, as: 'placedDate'
          collection :promotions, as: 'promotions', class: Google::Apis::ContentV2sandbox::OrderPromotion, decorator: Google::Apis::ContentV2sandbox::OrderPromotion::Representation
      
          collection :refunds, as: 'refunds', class: Google::Apis::ContentV2sandbox::OrderRefund, decorator: Google::Apis::ContentV2sandbox::OrderRefund::Representation
      
          collection :shipments, as: 'shipments', class: Google::Apis::ContentV2sandbox::OrderShipment, decorator: Google::Apis::ContentV2sandbox::OrderShipment::Representation
      
          property :shipping_cost, as: 'shippingCost', class: Google::Apis::ContentV2sandbox::Price, decorator: Google::Apis::ContentV2sandbox::Price::Representation
      
          property :shipping_cost_tax, as: 'shippingCostTax', class: Google::Apis::ContentV2sandbox::Price, decorator: Google::Apis::ContentV2sandbox::Price::Representation
      
          property :shipping_option, as: 'shippingOption'
          property :status, as: 'status'
        end
      end
      
      class OrderAddress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :country, as: 'country'
          collection :full_address, as: 'fullAddress'
          property :is_post_office_box, as: 'isPostOfficeBox'
          property :locality, as: 'locality'
          property :postal_code, as: 'postalCode'
          property :recipient_name, as: 'recipientName'
          property :region, as: 'region'
          collection :street_address, as: 'streetAddress'
        end
      end
      
      class OrderCancellation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :actor, as: 'actor'
          property :creation_date, as: 'creationDate'
          property :quantity, as: 'quantity'
          property :reason, as: 'reason'
          property :reason_text, as: 'reasonText'
        end
      end
      
      class OrderCustomer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :explicit_marketing_preference, as: 'explicitMarketingPreference'
          property :full_name, as: 'fullName'
          property :marketing_rights_info, as: 'marketingRightsInfo', class: Google::Apis::ContentV2sandbox::OrderCustomerMarketingRightsInfo, decorator: Google::Apis::ContentV2sandbox::OrderCustomerMarketingRightsInfo::Representation
      
        end
      end
      
      class OrderCustomerMarketingRightsInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :explicit_marketing_preference, as: 'explicitMarketingPreference'
          property :last_updated_timestamp, as: 'lastUpdatedTimestamp'
          property :marketing_email_address, as: 'marketingEmailAddress'
        end
      end
      
      class OrderDeliveryDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address', class: Google::Apis::ContentV2sandbox::OrderAddress, decorator: Google::Apis::ContentV2sandbox::OrderAddress::Representation
      
          property :phone_number, as: 'phoneNumber'
        end
      end
      
      class OrderLineItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotations, as: 'annotations', class: Google::Apis::ContentV2sandbox::OrderMerchantProvidedAnnotation, decorator: Google::Apis::ContentV2sandbox::OrderMerchantProvidedAnnotation::Representation
      
          collection :cancellations, as: 'cancellations', class: Google::Apis::ContentV2sandbox::OrderCancellation, decorator: Google::Apis::ContentV2sandbox::OrderCancellation::Representation
      
          property :id, as: 'id'
          property :price, as: 'price', class: Google::Apis::ContentV2sandbox::Price, decorator: Google::Apis::ContentV2sandbox::Price::Representation
      
          property :product, as: 'product', class: Google::Apis::ContentV2sandbox::OrderLineItemProduct, decorator: Google::Apis::ContentV2sandbox::OrderLineItemProduct::Representation
      
          property :quantity_canceled, as: 'quantityCanceled'
          property :quantity_delivered, as: 'quantityDelivered'
          property :quantity_ordered, as: 'quantityOrdered'
          property :quantity_pending, as: 'quantityPending'
          property :quantity_returned, as: 'quantityReturned'
          property :quantity_shipped, as: 'quantityShipped'
          property :return_info, as: 'returnInfo', class: Google::Apis::ContentV2sandbox::OrderLineItemReturnInfo, decorator: Google::Apis::ContentV2sandbox::OrderLineItemReturnInfo::Representation
      
          collection :returns, as: 'returns', class: Google::Apis::ContentV2sandbox::OrderReturn, decorator: Google::Apis::ContentV2sandbox::OrderReturn::Representation
      
          property :shipping_details, as: 'shippingDetails', class: Google::Apis::ContentV2sandbox::OrderLineItemShippingDetails, decorator: Google::Apis::ContentV2sandbox::OrderLineItemShippingDetails::Representation
      
          property :tax, as: 'tax', class: Google::Apis::ContentV2sandbox::Price, decorator: Google::Apis::ContentV2sandbox::Price::Representation
      
        end
      end
      
      class OrderLineItemProduct
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :brand, as: 'brand'
          property :channel, as: 'channel'
          property :condition, as: 'condition'
          property :content_language, as: 'contentLanguage'
          property :gtin, as: 'gtin'
          property :id, as: 'id'
          property :image_link, as: 'imageLink'
          property :item_group_id, as: 'itemGroupId'
          property :mpn, as: 'mpn'
          property :offer_id, as: 'offerId'
          property :price, as: 'price', class: Google::Apis::ContentV2sandbox::Price, decorator: Google::Apis::ContentV2sandbox::Price::Representation
      
          property :shown_image, as: 'shownImage'
          property :target_country, as: 'targetCountry'
          property :title, as: 'title'
          collection :variant_attributes, as: 'variantAttributes', class: Google::Apis::ContentV2sandbox::OrderLineItemProductVariantAttribute, decorator: Google::Apis::ContentV2sandbox::OrderLineItemProductVariantAttribute::Representation
      
        end
      end
      
      class OrderLineItemProductVariantAttribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dimension, as: 'dimension'
          property :value, as: 'value'
        end
      end
      
      class OrderLineItemReturnInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :days_to_return, as: 'daysToReturn'
          property :is_returnable, as: 'isReturnable'
          property :policy_url, as: 'policyUrl'
        end
      end
      
      class OrderLineItemShippingDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deliver_by_date, as: 'deliverByDate'
          property :method_prop, as: 'method', class: Google::Apis::ContentV2sandbox::OrderLineItemShippingDetailsMethod, decorator: Google::Apis::ContentV2sandbox::OrderLineItemShippingDetailsMethod::Representation
      
          property :ship_by_date, as: 'shipByDate'
        end
      end
      
      class OrderLineItemShippingDetailsMethod
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :carrier, as: 'carrier'
          property :max_days_in_transit, as: 'maxDaysInTransit'
          property :method_name, as: 'methodName'
          property :min_days_in_transit, as: 'minDaysInTransit'
        end
      end
      
      class OrderMerchantProvidedAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      class OrderPaymentMethod
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :billing_address, as: 'billingAddress', class: Google::Apis::ContentV2sandbox::OrderAddress, decorator: Google::Apis::ContentV2sandbox::OrderAddress::Representation
      
          property :expiration_month, as: 'expirationMonth'
          property :expiration_year, as: 'expirationYear'
          property :last_four_digits, as: 'lastFourDigits'
          property :phone_number, as: 'phoneNumber'
          property :type, as: 'type'
        end
      end
      
      class OrderPromotion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :benefits, as: 'benefits', class: Google::Apis::ContentV2sandbox::OrderPromotionBenefit, decorator: Google::Apis::ContentV2sandbox::OrderPromotionBenefit::Representation
      
          property :effective_dates, as: 'effectiveDates'
          property :generic_redemption_code, as: 'genericRedemptionCode'
          property :id, as: 'id'
          property :long_title, as: 'longTitle'
          property :product_applicability, as: 'productApplicability'
          property :redemption_channel, as: 'redemptionChannel'
        end
      end
      
      class OrderPromotionBenefit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :discount, as: 'discount', class: Google::Apis::ContentV2sandbox::Price, decorator: Google::Apis::ContentV2sandbox::Price::Representation
      
          collection :offer_ids, as: 'offerIds'
          property :sub_type, as: 'subType'
          property :tax_impact, as: 'taxImpact', class: Google::Apis::ContentV2sandbox::Price, decorator: Google::Apis::ContentV2sandbox::Price::Representation
      
          property :type, as: 'type'
        end
      end
      
      class OrderRefund
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :actor, as: 'actor'
          property :amount, as: 'amount', class: Google::Apis::ContentV2sandbox::Price, decorator: Google::Apis::ContentV2sandbox::Price::Representation
      
          property :creation_date, as: 'creationDate'
          property :reason, as: 'reason'
          property :reason_text, as: 'reasonText'
        end
      end
      
      class OrderReturn
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :actor, as: 'actor'
          property :creation_date, as: 'creationDate'
          property :quantity, as: 'quantity'
          property :reason, as: 'reason'
          property :reason_text, as: 'reasonText'
        end
      end
      
      class OrderShipment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :carrier, as: 'carrier'
          property :creation_date, as: 'creationDate'
          property :delivery_date, as: 'deliveryDate'
          property :id, as: 'id'
          collection :line_items, as: 'lineItems', class: Google::Apis::ContentV2sandbox::OrderShipmentLineItemShipment, decorator: Google::Apis::ContentV2sandbox::OrderShipmentLineItemShipment::Representation
      
          property :status, as: 'status'
          property :tracking_id, as: 'trackingId'
        end
      end
      
      class OrderShipmentLineItemShipment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :line_item_id, as: 'lineItemId'
          property :product_id, as: 'productId'
          property :quantity, as: 'quantity'
        end
      end
      
      class OrdersAcknowledgeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operation_id, as: 'operationId'
        end
      end
      
      class OrdersAcknowledgeResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :execution_status, as: 'executionStatus'
          property :kind, as: 'kind'
        end
      end
      
      class OrdersAdvanceTestOrderResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
        end
      end
      
      class OrdersCancelLineItemRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount, as: 'amount', class: Google::Apis::ContentV2sandbox::Price, decorator: Google::Apis::ContentV2sandbox::Price::Representation
      
          property :amount_pretax, as: 'amountPretax', class: Google::Apis::ContentV2sandbox::Price, decorator: Google::Apis::ContentV2sandbox::Price::Representation
      
          property :amount_tax, as: 'amountTax', class: Google::Apis::ContentV2sandbox::Price, decorator: Google::Apis::ContentV2sandbox::Price::Representation
      
          property :line_item_id, as: 'lineItemId'
          property :operation_id, as: 'operationId'
          property :product_id, as: 'productId'
          property :quantity, as: 'quantity'
          property :reason, as: 'reason'
          property :reason_text, as: 'reasonText'
        end
      end
      
      class OrdersCancelLineItemResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :execution_status, as: 'executionStatus'
          property :kind, as: 'kind'
        end
      end
      
      class OrdersCancelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operation_id, as: 'operationId'
          property :reason, as: 'reason'
          property :reason_text, as: 'reasonText'
        end
      end
      
      class OrdersCancelResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :execution_status, as: 'executionStatus'
          property :kind, as: 'kind'
        end
      end
      
      class OrdersCreateTestOrderRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :template_name, as: 'templateName'
          property :test_order, as: 'testOrder', class: Google::Apis::ContentV2sandbox::TestOrder, decorator: Google::Apis::ContentV2sandbox::TestOrder::Representation
      
        end
      end
      
      class OrdersCreateTestOrderResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :order_id, as: 'orderId'
        end
      end
      
      class OrdersCustomBatchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntry, decorator: Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntry::Representation
      
        end
      end
      
      class OrdersCustomBatchRequestEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :cancel, as: 'cancel', class: Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntryCancel, decorator: Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntryCancel::Representation
      
          property :cancel_line_item, as: 'cancelLineItem', class: Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntryCancelLineItem, decorator: Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntryCancelLineItem::Representation
      
          property :in_store_refund_line_item, as: 'inStoreRefundLineItem', class: Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntryInStoreRefundLineItem, decorator: Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntryInStoreRefundLineItem::Representation
      
          property :merchant_id, :numeric_string => true, as: 'merchantId'
          property :merchant_order_id, as: 'merchantOrderId'
          property :method_prop, as: 'method'
          property :operation_id, as: 'operationId'
          property :order_id, as: 'orderId'
          property :refund, as: 'refund', class: Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntryRefund, decorator: Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntryRefund::Representation
      
          property :reject_return_line_item, as: 'rejectReturnLineItem', class: Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntryRejectReturnLineItem, decorator: Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntryRejectReturnLineItem::Representation
      
          property :return_line_item, as: 'returnLineItem', class: Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntryReturnLineItem, decorator: Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntryReturnLineItem::Representation
      
          property :return_refund_line_item, as: 'returnRefundLineItem', class: Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntryReturnRefundLineItem, decorator: Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntryReturnRefundLineItem::Representation
      
          property :set_line_item_metadata, as: 'setLineItemMetadata', class: Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntrySetLineItemMetadata, decorator: Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntrySetLineItemMetadata::Representation
      
          property :ship_line_items, as: 'shipLineItems', class: Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntryShipLineItems, decorator: Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntryShipLineItems::Representation
      
          property :update_line_item_shipping_details, as: 'updateLineItemShippingDetails', class: Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntryUpdateLineItemShippingDetails, decorator: Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntryUpdateLineItemShippingDetails::Representation
      
          property :update_shipment, as: 'updateShipment', class: Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntryUpdateShipment, decorator: Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntryUpdateShipment::Representation
      
        end
      end
      
      class OrdersCustomBatchRequestEntryCancel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reason, as: 'reason'
          property :reason_text, as: 'reasonText'
        end
      end
      
      class OrdersCustomBatchRequestEntryCancelLineItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount, as: 'amount', class: Google::Apis::ContentV2sandbox::Price, decorator: Google::Apis::ContentV2sandbox::Price::Representation
      
          property :amount_pretax, as: 'amountPretax', class: Google::Apis::ContentV2sandbox::Price, decorator: Google::Apis::ContentV2sandbox::Price::Representation
      
          property :amount_tax, as: 'amountTax', class: Google::Apis::ContentV2sandbox::Price, decorator: Google::Apis::ContentV2sandbox::Price::Representation
      
          property :line_item_id, as: 'lineItemId'
          property :product_id, as: 'productId'
          property :quantity, as: 'quantity'
          property :reason, as: 'reason'
          property :reason_text, as: 'reasonText'
        end
      end
      
      class OrdersCustomBatchRequestEntryInStoreRefundLineItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount_pretax, as: 'amountPretax', class: Google::Apis::ContentV2sandbox::Price, decorator: Google::Apis::ContentV2sandbox::Price::Representation
      
          property :amount_tax, as: 'amountTax', class: Google::Apis::ContentV2sandbox::Price, decorator: Google::Apis::ContentV2sandbox::Price::Representation
      
          property :line_item_id, as: 'lineItemId'
          property :product_id, as: 'productId'
          property :quantity, as: 'quantity'
          property :reason, as: 'reason'
          property :reason_text, as: 'reasonText'
        end
      end
      
      class OrdersCustomBatchRequestEntryRefund
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount, as: 'amount', class: Google::Apis::ContentV2sandbox::Price, decorator: Google::Apis::ContentV2sandbox::Price::Representation
      
          property :amount_pretax, as: 'amountPretax', class: Google::Apis::ContentV2sandbox::Price, decorator: Google::Apis::ContentV2sandbox::Price::Representation
      
          property :amount_tax, as: 'amountTax', class: Google::Apis::ContentV2sandbox::Price, decorator: Google::Apis::ContentV2sandbox::Price::Representation
      
          property :reason, as: 'reason'
          property :reason_text, as: 'reasonText'
        end
      end
      
      class OrdersCustomBatchRequestEntryRejectReturnLineItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :line_item_id, as: 'lineItemId'
          property :product_id, as: 'productId'
          property :quantity, as: 'quantity'
          property :reason, as: 'reason'
          property :reason_text, as: 'reasonText'
        end
      end
      
      class OrdersCustomBatchRequestEntryReturnLineItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :line_item_id, as: 'lineItemId'
          property :product_id, as: 'productId'
          property :quantity, as: 'quantity'
          property :reason, as: 'reason'
          property :reason_text, as: 'reasonText'
        end
      end
      
      class OrdersCustomBatchRequestEntryReturnRefundLineItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount_pretax, as: 'amountPretax', class: Google::Apis::ContentV2sandbox::Price, decorator: Google::Apis::ContentV2sandbox::Price::Representation
      
          property :amount_tax, as: 'amountTax', class: Google::Apis::ContentV2sandbox::Price, decorator: Google::Apis::ContentV2sandbox::Price::Representation
      
          property :line_item_id, as: 'lineItemId'
          property :product_id, as: 'productId'
          property :quantity, as: 'quantity'
          property :reason, as: 'reason'
          property :reason_text, as: 'reasonText'
        end
      end
      
      class OrdersCustomBatchRequestEntrySetLineItemMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotations, as: 'annotations', class: Google::Apis::ContentV2sandbox::OrderMerchantProvidedAnnotation, decorator: Google::Apis::ContentV2sandbox::OrderMerchantProvidedAnnotation::Representation
      
          property :line_item_id, as: 'lineItemId'
          property :product_id, as: 'productId'
        end
      end
      
      class OrdersCustomBatchRequestEntryShipLineItems
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :carrier, as: 'carrier'
          collection :line_items, as: 'lineItems', class: Google::Apis::ContentV2sandbox::OrderShipmentLineItemShipment, decorator: Google::Apis::ContentV2sandbox::OrderShipmentLineItemShipment::Representation
      
          property :shipment_id, as: 'shipmentId'
          collection :shipment_infos, as: 'shipmentInfos', class: Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo, decorator: Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo::Representation
      
          property :tracking_id, as: 'trackingId'
        end
      end
      
      class OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :carrier, as: 'carrier'
          property :shipment_id, as: 'shipmentId'
          property :tracking_id, as: 'trackingId'
        end
      end
      
      class OrdersCustomBatchRequestEntryUpdateLineItemShippingDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deliver_by_date, as: 'deliverByDate'
          property :line_item_id, as: 'lineItemId'
          property :product_id, as: 'productId'
          property :ship_by_date, as: 'shipByDate'
        end
      end
      
      class OrdersCustomBatchRequestEntryUpdateShipment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :carrier, as: 'carrier'
          property :shipment_id, as: 'shipmentId'
          property :status, as: 'status'
          property :tracking_id, as: 'trackingId'
        end
      end
      
      class OrdersCustomBatchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2sandbox::OrdersCustomBatchResponseEntry, decorator: Google::Apis::ContentV2sandbox::OrdersCustomBatchResponseEntry::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class OrdersCustomBatchResponseEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :errors, as: 'errors', class: Google::Apis::ContentV2sandbox::Errors, decorator: Google::Apis::ContentV2sandbox::Errors::Representation
      
          property :execution_status, as: 'executionStatus'
          property :kind, as: 'kind'
          property :order, as: 'order', class: Google::Apis::ContentV2sandbox::Order, decorator: Google::Apis::ContentV2sandbox::Order::Representation
      
        end
      end
      
      class OrdersGetByMerchantOrderIdResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :order, as: 'order', class: Google::Apis::ContentV2sandbox::Order, decorator: Google::Apis::ContentV2sandbox::Order::Representation
      
        end
      end
      
      class OrdersGetTestOrderTemplateResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :template, as: 'template', class: Google::Apis::ContentV2sandbox::TestOrder, decorator: Google::Apis::ContentV2sandbox::TestOrder::Representation
      
        end
      end
      
      class OrdersInStoreRefundLineItemRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount_pretax, as: 'amountPretax', class: Google::Apis::ContentV2sandbox::Price, decorator: Google::Apis::ContentV2sandbox::Price::Representation
      
          property :amount_tax, as: 'amountTax', class: Google::Apis::ContentV2sandbox::Price, decorator: Google::Apis::ContentV2sandbox::Price::Representation
      
          property :line_item_id, as: 'lineItemId'
          property :operation_id, as: 'operationId'
          property :product_id, as: 'productId'
          property :quantity, as: 'quantity'
          property :reason, as: 'reason'
          property :reason_text, as: 'reasonText'
        end
      end
      
      class OrdersInStoreRefundLineItemResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :execution_status, as: 'executionStatus'
          property :kind, as: 'kind'
        end
      end
      
      class OrdersListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::ContentV2sandbox::Order, decorator: Google::Apis::ContentV2sandbox::Order::Representation
      
        end
      end
      
      class OrdersRefundRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount, as: 'amount', class: Google::Apis::ContentV2sandbox::Price, decorator: Google::Apis::ContentV2sandbox::Price::Representation
      
          property :amount_pretax, as: 'amountPretax', class: Google::Apis::ContentV2sandbox::Price, decorator: Google::Apis::ContentV2sandbox::Price::Representation
      
          property :amount_tax, as: 'amountTax', class: Google::Apis::ContentV2sandbox::Price, decorator: Google::Apis::ContentV2sandbox::Price::Representation
      
          property :operation_id, as: 'operationId'
          property :reason, as: 'reason'
          property :reason_text, as: 'reasonText'
        end
      end
      
      class OrdersRefundResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :execution_status, as: 'executionStatus'
          property :kind, as: 'kind'
        end
      end
      
      class OrdersRejectReturnLineItemRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :line_item_id, as: 'lineItemId'
          property :operation_id, as: 'operationId'
          property :product_id, as: 'productId'
          property :quantity, as: 'quantity'
          property :reason, as: 'reason'
          property :reason_text, as: 'reasonText'
        end
      end
      
      class OrdersRejectReturnLineItemResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :execution_status, as: 'executionStatus'
          property :kind, as: 'kind'
        end
      end
      
      class OrdersReturnLineItemRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :line_item_id, as: 'lineItemId'
          property :operation_id, as: 'operationId'
          property :product_id, as: 'productId'
          property :quantity, as: 'quantity'
          property :reason, as: 'reason'
          property :reason_text, as: 'reasonText'
        end
      end
      
      class OrdersReturnLineItemResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :execution_status, as: 'executionStatus'
          property :kind, as: 'kind'
        end
      end
      
      class OrdersReturnRefundLineItemRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount_pretax, as: 'amountPretax', class: Google::Apis::ContentV2sandbox::Price, decorator: Google::Apis::ContentV2sandbox::Price::Representation
      
          property :amount_tax, as: 'amountTax', class: Google::Apis::ContentV2sandbox::Price, decorator: Google::Apis::ContentV2sandbox::Price::Representation
      
          property :line_item_id, as: 'lineItemId'
          property :operation_id, as: 'operationId'
          property :product_id, as: 'productId'
          property :quantity, as: 'quantity'
          property :reason, as: 'reason'
          property :reason_text, as: 'reasonText'
        end
      end
      
      class OrdersReturnRefundLineItemResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :execution_status, as: 'executionStatus'
          property :kind, as: 'kind'
        end
      end
      
      class OrdersSetLineItemMetadataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotations, as: 'annotations', class: Google::Apis::ContentV2sandbox::OrderMerchantProvidedAnnotation, decorator: Google::Apis::ContentV2sandbox::OrderMerchantProvidedAnnotation::Representation
      
          property :line_item_id, as: 'lineItemId'
          property :operation_id, as: 'operationId'
          property :product_id, as: 'productId'
        end
      end
      
      class OrdersSetLineItemMetadataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :execution_status, as: 'executionStatus'
          property :kind, as: 'kind'
        end
      end
      
      class OrdersShipLineItemsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :carrier, as: 'carrier'
          collection :line_items, as: 'lineItems', class: Google::Apis::ContentV2sandbox::OrderShipmentLineItemShipment, decorator: Google::Apis::ContentV2sandbox::OrderShipmentLineItemShipment::Representation
      
          property :operation_id, as: 'operationId'
          property :shipment_id, as: 'shipmentId'
          collection :shipment_infos, as: 'shipmentInfos', class: Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo, decorator: Google::Apis::ContentV2sandbox::OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo::Representation
      
          property :tracking_id, as: 'trackingId'
        end
      end
      
      class OrdersShipLineItemsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :execution_status, as: 'executionStatus'
          property :kind, as: 'kind'
        end
      end
      
      class OrdersUpdateLineItemShippingDetailsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deliver_by_date, as: 'deliverByDate'
          property :line_item_id, as: 'lineItemId'
          property :operation_id, as: 'operationId'
          property :product_id, as: 'productId'
          property :ship_by_date, as: 'shipByDate'
        end
      end
      
      class OrdersUpdateLineItemShippingDetailsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :execution_status, as: 'executionStatus'
          property :kind, as: 'kind'
        end
      end
      
      class OrdersUpdateMerchantOrderIdRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :merchant_order_id, as: 'merchantOrderId'
          property :operation_id, as: 'operationId'
        end
      end
      
      class OrdersUpdateMerchantOrderIdResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :execution_status, as: 'executionStatus'
          property :kind, as: 'kind'
        end
      end
      
      class OrdersUpdateShipmentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :carrier, as: 'carrier'
          property :operation_id, as: 'operationId'
          property :shipment_id, as: 'shipmentId'
          property :status, as: 'status'
          property :tracking_id, as: 'trackingId'
        end
      end
      
      class OrdersUpdateShipmentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :execution_status, as: 'executionStatus'
          property :kind, as: 'kind'
        end
      end
      
      class Price
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency, as: 'currency'
          property :value, as: 'value'
        end
      end
      
      class TestOrder
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer, as: 'customer', class: Google::Apis::ContentV2sandbox::TestOrderCustomer, decorator: Google::Apis::ContentV2sandbox::TestOrderCustomer::Representation
      
          property :kind, as: 'kind'
          collection :line_items, as: 'lineItems', class: Google::Apis::ContentV2sandbox::TestOrderLineItem, decorator: Google::Apis::ContentV2sandbox::TestOrderLineItem::Representation
      
          property :notification_mode, as: 'notificationMode'
          property :payment_method, as: 'paymentMethod', class: Google::Apis::ContentV2sandbox::TestOrderPaymentMethod, decorator: Google::Apis::ContentV2sandbox::TestOrderPaymentMethod::Representation
      
          property :predefined_delivery_address, as: 'predefinedDeliveryAddress'
          collection :promotions, as: 'promotions', class: Google::Apis::ContentV2sandbox::OrderPromotion, decorator: Google::Apis::ContentV2sandbox::OrderPromotion::Representation
      
          property :shipping_cost, as: 'shippingCost', class: Google::Apis::ContentV2sandbox::Price, decorator: Google::Apis::ContentV2sandbox::Price::Representation
      
          property :shipping_cost_tax, as: 'shippingCostTax', class: Google::Apis::ContentV2sandbox::Price, decorator: Google::Apis::ContentV2sandbox::Price::Representation
      
          property :shipping_option, as: 'shippingOption'
        end
      end
      
      class TestOrderCustomer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :explicit_marketing_preference, as: 'explicitMarketingPreference'
          property :full_name, as: 'fullName'
          property :marketing_rights_info, as: 'marketingRightsInfo', class: Google::Apis::ContentV2sandbox::TestOrderCustomerMarketingRightsInfo, decorator: Google::Apis::ContentV2sandbox::TestOrderCustomerMarketingRightsInfo::Representation
      
        end
      end
      
      class TestOrderCustomerMarketingRightsInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :explicit_marketing_preference, as: 'explicitMarketingPreference'
          property :last_updated_timestamp, as: 'lastUpdatedTimestamp'
        end
      end
      
      class TestOrderLineItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :product, as: 'product', class: Google::Apis::ContentV2sandbox::TestOrderLineItemProduct, decorator: Google::Apis::ContentV2sandbox::TestOrderLineItemProduct::Representation
      
          property :quantity_ordered, as: 'quantityOrdered'
          property :return_info, as: 'returnInfo', class: Google::Apis::ContentV2sandbox::OrderLineItemReturnInfo, decorator: Google::Apis::ContentV2sandbox::OrderLineItemReturnInfo::Representation
      
          property :shipping_details, as: 'shippingDetails', class: Google::Apis::ContentV2sandbox::OrderLineItemShippingDetails, decorator: Google::Apis::ContentV2sandbox::OrderLineItemShippingDetails::Representation
      
          property :unit_tax, as: 'unitTax', class: Google::Apis::ContentV2sandbox::Price, decorator: Google::Apis::ContentV2sandbox::Price::Representation
      
        end
      end
      
      class TestOrderLineItemProduct
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :brand, as: 'brand'
          property :channel, as: 'channel'
          property :condition, as: 'condition'
          property :content_language, as: 'contentLanguage'
          property :gtin, as: 'gtin'
          property :image_link, as: 'imageLink'
          property :item_group_id, as: 'itemGroupId'
          property :mpn, as: 'mpn'
          property :offer_id, as: 'offerId'
          property :price, as: 'price', class: Google::Apis::ContentV2sandbox::Price, decorator: Google::Apis::ContentV2sandbox::Price::Representation
      
          property :target_country, as: 'targetCountry'
          property :title, as: 'title'
          collection :variant_attributes, as: 'variantAttributes', class: Google::Apis::ContentV2sandbox::OrderLineItemProductVariantAttribute, decorator: Google::Apis::ContentV2sandbox::OrderLineItemProductVariantAttribute::Representation
      
        end
      end
      
      class TestOrderPaymentMethod
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expiration_month, as: 'expirationMonth'
          property :expiration_year, as: 'expirationYear'
          property :last_four_digits, as: 'lastFourDigits'
          property :predefined_billing_address, as: 'predefinedBillingAddress'
          property :type, as: 'type'
        end
      end
    end
  end
end
