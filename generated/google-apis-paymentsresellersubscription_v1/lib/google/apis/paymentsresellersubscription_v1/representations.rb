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
    module PaymentsresellersubscriptionV1
      
      class GoogleCloudPaymentsResellerSubscriptionV1Amount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1Duration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1Extension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1FindEligiblePromotionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1FindEligiblePromotionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1GoogleOnePayload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1Product
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1ProductPayload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1ProductPriceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1Promotion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetailsIntroductoryPricingSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1ServicePeriod
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1Subscription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1SubscriptionLineItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1SubscriptionLineItemOneTimeRecurrenceDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1SubscriptionPromotionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1YoutubePayload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeLocalizedText
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1Amount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount_micros, :numeric_string => true, as: 'amountMicros'
          property :currency_code, as: 'currencyCode'
        end
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cancel_immediately, as: 'cancelImmediately'
          property :cancellation_reason, as: 'cancellationReason'
        end
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :subscription, as: 'subscription', class: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Subscription, decorator: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Subscription::Representation
      
        end
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1Duration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, as: 'count'
          property :unit, as: 'unit'
        end
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :subscription, as: 'subscription', class: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Subscription, decorator: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Subscription::Representation
      
        end
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :extension, as: 'extension', class: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Extension, decorator: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Extension::Representation
      
          property :request_id, as: 'requestId'
        end
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cycle_end_time, as: 'cycleEndTime'
          property :free_trial_end_time, as: 'freeTrialEndTime'
          property :renewal_time, as: 'renewalTime'
        end
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1Extension
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration, as: 'duration', class: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Duration, decorator: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Duration::Representation
      
          property :partner_user_token, as: 'partnerUserToken'
        end
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1FindEligiblePromotionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
        end
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1FindEligiblePromotionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :promotions, as: 'promotions', class: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Promotion, decorator: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Promotion::Representation
      
        end
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1GoogleOnePayload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :campaigns, as: 'campaigns'
          property :offering, as: 'offering'
          property :sales_channel, as: 'salesChannel'
          property :store_id, as: 'storeId'
        end
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :products, as: 'products', class: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Product, decorator: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Product::Representation
      
        end
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :promotions, as: 'promotions', class: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Promotion, decorator: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Promotion::Representation
      
        end
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :postal_code, as: 'postalCode'
          property :region_code, as: 'regionCode'
        end
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1Product
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          collection :price_configs, as: 'priceConfigs', class: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1ProductPriceConfig, decorator: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1ProductPriceConfig::Representation
      
          collection :region_codes, as: 'regionCodes'
          property :subscription_billing_cycle_duration, as: 'subscriptionBillingCycleDuration', class: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Duration, decorator: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Duration::Representation
      
          collection :titles, as: 'titles', class: Google::Apis::PaymentsresellersubscriptionV1::GoogleTypeLocalizedText, decorator: Google::Apis::PaymentsresellersubscriptionV1::GoogleTypeLocalizedText::Representation
      
        end
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1ProductPayload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :google_one_payload, as: 'googleOnePayload', class: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1GoogleOnePayload, decorator: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1GoogleOnePayload::Representation
      
          property :youtube_payload, as: 'youtubePayload', class: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1YoutubePayload, decorator: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1YoutubePayload::Representation
      
        end
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1ProductPriceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount, as: 'amount', class: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Amount, decorator: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Amount::Representation
      
          property :region_code, as: 'regionCode'
        end
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1Promotion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :applicable_products, as: 'applicableProducts'
          property :end_time, as: 'endTime'
          property :free_trial_duration, as: 'freeTrialDuration', class: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Duration, decorator: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Duration::Representation
      
          property :introductory_pricing_details, as: 'introductoryPricingDetails', class: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails, decorator: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails::Representation
      
          property :name, as: 'name'
          property :promotion_type, as: 'promotionType'
          collection :region_codes, as: 'regionCodes'
          property :start_time, as: 'startTime'
          collection :titles, as: 'titles', class: Google::Apis::PaymentsresellersubscriptionV1::GoogleTypeLocalizedText, decorator: Google::Apis::PaymentsresellersubscriptionV1::GoogleTypeLocalizedText::Representation
      
        end
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :introductory_pricing_specs, as: 'introductoryPricingSpecs', class: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetailsIntroductoryPricingSpec, decorator: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetailsIntroductoryPricingSpec::Representation
      
        end
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetailsIntroductoryPricingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :discount_amount, as: 'discountAmount', class: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Amount, decorator: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Amount::Representation
      
          property :discount_ratio_micros, :numeric_string => true, as: 'discountRatioMicros'
          property :recurrence_count, as: 'recurrenceCount'
          property :region_code, as: 'regionCode'
        end
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1ServicePeriod
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1Subscription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cancellation_details, as: 'cancellationDetails', class: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails, decorator: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails::Representation
      
          property :create_time, as: 'createTime'
          property :cycle_end_time, as: 'cycleEndTime'
          property :end_user_entitled, as: 'endUserEntitled'
          property :free_trial_end_time, as: 'freeTrialEndTime'
          collection :line_items, as: 'lineItems', class: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1SubscriptionLineItem, decorator: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1SubscriptionLineItem::Representation
      
          property :name, as: 'name'
          property :partner_user_token, as: 'partnerUserToken'
          property :processing_state, as: 'processingState'
          collection :products, as: 'products'
          collection :promotion_specs, as: 'promotionSpecs', class: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1SubscriptionPromotionSpec, decorator: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1SubscriptionPromotionSpec::Representation
      
          collection :promotions, as: 'promotions'
          property :redirect_uri, as: 'redirectUri'
          property :renewal_time, as: 'renewalTime'
          property :service_location, as: 'serviceLocation', class: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Location, decorator: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Location::Representation
      
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
          property :upgrade_downgrade_details, as: 'upgradeDowngradeDetails', class: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails, decorator: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails::Representation
      
        end
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reason, as: 'reason'
        end
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1SubscriptionLineItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :line_item_free_trial_end_time, as: 'lineItemFreeTrialEndTime'
          collection :line_item_promotion_specs, as: 'lineItemPromotionSpecs', class: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1SubscriptionPromotionSpec, decorator: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1SubscriptionPromotionSpec::Representation
      
          property :one_time_recurrence_details, as: 'oneTimeRecurrenceDetails', class: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1SubscriptionLineItemOneTimeRecurrenceDetails, decorator: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1SubscriptionLineItemOneTimeRecurrenceDetails::Representation
      
          property :product, as: 'product'
          property :product_payload, as: 'productPayload', class: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1ProductPayload, decorator: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1ProductPayload::Representation
      
          property :recurrence_type, as: 'recurrenceType'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1SubscriptionLineItemOneTimeRecurrenceDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service_period, as: 'servicePeriod', class: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1ServicePeriod, decorator: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1ServicePeriod::Representation
      
        end
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1SubscriptionPromotionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :free_trial_duration, as: 'freeTrialDuration', class: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Duration, decorator: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Duration::Representation
      
          property :introductory_pricing_details, as: 'introductoryPricingDetails', class: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails, decorator: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails::Representation
      
          property :promotion, as: 'promotion'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :billing_cycle_spec, as: 'billingCycleSpec'
          property :previous_subscription_id, as: 'previousSubscriptionId'
        end
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :subscription, as: 'subscription', class: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Subscription, decorator: Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Subscription::Representation
      
        end
      end
      
      class GoogleCloudPaymentsResellerSubscriptionV1YoutubePayload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :partner_eligibility_ids, as: 'partnerEligibilityIds'
        end
      end
      
      class GoogleTypeLocalizedText
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
          property :text, as: 'text'
        end
      end
    end
  end
end
