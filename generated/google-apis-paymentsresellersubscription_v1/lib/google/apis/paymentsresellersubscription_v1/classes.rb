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
      
      # 
      class GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest
        include Google::Apis::Core::Hashable
      
        # Optional. If true, the subscription will be cancelled immediately. Otherwise,
        # the subscription will be cancelled at renewal_time, and therefore no prorated
        # refund will be issued for the rest of the cycle.
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
      
      # 
      class GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse
        include Google::Apis::Core::Hashable
      
        # A Subscription resource managed by 3P Partners.
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
      
      # Partner request for entitling the previously provisioned subscription to an
      # end user. The end user identity is inferred from the request OAuth context.
      class GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse
        include Google::Apis::Core::Hashable
      
        # A Subscription resource managed by 3P Partners.
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
        # different request_id must be used for a extension of a different cycle. A
        # random UUID is recommended.
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
      
      # 
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
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cycle_end_time = args[:cycle_end_time] if args.key?(:cycle_end_time)
          @free_trial_end_time = args[:free_trial_end_time] if args.key?(:free_trial_end_time)
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
      
      # 
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
      
      # 
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
      
        # Output only. Response only. Resource name of the subscription. It will have
        # the format of "partners/`partner_id`/products/`product_id`"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
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
          @name = args[:name] if args.key?(:name)
          @region_codes = args[:region_codes] if args.key?(:region_codes)
          @subscription_billing_cycle_duration = args[:subscription_billing_cycle_duration] if args.key?(:subscription_billing_cycle_duration)
          @titles = args[:titles] if args.key?(:titles)
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
      
        # Output only. Response only. Resource name of the subscription promotion. It
        # will have the format of "partners/`partner_id`/promotion/`promotion_id`"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
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
          @name = args[:name] if args.key?(:name)
          @region_codes = args[:region_codes] if args.key?(:region_codes)
          @start_time = args[:start_time] if args.key?(:start_time)
          @titles = args[:titles] if args.key?(:titles)
        end
      end
      
      # A Subscription resource managed by 3P Partners.
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
      
        # Output only. Response only. Resource name of the subscription. It will have
        # the format of "partners/`partner_id`/subscriptions/`subscription_id`"
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
      
        # Required. Resource name that identifies one or more subscription products. The
        # format will be 'partners/`partner_id`/products/`product_id`'.
        # Corresponds to the JSON property `products`
        # @return [Array<String>]
        attr_accessor :products
      
        # Optional. Resource name that identifies one or more promotions that can be
        # applied on the product. A typical promotion for a subscription is Free trial.
        # The format will be 'partners/`partner_id`/promotions/`promotion_id`'.
        # Corresponds to the JSON property `promotions`
        # @return [Array<String>]
        attr_accessor :promotions
      
        # Output only. The place where partners should redirect the end-user to after
        # creation. This field might also be populated when creation failed. However,
        # Partners should always prepare a default URL to redirect the user in case this
        # field is empty.
        # Corresponds to the JSON property `redirectUri`
        # @return [String]
        attr_accessor :redirect_uri
      
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
          @name = args[:name] if args.key?(:name)
          @partner_user_token = args[:partner_user_token] if args.key?(:partner_user_token)
          @processing_state = args[:processing_state] if args.key?(:processing_state)
          @products = args[:products] if args.key?(:products)
          @promotions = args[:promotions] if args.key?(:promotions)
          @redirect_uri = args[:redirect_uri] if args.key?(:redirect_uri)
          @service_location = args[:service_location] if args.key?(:service_location)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
          @upgrade_downgrade_details = args[:upgrade_downgrade_details] if args.key?(:upgrade_downgrade_details)
        end
      end
      
      # Describes the details of a cancelled or cancelling subscription.
      class GoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails
        include Google::Apis::Core::Hashable
      
        # The reason of the cancellation.
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
      
        # A Subscription resource managed by 3P Partners.
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
      
      # Localized variant of a text in a particular language.
      class GoogleTypeLocalizedText
        include Google::Apis::Core::Hashable
      
        # The text's BCP-47 language code, such as "en-US" or "sr-Latn". For more
        # information, see http://www.unicode.org/reports/tr35/#
        # Unicode_locale_identifier.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Localized string in the language corresponding to `language_code' below.
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
    end
  end
end
