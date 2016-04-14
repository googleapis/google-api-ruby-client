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
    module ResellerV1
      
      # JSON template for address of a customer.
      class Address
        include Google::Apis::Core::Hashable
      
        # Address line 1 of the address.
        # Corresponds to the JSON property `addressLine1`
        # @return [String]
        attr_accessor :address_line1
      
        # Address line 2 of the address.
        # Corresponds to the JSON property `addressLine2`
        # @return [String]
        attr_accessor :address_line2
      
        # Address line 3 of the address.
        # Corresponds to the JSON property `addressLine3`
        # @return [String]
        attr_accessor :address_line3
      
        # Name of the contact person.
        # Corresponds to the JSON property `contactName`
        # @return [String]
        attr_accessor :contact_name
      
        # ISO 3166 country code.
        # Corresponds to the JSON property `countryCode`
        # @return [String]
        attr_accessor :country_code
      
        # Identifies the resource as a customer address.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the locality. This is in accordance with - http://portablecontacts.net/
        # draft-spec.html#address_element.
        # Corresponds to the JSON property `locality`
        # @return [String]
        attr_accessor :locality
      
        # Name of the organization.
        # Corresponds to the JSON property `organizationName`
        # @return [String]
        attr_accessor :organization_name
      
        # The postal code. This is in accordance with - http://portablecontacts.net/
        # draft-spec.html#address_element.
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # Name of the region. This is in accordance with - http://portablecontacts.net/
        # draft-spec.html#address_element.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address_line1 = args[:address_line1] if args.key?(:address_line1)
          @address_line2 = args[:address_line2] if args.key?(:address_line2)
          @address_line3 = args[:address_line3] if args.key?(:address_line3)
          @contact_name = args[:contact_name] if args.key?(:contact_name)
          @country_code = args[:country_code] if args.key?(:country_code)
          @kind = args[:kind] if args.key?(:kind)
          @locality = args[:locality] if args.key?(:locality)
          @organization_name = args[:organization_name] if args.key?(:organization_name)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @region = args[:region] if args.key?(:region)
        end
      end
      
      # JSON template for the ChangePlan rpc request.
      class ChangePlanRequest
        include Google::Apis::Core::Hashable
      
        # External name of the deal code applicable for the subscription. This field is
        # optional. If missing, the deal price plan won't be used.
        # Corresponds to the JSON property `dealCode`
        # @return [String]
        attr_accessor :deal_code
      
        # Identifies the resource as a subscription change plan request.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the plan to change to.
        # Corresponds to the JSON property `planName`
        # @return [String]
        attr_accessor :plan_name
      
        # Purchase order id for your order tracking purposes.
        # Corresponds to the JSON property `purchaseOrderId`
        # @return [String]
        attr_accessor :purchase_order_id
      
        # JSON template for subscription seats.
        # Corresponds to the JSON property `seats`
        # @return [Google::Apis::ResellerV1::Seats]
        attr_accessor :seats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deal_code = args[:deal_code] if args.key?(:deal_code)
          @kind = args[:kind] if args.key?(:kind)
          @plan_name = args[:plan_name] if args.key?(:plan_name)
          @purchase_order_id = args[:purchase_order_id] if args.key?(:purchase_order_id)
          @seats = args[:seats] if args.key?(:seats)
        end
      end
      
      # JSON template for a customer.
      class Customer
        include Google::Apis::Core::Hashable
      
        # The alternate email of the customer.
        # Corresponds to the JSON property `alternateEmail`
        # @return [String]
        attr_accessor :alternate_email
      
        # The domain name of the customer.
        # Corresponds to the JSON property `customerDomain`
        # @return [String]
        attr_accessor :customer_domain
      
        # Whether the customer's primary domain has been verified.
        # Corresponds to the JSON property `customerDomainVerified`
        # @return [Boolean]
        attr_accessor :customer_domain_verified
        alias_method :customer_domain_verified?, :customer_domain_verified
      
        # The id of the customer.
        # Corresponds to the JSON property `customerId`
        # @return [String]
        attr_accessor :customer_id
      
        # Identifies the resource as a customer.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The phone number of the customer.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # JSON template for address of a customer.
        # Corresponds to the JSON property `postalAddress`
        # @return [Google::Apis::ResellerV1::Address]
        attr_accessor :postal_address
      
        # Ui url for customer resource.
        # Corresponds to the JSON property `resourceUiUrl`
        # @return [String]
        attr_accessor :resource_ui_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alternate_email = args[:alternate_email] if args.key?(:alternate_email)
          @customer_domain = args[:customer_domain] if args.key?(:customer_domain)
          @customer_domain_verified = args[:customer_domain_verified] if args.key?(:customer_domain_verified)
          @customer_id = args[:customer_id] if args.key?(:customer_id)
          @kind = args[:kind] if args.key?(:kind)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @postal_address = args[:postal_address] if args.key?(:postal_address)
          @resource_ui_url = args[:resource_ui_url] if args.key?(:resource_ui_url)
        end
      end
      
      # JSON template for a subscription renewal settings.
      class RenewalSettings
        include Google::Apis::Core::Hashable
      
        # Identifies the resource as a subscription renewal setting.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Subscription renewal type.
        # Corresponds to the JSON property `renewalType`
        # @return [String]
        attr_accessor :renewal_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @renewal_type = args[:renewal_type] if args.key?(:renewal_type)
        end
      end
      
      # JSON template for subscription seats.
      class Seats
        include Google::Apis::Core::Hashable
      
        # Identifies the resource as a subscription change plan request.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Read-only field containing the current number of licensed seats for FLEXIBLE
        # Google-Apps subscriptions and secondary subscriptions such as Google-Vault and
        # Drive-storage.
        # Corresponds to the JSON property `licensedNumberOfSeats`
        # @return [Fixnum]
        attr_accessor :licensed_number_of_seats
      
        # Maximum number of seats that can be purchased. This needs to be provided only
        # for a non-commitment plan. For a commitment plan it is decided by the contract.
        # Corresponds to the JSON property `maximumNumberOfSeats`
        # @return [Fixnum]
        attr_accessor :maximum_number_of_seats
      
        # Number of seats to purchase. This is applicable only for a commitment plan.
        # Corresponds to the JSON property `numberOfSeats`
        # @return [Fixnum]
        attr_accessor :number_of_seats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @licensed_number_of_seats = args[:licensed_number_of_seats] if args.key?(:licensed_number_of_seats)
          @maximum_number_of_seats = args[:maximum_number_of_seats] if args.key?(:maximum_number_of_seats)
          @number_of_seats = args[:number_of_seats] if args.key?(:number_of_seats)
        end
      end
      
      # JSON template for a subscription.
      class Subscription
        include Google::Apis::Core::Hashable
      
        # Billing method of this subscription.
        # Corresponds to the JSON property `billingMethod`
        # @return [String]
        attr_accessor :billing_method
      
        # Creation time of this subscription in milliseconds since Unix epoch.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # Primary domain name of the customer
        # Corresponds to the JSON property `customerDomain`
        # @return [String]
        attr_accessor :customer_domain
      
        # The id of the customer to whom the subscription belongs.
        # Corresponds to the JSON property `customerId`
        # @return [String]
        attr_accessor :customer_id
      
        # External name of the deal, if this subscription was provisioned under one.
        # Otherwise this field will be empty.
        # Corresponds to the JSON property `dealCode`
        # @return [String]
        attr_accessor :deal_code
      
        # Identifies the resource as a Subscription.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Plan details of the subscription
        # Corresponds to the JSON property `plan`
        # @return [Google::Apis::ResellerV1::Subscription::Plan]
        attr_accessor :plan
      
        # Purchase order id for your order tracking purposes.
        # Corresponds to the JSON property `purchaseOrderId`
        # @return [String]
        attr_accessor :purchase_order_id
      
        # JSON template for a subscription renewal settings.
        # Corresponds to the JSON property `renewalSettings`
        # @return [Google::Apis::ResellerV1::RenewalSettings]
        attr_accessor :renewal_settings
      
        # Ui url for subscription resource.
        # Corresponds to the JSON property `resourceUiUrl`
        # @return [String]
        attr_accessor :resource_ui_url
      
        # JSON template for subscription seats.
        # Corresponds to the JSON property `seats`
        # @return [Google::Apis::ResellerV1::Seats]
        attr_accessor :seats
      
        # Name of the sku for which this subscription is purchased.
        # Corresponds to the JSON property `skuId`
        # @return [String]
        attr_accessor :sku_id
      
        # Status of the subscription.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The id of the subscription.
        # Corresponds to the JSON property `subscriptionId`
        # @return [String]
        attr_accessor :subscription_id
      
        # Read-only field containing an enumerable of all the current suspension reasons
        # for a subscription. It is possible for a subscription to have many concurrent,
        # overlapping suspension reasons. A subscription's STATUS is SUSPENDED until all
        # pending suspensions are removed. Possible options include:
        # - PENDING_TOS_ACCEPTANCE - The customer has not logged in and accepted the
        # Google Apps Resold Terms of Services.
        # - RENEWAL_WITH_TYPE_CANCEL - The customer's commitment ended and their service
        # was cancelled at the end of their term.
        # - RESELLER_INITIATED - A manual suspension invoked by a Reseller.
        # - TRIAL_ENDED - The customer's trial expired without a plan selected.
        # - OTHER - The customer is suspended for an internal Google reason (e.g. abuse
        # or otherwise).
        # Corresponds to the JSON property `suspensionReasons`
        # @return [Array<String>]
        attr_accessor :suspension_reasons
      
        # Transfer related information for the subscription.
        # Corresponds to the JSON property `transferInfo`
        # @return [Google::Apis::ResellerV1::Subscription::TransferInfo]
        attr_accessor :transfer_info
      
        # Trial Settings of the subscription.
        # Corresponds to the JSON property `trialSettings`
        # @return [Google::Apis::ResellerV1::Subscription::TrialSettings]
        attr_accessor :trial_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_method = args[:billing_method] if args.key?(:billing_method)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @customer_domain = args[:customer_domain] if args.key?(:customer_domain)
          @customer_id = args[:customer_id] if args.key?(:customer_id)
          @deal_code = args[:deal_code] if args.key?(:deal_code)
          @kind = args[:kind] if args.key?(:kind)
          @plan = args[:plan] if args.key?(:plan)
          @purchase_order_id = args[:purchase_order_id] if args.key?(:purchase_order_id)
          @renewal_settings = args[:renewal_settings] if args.key?(:renewal_settings)
          @resource_ui_url = args[:resource_ui_url] if args.key?(:resource_ui_url)
          @seats = args[:seats] if args.key?(:seats)
          @sku_id = args[:sku_id] if args.key?(:sku_id)
          @status = args[:status] if args.key?(:status)
          @subscription_id = args[:subscription_id] if args.key?(:subscription_id)
          @suspension_reasons = args[:suspension_reasons] if args.key?(:suspension_reasons)
          @transfer_info = args[:transfer_info] if args.key?(:transfer_info)
          @trial_settings = args[:trial_settings] if args.key?(:trial_settings)
        end
        
        # Plan details of the subscription
        class Plan
          include Google::Apis::Core::Hashable
        
          # Interval of the commitment if it is a commitment plan.
          # Corresponds to the JSON property `commitmentInterval`
          # @return [Google::Apis::ResellerV1::Subscription::Plan::CommitmentInterval]
          attr_accessor :commitment_interval
        
          # Whether the plan is a commitment plan or not.
          # Corresponds to the JSON property `isCommitmentPlan`
          # @return [Boolean]
          attr_accessor :is_commitment_plan
          alias_method :is_commitment_plan?, :is_commitment_plan
        
          # The plan name of this subscription's plan.
          # Corresponds to the JSON property `planName`
          # @return [String]
          attr_accessor :plan_name
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @commitment_interval = args[:commitment_interval] if args.key?(:commitment_interval)
            @is_commitment_plan = args[:is_commitment_plan] if args.key?(:is_commitment_plan)
            @plan_name = args[:plan_name] if args.key?(:plan_name)
          end
          
          # Interval of the commitment if it is a commitment plan.
          class CommitmentInterval
            include Google::Apis::Core::Hashable
          
            # End time of the commitment interval in milliseconds since Unix epoch.
            # Corresponds to the JSON property `endTime`
            # @return [String]
            attr_accessor :end_time
          
            # Start time of the commitment interval in milliseconds since Unix epoch.
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
        end
        
        # Transfer related information for the subscription.
        class TransferInfo
          include Google::Apis::Core::Hashable
        
          # 
          # Corresponds to the JSON property `minimumTransferableSeats`
          # @return [Fixnum]
          attr_accessor :minimum_transferable_seats
        
          # Time when transfer token or intent to transfer will expire.
          # Corresponds to the JSON property `transferabilityExpirationTime`
          # @return [String]
          attr_accessor :transferability_expiration_time
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @minimum_transferable_seats = args[:minimum_transferable_seats] if args.key?(:minimum_transferable_seats)
            @transferability_expiration_time = args[:transferability_expiration_time] if args.key?(:transferability_expiration_time)
          end
        end
        
        # Trial Settings of the subscription.
        class TrialSettings
          include Google::Apis::Core::Hashable
        
          # Whether the subscription is in trial.
          # Corresponds to the JSON property `isInTrial`
          # @return [Boolean]
          attr_accessor :is_in_trial
          alias_method :is_in_trial?, :is_in_trial
        
          # End time of the trial in milliseconds since Unix epoch.
          # Corresponds to the JSON property `trialEndTime`
          # @return [String]
          attr_accessor :trial_end_time
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @is_in_trial = args[:is_in_trial] if args.key?(:is_in_trial)
            @trial_end_time = args[:trial_end_time] if args.key?(:trial_end_time)
          end
        end
      end
      
      # JSON template for a subscription list.
      class Subscriptions
        include Google::Apis::Core::Hashable
      
        # Identifies the resource as a collection of subscriptions.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The continuation token, used to page through large result sets. Provide this
        # value in a subsequent request to return the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The subscriptions in this page of results.
        # Corresponds to the JSON property `subscriptions`
        # @return [Array<Google::Apis::ResellerV1::Subscription>]
        attr_accessor :subscriptions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @subscriptions = args[:subscriptions] if args.key?(:subscriptions)
        end
      end
    end
  end
end
