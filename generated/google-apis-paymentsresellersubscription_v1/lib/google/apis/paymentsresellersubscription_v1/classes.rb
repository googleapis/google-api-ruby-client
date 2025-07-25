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
      
      # Describes the amount unit including the currency code.
      class GoogleCloudPaymentsResellerSubscriptionV1Amount
        include Google::Apis::Core::Hashable
      
        # Required. Amount in micros (1_000_000 micros = 1 currency unit)
        # Corresponds to the JSON property `amountMicros`
        # @return [Fixnum]
        attr_accessor :amount_micros
      
        # Required. Currency codes in accordance with [ISO-4217 Currency Codes] (https://
        # en.wikipedia.org/wiki/ISO_4217). For example, USD.
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
      
      # Request to cancel a subscription.
      class GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest
        include Google::Apis::Core::Hashable
      
        # Optional. If true, Google will cancel the subscription immediately, and may or
        # may not (based on the contract) issue a prorated refund for the remainder of
        # the billing cycle. Otherwise, Google defers the cancelation at renewal_time,
        # and will not issue a refund. - YouTube subscriptions must use this option
        # currently. However, the user will still have access to the subscription until
        # the end of the billing cycle.
        # Corresponds to the JSON property `cancelImmediately`
        # @return [Boolean]
        attr_accessor :cancel_immediately
        alias_method :cancel_immediately?, :cancel_immediately
      
        # Specifies the reason for the cancellation.
        # Corresponds to the JSON property `cancellationReason`
        # @return [String]
        attr_accessor :cancellation_reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cancel_immediately = args[:cancel_immediately] if args.key?(:cancel_immediately)
          @cancellation_reason = args[:cancellation_reason] if args.key?(:cancellation_reason)
        end
      end
      
      # Response that contains the cancelled subscription resource.
      class GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse
        include Google::Apis::Core::Hashable
      
        # A subscription serves as a central billing entity between an external partner
        # and Google. The underlying Google services rely on the subscription state to
        # grant or revoke the user's service entitlement. It's important to note that
        # the subscription state may not always perfectly align with the user's service
        # entitlement. For example, some Google services may continue providing access
        # to the user until the current billing cycle ends, even if the subscription has
        # been immediately canceled. However, other services may not do the same. To
        # fully understand the specific details, please consult the relevant contract or
        # product policy.
        # Corresponds to the JSON property `subscription`
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Subscription]
        attr_accessor :subscription
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @subscription = args[:subscription] if args.key?(:subscription)
        end
      end
      
      # Intent message for creating a Subscription resource.
      class GoogleCloudPaymentsResellerSubscriptionV1CreateSubscriptionIntent
        include Google::Apis::Core::Hashable
      
        # Required. The parent resource name, which is the identifier of the partner.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # A subscription serves as a central billing entity between an external partner
        # and Google. The underlying Google services rely on the subscription state to
        # grant or revoke the user's service entitlement. It's important to note that
        # the subscription state may not always perfectly align with the user's service
        # entitlement. For example, some Google services may continue providing access
        # to the user until the current billing cycle ends, even if the subscription has
        # been immediately canceled. However, other services may not do the same. To
        # fully understand the specific details, please consult the relevant contract or
        # product policy.
        # Corresponds to the JSON property `subscription`
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Subscription]
        attr_accessor :subscription
      
        # Required. Identifies the subscription resource on the Partner side. The value
        # is restricted to 63 ASCII characters at the maximum. If a subscription was
        # previously created with the same subscription_id, we will directly return that
        # one.
        # Corresponds to the JSON property `subscriptionId`
        # @return [String]
        attr_accessor :subscription_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parent = args[:parent] if args.key?(:parent)
          @subscription = args[:subscription] if args.key?(:subscription)
          @subscription_id = args[:subscription_id] if args.key?(:subscription_id)
        end
      end
      
      # Describes the length of a period of a time.
      class GoogleCloudPaymentsResellerSubscriptionV1Duration
        include Google::Apis::Core::Hashable
      
        # number of duration units to be included.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # The unit used for the duration
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @unit = args[:unit] if args.key?(:unit)
        end
      end
      
      # Intent for entitling the previously provisioned subscription to an end user.
      class GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionIntent
        include Google::Apis::Core::Hashable
      
        # Required. The name of the subscription resource that is entitled to the
        # current end user. It is in the format of "partners/`partner_id`/subscriptions/`
        # subscriptionId`".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Partner request for entitling the previously provisioned subscription to an
      # end user. The end user identity is inferred from the request OAuth context.
      class GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The line items to be entitled. If unspecified, all line items will
        # be entitled.
        # Corresponds to the JSON property `lineItemEntitlementDetails`
        # @return [Array<Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequestLineItemEntitlementDetails>]
        attr_accessor :line_item_entitlement_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @line_item_entitlement_details = args[:line_item_entitlement_details] if args.key?(:line_item_entitlement_details)
        end
      end
      
      # The details of the line item to be entitled.
      class GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequestLineItemEntitlementDetails
        include Google::Apis::Core::Hashable
      
        # Required. The index of the line item to be entitled.
        # Corresponds to the JSON property `lineItemIndex`
        # @return [Fixnum]
        attr_accessor :line_item_index
      
        # Optional. Only applicable if the line item corresponds to a hard bundle.
        # Product resource names that identify the bundle elements to be entitled in the
        # line item. If unspecified, all bundle elements will be entitled. The format is
        # 'partners/`partner_id`/products/`product_id`'.
        # Corresponds to the JSON property `products`
        # @return [Array<String>]
        attr_accessor :products
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @line_item_index = args[:line_item_index] if args.key?(:line_item_index)
          @products = args[:products] if args.key?(:products)
        end
      end
      
      # Response that contains the entitled subscription resource.
      class GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse
        include Google::Apis::Core::Hashable
      
        # A subscription serves as a central billing entity between an external partner
        # and Google. The underlying Google services rely on the subscription state to
        # grant or revoke the user's service entitlement. It's important to note that
        # the subscription state may not always perfectly align with the user's service
        # entitlement. For example, some Google services may continue providing access
        # to the user until the current billing cycle ends, even if the subscription has
        # been immediately canceled. However, other services may not do the same. To
        # fully understand the specific details, please consult the relevant contract or
        # product policy.
        # Corresponds to the JSON property `subscription`
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Subscription]
        attr_accessor :subscription
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @subscription = args[:subscription] if args.key?(:subscription)
        end
      end
      
      # Request message for extending a Subscription resource. A new recurrence will
      # be made based on the subscription schedule defined by the original product.
      class GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest
        include Google::Apis::Core::Hashable
      
        # Describes the details of an extension request.
        # Corresponds to the JSON property `extension`
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Extension]
        attr_accessor :extension
      
        # Required. Restricted to 36 ASCII characters. A random UUID is recommended. The
        # idempotency key for the request. The ID generation logic is controlled by the
        # partner. request_id should be the same as on retries of the same request. A
        # different request_id must be used for a extension of a different cycle.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @extension = args[:extension] if args.key?(:extension)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Response that contains the timestamps after the extension.
      class GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse
        include Google::Apis::Core::Hashable
      
        # The time at which the subscription is expected to be extended, in ISO 8061
        # format. UTC timezone. Example, "cycleEndTime":"2019-08-31T17:28:54.564Z"
        # Corresponds to the JSON property `cycleEndTime`
        # @return [String]
        attr_accessor :cycle_end_time
      
        # End of the free trial period, in ISO 8061 format. UTC timezone. Example, "
        # freeTrialEndTime":"2019-08-31T17:28:54.564Z" This time will be set the same as
        # initial subscription creation time if no free trial period is offered to the
        # partner.
        # Corresponds to the JSON property `freeTrialEndTime`
        # @return [String]
        attr_accessor :free_trial_end_time
      
        # Output only. The time at which the subscription is expected to be renewed by
        # Google - a new charge will be incurred and the service entitlement will be
        # renewed. A non-immediate cancellation will take place at this time too, before
        # which, the service entitlement for the end user will remain valid. UTC
        # timezone in ISO 8061 format. For example: "2019-08-31T17:28:54.564Z"
        # Corresponds to the JSON property `renewalTime`
        # @return [String]
        attr_accessor :renewal_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cycle_end_time = args[:cycle_end_time] if args.key?(:cycle_end_time)
          @free_trial_end_time = args[:free_trial_end_time] if args.key?(:free_trial_end_time)
          @renewal_time = args[:renewal_time] if args.key?(:renewal_time)
        end
      end
      
      # Describes the details of an extension request.
      class GoogleCloudPaymentsResellerSubscriptionV1Extension
        include Google::Apis::Core::Hashable
      
        # Describes the length of a period of a time.
        # Corresponds to the JSON property `duration`
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Duration]
        attr_accessor :duration
      
        # Required. Identifier of the end-user in partner’s system.
        # Corresponds to the JSON property `partnerUserToken`
        # @return [String]
        attr_accessor :partner_user_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration = args[:duration] if args.key?(:duration)
          @partner_user_token = args[:partner_user_token] if args.key?(:partner_user_token)
        end
      end
      
      # Request to find eligible promotions for the current user.
      class GoogleCloudPaymentsResellerSubscriptionV1FindEligiblePromotionsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Specifies the filters for the promotion results. The syntax is
        # defined in https://google.aip.dev/160 with the following caveats: 1. Only the
        # following features are supported: - Logical operator `AND` - Comparison
        # operator `=` (no wildcards `*`) - Traversal operator `.` - Has operator `:` (
        # no wildcards `*`) 2. Only the following fields are supported: - `
        # applicableProducts` - `regionCodes` - `youtubePayload.partnerEligibilityId` - `
        # youtubePayload.postalCode` 3. Unless explicitly mentioned above, other
        # features are not supported. Example: `applicableProducts:partners/partner1/
        # products/product1 AND regionCodes:US AND youtubePayload.postalCode=94043 AND
        # youtubePayload.partnerEligibilityId=eligibility-id`
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Optional. The maximum number of promotions to return. The service may return
        # fewer than this value. If unspecified, at most 50 products will be returned.
        # The maximum value is 1000; values above 1000 will be coerced to 1000.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Optional. A page token, received from a previous `ListPromotions` call.
        # Provide this to retrieve the subsequent page. When paginating, all other
        # parameters provided to `ListPromotions` must match the call that provided the
        # page token.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
        end
      end
      
      # Response containing the found promotions for the current user.
      class GoogleCloudPaymentsResellerSubscriptionV1FindEligiblePromotionsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is empty, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The promotions for the current user.
        # Corresponds to the JSON property `promotions`
        # @return [Array<Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Promotion>]
        attr_accessor :promotions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @promotions = args[:promotions] if args.key?(:promotions)
        end
      end
      
      # Details for a subscriptiin line item with finite billing cycles.
      class GoogleCloudPaymentsResellerSubscriptionV1FiniteBillingCycleDetails
        include Google::Apis::Core::Hashable
      
        # Required. The number of a subscription line item billing cycles after which
        # billing will stop automatically.
        # Corresponds to the JSON property `billingCycleCountLimit`
        # @return [Fixnum]
        attr_accessor :billing_cycle_count_limit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_cycle_count_limit = args[:billing_cycle_count_limit] if args.key?(:billing_cycle_count_limit)
        end
      end
      
      # Request to generate a user session.
      class GoogleCloudPaymentsResellerSubscriptionV1GenerateUserSessionRequest
        include Google::Apis::Core::Hashable
      
        # The payload that describes the user intent.
        # Corresponds to the JSON property `intentPayload`
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1IntentPayload]
        attr_accessor :intent_payload
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @intent_payload = args[:intent_payload] if args.key?(:intent_payload)
        end
      end
      
      # Response that contains the details for generated user session.
      class GoogleCloudPaymentsResellerSubscriptionV1GenerateUserSessionResponse
        include Google::Apis::Core::Hashable
      
        # A user session contains a short-lived token that includes information required
        # to interact with Google Payments Reseller Platform using the following web
        # endpoints. - A user session token should be generated dynamically for an
        # authenticated user. You should refrain from sharing a token directly with a
        # user in an unauthenticated context, such as SMS, or email. - You can re-
        # generate new session tokens repeatedly for same `generate` request if
        # necessary, regardless of the previous tokens being expired or not. You don't
        # need to worry about multiple sessions resulting in duplicate fulfillments as
        # guaranteed by the same subscription id. Please refer to the [Google Managed
        # Signup](/payments/reseller/subscription/reference/index/User.Signup.
        # Integration/Google.Managed.Signup) documentation for additional integration
        # details.
        # Corresponds to the JSON property `userSession`
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1UserSession]
        attr_accessor :user_session
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_session = args[:user_session] if args.key?(:user_session)
        end
      end
      
      # Payload specific for Google Home products.
      class GoogleCloudPaymentsResellerSubscriptionV1GoogleHomePayload
        include Google::Apis::Core::Hashable
      
        # Output only. This identifies whether the subscription is attached to a Google
        # Home structure.
        # Corresponds to the JSON property `attachedToGoogleStructure`
        # @return [Boolean]
        attr_accessor :attached_to_google_structure
        alias_method :attached_to_google_structure?, :attached_to_google_structure
      
        # Optional. This identifies the structure ID on partner side that the
        # subscription should be applied to. Only required when the partner requires
        # structure mapping.
        # Corresponds to the JSON property `partnerStructureId`
        # @return [String]
        attr_accessor :partner_structure_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attached_to_google_structure = args[:attached_to_google_structure] if args.key?(:attached_to_google_structure)
          @partner_structure_id = args[:partner_structure_id] if args.key?(:partner_structure_id)
        end
      end
      
      # Payload specific to Google One products.
      class GoogleCloudPaymentsResellerSubscriptionV1GoogleOnePayload
        include Google::Apis::Core::Hashable
      
        # Campaign attributed to sales of this subscription.
        # Corresponds to the JSON property `campaigns`
        # @return [Array<String>]
        attr_accessor :campaigns
      
        # The type of offering the subscription was sold by the partner. e.g. VAS.
        # Corresponds to the JSON property `offering`
        # @return [String]
        attr_accessor :offering
      
        # The type of sales channel through which the subscription was sold.
        # Corresponds to the JSON property `salesChannel`
        # @return [String]
        attr_accessor :sales_channel
      
        # The identifier for the partner store where the subscription was sold.
        # Corresponds to the JSON property `storeId`
        # @return [String]
        attr_accessor :store_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @campaigns = args[:campaigns] if args.key?(:campaigns)
          @offering = args[:offering] if args.key?(:offering)
          @sales_channel = args[:sales_channel] if args.key?(:sales_channel)
          @store_id = args[:store_id] if args.key?(:store_id)
        end
      end
      
      # The payload that describes the user intent.
      class GoogleCloudPaymentsResellerSubscriptionV1IntentPayload
        include Google::Apis::Core::Hashable
      
        # Intent message for creating a Subscription resource.
        # Corresponds to the JSON property `createIntent`
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1CreateSubscriptionIntent]
        attr_accessor :create_intent
      
        # Intent for entitling the previously provisioned subscription to an end user.
        # Corresponds to the JSON property `entitleIntent`
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionIntent]
        attr_accessor :entitle_intent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_intent = args[:create_intent] if args.key?(:create_intent)
          @entitle_intent = args[:entitle_intent] if args.key?(:entitle_intent)
        end
      end
      
      # Response that contains the products.
      class GoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is empty, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The products for the specified partner.
        # Corresponds to the JSON property `products`
        # @return [Array<Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Product>]
        attr_accessor :products
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @products = args[:products] if args.key?(:products)
        end
      end
      
      # Response that contains the promotions.
      class GoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is empty, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The promotions for the specified partner.
        # Corresponds to the JSON property `promotions`
        # @return [Array<Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Promotion>]
        attr_accessor :promotions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @promotions = args[:promotions] if args.key?(:promotions)
        end
      end
      
      # Describes a location of an end user.
      class GoogleCloudPaymentsResellerSubscriptionV1Location
        include Google::Apis::Core::Hashable
      
        # The postal code this location refers to. Ex. "94043"
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # 2-letter ISO region code for current content region. Ex. “US” Please refers to:
        # https://en.wikipedia.org/wiki/ISO_3166-1
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @region_code = args[:region_code] if args.key?(:region_code)
        end
      end
      
      # A Product resource that defines a subscription service that can be resold.
      class GoogleCloudPaymentsResellerSubscriptionV1Product
        include Google::Apis::Core::Hashable
      
        # Details for a bundle product.
        # Corresponds to the JSON property `bundleDetails`
        # @return [Google::Apis::PaymentsresellersubscriptionV1::ProductBundleDetails]
        attr_accessor :bundle_details
      
        # Details for a subscriptiin line item with finite billing cycles.
        # Corresponds to the JSON property `finiteBillingCycleDetails`
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1FiniteBillingCycleDetails]
        attr_accessor :finite_billing_cycle_details
      
        # Identifier. Response only. Resource name of the product. It will have the
        # format of "partners/`partner_id`/products/`product_id`"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Price configs for the product in the available regions.
        # Corresponds to the JSON property `priceConfigs`
        # @return [Array<Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1ProductPriceConfig>]
        attr_accessor :price_configs
      
        # Output only. Specifies the type of the product.
        # Corresponds to the JSON property `productType`
        # @return [String]
        attr_accessor :product_type
      
        # Output only. 2-letter ISO region code where the product is available in. Ex. "
        # US" Please refers to: https://en.wikipedia.org/wiki/ISO_3166-1
        # Corresponds to the JSON property `regionCodes`
        # @return [Array<String>]
        attr_accessor :region_codes
      
        # Describes the length of a period of a time.
        # Corresponds to the JSON property `subscriptionBillingCycleDuration`
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Duration]
        attr_accessor :subscription_billing_cycle_duration
      
        # Output only. Localized human readable name of the product.
        # Corresponds to the JSON property `titles`
        # @return [Array<Google::Apis::PaymentsresellersubscriptionV1::GoogleTypeLocalizedText>]
        attr_accessor :titles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bundle_details = args[:bundle_details] if args.key?(:bundle_details)
          @finite_billing_cycle_details = args[:finite_billing_cycle_details] if args.key?(:finite_billing_cycle_details)
          @name = args[:name] if args.key?(:name)
          @price_configs = args[:price_configs] if args.key?(:price_configs)
          @product_type = args[:product_type] if args.key?(:product_type)
          @region_codes = args[:region_codes] if args.key?(:region_codes)
          @subscription_billing_cycle_duration = args[:subscription_billing_cycle_duration] if args.key?(:subscription_billing_cycle_duration)
          @titles = args[:titles] if args.key?(:titles)
        end
      end
      
      # The individual product that is included in the bundle.
      class GoogleCloudPaymentsResellerSubscriptionV1ProductBundleDetailsBundleElement
        include Google::Apis::Core::Hashable
      
        # Required. Output only. Product resource name that identifies the bundle
        # element. The format is 'partners/`partner_id`/products/`product_id`'.
        # Corresponds to the JSON property `product`
        # @return [String]
        attr_accessor :product
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @product = args[:product] if args.key?(:product)
        end
      end
      
      # Specifies product specific payload.
      class GoogleCloudPaymentsResellerSubscriptionV1ProductPayload
        include Google::Apis::Core::Hashable
      
        # Payload specific for Google Home products.
        # Corresponds to the JSON property `googleHomePayload`
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1GoogleHomePayload]
        attr_accessor :google_home_payload
      
        # Payload specific to Google One products.
        # Corresponds to the JSON property `googleOnePayload`
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1GoogleOnePayload]
        attr_accessor :google_one_payload
      
        # Payload specific to Youtube products.
        # Corresponds to the JSON property `youtubePayload`
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1YoutubePayload]
        attr_accessor :youtube_payload
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @google_home_payload = args[:google_home_payload] if args.key?(:google_home_payload)
          @google_one_payload = args[:google_one_payload] if args.key?(:google_one_payload)
          @youtube_payload = args[:youtube_payload] if args.key?(:youtube_payload)
        end
      end
      
      # Configs the prices in an available region.
      class GoogleCloudPaymentsResellerSubscriptionV1ProductPriceConfig
        include Google::Apis::Core::Hashable
      
        # Describes the amount unit including the currency code.
        # Corresponds to the JSON property `amount`
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Amount]
        attr_accessor :amount
      
        # Output only. 2-letter ISO region code where the product is available in. Ex. "
        # US".
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amount = args[:amount] if args.key?(:amount)
          @region_code = args[:region_code] if args.key?(:region_code)
        end
      end
      
      # A Promotion resource that defines a promotion for a subscription that can be
      # resold.
      class GoogleCloudPaymentsResellerSubscriptionV1Promotion
        include Google::Apis::Core::Hashable
      
        # Output only. The product ids this promotion can be applied to.
        # Corresponds to the JSON property `applicableProducts`
        # @return [Array<String>]
        attr_accessor :applicable_products
      
        # Optional. Specifies the end time (exclusive) of the period that the promotion
        # is available in. If unset, the promotion is available indefinitely.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Describes the length of a period of a time.
        # Corresponds to the JSON property `freeTrialDuration`
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Duration]
        attr_accessor :free_trial_duration
      
        # The details of a introductory pricing promotion.
        # Corresponds to the JSON property `introductoryPricingDetails`
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails]
        attr_accessor :introductory_pricing_details
      
        # Identifier. Response only. Resource name of the subscription promotion. It
        # will have the format of "partners/`partner_id`/promotion/`promotion_id`"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Specifies the type of the promotion.
        # Corresponds to the JSON property `promotionType`
        # @return [String]
        attr_accessor :promotion_type
      
        # Output only. 2-letter ISO region code where the promotion is available in. Ex.
        # "US" Please refers to: https://en.wikipedia.org/wiki/ISO_3166-1
        # Corresponds to the JSON property `regionCodes`
        # @return [Array<String>]
        attr_accessor :region_codes
      
        # Optional. Specifies the start time (inclusive) of the period that the
        # promotion is available in.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Output only. Localized human readable name of the promotion.
        # Corresponds to the JSON property `titles`
        # @return [Array<Google::Apis::PaymentsresellersubscriptionV1::GoogleTypeLocalizedText>]
        attr_accessor :titles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @applicable_products = args[:applicable_products] if args.key?(:applicable_products)
          @end_time = args[:end_time] if args.key?(:end_time)
          @free_trial_duration = args[:free_trial_duration] if args.key?(:free_trial_duration)
          @introductory_pricing_details = args[:introductory_pricing_details] if args.key?(:introductory_pricing_details)
          @name = args[:name] if args.key?(:name)
          @promotion_type = args[:promotion_type] if args.key?(:promotion_type)
          @region_codes = args[:region_codes] if args.key?(:region_codes)
          @start_time = args[:start_time] if args.key?(:start_time)
          @titles = args[:titles] if args.key?(:titles)
        end
      end
      
      # The details of a introductory pricing promotion.
      class GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails
        include Google::Apis::Core::Hashable
      
        # Output only. Specifies the introductory pricing periods.
        # Corresponds to the JSON property `introductoryPricingSpecs`
        # @return [Array<Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetailsIntroductoryPricingSpec>]
        attr_accessor :introductory_pricing_specs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @introductory_pricing_specs = args[:introductory_pricing_specs] if args.key?(:introductory_pricing_specs)
        end
      end
      
      # The duration of an introductory pricing promotion.
      class GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetailsIntroductoryPricingSpec
        include Google::Apis::Core::Hashable
      
        # Describes the amount unit including the currency code.
        # Corresponds to the JSON property `discountAmount`
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Amount]
        attr_accessor :discount_amount
      
        # Output only. The discount percentage in micros. For example, 50,000 represents
        # 5%.
        # Corresponds to the JSON property `discountRatioMicros`
        # @return [Fixnum]
        attr_accessor :discount_ratio_micros
      
        # Output only. The duration of an introductory offer in billing cycles.
        # Corresponds to the JSON property `recurrenceCount`
        # @return [Fixnum]
        attr_accessor :recurrence_count
      
        # Output only. 2-letter ISO region code where the product is available in. Ex. "
        # US".
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @discount_amount = args[:discount_amount] if args.key?(:discount_amount)
          @discount_ratio_micros = args[:discount_ratio_micros] if args.key?(:discount_ratio_micros)
          @recurrence_count = args[:recurrence_count] if args.key?(:recurrence_count)
          @region_code = args[:region_code] if args.key?(:region_code)
        end
      end
      
      # Request to resume a suspended subscription.
      class GoogleCloudPaymentsResellerSubscriptionV1ResumeSubscriptionRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response that contains the resumed subscription.
      class GoogleCloudPaymentsResellerSubscriptionV1ResumeSubscriptionResponse
        include Google::Apis::Core::Hashable
      
        # A subscription serves as a central billing entity between an external partner
        # and Google. The underlying Google services rely on the subscription state to
        # grant or revoke the user's service entitlement. It's important to note that
        # the subscription state may not always perfectly align with the user's service
        # entitlement. For example, some Google services may continue providing access
        # to the user until the current billing cycle ends, even if the subscription has
        # been immediately canceled. However, other services may not do the same. To
        # fully understand the specific details, please consult the relevant contract or
        # product policy.
        # Corresponds to the JSON property `subscription`
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Subscription]
        attr_accessor :subscription
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @subscription = args[:subscription] if args.key?(:subscription)
        end
      end
      
      # A description of what time period or moment in time the product or service is
      # being delivered over.
      class GoogleCloudPaymentsResellerSubscriptionV1ServicePeriod
        include Google::Apis::Core::Hashable
      
        # Optional. The end time of the service period. Time is exclusive.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Required. The start time of the service period. Time is inclusive.
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
      
      # A subscription serves as a central billing entity between an external partner
      # and Google. The underlying Google services rely on the subscription state to
      # grant or revoke the user's service entitlement. It's important to note that
      # the subscription state may not always perfectly align with the user's service
      # entitlement. For example, some Google services may continue providing access
      # to the user until the current billing cycle ends, even if the subscription has
      # been immediately canceled. However, other services may not do the same. To
      # fully understand the specific details, please consult the relevant contract or
      # product policy.
      class GoogleCloudPaymentsResellerSubscriptionV1Subscription
        include Google::Apis::Core::Hashable
      
        # Describes the details of a cancelled or cancelling subscription.
        # Corresponds to the JSON property `cancellationDetails`
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails]
        attr_accessor :cancellation_details
      
        # Output only. System generated timestamp when the subscription is created. UTC
        # timezone.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time at which the subscription is expected to be extended, in
        # ISO 8061 format. UTC timezone. For example: "2019-08-31T17:28:54.564Z"
        # Corresponds to the JSON property `cycleEndTime`
        # @return [String]
        attr_accessor :cycle_end_time
      
        # Output only. Indicates if the subscription is entitled to the end user.
        # Corresponds to the JSON property `endUserEntitled`
        # @return [Boolean]
        attr_accessor :end_user_entitled
        alias_method :end_user_entitled?, :end_user_entitled
      
        # Output only. End of the free trial period, in ISO 8061 format. For example, "
        # 2019-08-31T17:28:54.564Z". It will be set the same as createTime if no free
        # trial promotion is specified.
        # Corresponds to the JSON property `freeTrialEndTime`
        # @return [String]
        attr_accessor :free_trial_end_time
      
        # Required. The line items of the subscription.
        # Corresponds to the JSON property `lineItems`
        # @return [Array<Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1SubscriptionLineItem>]
        attr_accessor :line_items
      
        # Describes the details of the migrated subscription.
        # Corresponds to the JSON property `migrationDetails`
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1SubscriptionMigrationDetails]
        attr_accessor :migration_details
      
        # Identifier. Resource name of the subscription. It will have the format of "
        # partners/`partner_id`/subscriptions/`subscription_id`". This is available for
        # authorizeAddon, but otherwise is response only.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Identifier of the end-user in partner’s system. The value is
        # restricted to 63 ASCII characters at the maximum.
        # Corresponds to the JSON property `partnerUserToken`
        # @return [String]
        attr_accessor :partner_user_token
      
        # Output only. Describes the processing state of the subscription. See more
        # details at [the lifecycle of a subscription](/payments/reseller/subscription/
        # reference/index/Receive.Notifications#payments-subscription-lifecycle).
        # Corresponds to the JSON property `processingState`
        # @return [String]
        attr_accessor :processing_state
      
        # Optional. Deprecated: consider using `line_items` as the input. Required.
        # Resource name that identifies the purchased products. The format will be '
        # partners/`partner_id`/products/`product_id`'.
        # Corresponds to the JSON property `products`
        # @return [Array<String>]
        attr_accessor :products
      
        # Optional. Subscription-level promotions. Only free trial is supported on this
        # level. It determines the first renewal time of the subscription to be the end
        # of the free trial period. Specify the promotion resource name only when used
        # as input.
        # Corresponds to the JSON property `promotionSpecs`
        # @return [Array<Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1SubscriptionPromotionSpec>]
        attr_accessor :promotion_specs
      
        # Optional. Deprecated: consider using the top-level `promotion_specs` as the
        # input. Optional. Resource name that identifies one or more promotions that can
        # be applied on the product. A typical promotion for a subscription is Free
        # trial. The format will be 'partners/`partner_id`/promotions/`promotion_id`'.
        # Corresponds to the JSON property `promotions`
        # @return [Array<String>]
        attr_accessor :promotions
      
        # Optional. The timestamp when the user transaction was made with the Partner.
        # Specify for the case of "bundle with choice", and it must be before the
        # provision_time (when the user makes a selection).
        # Corresponds to the JSON property `purchaseTime`
        # @return [String]
        attr_accessor :purchase_time
      
        # Output only. The place where partners should redirect the end-user to after
        # creation. This field might also be populated when creation failed. However,
        # Partners should always prepare a default URL to redirect the user in case this
        # field is empty.
        # Corresponds to the JSON property `redirectUri`
        # @return [String]
        attr_accessor :redirect_uri
      
        # Output only. The time at which the subscription is expected to be renewed by
        # Google - a new charge will be incurred and the service entitlement will be
        # renewed. A non-immediate cancellation will take place at this time too, before
        # which, the service entitlement for the end user will remain valid. UTC
        # timezone in ISO 8061 format. For example: "2019-08-31T17:28:54.564Z"
        # Corresponds to the JSON property `renewalTime`
        # @return [String]
        attr_accessor :renewal_time
      
        # Describes a location of an end user.
        # Corresponds to the JSON property `serviceLocation`
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Location]
        attr_accessor :service_location
      
        # Output only. Describes the state of the subscription. See more details at [the
        # lifecycle of a subscription](/payments/reseller/subscription/reference/index/
        # Receive.Notifications#payments-subscription-lifecycle).
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. System generated timestamp when the subscription is most recently
        # updated. UTC timezone.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Details about the previous subscription that this new subscription upgrades/
        # downgrades from.
        # Corresponds to the JSON property `upgradeDowngradeDetails`
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails]
        attr_accessor :upgrade_downgrade_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cancellation_details = args[:cancellation_details] if args.key?(:cancellation_details)
          @create_time = args[:create_time] if args.key?(:create_time)
          @cycle_end_time = args[:cycle_end_time] if args.key?(:cycle_end_time)
          @end_user_entitled = args[:end_user_entitled] if args.key?(:end_user_entitled)
          @free_trial_end_time = args[:free_trial_end_time] if args.key?(:free_trial_end_time)
          @line_items = args[:line_items] if args.key?(:line_items)
          @migration_details = args[:migration_details] if args.key?(:migration_details)
          @name = args[:name] if args.key?(:name)
          @partner_user_token = args[:partner_user_token] if args.key?(:partner_user_token)
          @processing_state = args[:processing_state] if args.key?(:processing_state)
          @products = args[:products] if args.key?(:products)
          @promotion_specs = args[:promotion_specs] if args.key?(:promotion_specs)
          @promotions = args[:promotions] if args.key?(:promotions)
          @purchase_time = args[:purchase_time] if args.key?(:purchase_time)
          @redirect_uri = args[:redirect_uri] if args.key?(:redirect_uri)
          @renewal_time = args[:renewal_time] if args.key?(:renewal_time)
          @service_location = args[:service_location] if args.key?(:service_location)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
          @upgrade_downgrade_details = args[:upgrade_downgrade_details] if args.key?(:upgrade_downgrade_details)
        end
      end
      
      # Describes the details of a cancelled or cancelling subscription.
      class GoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The reason of the cancellation.
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
      
      # Individual line item definition of a subscription.
      class GoogleCloudPaymentsResellerSubscriptionV1SubscriptionLineItem
        include Google::Apis::Core::Hashable
      
        # Describes the amount unit including the currency code.
        # Corresponds to the JSON property `amount`
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Amount]
        attr_accessor :amount
      
        # The bundle details for a line item corresponding to a hard bundle.
        # Corresponds to the JSON property `bundleDetails`
        # @return [Google::Apis::PaymentsresellersubscriptionV1::SubscriptionLineItemBundleDetails]
        attr_accessor :bundle_details
      
        # Output only. Description of this line item.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Details for a subscriptiin line item with finite billing cycles.
        # Corresponds to the JSON property `finiteBillingCycleDetails`
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1FiniteBillingCycleDetails]
        attr_accessor :finite_billing_cycle_details
      
        # Output only. The free trial end time will be populated after the line item is
        # successfully processed. End time of the line item free trial period, in ISO
        # 8061 format. For example, "2019-08-31T17:28:54.564Z". It will be set the same
        # as createTime if no free trial promotion is specified.
        # Corresponds to the JSON property `lineItemFreeTrialEndTime`
        # @return [String]
        attr_accessor :line_item_free_trial_end_time
      
        # Output only. A unique index of the subscription line item.
        # Corresponds to the JSON property `lineItemIndex`
        # @return [Fixnum]
        attr_accessor :line_item_index
      
        # Optional. The promotions applied on the line item. It can be: - an
        # introductory pricing promotion. - a free trial promotion. This feature is not
        # enabled. If used, the request will be rejected. When used as input in Create
        # or Provision API, specify its resource name only.
        # Corresponds to the JSON property `lineItemPromotionSpecs`
        # @return [Array<Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1SubscriptionPromotionSpec>]
        attr_accessor :line_item_promotion_specs
      
        # Details for a ONE_TIME recurrence line item.
        # Corresponds to the JSON property `oneTimeRecurrenceDetails`
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1SubscriptionLineItemOneTimeRecurrenceDetails]
        attr_accessor :one_time_recurrence_details
      
        # Required. Product resource name that identifies one the line item The format
        # is 'partners/`partner_id`/products/`product_id`'.
        # Corresponds to the JSON property `product`
        # @return [String]
        attr_accessor :product
      
        # Specifies product specific payload.
        # Corresponds to the JSON property `productPayload`
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1ProductPayload]
        attr_accessor :product_payload
      
        # Output only. The recurrence type of the line item.
        # Corresponds to the JSON property `recurrenceType`
        # @return [String]
        attr_accessor :recurrence_type
      
        # Output only. The state of the line item.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amount = args[:amount] if args.key?(:amount)
          @bundle_details = args[:bundle_details] if args.key?(:bundle_details)
          @description = args[:description] if args.key?(:description)
          @finite_billing_cycle_details = args[:finite_billing_cycle_details] if args.key?(:finite_billing_cycle_details)
          @line_item_free_trial_end_time = args[:line_item_free_trial_end_time] if args.key?(:line_item_free_trial_end_time)
          @line_item_index = args[:line_item_index] if args.key?(:line_item_index)
          @line_item_promotion_specs = args[:line_item_promotion_specs] if args.key?(:line_item_promotion_specs)
          @one_time_recurrence_details = args[:one_time_recurrence_details] if args.key?(:one_time_recurrence_details)
          @product = args[:product] if args.key?(:product)
          @product_payload = args[:product_payload] if args.key?(:product_payload)
          @recurrence_type = args[:recurrence_type] if args.key?(:recurrence_type)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # The details for an element in the hard bundle.
      class GoogleCloudPaymentsResellerSubscriptionV1SubscriptionLineItemBundleDetailsBundleElementDetails
        include Google::Apis::Core::Hashable
      
        # Output only. Product resource name that identifies the bundle element. The
        # format is 'partners/`partner_id`/products/`product_id`'.
        # Corresponds to the JSON property `product`
        # @return [String]
        attr_accessor :product
      
        # Output only. The time when this product is linked to an end user.
        # Corresponds to the JSON property `userAccountLinkedTime`
        # @return [String]
        attr_accessor :user_account_linked_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @product = args[:product] if args.key?(:product)
          @user_account_linked_time = args[:user_account_linked_time] if args.key?(:user_account_linked_time)
        end
      end
      
      # Details for a ONE_TIME recurrence line item.
      class GoogleCloudPaymentsResellerSubscriptionV1SubscriptionLineItemOneTimeRecurrenceDetails
        include Google::Apis::Core::Hashable
      
        # A description of what time period or moment in time the product or service is
        # being delivered over.
        # Corresponds to the JSON property `servicePeriod`
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1ServicePeriod]
        attr_accessor :service_period
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service_period = args[:service_period] if args.key?(:service_period)
        end
      end
      
      # Describes the details of the migrated subscription.
      class GoogleCloudPaymentsResellerSubscriptionV1SubscriptionMigrationDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The migrated subscription id in the legacy system.
        # Corresponds to the JSON property `migratedSubscriptionId`
        # @return [String]
        attr_accessor :migrated_subscription_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @migrated_subscription_id = args[:migrated_subscription_id] if args.key?(:migrated_subscription_id)
        end
      end
      
      # Describes the spec for one promotion.
      class GoogleCloudPaymentsResellerSubscriptionV1SubscriptionPromotionSpec
        include Google::Apis::Core::Hashable
      
        # Describes the length of a period of a time.
        # Corresponds to the JSON property `freeTrialDuration`
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Duration]
        attr_accessor :free_trial_duration
      
        # The details of a introductory pricing promotion.
        # Corresponds to the JSON property `introductoryPricingDetails`
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails]
        attr_accessor :introductory_pricing_details
      
        # Required. Promotion resource name that identifies a promotion. The format is '
        # partners/`partner_id`/promotions/`promotion_id`'.
        # Corresponds to the JSON property `promotion`
        # @return [String]
        attr_accessor :promotion
      
        # Output only. The type of the promotion for the spec.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @free_trial_duration = args[:free_trial_duration] if args.key?(:free_trial_duration)
          @introductory_pricing_details = args[:introductory_pricing_details] if args.key?(:introductory_pricing_details)
          @promotion = args[:promotion] if args.key?(:promotion)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Details about the previous subscription that this new subscription upgrades/
      # downgrades from.
      class GoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails
        include Google::Apis::Core::Hashable
      
        # Required. Specifies the billing cycle spec for the new upgraded/downgraded
        # subscription.
        # Corresponds to the JSON property `billingCycleSpec`
        # @return [String]
        attr_accessor :billing_cycle_spec
      
        # Required. The previous subscription id to be replaced. This is not the full
        # resource name, use the subscription_id segment only.
        # Corresponds to the JSON property `previousSubscriptionId`
        # @return [String]
        attr_accessor :previous_subscription_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_cycle_spec = args[:billing_cycle_spec] if args.key?(:billing_cycle_spec)
          @previous_subscription_id = args[:previous_subscription_id] if args.key?(:previous_subscription_id)
        end
      end
      
      # Request to suspend a subscription.
      class GoogleCloudPaymentsResellerSubscriptionV1SuspendSubscriptionRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response that contains the suspended subscription.
      class GoogleCloudPaymentsResellerSubscriptionV1SuspendSubscriptionResponse
        include Google::Apis::Core::Hashable
      
        # A subscription serves as a central billing entity between an external partner
        # and Google. The underlying Google services rely on the subscription state to
        # grant or revoke the user's service entitlement. It's important to note that
        # the subscription state may not always perfectly align with the user's service
        # entitlement. For example, some Google services may continue providing access
        # to the user until the current billing cycle ends, even if the subscription has
        # been immediately canceled. However, other services may not do the same. To
        # fully understand the specific details, please consult the relevant contract or
        # product policy.
        # Corresponds to the JSON property `subscription`
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Subscription]
        attr_accessor :subscription
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @subscription = args[:subscription] if args.key?(:subscription)
        end
      end
      
      # Request to revoke a cancellation request.
      class GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response that contains the updated subscription resource.
      class GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse
        include Google::Apis::Core::Hashable
      
        # A subscription serves as a central billing entity between an external partner
        # and Google. The underlying Google services rely on the subscription state to
        # grant or revoke the user's service entitlement. It's important to note that
        # the subscription state may not always perfectly align with the user's service
        # entitlement. For example, some Google services may continue providing access
        # to the user until the current billing cycle ends, even if the subscription has
        # been immediately canceled. However, other services may not do the same. To
        # fully understand the specific details, please consult the relevant contract or
        # product policy.
        # Corresponds to the JSON property `subscription`
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Subscription]
        attr_accessor :subscription
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @subscription = args[:subscription] if args.key?(:subscription)
        end
      end
      
      # A user session contains a short-lived token that includes information required
      # to interact with Google Payments Reseller Platform using the following web
      # endpoints. - A user session token should be generated dynamically for an
      # authenticated user. You should refrain from sharing a token directly with a
      # user in an unauthenticated context, such as SMS, or email. - You can re-
      # generate new session tokens repeatedly for same `generate` request if
      # necessary, regardless of the previous tokens being expired or not. You don't
      # need to worry about multiple sessions resulting in duplicate fulfillments as
      # guaranteed by the same subscription id. Please refer to the [Google Managed
      # Signup](/payments/reseller/subscription/reference/index/User.Signup.
      # Integration/Google.Managed.Signup) documentation for additional integration
      # details.
      class GoogleCloudPaymentsResellerSubscriptionV1UserSession
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which the user session expires.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Output only. The encrypted token of the user session, including the
        # information of the user's intent and request. This token should be provided
        # when redirecting the user to Google.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @token = args[:token] if args.key?(:token)
        end
      end
      
      # Payload specific to Youtube products.
      class GoogleCloudPaymentsResellerSubscriptionV1YoutubePayload
        include Google::Apis::Core::Hashable
      
        # Output only. The access expiration time for this line item.
        # Corresponds to the JSON property `accessEndTime`
        # @return [String]
        attr_accessor :access_end_time
      
        # The list of eligibility_ids which are applicable for the line item.
        # Corresponds to the JSON property `partnerEligibilityIds`
        # @return [Array<String>]
        attr_accessor :partner_eligibility_ids
      
        # Optional. Specifies the plan type offered to the end user by the partner.
        # Corresponds to the JSON property `partnerPlanType`
        # @return [String]
        attr_accessor :partner_plan_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_end_time = args[:access_end_time] if args.key?(:access_end_time)
          @partner_eligibility_ids = args[:partner_eligibility_ids] if args.key?(:partner_eligibility_ids)
          @partner_plan_type = args[:partner_plan_type] if args.key?(:partner_plan_type)
        end
      end
      
      # Localized variant of a text in a particular language.
      class GoogleTypeLocalizedText
        include Google::Apis::Core::Hashable
      
        # The text's BCP-47 language code, such as "en-US" or "sr-Latn". For more
        # information, see http://www.unicode.org/reports/tr35/#
        # Unicode_locale_identifier.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Localized string in the language corresponding to language_code below.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_code = args[:language_code] if args.key?(:language_code)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Details for a bundle product.
      class ProductBundleDetails
        include Google::Apis::Core::Hashable
      
        # The individual products that are included in the bundle.
        # Corresponds to the JSON property `bundleElements`
        # @return [Array<Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1ProductBundleDetailsBundleElement>]
        attr_accessor :bundle_elements
      
        # The entitlement mode of the bundle product.
        # Corresponds to the JSON property `entitlementMode`
        # @return [String]
        attr_accessor :entitlement_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bundle_elements = args[:bundle_elements] if args.key?(:bundle_elements)
          @entitlement_mode = args[:entitlement_mode] if args.key?(:entitlement_mode)
        end
      end
      
      # The bundle details for a line item corresponding to a hard bundle.
      class SubscriptionLineItemBundleDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The details for each element in the hard bundle.
        # Corresponds to the JSON property `bundleElementDetails`
        # @return [Array<Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1SubscriptionLineItemBundleDetailsBundleElementDetails>]
        attr_accessor :bundle_element_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bundle_element_details = args[:bundle_element_details] if args.key?(:bundle_element_details)
        end
      end
    end
  end
end
