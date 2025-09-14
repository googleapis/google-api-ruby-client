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
    module CloudcommerceprocurementV1
      
      # Represents an account that was established by the customer on the service
      # provider's system.
      class Account
        include Google::Apis::Core::Hashable
      
        # Output only. The approvals for this account. These approvals are used to track
        # actions that are permitted or have been completed by a customer within the
        # context of the provider. This might include a sign up flow or a provisioning
        # step, for example, that the provider can admit to having happened.
        # Corresponds to the JSON property `approvals`
        # @return [Array<Google::Apis::CloudcommerceprocurementV1::Approval>]
        attr_accessor :approvals
      
        # Output only. The creation timestamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The custom properties that were collected from the user to create
        # this account.
        # Corresponds to the JSON property `inputProperties`
        # @return [Hash<String,Object>]
        attr_accessor :input_properties
      
        # Output only. The resource name of the account. Account names have the form `
        # accounts/`account_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The identifier of the service provider that this account was
        # created against. Each service provider is assigned a unique provider value
        # when they onboard with Cloud Commerce platform.
        # Corresponds to the JSON property `provider`
        # @return [String]
        attr_accessor :provider
      
        # Output only. The state of the account. This is used to decide whether the
        # customer is in good standing with the provider and is able to make purchases.
        # An account might not be able to make a purchase if the billing account is
        # suspended, for example.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The last update timestamp.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @approvals = args[:approvals] if args.key?(:approvals)
          @create_time = args[:create_time] if args.key?(:create_time)
          @input_properties = args[:input_properties] if args.key?(:input_properties)
          @name = args[:name] if args.key?(:name)
          @provider = args[:provider] if args.key?(:provider)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # An approval for some action on an account.
      class Approval
        include Google::Apis::Core::Hashable
      
        # Output only. The name of the approval.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. An explanation for the state of the approval.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # Output only. The state of the approval.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Optional. The last update timestamp of the approval.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @reason = args[:reason] if args.key?(:reason)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Request message for PartnerProcurementService.ApproveAccount.
      class ApproveAccountRequest
        include Google::Apis::Core::Hashable
      
        # The name of the approval being approved. If absent and there is only one
        # approval possible, that approval will be granted. If absent and there are many
        # approvals possible, the request will fail with a 400 Bad Request. Optional.
        # Corresponds to the JSON property `approvalName`
        # @return [String]
        attr_accessor :approval_name
      
        # Set of properties that should be associated with the account. Optional.
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,String>]
        attr_accessor :properties
      
        # Free form text string explaining the approval reason. Optional. Max allowed
        # length: 256 bytes. Longer strings will be truncated.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @approval_name = args[:approval_name] if args.key?(:approval_name)
          @properties = args[:properties] if args.key?(:properties)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # Request message for [PartnerProcurementService.ApproveEntitlementPlanChange[].
      class ApproveEntitlementPlanChangeRequest
        include Google::Apis::Core::Hashable
      
        # Required. Name of the pending plan that's being approved.
        # Corresponds to the JSON property `pendingPlanName`
        # @return [String]
        attr_accessor :pending_plan_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pending_plan_name = args[:pending_plan_name] if args.key?(:pending_plan_name)
        end
      end
      
      # Request message for [PartnerProcurementService.ApproveEntitlement[].
      class ApproveEntitlementRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The resource name of the entitlement that was migrated, with the
        # format `providers/`provider_id`/entitlements/`entitlement_id``. Should only be
        # sent when resources have been migrated from entitlement_migrated to the new
        # entitlement. Optional.
        # Corresponds to the JSON property `entitlementMigrated`
        # @return [String]
        attr_accessor :entitlement_migrated
      
        # Set of properties that should be associated with the entitlement. Optional.
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,String>]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entitlement_migrated = args[:entitlement_migrated] if args.key?(:entitlement_migrated)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # A resource using (consuming) this entitlement.
      class Consumer
        include Google::Apis::Core::Hashable
      
        # A project name with format `projects/`.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project = args[:project] if args.key?(:project)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Represents a procured product of a customer.
      class Entitlement
        include Google::Apis::Core::Hashable
      
        # Output only. The resource name of the account that this entitlement is based
        # on, if any.
        # Corresponds to the JSON property `account`
        # @return [String]
        attr_accessor :account
      
        # Output only. The reason the entitlement was cancelled. If this entitlement
        # wasn't cancelled, this field is empty. Possible values include "unknown", "
        # expired", "user-cancelled", "account-closed", "billing-disabled" (if the
        # customer has manually disabled billing to their resources), "user-aborted",
        # and "migrated" (if the entitlement has migrated across products). Values of
        # this field are subject to change, and we recommend that you don't build your
        # technical integration to rely on these fields.
        # Corresponds to the JSON property `cancellationReason`
        # @return [String]
        attr_accessor :cancellation_reason
      
        # Output only. The resources using this entitlement, if applicable.
        # Corresponds to the JSON property `consumers`
        # @return [Array<Google::Apis::CloudcommerceprocurementV1::Consumer>]
        attr_accessor :consumers
      
        # Output only. The creation timestamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The entitlement benefit IDs associated with the purchase.
        # Corresponds to the JSON property `entitlementBenefitIds`
        # @return [Array<String>]
        attr_accessor :entitlement_benefit_ids
      
        # Output only. The custom properties that were collected from the user to create
        # this entitlement.
        # Corresponds to the JSON property `inputProperties`
        # @return [Hash<String,Object>]
        attr_accessor :input_properties
      
        # Provider-supplied message that is displayed to the end user. Currently this is
        # used to communicate progress and ETA for provisioning. This field can be
        # updated only when a user is waiting for an action from the provider, i.e.
        # entitlement state is EntitlementState.ENTITLEMENT_ACTIVATION_REQUESTED or
        # EntitlementState.ENTITLEMENT_PENDING_PLAN_CHANGE_APPROVAL. This field is
        # cleared automatically when the entitlement state changes.
        # Corresponds to the JSON property `messageToUser`
        # @return [String]
        attr_accessor :message_to_user
      
        # Output only. The resource name of the entitlement. Entitlement names have the
        # form `providers/`provider_id`/entitlements/`entitlement_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The end time of the new offer. If the offer was has a term
        # duration instead of a specified end date, this field is empty. This field is
        # populated even if the entitlement isn't active yet. If there's no upcoming
        # offer, the field is empty. * If the entitlement is in
        # ENTITLEMENT_ACTIVATION_REQUESTED, ENTITLEMENT_ACTIVE, or
        # ENTITLEMENT_PENDING_CANCELLATION state, then this field will be empty. * If
        # the entitlement is in ENTITLEMENT_PENDING_PLAN_CHANGE_APPROVAL or
        # ENTITLEMENT_PENDING_PLAN_CHANGE state, then this field will be populated with
        # the expected end time of the upcoming offer (in the future) if the upcoming
        # offer has a specified end date. Otherwise, this field will be empty. * If the
        # entitlement is in ENTITLEMENT_CANCELLED state, then this field will be empty.
        # Corresponds to the JSON property `newOfferEndTime`
        # @return [String]
        attr_accessor :new_offer_end_time
      
        # Output only. The timestamp when the new offer becomes effective. This field is
        # populated even if the entitlement isn't active yet. If there's no upcoming
        # offer, the field is empty. * If the entitlement is in
        # ENTITLEMENT_ACTIVATION_REQUESTED state, this field will not be populated when
        # the entitlement is not yet approved. But after the entitlement is approved,
        # then this field will be populated with effective time of the upcoming offer. *
        # If the entitlement is in ENTITLEMENT_ACTIVE or
        # ENTITLEMENT_PENDING_CANCELLATION state, this field will not be populated. * If
        # the entitlement is in ENTITLEMENT_PENDING_PLAN_CHANGE_APPROVAL state, this
        # field will not be populated since the entitlement change is waiting on
        # approval. * If the entitlement is in ENTITLEMENT_PENDING_PLAN_CHANGE state,
        # this field will be populated with the expected effective time of the upcoming
        # offer (in the future). * If the entitlement is in ENTITLEMENT_CANCELLED state,
        # then this field will be empty.
        # Corresponds to the JSON property `newOfferStartTime`
        # @return [String]
        attr_accessor :new_offer_start_time
      
        # Output only. The name of the offer the entitlement is switching to upon a
        # pending plan change. Only exists if the pending plan change is moving to an
        # offer. This field isn't populated for entitlements which aren't active yet.
        # Format: 'projects/`project`/services/`service`/privateOffers/`offer`' OR '
        # projects/`project`/services/`service`/standardOffers/`offer`', depending on
        # whether the offer is private or public. The `service` in the name is the
        # listing service of the offer. It could be either the product service that the
        # offer is referencing, or a generic private offer parent service. We recommend
        # that you don't build your integration to rely on the meaning of this `service`
        # part. * If the entitlement is in ENTITLEMENT_ACTIVATION_REQUESTED,
        # ENTITLEMENT_ACTIVE or ENTITLEMENT_PENDING_CANCELLATION state, then this field
        # will be empty. * If the entitlement is in
        # ENTITLEMENT_PENDING_PLAN_CHANGE_APPROVAL or ENTITLEMENT_PENDING_PLAN_CHANGE
        # state, then this field will be populated with the upcoming offer. * If the
        # entitlement is in ENTITLEMENT_CANCELLED state, then this will be empty.
        # Corresponds to the JSON property `newPendingOffer`
        # @return [String]
        attr_accessor :new_pending_offer
      
        # Output only. The duration of the new offer, in ISO 8601 duration format. This
        # field isn't populated for entitlements which aren't active yet, only for
        # pending offer changes. If the offer was has a specified end date instead of a
        # duration, this field is empty. * If the entitlement is in
        # ENTITLEMENT_ACTIVATION_REQUESTED, ENTITLEENTITLEMENT_ACTIVE, or
        # ENTITLEMENT_PENDING_CANCELLATION state, then this field is empty. * If the
        # entitlement is in ENTITLEMENT_PENDING_PLAN_CHANGE_APPROVAL or
        # ENTITLEMENT_PENDING_PLAN_CHANGE state, then this field will be populated with
        # the duration of the upcoming offer, if the upcoming offer is does not have a
        # specified end date. Otherwise, this field will be empty. * If the entitlement
        # is in ENTITLEMENT_CANCELLED state, then this field will be empty.
        # Corresponds to the JSON property `newPendingOfferDuration`
        # @return [String]
        attr_accessor :new_pending_offer_duration
      
        # Output only. The identifier of the pending new plan. Required if the product
        # has plans and the entitlement has a pending plan change.
        # Corresponds to the JSON property `newPendingPlan`
        # @return [String]
        attr_accessor :new_pending_plan
      
        # Output only. The name of the offer that was procured. Field is empty if order
        # was not made using an offer. Format: 'projects/`project`/services/`service`/
        # privateOffers/`offer`' OR 'projects/`project`/services/`service`/
        # standardOffers/`offer`', depending on whether the offer is private or public.
        # The `service` in the name is the listing service of the offer. It could be
        # either the product service that the offer is referencing, or a generic private
        # offer parent service. We recommend that you don't build your integration to
        # rely on the meaning of this `service` part. * If the entitlement is in
        # ENTITLEMENT_ACTIVATION_REQUESTED state, this field will be populated with the
        # upcoming offer. * If the entitlement is in ENTITLEMENT_ACTIVE,
        # ENTITLEMENT_PENDING_CANCELLATION, ENTITLEMENT_PENDING_PLAN_CHANGE, or
        # ENTITLEMENT_PENDING_PLAN_CHANGE_APPROVAL state, this field will be populated
        # with the current offer. * If the entitlement is in ENTITLEMENT_CANCELLED state,
        # then this field will be populated with the latest offer the order was
        # associated with.
        # Corresponds to the JSON property `offer`
        # @return [String]
        attr_accessor :offer
      
        # Output only. The offer duration of the current offer in ISO 8601 duration
        # format. Field is empty if entitlement was not made using an offer. If the
        # offer has a specified end date instead of a duration, this field is empty. *
        # If the entitlement is in ENTITLEMENT_ACTIVATION_REQUESTED state, then this
        # field will be populated with the duration of the upcoming offer, if the
        # upcoming offer does not have a specified end date. Otherwise, this field will
        # be empty. * If the entitlement is in ENTITLEMENT_ACTIVE,
        # ENTITLEMENT_PENDING_CANCELLATION, ENTITLEMENT_PENDING_PLAN_CHANGE, or
        # ENTITLEMENT_PENDING_PLAN_CHANGE_APPROVAL state, then this field will be
        # populated with the duration of the current offer if the current offer is does
        # not have a specific end date. Otherwise, this field will be empty. * If the
        # entitlement is in ENTITLEMENT_CANCELLED state, then this field will be
        # populated with the duration of the latest offer the order was associated with
        # if that offer does not have a specific end date. Otherwise, this field will be
        # empty.
        # Corresponds to the JSON property `offerDuration`
        # @return [String]
        attr_accessor :offer_duration
      
        # Output only. End time for the Offer associated with this entitlement. Note
        # that this field value can change over time. This occurs naturally even if the
        # offer is not changed, due to auto renewal. * If the entitlement is in
        # ENTITLEMENT_ACTIVATION_REQUESTED state, then: * If the entitlement is not yet
        # approved, then this field will be populated with the expected end time of the
        # upcoming offer (in the future) if the upcoming offer has a specified end date.
        # Otherwise this field will be empty. * If the entitlement is approved, then
        # this field will always be populated with the expected end time of the upcoming
        # offer (in the future). This means both this field, and the offer_duration
        # field, can co-exist. * If the entitlement is in ENTITLEMENT_ACTIVE or
        # ENTITLEMENT_PENDING_CANCELLATION state, then this field will be populated with
        # the actual expected end time of the current offer (in the futre). Meaning,
        # this field will be set, regardless of whether the offer has a specific end
        # date or a duration. This means both this field, and the offer_duration field,
        # can co-exist. * If the entitlement is in
        # ENTITLEMENT_PENDING_PLAN_CHANGE_APPROVAL or ENTITLEMENT_PENDING_PLAN_CHANGE
        # state: * If the current offer has already ended and became pure PAYG, then
        # this field reflects the ACTUAL end time of the current offer (in the past). *
        # Otherwise, then this is the EXPECTED end date of the current offer (in the
        # future). * If the entitlement is in ENTITLEMENT_CANCELLED state, then this
        # field will be populated with the ACTUAL end time of the latest offer the order
        # was associated with (in the past). If the entitlement was cancelled before any
        # offer started, then this field will be empty.
        # Corresponds to the JSON property `offerEndTime`
        # @return [String]
        attr_accessor :offer_end_time
      
        # Output only. The order ID of this entitlement, without any `orders/` resource
        # name prefix.
        # Corresponds to the JSON property `orderId`
        # @return [String]
        attr_accessor :order_id
      
        # Output only. The identifier of the plan that was procured. Required if the
        # product has plans.
        # Corresponds to the JSON property `plan`
        # @return [String]
        attr_accessor :plan
      
        # Output only. The identifier of the entity that was purchased. This may
        # actually represent a product, quote, or offer. We strongly recommend that you
        # use the following more explicit fields: productExternalName, quoteExternalName,
        # or offer.
        # Corresponds to the JSON property `product`
        # @return [String]
        attr_accessor :product
      
        # Output only. The identifier of the product that was procured.
        # Corresponds to the JSON property `productExternalName`
        # @return [String]
        attr_accessor :product_external_name
      
        # Output only. The identifier of the service provider that this entitlement was
        # created against. Each service provider is assigned a unique provider value
        # when they onboard with Cloud Commerce platform.
        # Corresponds to the JSON property `provider`
        # @return [String]
        attr_accessor :provider
      
        # Output only. The identifier of the quote that was used to procure. Empty if
        # the order is not purchased using a quote.
        # Corresponds to the JSON property `quoteExternalName`
        # @return [String]
        attr_accessor :quote_external_name
      
        # Output only. The state of the entitlement.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. End time for the subscription corresponding to this entitlement.
        # Corresponds to the JSON property `subscriptionEndTime`
        # @return [String]
        attr_accessor :subscription_end_time
      
        # Output only. The last update timestamp.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. The consumerId to use when reporting usage through the Service
        # Control API. See the consumerId field at [Reporting Metrics](https://cloud.
        # google.com/service-control/reporting-metrics) for more details. This field is
        # present only if the product has usage-based billing configured.
        # Corresponds to the JSON property `usageReportingId`
        # @return [String]
        attr_accessor :usage_reporting_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] if args.key?(:account)
          @cancellation_reason = args[:cancellation_reason] if args.key?(:cancellation_reason)
          @consumers = args[:consumers] if args.key?(:consumers)
          @create_time = args[:create_time] if args.key?(:create_time)
          @entitlement_benefit_ids = args[:entitlement_benefit_ids] if args.key?(:entitlement_benefit_ids)
          @input_properties = args[:input_properties] if args.key?(:input_properties)
          @message_to_user = args[:message_to_user] if args.key?(:message_to_user)
          @name = args[:name] if args.key?(:name)
          @new_offer_end_time = args[:new_offer_end_time] if args.key?(:new_offer_end_time)
          @new_offer_start_time = args[:new_offer_start_time] if args.key?(:new_offer_start_time)
          @new_pending_offer = args[:new_pending_offer] if args.key?(:new_pending_offer)
          @new_pending_offer_duration = args[:new_pending_offer_duration] if args.key?(:new_pending_offer_duration)
          @new_pending_plan = args[:new_pending_plan] if args.key?(:new_pending_plan)
          @offer = args[:offer] if args.key?(:offer)
          @offer_duration = args[:offer_duration] if args.key?(:offer_duration)
          @offer_end_time = args[:offer_end_time] if args.key?(:offer_end_time)
          @order_id = args[:order_id] if args.key?(:order_id)
          @plan = args[:plan] if args.key?(:plan)
          @product = args[:product] if args.key?(:product)
          @product_external_name = args[:product_external_name] if args.key?(:product_external_name)
          @provider = args[:provider] if args.key?(:provider)
          @quote_external_name = args[:quote_external_name] if args.key?(:quote_external_name)
          @state = args[:state] if args.key?(:state)
          @subscription_end_time = args[:subscription_end_time] if args.key?(:subscription_end_time)
          @update_time = args[:update_time] if args.key?(:update_time)
          @usage_reporting_id = args[:usage_reporting_id] if args.key?(:usage_reporting_id)
        end
      end
      
      # Response message for [PartnerProcurementService.ListAccounts[].
      class ListAccountsResponse
        include Google::Apis::Core::Hashable
      
        # The list of accounts in this response.
        # Corresponds to the JSON property `accounts`
        # @return [Array<Google::Apis::CloudcommerceprocurementV1::Account>]
        attr_accessor :accounts
      
        # The token for fetching the next page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accounts = args[:accounts] if args.key?(:accounts)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for PartnerProcurementService.ListEntitlements.
      class ListEntitlementsResponse
        include Google::Apis::Core::Hashable
      
        # The list of entitlements in this response.
        # Corresponds to the JSON property `entitlements`
        # @return [Array<Google::Apis::CloudcommerceprocurementV1::Entitlement>]
        attr_accessor :entitlements
      
        # The token for fetching the next page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entitlements = args[:entitlements] if args.key?(:entitlements)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Request message for PartnerProcurementService.RejectAccount.
      class RejectAccountRequest
        include Google::Apis::Core::Hashable
      
        # The name of the approval being rejected. If absent and there is only one
        # approval possible, that approval will be rejected. If absent and there are
        # many approvals possible, the request will fail with a 400 Bad Request.
        # Optional.
        # Corresponds to the JSON property `approvalName`
        # @return [String]
        attr_accessor :approval_name
      
        # Free form text string explaining the rejection reason. Max allowed length: 256
        # bytes. Longer strings will be truncated.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @approval_name = args[:approval_name] if args.key?(:approval_name)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # Request message for PartnerProcurementService.RejectEntitlementPlanChange.
      class RejectEntitlementPlanChangeRequest
        include Google::Apis::Core::Hashable
      
        # Required. Name of the pending plan that is being rejected.
        # Corresponds to the JSON property `pendingPlanName`
        # @return [String]
        attr_accessor :pending_plan_name
      
        # Free form text string explaining the rejection reason. Max allowed length: 256
        # bytes. Longer strings will be truncated.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pending_plan_name = args[:pending_plan_name] if args.key?(:pending_plan_name)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # Request message for PartnerProcurementService.RejectEntitlement.
      class RejectEntitlementRequest
        include Google::Apis::Core::Hashable
      
        # Free form text string explaining the rejection reason. Max allowed length: 256
        # bytes. Longer strings will be truncated.
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
      
      # Request message for PartnerProcurementService.ResetAccount.
      class ResetAccountRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for ParterProcurementService.SuspendEntitlement. This is not
      # yet supported.
      class SuspendEntitlementRequest
        include Google::Apis::Core::Hashable
      
        # A free-form reason string, explaining the reason for suspension request.
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
    end
  end
end
