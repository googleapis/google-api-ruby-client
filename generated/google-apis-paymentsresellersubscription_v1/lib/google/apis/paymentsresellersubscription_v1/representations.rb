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
      
      class Amount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelSubscriptionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelSubscriptionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateSubscriptionIntent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CycleOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Duration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EntitleSubscriptionIntent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EntitleSubscriptionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EntitleSubscriptionRequestLineItemEntitlementDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EntitleSubscriptionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExtendSubscriptionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExtendSubscriptionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Extension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FindEligiblePromotionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FindEligiblePromotionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FiniteBillingCycleDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateUserSessionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateUserSessionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleHomePayload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleOnePayload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeLocalizedText
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntentPayload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntentPayloadIntentOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPromotionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Product
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductBundleDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductBundleDetailsBundleElement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductPayload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductPriceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Promotion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PromotionIntroductoryPricingDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PromotionIntroductoryPricingDetailsIntroductoryPricingSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResumeSubscriptionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResumeSubscriptionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServicePeriod
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Subscription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubscriptionCancellationDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubscriptionLineItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubscriptionLineItemBundleDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubscriptionLineItemBundleDetailsBundleElementDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubscriptionLineItemOneTimeRecurrenceDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubscriptionMigrationDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubscriptionPromotionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubscriptionUpgradeDowngradeDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SuspendSubscriptionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SuspendSubscriptionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UndoCancelSubscriptionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UndoCancelSubscriptionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserSession
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class YoutubePayload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Amount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount_micros, :numeric_string => true, as: 'amountMicros'
          property :currency_code, as: 'currencyCode'
        end
      end
      
      class CancelSubscriptionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cancel_immediately, as: 'cancelImmediately'
          property :cancellation_reason, as: 'cancellationReason'
        end
      end
      
      class CancelSubscriptionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :subscription, as: 'subscription', class: Google::Apis::PaymentsresellersubscriptionV1::Subscription, decorator: Google::Apis::PaymentsresellersubscriptionV1::Subscription::Representation
      
        end
      end
      
      class CreateSubscriptionIntent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cycle_options, as: 'cycleOptions', class: Google::Apis::PaymentsresellersubscriptionV1::CycleOptions, decorator: Google::Apis::PaymentsresellersubscriptionV1::CycleOptions::Representation
      
          property :parent, as: 'parent'
          property :subscription, as: 'subscription', class: Google::Apis::PaymentsresellersubscriptionV1::Subscription, decorator: Google::Apis::PaymentsresellersubscriptionV1::Subscription::Representation
      
          property :subscription_id, as: 'subscriptionId'
        end
      end
      
      class CycleOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :initial_cycle_duration, as: 'initialCycleDuration', class: Google::Apis::PaymentsresellersubscriptionV1::Duration, decorator: Google::Apis::PaymentsresellersubscriptionV1::Duration::Representation
      
        end
      end
      
      class Duration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, as: 'count'
          property :unit, as: 'unit'
        end
      end
      
      class EntitleSubscriptionIntent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class EntitleSubscriptionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :line_item_entitlement_details, as: 'lineItemEntitlementDetails', class: Google::Apis::PaymentsresellersubscriptionV1::EntitleSubscriptionRequestLineItemEntitlementDetails, decorator: Google::Apis::PaymentsresellersubscriptionV1::EntitleSubscriptionRequestLineItemEntitlementDetails::Representation
      
        end
      end
      
      class EntitleSubscriptionRequestLineItemEntitlementDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :line_item_index, as: 'lineItemIndex'
          collection :products, as: 'products'
        end
      end
      
      class EntitleSubscriptionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :subscription, as: 'subscription', class: Google::Apis::PaymentsresellersubscriptionV1::Subscription, decorator: Google::Apis::PaymentsresellersubscriptionV1::Subscription::Representation
      
        end
      end
      
      class ExtendSubscriptionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :extension, as: 'extension', class: Google::Apis::PaymentsresellersubscriptionV1::Extension, decorator: Google::Apis::PaymentsresellersubscriptionV1::Extension::Representation
      
          property :request_id, as: 'requestId'
        end
      end
      
      class ExtendSubscriptionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cycle_end_time, as: 'cycleEndTime'
          property :free_trial_end_time, as: 'freeTrialEndTime'
          property :renewal_time, as: 'renewalTime'
        end
      end
      
      class Extension
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration, as: 'duration', class: Google::Apis::PaymentsresellersubscriptionV1::Duration, decorator: Google::Apis::PaymentsresellersubscriptionV1::Duration::Representation
      
          property :partner_user_token, as: 'partnerUserToken'
        end
      end
      
      class FindEligiblePromotionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
        end
      end
      
      class FindEligiblePromotionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :promotions, as: 'promotions', class: Google::Apis::PaymentsresellersubscriptionV1::Promotion, decorator: Google::Apis::PaymentsresellersubscriptionV1::Promotion::Representation
      
        end
      end
      
      class FiniteBillingCycleDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :billing_cycle_count_limit, :numeric_string => true, as: 'billingCycleCountLimit'
        end
      end
      
      class GenerateUserSessionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :intent_payload, as: 'intentPayload', class: Google::Apis::PaymentsresellersubscriptionV1::IntentPayload, decorator: Google::Apis::PaymentsresellersubscriptionV1::IntentPayload::Representation
      
        end
      end
      
      class GenerateUserSessionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :user_session, as: 'userSession', class: Google::Apis::PaymentsresellersubscriptionV1::UserSession, decorator: Google::Apis::PaymentsresellersubscriptionV1::UserSession::Representation
      
        end
      end
      
      class GoogleHomePayload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attached_to_google_structure, as: 'attachedToGoogleStructure'
          property :google_structure_id, as: 'googleStructureId'
          property :partner_structure_id, as: 'partnerStructureId'
        end
      end
      
      class GoogleOnePayload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :campaigns, as: 'campaigns'
          property :offering, as: 'offering'
          property :sales_channel, as: 'salesChannel'
          property :store_id, as: 'storeId'
        end
      end
      
      class GoogleTypeLocalizedText
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
          property :text, as: 'text'
        end
      end
      
      class IntentPayload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_intent, as: 'createIntent', class: Google::Apis::PaymentsresellersubscriptionV1::CreateSubscriptionIntent, decorator: Google::Apis::PaymentsresellersubscriptionV1::CreateSubscriptionIntent::Representation
      
          property :entitle_intent, as: 'entitleIntent', class: Google::Apis::PaymentsresellersubscriptionV1::EntitleSubscriptionIntent, decorator: Google::Apis::PaymentsresellersubscriptionV1::EntitleSubscriptionIntent::Representation
      
          property :intent_options, as: 'intentOptions', class: Google::Apis::PaymentsresellersubscriptionV1::IntentPayloadIntentOptions, decorator: Google::Apis::PaymentsresellersubscriptionV1::IntentPayloadIntentOptions::Representation
      
        end
      end
      
      class IntentPayloadIntentOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_offer_override, as: 'enableOfferOverride'
        end
      end
      
      class ListProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :products, as: 'products', class: Google::Apis::PaymentsresellersubscriptionV1::Product, decorator: Google::Apis::PaymentsresellersubscriptionV1::Product::Representation
      
        end
      end
      
      class ListPromotionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :promotions, as: 'promotions', class: Google::Apis::PaymentsresellersubscriptionV1::Promotion, decorator: Google::Apis::PaymentsresellersubscriptionV1::Promotion::Representation
      
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :postal_code, as: 'postalCode'
          property :region_code, as: 'regionCode'
        end
      end
      
      class Product
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bundle_details, as: 'bundleDetails', class: Google::Apis::PaymentsresellersubscriptionV1::ProductBundleDetails, decorator: Google::Apis::PaymentsresellersubscriptionV1::ProductBundleDetails::Representation
      
          property :finite_billing_cycle_details, as: 'finiteBillingCycleDetails', class: Google::Apis::PaymentsresellersubscriptionV1::FiniteBillingCycleDetails, decorator: Google::Apis::PaymentsresellersubscriptionV1::FiniteBillingCycleDetails::Representation
      
          property :name, as: 'name'
          collection :price_configs, as: 'priceConfigs', class: Google::Apis::PaymentsresellersubscriptionV1::ProductPriceConfig, decorator: Google::Apis::PaymentsresellersubscriptionV1::ProductPriceConfig::Representation
      
          property :product_type, as: 'productType'
          collection :region_codes, as: 'regionCodes'
          property :subscription_billing_cycle_duration, as: 'subscriptionBillingCycleDuration', class: Google::Apis::PaymentsresellersubscriptionV1::Duration, decorator: Google::Apis::PaymentsresellersubscriptionV1::Duration::Representation
      
          collection :titles, as: 'titles', class: Google::Apis::PaymentsresellersubscriptionV1::GoogleTypeLocalizedText, decorator: Google::Apis::PaymentsresellersubscriptionV1::GoogleTypeLocalizedText::Representation
      
        end
      end
      
      class ProductBundleDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bundle_elements, as: 'bundleElements', class: Google::Apis::PaymentsresellersubscriptionV1::ProductBundleDetailsBundleElement, decorator: Google::Apis::PaymentsresellersubscriptionV1::ProductBundleDetailsBundleElement::Representation
      
          property :entitlement_mode, as: 'entitlementMode'
        end
      end
      
      class ProductBundleDetailsBundleElement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :product, as: 'product'
        end
      end
      
      class ProductPayload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :google_home_payload, as: 'googleHomePayload', class: Google::Apis::PaymentsresellersubscriptionV1::GoogleHomePayload, decorator: Google::Apis::PaymentsresellersubscriptionV1::GoogleHomePayload::Representation
      
          property :google_one_payload, as: 'googleOnePayload', class: Google::Apis::PaymentsresellersubscriptionV1::GoogleOnePayload, decorator: Google::Apis::PaymentsresellersubscriptionV1::GoogleOnePayload::Representation
      
          property :youtube_payload, as: 'youtubePayload', class: Google::Apis::PaymentsresellersubscriptionV1::YoutubePayload, decorator: Google::Apis::PaymentsresellersubscriptionV1::YoutubePayload::Representation
      
        end
      end
      
      class ProductPriceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount, as: 'amount', class: Google::Apis::PaymentsresellersubscriptionV1::Amount, decorator: Google::Apis::PaymentsresellersubscriptionV1::Amount::Representation
      
          property :region_code, as: 'regionCode'
        end
      end
      
      class Promotion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :applicable_products, as: 'applicableProducts'
          property :end_time, as: 'endTime'
          property :free_trial_duration, as: 'freeTrialDuration', class: Google::Apis::PaymentsresellersubscriptionV1::Duration, decorator: Google::Apis::PaymentsresellersubscriptionV1::Duration::Representation
      
          property :introductory_pricing_details, as: 'introductoryPricingDetails', class: Google::Apis::PaymentsresellersubscriptionV1::PromotionIntroductoryPricingDetails, decorator: Google::Apis::PaymentsresellersubscriptionV1::PromotionIntroductoryPricingDetails::Representation
      
          property :name, as: 'name'
          property :promotion_type, as: 'promotionType'
          collection :region_codes, as: 'regionCodes'
          property :start_time, as: 'startTime'
          collection :titles, as: 'titles', class: Google::Apis::PaymentsresellersubscriptionV1::GoogleTypeLocalizedText, decorator: Google::Apis::PaymentsresellersubscriptionV1::GoogleTypeLocalizedText::Representation
      
        end
      end
      
      class PromotionIntroductoryPricingDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :introductory_pricing_specs, as: 'introductoryPricingSpecs', class: Google::Apis::PaymentsresellersubscriptionV1::PromotionIntroductoryPricingDetailsIntroductoryPricingSpec, decorator: Google::Apis::PaymentsresellersubscriptionV1::PromotionIntroductoryPricingDetailsIntroductoryPricingSpec::Representation
      
        end
      end
      
      class PromotionIntroductoryPricingDetailsIntroductoryPricingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :discount_amount, as: 'discountAmount', class: Google::Apis::PaymentsresellersubscriptionV1::Amount, decorator: Google::Apis::PaymentsresellersubscriptionV1::Amount::Representation
      
          property :discount_ratio_micros, :numeric_string => true, as: 'discountRatioMicros'
          property :recurrence_count, as: 'recurrenceCount'
          property :region_code, as: 'regionCode'
        end
      end
      
      class ResumeSubscriptionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cycle_options, as: 'cycleOptions', class: Google::Apis::PaymentsresellersubscriptionV1::CycleOptions, decorator: Google::Apis::PaymentsresellersubscriptionV1::CycleOptions::Representation
      
          property :resume_mode, as: 'resumeMode'
        end
      end
      
      class ResumeSubscriptionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :subscription, as: 'subscription', class: Google::Apis::PaymentsresellersubscriptionV1::Subscription, decorator: Google::Apis::PaymentsresellersubscriptionV1::Subscription::Representation
      
        end
      end
      
      class ServicePeriod
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class Subscription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cancellation_details, as: 'cancellationDetails', class: Google::Apis::PaymentsresellersubscriptionV1::SubscriptionCancellationDetails, decorator: Google::Apis::PaymentsresellersubscriptionV1::SubscriptionCancellationDetails::Representation
      
          property :create_time, as: 'createTime'
          property :cycle_end_time, as: 'cycleEndTime'
          property :end_user_entitled, as: 'endUserEntitled'
          property :free_trial_end_time, as: 'freeTrialEndTime'
          collection :line_items, as: 'lineItems', class: Google::Apis::PaymentsresellersubscriptionV1::SubscriptionLineItem, decorator: Google::Apis::PaymentsresellersubscriptionV1::SubscriptionLineItem::Representation
      
          property :migration_details, as: 'migrationDetails', class: Google::Apis::PaymentsresellersubscriptionV1::SubscriptionMigrationDetails, decorator: Google::Apis::PaymentsresellersubscriptionV1::SubscriptionMigrationDetails::Representation
      
          property :name, as: 'name'
          property :partner_user_token, as: 'partnerUserToken'
          property :processing_state, as: 'processingState'
          collection :products, as: 'products'
          collection :promotion_specs, as: 'promotionSpecs', class: Google::Apis::PaymentsresellersubscriptionV1::SubscriptionPromotionSpec, decorator: Google::Apis::PaymentsresellersubscriptionV1::SubscriptionPromotionSpec::Representation
      
          collection :promotions, as: 'promotions'
          property :purchase_time, as: 'purchaseTime'
          property :redirect_uri, as: 'redirectUri'
          property :renewal_time, as: 'renewalTime'
          property :service_location, as: 'serviceLocation', class: Google::Apis::PaymentsresellersubscriptionV1::Location, decorator: Google::Apis::PaymentsresellersubscriptionV1::Location::Representation
      
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
          property :upgrade_downgrade_details, as: 'upgradeDowngradeDetails', class: Google::Apis::PaymentsresellersubscriptionV1::SubscriptionUpgradeDowngradeDetails, decorator: Google::Apis::PaymentsresellersubscriptionV1::SubscriptionUpgradeDowngradeDetails::Representation
      
        end
      end
      
      class SubscriptionCancellationDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reason, as: 'reason'
        end
      end
      
      class SubscriptionLineItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount, as: 'amount', class: Google::Apis::PaymentsresellersubscriptionV1::Amount, decorator: Google::Apis::PaymentsresellersubscriptionV1::Amount::Representation
      
          property :bundle_details, as: 'bundleDetails', class: Google::Apis::PaymentsresellersubscriptionV1::SubscriptionLineItemBundleDetails, decorator: Google::Apis::PaymentsresellersubscriptionV1::SubscriptionLineItemBundleDetails::Representation
      
          property :description, as: 'description'
          property :finite_billing_cycle_details, as: 'finiteBillingCycleDetails', class: Google::Apis::PaymentsresellersubscriptionV1::FiniteBillingCycleDetails, decorator: Google::Apis::PaymentsresellersubscriptionV1::FiniteBillingCycleDetails::Representation
      
          property :line_item_free_trial_end_time, as: 'lineItemFreeTrialEndTime'
          property :line_item_index, as: 'lineItemIndex'
          collection :line_item_promotion_specs, as: 'lineItemPromotionSpecs', class: Google::Apis::PaymentsresellersubscriptionV1::SubscriptionPromotionSpec, decorator: Google::Apis::PaymentsresellersubscriptionV1::SubscriptionPromotionSpec::Representation
      
          property :name, as: 'name'
          property :one_time_recurrence_details, as: 'oneTimeRecurrenceDetails', class: Google::Apis::PaymentsresellersubscriptionV1::SubscriptionLineItemOneTimeRecurrenceDetails, decorator: Google::Apis::PaymentsresellersubscriptionV1::SubscriptionLineItemOneTimeRecurrenceDetails::Representation
      
          property :product, as: 'product'
          property :product_payload, as: 'productPayload', class: Google::Apis::PaymentsresellersubscriptionV1::ProductPayload, decorator: Google::Apis::PaymentsresellersubscriptionV1::ProductPayload::Representation
      
          property :recurrence_type, as: 'recurrenceType'
          property :state, as: 'state'
        end
      end
      
      class SubscriptionLineItemBundleDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bundle_element_details, as: 'bundleElementDetails', class: Google::Apis::PaymentsresellersubscriptionV1::SubscriptionLineItemBundleDetailsBundleElementDetails, decorator: Google::Apis::PaymentsresellersubscriptionV1::SubscriptionLineItemBundleDetailsBundleElementDetails::Representation
      
        end
      end
      
      class SubscriptionLineItemBundleDetailsBundleElementDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :product, as: 'product'
          property :user_account_linked_time, as: 'userAccountLinkedTime'
        end
      end
      
      class SubscriptionLineItemOneTimeRecurrenceDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service_period, as: 'servicePeriod', class: Google::Apis::PaymentsresellersubscriptionV1::ServicePeriod, decorator: Google::Apis::PaymentsresellersubscriptionV1::ServicePeriod::Representation
      
        end
      end
      
      class SubscriptionMigrationDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :migrated_subscription_id, as: 'migratedSubscriptionId'
        end
      end
      
      class SubscriptionPromotionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :free_trial_duration, as: 'freeTrialDuration', class: Google::Apis::PaymentsresellersubscriptionV1::Duration, decorator: Google::Apis::PaymentsresellersubscriptionV1::Duration::Representation
      
          property :introductory_pricing_details, as: 'introductoryPricingDetails', class: Google::Apis::PaymentsresellersubscriptionV1::PromotionIntroductoryPricingDetails, decorator: Google::Apis::PaymentsresellersubscriptionV1::PromotionIntroductoryPricingDetails::Representation
      
          property :promotion, as: 'promotion'
          property :type, as: 'type'
        end
      end
      
      class SubscriptionUpgradeDowngradeDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :billing_cycle_spec, as: 'billingCycleSpec'
          property :previous_subscription_id, as: 'previousSubscriptionId'
        end
      end
      
      class SuspendSubscriptionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SuspendSubscriptionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :subscription, as: 'subscription', class: Google::Apis::PaymentsresellersubscriptionV1::Subscription, decorator: Google::Apis::PaymentsresellersubscriptionV1::Subscription::Representation
      
        end
      end
      
      class UndoCancelSubscriptionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class UndoCancelSubscriptionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :subscription, as: 'subscription', class: Google::Apis::PaymentsresellersubscriptionV1::Subscription, decorator: Google::Apis::PaymentsresellersubscriptionV1::Subscription::Representation
      
        end
      end
      
      class UserSession
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expire_time, as: 'expireTime'
          property :token, as: 'token'
        end
      end
      
      class YoutubePayload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_end_time, as: 'accessEndTime'
          collection :partner_eligibility_ids, as: 'partnerEligibilityIds'
          property :partner_plan_type, as: 'partnerPlanType'
        end
      end
    end
  end
end
