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
    module CloudchannelV1
      
      # Request message for CloudChannelService.ActivateEntitlement.
      class GoogleCloudChannelV1ActivateEntitlementRequest
        include Google::Apis::Core::Hashable
      
        # Optional. You can specify an optional unique request ID, and if you need to
        # retry your request, the server will know to ignore the request if it's
        # complete. For example, you make an initial request and the request times out.
        # If you make the request again with the same request ID, the server can check
        # if it received the original operation with the same request ID. If it did, it
        # will ignore the second request. The request ID must be a valid [UUID](https://
        # tools.ietf.org/html/rfc4122) with the exception that zero UUID is not
        # supported (`00000000-0000-0000-0000-000000000000`).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Information needed to create an Admin User for Google Workspace.
      class GoogleCloudChannelV1AdminUser
        include Google::Apis::Core::Hashable
      
        # Primary email of the admin user.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Family name of the admin user.
        # Corresponds to the JSON property `familyName`
        # @return [String]
        attr_accessor :family_name
      
        # Given name of the admin user.
        # Corresponds to the JSON property `givenName`
        # @return [String]
        attr_accessor :given_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @family_name = args[:family_name] if args.key?(:family_name)
          @given_name = args[:given_name] if args.key?(:given_name)
        end
      end
      
      # Association links that an entitlement has to other entitlements.
      class GoogleCloudChannelV1AssociationInfo
        include Google::Apis::Core::Hashable
      
        # The name of the base entitlement, for which this entitlement is an add-on.
        # Corresponds to the JSON property `baseEntitlement`
        # @return [String]
        attr_accessor :base_entitlement
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base_entitlement = args[:base_entitlement] if args.key?(:base_entitlement)
        end
      end
      
      # Represents a billing account.
      class GoogleCloudChannelV1BillingAccount
        include Google::Apis::Core::Hashable
      
        # Output only. The time when this billing account was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The 3-letter currency code defined in ISO 4217.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Display name of the billing account.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Resource name of the billing account. Format: accounts/`
        # account_id`/billingAccounts/`billing_account_id`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The CLDR region code.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @region_code = args[:region_code] if args.key?(:region_code)
        end
      end
      
      # Represents a billing account that can be used to make a purchase.
      class GoogleCloudChannelV1BillingAccountPurchaseInfo
        include Google::Apis::Core::Hashable
      
        # Represents a billing account.
        # Corresponds to the JSON property `billingAccount`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1BillingAccount]
        attr_accessor :billing_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_account = args[:billing_account] if args.key?(:billing_account)
        end
      end
      
      # Request message for CloudChannelService.CancelEntitlement.
      class GoogleCloudChannelV1CancelEntitlementRequest
        include Google::Apis::Core::Hashable
      
        # Optional. You can specify an optional unique request ID, and if you need to
        # retry your request, the server will know to ignore the request if it's
        # complete. For example, you make an initial request and the request times out.
        # If you make the request again with the same request ID, the server can check
        # if it received the original operation with the same request ID. If it did, it
        # will ignore the second request. The request ID must be a valid [UUID](https://
        # tools.ietf.org/html/rfc4122) with the exception that zero UUID is not
        # supported (`00000000-0000-0000-0000-000000000000`).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Request message for CloudChannelService.ChangeOffer.
      class GoogleCloudChannelV1ChangeOfferRequest
        include Google::Apis::Core::Hashable
      
        # Required. New Offer. Format: accounts/`account_id`/offers/`offer_id`.
        # Corresponds to the JSON property `offer`
        # @return [String]
        attr_accessor :offer
      
        # Optional. Parameters needed to purchase the Offer. To view the available
        # Parameters refer to the Offer.parameter_definitions from the desired offer.
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::CloudchannelV1::GoogleCloudChannelV1Parameter>]
        attr_accessor :parameters
      
        # Optional. Purchase order id provided by the reseller.
        # Corresponds to the JSON property `purchaseOrderId`
        # @return [String]
        attr_accessor :purchase_order_id
      
        # Optional. You can specify an optional unique request ID, and if you need to
        # retry your request, the server will know to ignore the request if it's
        # complete. For example, you make an initial request and the request times out.
        # If you make the request again with the same request ID, the server can check
        # if it received the original operation with the same request ID. If it did, it
        # will ignore the second request. The request ID must be a valid [UUID](https://
        # tools.ietf.org/html/rfc4122) with the exception that zero UUID is not
        # supported (`00000000-0000-0000-0000-000000000000`).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @offer = args[:offer] if args.key?(:offer)
          @parameters = args[:parameters] if args.key?(:parameters)
          @purchase_order_id = args[:purchase_order_id] if args.key?(:purchase_order_id)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Request message for CloudChannelService.ChangeParametersRequest.
      class GoogleCloudChannelV1ChangeParametersRequest
        include Google::Apis::Core::Hashable
      
        # Required. Entitlement parameters to update. You can only change editable
        # parameters. To view the available Parameters for a request, refer to the Offer.
        # parameter_definitions from the desired offer.
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::CloudchannelV1::GoogleCloudChannelV1Parameter>]
        attr_accessor :parameters
      
        # Optional. Purchase order ID provided by the reseller.
        # Corresponds to the JSON property `purchaseOrderId`
        # @return [String]
        attr_accessor :purchase_order_id
      
        # Optional. You can specify an optional unique request ID, and if you need to
        # retry your request, the server will know to ignore the request if it's
        # complete. For example, you make an initial request and the request times out.
        # If you make the request again with the same request ID, the server can check
        # if it received the original operation with the same request ID. If it did, it
        # will ignore the second request. The request ID must be a valid [UUID](https://
        # tools.ietf.org/html/rfc4122) with the exception that zero UUID is not
        # supported (`00000000-0000-0000-0000-000000000000`).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parameters = args[:parameters] if args.key?(:parameters)
          @purchase_order_id = args[:purchase_order_id] if args.key?(:purchase_order_id)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Request message for CloudChannelService.ChangeRenewalSettings.
      class GoogleCloudChannelV1ChangeRenewalSettingsRequest
        include Google::Apis::Core::Hashable
      
        # Renewal settings for renewable Offers.
        # Corresponds to the JSON property `renewalSettings`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1RenewalSettings]
        attr_accessor :renewal_settings
      
        # Optional. You can specify an optional unique request ID, and if you need to
        # retry your request, the server will know to ignore the request if it's
        # complete. For example, you make an initial request and the request times out.
        # If you make the request again with the same request ID, the server can check
        # if it received the original operation with the same request ID. If it did, it
        # will ignore the second request. The request ID must be a valid [UUID](https://
        # tools.ietf.org/html/rfc4122) with the exception that zero UUID is not
        # supported (`00000000-0000-0000-0000-000000000000`).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @renewal_settings = args[:renewal_settings] if args.key?(:renewal_settings)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Entity representing a link between distributors and their indirect resellers
      # in an n-tier resale channel.
      class GoogleCloudChannelV1ChannelPartnerLink
        include Google::Apis::Core::Hashable
      
        # Cloud Identity information for the Cloud Channel Customer.
        # Corresponds to the JSON property `channelPartnerCloudIdentityInfo`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1CloudIdentityInfo]
        attr_accessor :channel_partner_cloud_identity_info
      
        # Output only. Timestamp of when the channel partner link is created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. URI of the web page where partner accepts the link invitation.
        # Corresponds to the JSON property `inviteLinkUri`
        # @return [String]
        attr_accessor :invite_link_uri
      
        # Required. State of the channel partner link.
        # Corresponds to the JSON property `linkState`
        # @return [String]
        attr_accessor :link_state
      
        # Output only. Resource name for the channel partner link, in the format
        # accounts/`account_id`/channelPartnerLinks/`id`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Public identifier that a customer must use to generate a transfer
        # token to move to this distributor-reseller combination.
        # Corresponds to the JSON property `publicId`
        # @return [String]
        attr_accessor :public_id
      
        # Required. Cloud Identity ID of the linked reseller.
        # Corresponds to the JSON property `resellerCloudIdentityId`
        # @return [String]
        attr_accessor :reseller_cloud_identity_id
      
        # Output only. Timestamp of when the channel partner link is updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel_partner_cloud_identity_info = args[:channel_partner_cloud_identity_info] if args.key?(:channel_partner_cloud_identity_info)
          @create_time = args[:create_time] if args.key?(:create_time)
          @invite_link_uri = args[:invite_link_uri] if args.key?(:invite_link_uri)
          @link_state = args[:link_state] if args.key?(:link_state)
          @name = args[:name] if args.key?(:name)
          @public_id = args[:public_id] if args.key?(:public_id)
          @reseller_cloud_identity_id = args[:reseller_cloud_identity_id] if args.key?(:reseller_cloud_identity_id)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Configuration for how a distributor will rebill a channel partner (also known
      # as a distributor-authorized reseller).
      class GoogleCloudChannelV1ChannelPartnerRepricingConfig
        include Google::Apis::Core::Hashable
      
        # Output only. Resource name of the ChannelPartnerRepricingConfig. Format:
        # accounts/`account_id`/channelPartnerLinks/`channel_partner_id`/
        # channelPartnerRepricingConfigs/`id`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Configuration for repricing a Google bill over a period of time.
        # Corresponds to the JSON property `repricingConfig`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1RepricingConfig]
        attr_accessor :repricing_config
      
        # Output only. Timestamp of an update to the repricing rule. If `update_time` is
        # after RepricingConfig.effective_invoice_month then it indicates this was set
        # mid-month.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @repricing_config = args[:repricing_config] if args.key?(:repricing_config)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Request message for CloudChannelService.CheckCloudIdentityAccountsExist.
      class GoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest
        include Google::Apis::Core::Hashable
      
        # Required. Domain to fetch for Cloud Identity account customer.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain = args[:domain] if args.key?(:domain)
        end
      end
      
      # Response message for CloudChannelService.CheckCloudIdentityAccountsExist.
      class GoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse
        include Google::Apis::Core::Hashable
      
        # The Cloud Identity accounts associated with the domain.
        # Corresponds to the JSON property `cloudIdentityAccounts`
        # @return [Array<Google::Apis::CloudchannelV1::GoogleCloudChannelV1CloudIdentityCustomerAccount>]
        attr_accessor :cloud_identity_accounts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_identity_accounts = args[:cloud_identity_accounts] if args.key?(:cloud_identity_accounts)
        end
      end
      
      # Entity representing a Cloud Identity account that may be associated with a
      # Channel Services API partner.
      class GoogleCloudChannelV1CloudIdentityCustomerAccount
        include Google::Apis::Core::Hashable
      
        # If existing = true, the Cloud Identity ID of the customer.
        # Corresponds to the JSON property `customerCloudIdentityId`
        # @return [String]
        attr_accessor :customer_cloud_identity_id
      
        # If owned = true, the name of the customer that owns the Cloud Identity account.
        # Customer_name uses the format: accounts/`account_id`/customers/`customer_id`
        # Corresponds to the JSON property `customerName`
        # @return [String]
        attr_accessor :customer_name
      
        # Returns true if a Cloud Identity account exists for a specific domain.
        # Corresponds to the JSON property `existing`
        # @return [Boolean]
        attr_accessor :existing
        alias_method :existing?, :existing
      
        # Returns true if the Cloud Identity account is associated with a customer of
        # the Channel Services partner.
        # Corresponds to the JSON property `owned`
        # @return [Boolean]
        attr_accessor :owned
        alias_method :owned?, :owned
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer_cloud_identity_id = args[:customer_cloud_identity_id] if args.key?(:customer_cloud_identity_id)
          @customer_name = args[:customer_name] if args.key?(:customer_name)
          @existing = args[:existing] if args.key?(:existing)
          @owned = args[:owned] if args.key?(:owned)
        end
      end
      
      # Cloud Identity information for the Cloud Channel Customer.
      class GoogleCloudChannelV1CloudIdentityInfo
        include Google::Apis::Core::Hashable
      
        # Output only. URI of Customer's Admin console dashboard.
        # Corresponds to the JSON property `adminConsoleUri`
        # @return [String]
        attr_accessor :admin_console_uri
      
        # The alternate email.
        # Corresponds to the JSON property `alternateEmail`
        # @return [String]
        attr_accessor :alternate_email
      
        # CustomerType indicates verification type needed for using services.
        # Corresponds to the JSON property `customerType`
        # @return [String]
        attr_accessor :customer_type
      
        # Required Edu Attributes
        # Corresponds to the JSON property `eduData`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1EduData]
        attr_accessor :edu_data
      
        # Output only. Whether the domain is verified. This field is not returned for a
        # Customer's cloud_identity_info resource. Partners can use the domains.get()
        # method of the Workspace SDK's Directory API, or listen to the
        # PRIMARY_DOMAIN_VERIFIED Pub/Sub event in to track domain verification of their
        # resolve Workspace customers.
        # Corresponds to the JSON property `isDomainVerified`
        # @return [Boolean]
        attr_accessor :is_domain_verified
        alias_method :is_domain_verified?, :is_domain_verified
      
        # Language code.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Phone number associated with the Cloud Identity.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # Output only. The primary domain name.
        # Corresponds to the JSON property `primaryDomain`
        # @return [String]
        attr_accessor :primary_domain
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admin_console_uri = args[:admin_console_uri] if args.key?(:admin_console_uri)
          @alternate_email = args[:alternate_email] if args.key?(:alternate_email)
          @customer_type = args[:customer_type] if args.key?(:customer_type)
          @edu_data = args[:edu_data] if args.key?(:edu_data)
          @is_domain_verified = args[:is_domain_verified] if args.key?(:is_domain_verified)
          @language_code = args[:language_code] if args.key?(:language_code)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @primary_domain = args[:primary_domain] if args.key?(:primary_domain)
        end
      end
      
      # The definition of a report column. Specifies the data properties in the
      # corresponding position of the report rows.
      class GoogleCloudChannelV1Column
        include Google::Apis::Core::Hashable
      
        # The unique name of the column (for example, customer_domain, channel_partner,
        # customer_cost). You can use column IDs in RunReportJobRequest.filter. To see
        # all reports and their columns, call CloudChannelReportsService.ListReports.
        # Corresponds to the JSON property `columnId`
        # @return [String]
        attr_accessor :column_id
      
        # The type of the values for this column.
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # The column's display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_id = args[:column_id] if args.key?(:column_id)
          @data_type = args[:data_type] if args.key?(:data_type)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # Commitment settings for commitment-based offers.
      class GoogleCloudChannelV1CommitmentSettings
        include Google::Apis::Core::Hashable
      
        # Output only. Commitment end timestamp.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Renewal settings for renewable Offers.
        # Corresponds to the JSON property `renewalSettings`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1RenewalSettings]
        attr_accessor :renewal_settings
      
        # Output only. Commitment start timestamp.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @renewal_settings = args[:renewal_settings] if args.key?(:renewal_settings)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Specifies the override to conditionally apply.
      class GoogleCloudChannelV1ConditionalOverride
        include Google::Apis::Core::Hashable
      
        # A type that represents the various adjustments you can apply to a bill.
        # Corresponds to the JSON property `adjustment`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1RepricingAdjustment]
        attr_accessor :adjustment
      
        # Required. The RebillingBasis to use for the applied override. Shows the
        # relative cost based on your repricing costs.
        # Corresponds to the JSON property `rebillingBasis`
        # @return [String]
        attr_accessor :rebilling_basis
      
        # Represents the various repricing conditions you can use for a conditional
        # override.
        # Corresponds to the JSON property `repricingCondition`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1RepricingCondition]
        attr_accessor :repricing_condition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adjustment = args[:adjustment] if args.key?(:adjustment)
          @rebilling_basis = args[:rebilling_basis] if args.key?(:rebilling_basis)
          @repricing_condition = args[:repricing_condition] if args.key?(:repricing_condition)
        end
      end
      
      # Represents the constraints for buying the Offer.
      class GoogleCloudChannelV1Constraints
        include Google::Apis::Core::Hashable
      
        # Represents constraints required to purchase the Offer for a customer.
        # Corresponds to the JSON property `customerConstraints`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1CustomerConstraints]
        attr_accessor :customer_constraints
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer_constraints = args[:customer_constraints] if args.key?(:customer_constraints)
        end
      end
      
      # Contact information for a customer account.
      class GoogleCloudChannelV1ContactInfo
        include Google::Apis::Core::Hashable
      
        # Output only. The customer account contact's display name, formatted as a
        # combination of the customer's first and last name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The customer account's contact email. Required for entitlements that create
        # admin.google.com accounts, and serves as the customer's username for those
        # accounts. Use this email to invite Team customers.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # The customer account contact's first name. Optional for Team customers.
        # Corresponds to the JSON property `firstName`
        # @return [String]
        attr_accessor :first_name
      
        # The customer account contact's last name. Optional for Team customers.
        # Corresponds to the JSON property `lastName`
        # @return [String]
        attr_accessor :last_name
      
        # The customer account's contact phone number.
        # Corresponds to the JSON property `phone`
        # @return [String]
        attr_accessor :phone
      
        # Optional. The customer account contact's job title.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @email = args[:email] if args.key?(:email)
          @first_name = args[:first_name] if args.key?(:first_name)
          @last_name = args[:last_name] if args.key?(:last_name)
          @phone = args[:phone] if args.key?(:phone)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Request message for CloudChannelService.CreateEntitlement
      class GoogleCloudChannelV1CreateEntitlementRequest
        include Google::Apis::Core::Hashable
      
        # An entitlement is a representation of a customer's ability to use a service.
        # Corresponds to the JSON property `entitlement`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Entitlement]
        attr_accessor :entitlement
      
        # Optional. You can specify an optional unique request ID, and if you need to
        # retry your request, the server will know to ignore the request if it's
        # complete. For example, you make an initial request and the request times out.
        # If you make the request again with the same request ID, the server can check
        # if it received the original operation with the same request ID. If it did, it
        # will ignore the second request. The request ID must be a valid [UUID](https://
        # tools.ietf.org/html/rfc4122) with the exception that zero UUID is not
        # supported (`00000000-0000-0000-0000-000000000000`).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entitlement = args[:entitlement] if args.key?(:entitlement)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Entity representing a customer of a reseller or distributor.
      class GoogleCloudChannelV1Customer
        include Google::Apis::Core::Hashable
      
        # Secondary contact email. You need to provide an alternate email to create
        # different domains if a primary contact email already exists. Users will
        # receive a notification with credentials when you create an admin.google.com
        # account. Secondary emails are also recovery email addresses. Alternate emails
        # are optional when you create Team customers.
        # Corresponds to the JSON property `alternateEmail`
        # @return [String]
        attr_accessor :alternate_email
      
        # Cloud Identity ID of the customer's channel partner. Populated only if a
        # channel partner exists for this customer.
        # Corresponds to the JSON property `channelPartnerId`
        # @return [String]
        attr_accessor :channel_partner_id
      
        # Output only. The customer's Cloud Identity ID if the customer has a Cloud
        # Identity resource.
        # Corresponds to the JSON property `cloudIdentityId`
        # @return [String]
        attr_accessor :cloud_identity_id
      
        # Cloud Identity information for the Cloud Channel Customer.
        # Corresponds to the JSON property `cloudIdentityInfo`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1CloudIdentityInfo]
        attr_accessor :cloud_identity_info
      
        # Optional. External CRM ID for the customer. Populated only if a CRM ID exists
        # for this customer.
        # Corresponds to the JSON property `correlationId`
        # @return [String]
        attr_accessor :correlation_id
      
        # Output only. Time when the customer was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. The customer's primary domain. Must match the primary contact email'
        # s domain.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # Optional. The BCP-47 language code, such as "en-US" or "sr-Latn". For more
        # information, see https://www.unicode.org/reports/tr35/#
        # Unicode_locale_identifier.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Output only. Resource name of the customer. Format: accounts/`account_id`/
        # customers/`customer_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Name of the organization that the customer entity represents.
        # Corresponds to the JSON property `orgDisplayName`
        # @return [String]
        attr_accessor :org_display_name
      
        # Represents a postal address, e.g. for postal delivery or payments addresses.
        # Given a postal address, a postal service can deliver items to a premise, P.O.
        # Box or similar. It is not intended to model geographical locations (roads,
        # towns, mountains). In typical usage an address would be created via user input
        # or from importing existing data, depending on the type of process. Advice on
        # address input / editing: - Use an internationalization-ready address widget
        # such as https://github.com/google/libaddressinput) - Users should not be
        # presented with UI elements for input or editing of fields outside countries
        # where that field is used. For more guidance on how to use this schema, please
        # see: https://support.google.com/business/answer/6397478
        # Corresponds to the JSON property `orgPostalAddress`
        # @return [Google::Apis::CloudchannelV1::GoogleTypePostalAddress]
        attr_accessor :org_postal_address
      
        # Contact information for a customer account.
        # Corresponds to the JSON property `primaryContactInfo`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ContactInfo]
        attr_accessor :primary_contact_info
      
        # Output only. Time when the customer was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alternate_email = args[:alternate_email] if args.key?(:alternate_email)
          @channel_partner_id = args[:channel_partner_id] if args.key?(:channel_partner_id)
          @cloud_identity_id = args[:cloud_identity_id] if args.key?(:cloud_identity_id)
          @cloud_identity_info = args[:cloud_identity_info] if args.key?(:cloud_identity_info)
          @correlation_id = args[:correlation_id] if args.key?(:correlation_id)
          @create_time = args[:create_time] if args.key?(:create_time)
          @domain = args[:domain] if args.key?(:domain)
          @language_code = args[:language_code] if args.key?(:language_code)
          @name = args[:name] if args.key?(:name)
          @org_display_name = args[:org_display_name] if args.key?(:org_display_name)
          @org_postal_address = args[:org_postal_address] if args.key?(:org_postal_address)
          @primary_contact_info = args[:primary_contact_info] if args.key?(:primary_contact_info)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Represents constraints required to purchase the Offer for a customer.
      class GoogleCloudChannelV1CustomerConstraints
        include Google::Apis::Core::Hashable
      
        # Allowed Customer Type.
        # Corresponds to the JSON property `allowedCustomerTypes`
        # @return [Array<String>]
        attr_accessor :allowed_customer_types
      
        # Allowed geographical regions of the customer.
        # Corresponds to the JSON property `allowedRegions`
        # @return [Array<String>]
        attr_accessor :allowed_regions
      
        # Allowed Promotional Order Type. Present for Promotional offers.
        # Corresponds to the JSON property `promotionalOrderTypes`
        # @return [Array<String>]
        attr_accessor :promotional_order_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_customer_types = args[:allowed_customer_types] if args.key?(:allowed_customer_types)
          @allowed_regions = args[:allowed_regions] if args.key?(:allowed_regions)
          @promotional_order_types = args[:promotional_order_types] if args.key?(:promotional_order_types)
        end
      end
      
      # Represents Pub/Sub message content describing customer update.
      class GoogleCloudChannelV1CustomerEvent
        include Google::Apis::Core::Hashable
      
        # Resource name of the customer. Format: accounts/`account_id`/customers/`
        # customer_id`
        # Corresponds to the JSON property `customer`
        # @return [String]
        attr_accessor :customer
      
        # Type of event which happened on the customer.
        # Corresponds to the JSON property `eventType`
        # @return [String]
        attr_accessor :event_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer = args[:customer] if args.key?(:customer)
          @event_type = args[:event_type] if args.key?(:event_type)
        end
      end
      
      # Configuration for how a reseller will reprice a Customer.
      class GoogleCloudChannelV1CustomerRepricingConfig
        include Google::Apis::Core::Hashable
      
        # Output only. Resource name of the CustomerRepricingConfig. Format: accounts/`
        # account_id`/customers/`customer_id`/customerRepricingConfigs/`id`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Configuration for repricing a Google bill over a period of time.
        # Corresponds to the JSON property `repricingConfig`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1RepricingConfig]
        attr_accessor :repricing_config
      
        # Output only. Timestamp of an update to the repricing rule. If `update_time` is
        # after RepricingConfig.effective_invoice_month then it indicates this was set
        # mid-month.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @repricing_config = args[:repricing_config] if args.key?(:repricing_config)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A representation of usage or invoice date ranges.
      class GoogleCloudChannelV1DateRange
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `invoiceEndDate`
        # @return [Google::Apis::CloudchannelV1::GoogleTypeDate]
        attr_accessor :invoice_end_date
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `invoiceStartDate`
        # @return [Google::Apis::CloudchannelV1::GoogleTypeDate]
        attr_accessor :invoice_start_date
      
        # Represents civil time (or occasionally physical time). This type can represent
        # a civil time in one of a few possible ways: * When utc_offset is set and
        # time_zone is unset: a civil time on a calendar day with a particular offset
        # from UTC. * When time_zone is set and utc_offset is unset: a civil time on a
        # calendar day in a particular time zone. * When neither time_zone nor
        # utc_offset is set: a civil time on a calendar day in local time. The date is
        # relative to the Proleptic Gregorian Calendar. If year, month, or day are 0,
        # the DateTime is considered not to have a specific year, month, or day
        # respectively. This type may also be used to represent a physical time if all
        # the date and time fields are set and either case of the `time_offset` oneof is
        # set. Consider using `Timestamp` message for physical time instead. If your use
        # case also would like to store the user's timezone, that can be done in another
        # field. This type is more flexible than some applications may want. Make sure
        # to document and validate your application's limitations.
        # Corresponds to the JSON property `usageEndDateTime`
        # @return [Google::Apis::CloudchannelV1::GoogleTypeDateTime]
        attr_accessor :usage_end_date_time
      
        # Represents civil time (or occasionally physical time). This type can represent
        # a civil time in one of a few possible ways: * When utc_offset is set and
        # time_zone is unset: a civil time on a calendar day with a particular offset
        # from UTC. * When time_zone is set and utc_offset is unset: a civil time on a
        # calendar day in a particular time zone. * When neither time_zone nor
        # utc_offset is set: a civil time on a calendar day in local time. The date is
        # relative to the Proleptic Gregorian Calendar. If year, month, or day are 0,
        # the DateTime is considered not to have a specific year, month, or day
        # respectively. This type may also be used to represent a physical time if all
        # the date and time fields are set and either case of the `time_offset` oneof is
        # set. Consider using `Timestamp` message for physical time instead. If your use
        # case also would like to store the user's timezone, that can be done in another
        # field. This type is more flexible than some applications may want. Make sure
        # to document and validate your application's limitations.
        # Corresponds to the JSON property `usageStartDateTime`
        # @return [Google::Apis::CloudchannelV1::GoogleTypeDateTime]
        attr_accessor :usage_start_date_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @invoice_end_date = args[:invoice_end_date] if args.key?(:invoice_end_date)
          @invoice_start_date = args[:invoice_start_date] if args.key?(:invoice_start_date)
          @usage_end_date_time = args[:usage_end_date_time] if args.key?(:usage_end_date_time)
          @usage_start_date_time = args[:usage_start_date_time] if args.key?(:usage_start_date_time)
        end
      end
      
      # Required Edu Attributes
      class GoogleCloudChannelV1EduData
        include Google::Apis::Core::Hashable
      
        # Size of the institute.
        # Corresponds to the JSON property `instituteSize`
        # @return [String]
        attr_accessor :institute_size
      
        # Designated institute type of customer.
        # Corresponds to the JSON property `instituteType`
        # @return [String]
        attr_accessor :institute_type
      
        # Web address for the edu customer's institution.
        # Corresponds to the JSON property `website`
        # @return [String]
        attr_accessor :website
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @institute_size = args[:institute_size] if args.key?(:institute_size)
          @institute_type = args[:institute_type] if args.key?(:institute_type)
          @website = args[:website] if args.key?(:website)
        end
      end
      
      # An entitlement is a representation of a customer's ability to use a service.
      class GoogleCloudChannelV1Entitlement
        include Google::Apis::Core::Hashable
      
        # Association links that an entitlement has to other entitlements.
        # Corresponds to the JSON property `associationInfo`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1AssociationInfo]
        attr_accessor :association_info
      
        # Optional. The billing account resource name that is used to pay for this
        # entitlement.
        # Corresponds to the JSON property `billingAccount`
        # @return [String]
        attr_accessor :billing_account
      
        # Commitment settings for commitment-based offers.
        # Corresponds to the JSON property `commitmentSettings`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1CommitmentSettings]
        attr_accessor :commitment_settings
      
        # Output only. The time at which the entitlement is created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Resource name of an entitlement in the form: accounts/`account_id`
        # /customers/`customer_id`/entitlements/`entitlement_id`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The offer resource name for which the entitlement is to be created.
        # Takes the form: accounts/`account_id`/offers/`offer_id`.
        # Corresponds to the JSON property `offer`
        # @return [String]
        attr_accessor :offer
      
        # Extended entitlement parameters. When creating an entitlement, valid parameter
        # names and values are defined in the Offer.parameter_definitions. For Google
        # Workspace, the following Parameters may be accepted as input: - max_units: The
        # maximum assignable units for a flexible offer OR - num_units: The total
        # commitment for commitment-based offers The response may additionally include
        # the following output-only Parameters: - assigned_units: The number of licenses
        # assigned to users. For Google Cloud billing subaccounts, the following
        # Parameter may be accepted as input: - display_name: The display name of the
        # billing subaccount.
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::CloudchannelV1::GoogleCloudChannelV1Parameter>]
        attr_accessor :parameters
      
        # Service provisioned for an entitlement.
        # Corresponds to the JSON property `provisionedService`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ProvisionedService]
        attr_accessor :provisioned_service
      
        # Output only. Current provisioning state of the entitlement.
        # Corresponds to the JSON property `provisioningState`
        # @return [String]
        attr_accessor :provisioning_state
      
        # Optional. This purchase order (PO) information is for resellers to use for
        # their company tracking usage. If a purchaseOrderId value is given, it appears
        # in the API responses and shows up in the invoice. The property accepts up to
        # 80 plain text characters. This is only supported for Google Workspace
        # entitlements.
        # Corresponds to the JSON property `purchaseOrderId`
        # @return [String]
        attr_accessor :purchase_order_id
      
        # Output only. Enumerable of all current suspension reasons for an entitlement.
        # Corresponds to the JSON property `suspensionReasons`
        # @return [Array<String>]
        attr_accessor :suspension_reasons
      
        # Settings for trial offers.
        # Corresponds to the JSON property `trialSettings`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1TrialSettings]
        attr_accessor :trial_settings
      
        # Output only. The time at which the entitlement is updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @association_info = args[:association_info] if args.key?(:association_info)
          @billing_account = args[:billing_account] if args.key?(:billing_account)
          @commitment_settings = args[:commitment_settings] if args.key?(:commitment_settings)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
          @offer = args[:offer] if args.key?(:offer)
          @parameters = args[:parameters] if args.key?(:parameters)
          @provisioned_service = args[:provisioned_service] if args.key?(:provisioned_service)
          @provisioning_state = args[:provisioning_state] if args.key?(:provisioning_state)
          @purchase_order_id = args[:purchase_order_id] if args.key?(:purchase_order_id)
          @suspension_reasons = args[:suspension_reasons] if args.key?(:suspension_reasons)
          @trial_settings = args[:trial_settings] if args.key?(:trial_settings)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Change event entry for Entitlement order history
      class GoogleCloudChannelV1EntitlementChange
        include Google::Apis::Core::Hashable
      
        # The Entitlement's activation reason
        # Corresponds to the JSON property `activationReason`
        # @return [String]
        attr_accessor :activation_reason
      
        # Cancellation reason for the Entitlement.
        # Corresponds to the JSON property `cancellationReason`
        # @return [String]
        attr_accessor :cancellation_reason
      
        # The change action type.
        # Corresponds to the JSON property `changeType`
        # @return [String]
        attr_accessor :change_type
      
        # The submitted time of the change.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. Resource name of an entitlement in the form: accounts/`account_id`/
        # customers/`customer_id`/entitlements/`entitlement_id`
        # Corresponds to the JSON property `entitlement`
        # @return [String]
        attr_accessor :entitlement
      
        # Required. Resource name of the Offer at the time of change. Takes the form:
        # accounts/`account_id`/offers/`offer_id`.
        # Corresponds to the JSON property `offer`
        # @return [String]
        attr_accessor :offer
      
        # Human-readable identifier that shows what operator made a change. When the
        # operator_type is RESELLER, this is the user's email address. For all other
        # operator types, this is empty.
        # Corresponds to the JSON property `operator`
        # @return [String]
        attr_accessor :operator
      
        # Operator type responsible for the change.
        # Corresponds to the JSON property `operatorType`
        # @return [String]
        attr_accessor :operator_type
      
        # e.g. purchase_number change reason, entered by CRS.
        # Corresponds to the JSON property `otherChangeReason`
        # @return [String]
        attr_accessor :other_change_reason
      
        # Extended parameters, such as: purchase_order_number, gcp_details;
        # internal_correlation_id, long_running_operation_id, order_id; etc.
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::CloudchannelV1::GoogleCloudChannelV1Parameter>]
        attr_accessor :parameters
      
        # Service provisioned for an entitlement.
        # Corresponds to the JSON property `provisionedService`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ProvisionedService]
        attr_accessor :provisioned_service
      
        # Suspension reason for the Entitlement.
        # Corresponds to the JSON property `suspensionReason`
        # @return [String]
        attr_accessor :suspension_reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activation_reason = args[:activation_reason] if args.key?(:activation_reason)
          @cancellation_reason = args[:cancellation_reason] if args.key?(:cancellation_reason)
          @change_type = args[:change_type] if args.key?(:change_type)
          @create_time = args[:create_time] if args.key?(:create_time)
          @entitlement = args[:entitlement] if args.key?(:entitlement)
          @offer = args[:offer] if args.key?(:offer)
          @operator = args[:operator] if args.key?(:operator)
          @operator_type = args[:operator_type] if args.key?(:operator_type)
          @other_change_reason = args[:other_change_reason] if args.key?(:other_change_reason)
          @parameters = args[:parameters] if args.key?(:parameters)
          @provisioned_service = args[:provisioned_service] if args.key?(:provisioned_service)
          @suspension_reason = args[:suspension_reason] if args.key?(:suspension_reason)
        end
      end
      
      # Represents Pub/Sub message content describing entitlement update.
      class GoogleCloudChannelV1EntitlementEvent
        include Google::Apis::Core::Hashable
      
        # Resource name of an entitlement of the form: accounts/`account_id`/customers/`
        # customer_id`/entitlements/`entitlement_id`
        # Corresponds to the JSON property `entitlement`
        # @return [String]
        attr_accessor :entitlement
      
        # Type of event which happened on the entitlement.
        # Corresponds to the JSON property `eventType`
        # @return [String]
        attr_accessor :event_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entitlement = args[:entitlement] if args.key?(:entitlement)
          @event_type = args[:event_type] if args.key?(:event_type)
        end
      end
      
      # Request message for CloudChannelReportsService.FetchReportResults.
      class GoogleCloudChannelV1FetchReportResultsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Requested page size of the report. The server may return fewer
        # results than requested. If you don't specify a page size, the server uses a
        # sensible default (may change over time). The maximum value is 30,000; the
        # server will change larger values to 30,000.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Optional. A token that specifies a page of results beyond the first page.
        # Obtained through FetchReportResultsResponse.next_page_token of the previous
        # CloudChannelReportsService.FetchReportResults call.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Optional. List of keys specifying which report partitions to return. If empty,
        # returns all partitions.
        # Corresponds to the JSON property `partitionKeys`
        # @return [Array<String>]
        attr_accessor :partition_keys
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @partition_keys = args[:partition_keys] if args.key?(:partition_keys)
        end
      end
      
      # Response message for CloudChannelReportsService.FetchReportResults. Contains a
      # tabular representation of the report results.
      class GoogleCloudChannelV1FetchReportResultsResponse
        include Google::Apis::Core::Hashable
      
        # Pass this token to FetchReportResultsRequest.page_token to retrieve the next
        # page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The features describing the data. Returned by CloudChannelReportsService.
        # RunReportJob and CloudChannelReportsService.FetchReportResults.
        # Corresponds to the JSON property `reportMetadata`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ReportResultsMetadata]
        attr_accessor :report_metadata
      
        # The report's lists of values. Each row follows the settings and ordering of
        # the columns from `report_metadata`.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::CloudchannelV1::GoogleCloudChannelV1Row>]
        attr_accessor :rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @report_metadata = args[:report_metadata] if args.key?(:report_metadata)
          @rows = args[:rows] if args.key?(:rows)
        end
      end
      
      # Request message for CloudChannelService.ImportCustomer
      class GoogleCloudChannelV1ImportCustomerRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The super admin of the resold customer generates this token to
        # authorize a reseller to access their Cloud Identity and purchase entitlements
        # on their behalf. You can omit this token after authorization. See https://
        # support.google.com/a/answer/7643790 for more details.
        # Corresponds to the JSON property `authToken`
        # @return [String]
        attr_accessor :auth_token
      
        # Optional. Cloud Identity ID of a channel partner who will be the direct
        # reseller for the customer's order. This field is required for 2-tier transfer
        # scenarios and can be provided via the request Parent binding as well.
        # Corresponds to the JSON property `channelPartnerId`
        # @return [String]
        attr_accessor :channel_partner_id
      
        # Required. Customer's Cloud Identity ID
        # Corresponds to the JSON property `cloudIdentityId`
        # @return [String]
        attr_accessor :cloud_identity_id
      
        # Optional. Specifies the customer that will receive imported Cloud Identity
        # information. Format: accounts/`account_id`/customers/`customer_id`
        # Corresponds to the JSON property `customer`
        # @return [String]
        attr_accessor :customer
      
        # Required. Customer domain.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # Required. Choose to overwrite an existing customer if found. This must be set
        # to true if there is an existing customer with a conflicting region code or
        # domain.
        # Corresponds to the JSON property `overwriteIfExists`
        # @return [Boolean]
        attr_accessor :overwrite_if_exists
        alias_method :overwrite_if_exists?, :overwrite_if_exists
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auth_token = args[:auth_token] if args.key?(:auth_token)
          @channel_partner_id = args[:channel_partner_id] if args.key?(:channel_partner_id)
          @cloud_identity_id = args[:cloud_identity_id] if args.key?(:cloud_identity_id)
          @customer = args[:customer] if args.key?(:customer)
          @domain = args[:domain] if args.key?(:domain)
          @overwrite_if_exists = args[:overwrite_if_exists] if args.key?(:overwrite_if_exists)
        end
      end
      
      # Response message for CloudChannelService.ListChannelPartnerLinks.
      class GoogleCloudChannelV1ListChannelPartnerLinksResponse
        include Google::Apis::Core::Hashable
      
        # The Channel partner links for a reseller.
        # Corresponds to the JSON property `channelPartnerLinks`
        # @return [Array<Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerLink>]
        attr_accessor :channel_partner_links
      
        # A token to retrieve the next page of results. Pass to
        # ListChannelPartnerLinksRequest.page_token to obtain that page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel_partner_links = args[:channel_partner_links] if args.key?(:channel_partner_links)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for CloudChannelService.ListChannelPartnerRepricingConfigs.
      class GoogleCloudChannelV1ListChannelPartnerRepricingConfigsResponse
        include Google::Apis::Core::Hashable
      
        # The repricing configs for this channel partner.
        # Corresponds to the JSON property `channelPartnerRepricingConfigs`
        # @return [Array<Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerRepricingConfig>]
        attr_accessor :channel_partner_repricing_configs
      
        # A token to retrieve the next page of results. Pass to
        # ListChannelPartnerRepricingConfigsRequest.page_token to obtain that page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel_partner_repricing_configs = args[:channel_partner_repricing_configs] if args.key?(:channel_partner_repricing_configs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for CloudChannelService.ListCustomerRepricingConfigs.
      class GoogleCloudChannelV1ListCustomerRepricingConfigsResponse
        include Google::Apis::Core::Hashable
      
        # The repricing configs for this channel partner.
        # Corresponds to the JSON property `customerRepricingConfigs`
        # @return [Array<Google::Apis::CloudchannelV1::GoogleCloudChannelV1CustomerRepricingConfig>]
        attr_accessor :customer_repricing_configs
      
        # A token to retrieve the next page of results. Pass to
        # ListCustomerRepricingConfigsRequest.page_token to obtain that page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer_repricing_configs = args[:customer_repricing_configs] if args.key?(:customer_repricing_configs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for CloudChannelService.ListCustomers.
      class GoogleCloudChannelV1ListCustomersResponse
        include Google::Apis::Core::Hashable
      
        # The customers belonging to a reseller or distributor.
        # Corresponds to the JSON property `customers`
        # @return [Array<Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer>]
        attr_accessor :customers
      
        # A token to retrieve the next page of results. Pass to ListCustomersRequest.
        # page_token to obtain that page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customers = args[:customers] if args.key?(:customers)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for CloudChannelService.ListEntitlementChanges
      class GoogleCloudChannelV1ListEntitlementChangesResponse
        include Google::Apis::Core::Hashable
      
        # The list of entitlement changes.
        # Corresponds to the JSON property `entitlementChanges`
        # @return [Array<Google::Apis::CloudchannelV1::GoogleCloudChannelV1EntitlementChange>]
        attr_accessor :entitlement_changes
      
        # A token to list the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entitlement_changes = args[:entitlement_changes] if args.key?(:entitlement_changes)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for CloudChannelService.ListEntitlements.
      class GoogleCloudChannelV1ListEntitlementsResponse
        include Google::Apis::Core::Hashable
      
        # The reseller customer's entitlements.
        # Corresponds to the JSON property `entitlements`
        # @return [Array<Google::Apis::CloudchannelV1::GoogleCloudChannelV1Entitlement>]
        attr_accessor :entitlements
      
        # A token to list the next page of results. Pass to ListEntitlementsRequest.
        # page_token to obtain that page.
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
      
      # Response message for ListOffers.
      class GoogleCloudChannelV1ListOffersResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of Offers requested.
        # Corresponds to the JSON property `offers`
        # @return [Array<Google::Apis::CloudchannelV1::GoogleCloudChannelV1Offer>]
        attr_accessor :offers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @offers = args[:offers] if args.key?(:offers)
        end
      end
      
      # Response message for ListProducts.
      class GoogleCloudChannelV1ListProductsResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of Products requested.
        # Corresponds to the JSON property `products`
        # @return [Array<Google::Apis::CloudchannelV1::GoogleCloudChannelV1Product>]
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
      
      # Response message for ListPurchasableOffers.
      class GoogleCloudChannelV1ListPurchasableOffersResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of Offers requested.
        # Corresponds to the JSON property `purchasableOffers`
        # @return [Array<Google::Apis::CloudchannelV1::GoogleCloudChannelV1PurchasableOffer>]
        attr_accessor :purchasable_offers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @purchasable_offers = args[:purchasable_offers] if args.key?(:purchasable_offers)
        end
      end
      
      # Response message for ListPurchasableSkus.
      class GoogleCloudChannelV1ListPurchasableSkusResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of SKUs requested.
        # Corresponds to the JSON property `purchasableSkus`
        # @return [Array<Google::Apis::CloudchannelV1::GoogleCloudChannelV1PurchasableSku>]
        attr_accessor :purchasable_skus
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @purchasable_skus = args[:purchasable_skus] if args.key?(:purchasable_skus)
        end
      end
      
      # Response message for CloudChannelReportsService.ListReports.
      class GoogleCloudChannelV1ListReportsResponse
        include Google::Apis::Core::Hashable
      
        # Pass this token to FetchReportResultsRequest.page_token to retrieve the next
        # page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The reports available to the partner.
        # Corresponds to the JSON property `reports`
        # @return [Array<Google::Apis::CloudchannelV1::GoogleCloudChannelV1Report>]
        attr_accessor :reports
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @reports = args[:reports] if args.key?(:reports)
        end
      end
      
      # Response message for ListSkus.
      class GoogleCloudChannelV1ListSkusResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of SKUs requested.
        # Corresponds to the JSON property `skus`
        # @return [Array<Google::Apis::CloudchannelV1::GoogleCloudChannelV1Sku>]
        attr_accessor :skus
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @skus = args[:skus] if args.key?(:skus)
        end
      end
      
      # Response Message for ListSubscribers.
      class GoogleCloudChannelV1ListSubscribersResponse
        include Google::Apis::Core::Hashable
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of service accounts which have subscriber access to the topic.
        # Corresponds to the JSON property `serviceAccounts`
        # @return [Array<String>]
        attr_accessor :service_accounts
      
        # Name of the topic registered with the reseller.
        # Corresponds to the JSON property `topic`
        # @return [String]
        attr_accessor :topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @service_accounts = args[:service_accounts] if args.key?(:service_accounts)
          @topic = args[:topic] if args.key?(:topic)
        end
      end
      
      # Request message for CloudChannelService.ListTransferableOffers
      class GoogleCloudChannelV1ListTransferableOffersRequest
        include Google::Apis::Core::Hashable
      
        # Customer's Cloud Identity ID
        # Corresponds to the JSON property `cloudIdentityId`
        # @return [String]
        attr_accessor :cloud_identity_id
      
        # A reseller should create a customer and use the resource name of that customer
        # here.
        # Corresponds to the JSON property `customerName`
        # @return [String]
        attr_accessor :customer_name
      
        # Optional. The BCP-47 language code. For example, "en-US". The response will
        # localize in the corresponding language code, if specified. The default value
        # is "en-US".
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Requested page size. Server might return fewer results than requested. If
        # unspecified, returns at most 100 offers. The maximum value is 1000; the server
        # will coerce values above 1000.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # A token for a page of results other than the first page. Obtained using
        # ListTransferableOffersResponse.next_page_token of the previous
        # CloudChannelService.ListTransferableOffers call.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Required. The SKU to look up Offers for.
        # Corresponds to the JSON property `sku`
        # @return [String]
        attr_accessor :sku
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_identity_id = args[:cloud_identity_id] if args.key?(:cloud_identity_id)
          @customer_name = args[:customer_name] if args.key?(:customer_name)
          @language_code = args[:language_code] if args.key?(:language_code)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @sku = args[:sku] if args.key?(:sku)
        end
      end
      
      # Response message for CloudChannelService.ListTransferableOffers.
      class GoogleCloudChannelV1ListTransferableOffersResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results. Pass to
        # ListTransferableOffersRequest.page_token to obtain that page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Information about Offers for a customer that can be used for transfer.
        # Corresponds to the JSON property `transferableOffers`
        # @return [Array<Google::Apis::CloudchannelV1::GoogleCloudChannelV1TransferableOffer>]
        attr_accessor :transferable_offers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @transferable_offers = args[:transferable_offers] if args.key?(:transferable_offers)
        end
      end
      
      # Request message for CloudChannelService.ListTransferableSkus
      class GoogleCloudChannelV1ListTransferableSkusRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The super admin of the resold customer generates this token to
        # authorize a reseller to access their Cloud Identity and purchase entitlements
        # on their behalf. You can omit this token after authorization. See https://
        # support.google.com/a/answer/7643790 for more details.
        # Corresponds to the JSON property `authToken`
        # @return [String]
        attr_accessor :auth_token
      
        # Customer's Cloud Identity ID
        # Corresponds to the JSON property `cloudIdentityId`
        # @return [String]
        attr_accessor :cloud_identity_id
      
        # A reseller is required to create a customer and use the resource name of the
        # created customer here. Customer_name uses the format: accounts/`account_id`/
        # customers/`customer_id`
        # Corresponds to the JSON property `customerName`
        # @return [String]
        attr_accessor :customer_name
      
        # The BCP-47 language code. For example, "en-US". The response will localize in
        # the corresponding language code, if specified. The default value is "en-US".
        # Optional.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # The requested page size. Server might return fewer results than requested. If
        # unspecified, returns at most 100 SKUs. The maximum value is 1000; the server
        # will coerce values above 1000. Optional.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # A token for a page of results other than the first page. Obtained using
        # ListTransferableSkusResponse.next_page_token of the previous
        # CloudChannelService.ListTransferableSkus call. Optional.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auth_token = args[:auth_token] if args.key?(:auth_token)
          @cloud_identity_id = args[:cloud_identity_id] if args.key?(:cloud_identity_id)
          @customer_name = args[:customer_name] if args.key?(:customer_name)
          @language_code = args[:language_code] if args.key?(:language_code)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
        end
      end
      
      # Response message for CloudChannelService.ListTransferableSkus.
      class GoogleCloudChannelV1ListTransferableSkusResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results. Pass to
        # ListTransferableSkusRequest.page_token to obtain that page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Information about existing SKUs for a customer that needs a transfer.
        # Corresponds to the JSON property `transferableSkus`
        # @return [Array<Google::Apis::CloudchannelV1::GoogleCloudChannelV1TransferableSku>]
        attr_accessor :transferable_skus
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @transferable_skus = args[:transferable_skus] if args.key?(:transferable_skus)
        end
      end
      
      # Represents the marketing information for a Product, SKU or Offer.
      class GoogleCloudChannelV1MarketingInfo
        include Google::Apis::Core::Hashable
      
        # Represents media information.
        # Corresponds to the JSON property `defaultLogo`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Media]
        attr_accessor :default_logo
      
        # Human readable description. Description can contain HTML.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Human readable name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_logo = args[:default_logo] if args.key?(:default_logo)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # Represents media information.
      class GoogleCloudChannelV1Media
        include Google::Apis::Core::Hashable
      
        # URL of the media.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # Title of the media.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Type of the media.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @title = args[:title] if args.key?(:title)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Represents an offer made to resellers for purchase. An offer is associated
      # with a Sku, has a plan for payment, a price, and defines the constraints for
      # buying.
      class GoogleCloudChannelV1Offer
        include Google::Apis::Core::Hashable
      
        # Represents the constraints for buying the Offer.
        # Corresponds to the JSON property `constraints`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Constraints]
        attr_accessor :constraints
      
        # The deal code of the offer to get a special promotion or discount.
        # Corresponds to the JSON property `dealCode`
        # @return [String]
        attr_accessor :deal_code
      
        # Output only. End of the Offer validity time.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Represents the marketing information for a Product, SKU or Offer.
        # Corresponds to the JSON property `marketingInfo`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1MarketingInfo]
        attr_accessor :marketing_info
      
        # Resource Name of the Offer. Format: accounts/`account_id`/offers/`offer_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Parameters required to use current Offer to purchase.
        # Corresponds to the JSON property `parameterDefinitions`
        # @return [Array<Google::Apis::CloudchannelV1::GoogleCloudChannelV1ParameterDefinition>]
        attr_accessor :parameter_definitions
      
        # The payment plan for the Offer. Describes how to make a payment.
        # Corresponds to the JSON property `plan`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Plan]
        attr_accessor :plan
      
        # Price for each monetizable resource type.
        # Corresponds to the JSON property `priceByResources`
        # @return [Array<Google::Apis::CloudchannelV1::GoogleCloudChannelV1PriceByResource>]
        attr_accessor :price_by_resources
      
        # Represents a product's purchasable Stock Keeping Unit (SKU). SKUs represent
        # the different variations of the product. For example, Google Workspace
        # Business Standard and Google Workspace Business Plus are Google Workspace
        # product SKUs.
        # Corresponds to the JSON property `sku`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Sku]
        attr_accessor :sku
      
        # Start of the Offer validity time.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @constraints = args[:constraints] if args.key?(:constraints)
          @deal_code = args[:deal_code] if args.key?(:deal_code)
          @end_time = args[:end_time] if args.key?(:end_time)
          @marketing_info = args[:marketing_info] if args.key?(:marketing_info)
          @name = args[:name] if args.key?(:name)
          @parameter_definitions = args[:parameter_definitions] if args.key?(:parameter_definitions)
          @plan = args[:plan] if args.key?(:plan)
          @price_by_resources = args[:price_by_resources] if args.key?(:price_by_resources)
          @sku = args[:sku] if args.key?(:sku)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Provides contextual information about a google.longrunning.Operation.
      class GoogleCloudChannelV1OperationMetadata
        include Google::Apis::Core::Hashable
      
        # The RPC that initiated this Long Running Operation.
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation_type = args[:operation_type] if args.key?(:operation_type)
        end
      end
      
      # Definition for extended entitlement parameters.
      class GoogleCloudChannelV1Parameter
        include Google::Apis::Core::Hashable
      
        # Output only. Specifies whether this parameter is allowed to be changed. For
        # example, for a Google Workspace Business Starter entitlement in commitment
        # plan, num_units is editable when entitlement is active.
        # Corresponds to the JSON property `editable`
        # @return [Boolean]
        attr_accessor :editable
        alias_method :editable?, :editable
      
        # Name of the parameter.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Data type and value of a parameter.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Value]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @editable = args[:editable] if args.key?(:editable)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Parameter's definition. Specifies what parameter is required to use the
      # current Offer to purchase.
      class GoogleCloudChannelV1ParameterDefinition
        include Google::Apis::Core::Hashable
      
        # If not empty, parameter values must be drawn from this list. For example, [us-
        # west1, us-west2, ...] Applicable to STRING parameter type.
        # Corresponds to the JSON property `allowedValues`
        # @return [Array<Google::Apis::CloudchannelV1::GoogleCloudChannelV1Value>]
        attr_accessor :allowed_values
      
        # Data type and value of a parameter.
        # Corresponds to the JSON property `maxValue`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Value]
        attr_accessor :max_value
      
        # Data type and value of a parameter.
        # Corresponds to the JSON property `minValue`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Value]
        attr_accessor :min_value
      
        # Name of the parameter.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # If set to true, parameter is optional to purchase this Offer.
        # Corresponds to the JSON property `optional`
        # @return [Boolean]
        attr_accessor :optional
        alias_method :optional?, :optional
      
        # Data type of the parameter. Minimal value, Maximum value and allowed values
        # will use specified data type here.
        # Corresponds to the JSON property `parameterType`
        # @return [String]
        attr_accessor :parameter_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_values = args[:allowed_values] if args.key?(:allowed_values)
          @max_value = args[:max_value] if args.key?(:max_value)
          @min_value = args[:min_value] if args.key?(:min_value)
          @name = args[:name] if args.key?(:name)
          @optional = args[:optional] if args.key?(:optional)
          @parameter_type = args[:parameter_type] if args.key?(:parameter_type)
        end
      end
      
      # An adjustment that applies a flat markup or markdown to an entire bill.
      class GoogleCloudChannelV1PercentageAdjustment
        include Google::Apis::Core::Hashable
      
        # A representation of a decimal value, such as 2.5. Clients may convert values
        # into language-native decimal formats, such as Java's BigDecimal or Python's
        # decimal.Decimal. [BigDecimal]: https://docs.oracle.com/en/java/javase/11/docs/
        # api/java.base/java/math/BigDecimal.html [decimal.Decimal]: https://docs.python.
        # org/3/library/decimal.html
        # Corresponds to the JSON property `percentage`
        # @return [Google::Apis::CloudchannelV1::GoogleTypeDecimal]
        attr_accessor :percentage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @percentage = args[:percentage] if args.key?(:percentage)
        end
      end
      
      # Represents period in days/months/years.
      class GoogleCloudChannelV1Period
        include Google::Apis::Core::Hashable
      
        # Total duration of Period Type defined.
        # Corresponds to the JSON property `duration`
        # @return [Fixnum]
        attr_accessor :duration
      
        # Period Type.
        # Corresponds to the JSON property `periodType`
        # @return [String]
        attr_accessor :period_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration = args[:duration] if args.key?(:duration)
          @period_type = args[:period_type] if args.key?(:period_type)
        end
      end
      
      # The payment plan for the Offer. Describes how to make a payment.
      class GoogleCloudChannelV1Plan
        include Google::Apis::Core::Hashable
      
        # Reseller Billing account to charge after an offer transaction. Only present
        # for Google Cloud offers.
        # Corresponds to the JSON property `billingAccount`
        # @return [String]
        attr_accessor :billing_account
      
        # Represents period in days/months/years.
        # Corresponds to the JSON property `paymentCycle`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Period]
        attr_accessor :payment_cycle
      
        # Describes how a reseller will be billed.
        # Corresponds to the JSON property `paymentPlan`
        # @return [String]
        attr_accessor :payment_plan
      
        # Specifies when the payment needs to happen.
        # Corresponds to the JSON property `paymentType`
        # @return [String]
        attr_accessor :payment_type
      
        # Represents period in days/months/years.
        # Corresponds to the JSON property `trialPeriod`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Period]
        attr_accessor :trial_period
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_account = args[:billing_account] if args.key?(:billing_account)
          @payment_cycle = args[:payment_cycle] if args.key?(:payment_cycle)
          @payment_plan = args[:payment_plan] if args.key?(:payment_plan)
          @payment_type = args[:payment_type] if args.key?(:payment_type)
          @trial_period = args[:trial_period] if args.key?(:trial_period)
        end
      end
      
      # Represents the price of the Offer.
      class GoogleCloudChannelV1Price
        include Google::Apis::Core::Hashable
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `basePrice`
        # @return [Google::Apis::CloudchannelV1::GoogleTypeMoney]
        attr_accessor :base_price
      
        # Discount percentage, represented as decimal. For example, a 20% discount will
        # be represent as 0.2.
        # Corresponds to the JSON property `discount`
        # @return [Float]
        attr_accessor :discount
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `effectivePrice`
        # @return [Google::Apis::CloudchannelV1::GoogleTypeMoney]
        attr_accessor :effective_price
      
        # Link to external price list, such as link to Google Voice rate card.
        # Corresponds to the JSON property `externalPriceUri`
        # @return [String]
        attr_accessor :external_price_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base_price = args[:base_price] if args.key?(:base_price)
          @discount = args[:discount] if args.key?(:discount)
          @effective_price = args[:effective_price] if args.key?(:effective_price)
          @external_price_uri = args[:external_price_uri] if args.key?(:external_price_uri)
        end
      end
      
      # Represents price by resource type.
      class GoogleCloudChannelV1PriceByResource
        include Google::Apis::Core::Hashable
      
        # Represents the price of the Offer.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Price]
        attr_accessor :price
      
        # Specifies the price by time range.
        # Corresponds to the JSON property `pricePhases`
        # @return [Array<Google::Apis::CloudchannelV1::GoogleCloudChannelV1PricePhase>]
        attr_accessor :price_phases
      
        # Resource Type. Example: SEAT
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @price = args[:price] if args.key?(:price)
          @price_phases = args[:price_phases] if args.key?(:price_phases)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
        end
      end
      
      # Specifies the price by the duration of months. For example, a 20% discount for
      # the first six months, then a 10% discount starting on the seventh month.
      class GoogleCloudChannelV1PricePhase
        include Google::Apis::Core::Hashable
      
        # Defines first period for the phase.
        # Corresponds to the JSON property `firstPeriod`
        # @return [Fixnum]
        attr_accessor :first_period
      
        # Defines first period for the phase.
        # Corresponds to the JSON property `lastPeriod`
        # @return [Fixnum]
        attr_accessor :last_period
      
        # Defines the phase period type.
        # Corresponds to the JSON property `periodType`
        # @return [String]
        attr_accessor :period_type
      
        # Represents the price of the Offer.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Price]
        attr_accessor :price
      
        # Price by the resource tiers.
        # Corresponds to the JSON property `priceTiers`
        # @return [Array<Google::Apis::CloudchannelV1::GoogleCloudChannelV1PriceTier>]
        attr_accessor :price_tiers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @first_period = args[:first_period] if args.key?(:first_period)
          @last_period = args[:last_period] if args.key?(:last_period)
          @period_type = args[:period_type] if args.key?(:period_type)
          @price = args[:price] if args.key?(:price)
          @price_tiers = args[:price_tiers] if args.key?(:price_tiers)
        end
      end
      
      # Defines price at resource tier level. For example, an offer with following
      # definition : * Tier 1: Provide 25% discount for all seats between 1 and 25. *
      # Tier 2: Provide 10% discount for all seats between 26 and 100. * Tier 3:
      # Provide flat 15% discount for all seats above 100. Each of these tiers is
      # represented as a PriceTier.
      class GoogleCloudChannelV1PriceTier
        include Google::Apis::Core::Hashable
      
        # First resource for which the tier price applies.
        # Corresponds to the JSON property `firstResource`
        # @return [Fixnum]
        attr_accessor :first_resource
      
        # Last resource for which the tier price applies.
        # Corresponds to the JSON property `lastResource`
        # @return [Fixnum]
        attr_accessor :last_resource
      
        # Represents the price of the Offer.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Price]
        attr_accessor :price
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @first_resource = args[:first_resource] if args.key?(:first_resource)
          @last_resource = args[:last_resource] if args.key?(:last_resource)
          @price = args[:price] if args.key?(:price)
        end
      end
      
      # A Product is the entity a customer uses when placing an order. For example,
      # Google Workspace, Google Voice, etc.
      class GoogleCloudChannelV1Product
        include Google::Apis::Core::Hashable
      
        # Represents the marketing information for a Product, SKU or Offer.
        # Corresponds to the JSON property `marketingInfo`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1MarketingInfo]
        attr_accessor :marketing_info
      
        # Resource Name of the Product. Format: products/`product_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @marketing_info = args[:marketing_info] if args.key?(:marketing_info)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Request message for CloudChannelService.ProvisionCloudIdentity
      class GoogleCloudChannelV1ProvisionCloudIdentityRequest
        include Google::Apis::Core::Hashable
      
        # Cloud Identity information for the Cloud Channel Customer.
        # Corresponds to the JSON property `cloudIdentityInfo`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1CloudIdentityInfo]
        attr_accessor :cloud_identity_info
      
        # Information needed to create an Admin User for Google Workspace.
        # Corresponds to the JSON property `user`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1AdminUser]
        attr_accessor :user
      
        # Validate the request and preview the review, but do not post it.
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_identity_info = args[:cloud_identity_info] if args.key?(:cloud_identity_info)
          @user = args[:user] if args.key?(:user)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
        end
      end
      
      # Service provisioned for an entitlement.
      class GoogleCloudChannelV1ProvisionedService
        include Google::Apis::Core::Hashable
      
        # Output only. The product pertaining to the provisioning resource as specified
        # in the Offer.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # Output only. Provisioning ID of the entitlement. For Google Workspace, this is
        # the underlying Subscription ID. For Google Cloud, this is the Billing Account
        # ID of the billing subaccount."
        # Corresponds to the JSON property `provisioningId`
        # @return [String]
        attr_accessor :provisioning_id
      
        # Output only. The SKU pertaining to the provisioning resource as specified in
        # the Offer.
        # Corresponds to the JSON property `skuId`
        # @return [String]
        attr_accessor :sku_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @product_id = args[:product_id] if args.key?(:product_id)
          @provisioning_id = args[:provisioning_id] if args.key?(:provisioning_id)
          @sku_id = args[:sku_id] if args.key?(:sku_id)
        end
      end
      
      # Offer that you can purchase for a customer. This is used in the
      # ListPurchasableOffer API response.
      class GoogleCloudChannelV1PurchasableOffer
        include Google::Apis::Core::Hashable
      
        # Represents an offer made to resellers for purchase. An offer is associated
        # with a Sku, has a plan for payment, a price, and defines the constraints for
        # buying.
        # Corresponds to the JSON property `offer`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Offer]
        attr_accessor :offer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @offer = args[:offer] if args.key?(:offer)
        end
      end
      
      # SKU that you can purchase. This is used in ListPurchasableSku API response.
      class GoogleCloudChannelV1PurchasableSku
        include Google::Apis::Core::Hashable
      
        # Represents a product's purchasable Stock Keeping Unit (SKU). SKUs represent
        # the different variations of the product. For example, Google Workspace
        # Business Standard and Google Workspace Business Plus are Google Workspace
        # product SKUs.
        # Corresponds to the JSON property `sku`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Sku]
        attr_accessor :sku
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sku = args[:sku] if args.key?(:sku)
        end
      end
      
      # Response message for QueryEligibleBillingAccounts.
      class GoogleCloudChannelV1QueryEligibleBillingAccountsResponse
        include Google::Apis::Core::Hashable
      
        # List of SKU purchase groups where each group represents a set of SKUs that
        # must be purchased using the same billing account. Each SKU from [
        # QueryEligibleBillingAccountsRequest.skus] will appear in exactly one SKU group.
        # Corresponds to the JSON property `skuPurchaseGroups`
        # @return [Array<Google::Apis::CloudchannelV1::GoogleCloudChannelV1SkuPurchaseGroup>]
        attr_accessor :sku_purchase_groups
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sku_purchase_groups = args[:sku_purchase_groups] if args.key?(:sku_purchase_groups)
        end
      end
      
      # Request Message for RegisterSubscriber.
      class GoogleCloudChannelV1RegisterSubscriberRequest
        include Google::Apis::Core::Hashable
      
        # Required. Service account that provides subscriber access to the registered
        # topic.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service_account = args[:service_account] if args.key?(:service_account)
        end
      end
      
      # Response Message for RegisterSubscriber.
      class GoogleCloudChannelV1RegisterSubscriberResponse
        include Google::Apis::Core::Hashable
      
        # Name of the topic the subscriber will listen to.
        # Corresponds to the JSON property `topic`
        # @return [String]
        attr_accessor :topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @topic = args[:topic] if args.key?(:topic)
        end
      end
      
      # Renewal settings for renewable Offers.
      class GoogleCloudChannelV1RenewalSettings
        include Google::Apis::Core::Hashable
      
        # If false, the plan will be completed at the end date.
        # Corresponds to the JSON property `enableRenewal`
        # @return [Boolean]
        attr_accessor :enable_renewal
        alias_method :enable_renewal?, :enable_renewal
      
        # Represents period in days/months/years.
        # Corresponds to the JSON property `paymentCycle`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Period]
        attr_accessor :payment_cycle
      
        # Describes how a reseller will be billed.
        # Corresponds to the JSON property `paymentPlan`
        # @return [String]
        attr_accessor :payment_plan
      
        # If true and enable_renewal = true, the unit (for example seats or licenses)
        # will be set to the number of active units at renewal time.
        # Corresponds to the JSON property `resizeUnitCount`
        # @return [Boolean]
        attr_accessor :resize_unit_count
        alias_method :resize_unit_count?, :resize_unit_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_renewal = args[:enable_renewal] if args.key?(:enable_renewal)
          @payment_cycle = args[:payment_cycle] if args.key?(:payment_cycle)
          @payment_plan = args[:payment_plan] if args.key?(:payment_plan)
          @resize_unit_count = args[:resize_unit_count] if args.key?(:resize_unit_count)
        end
      end
      
      # The ID and description of a report that was used to generate report data. For
      # example, "Google Cloud Daily Spend", "Google Workspace License Activity", etc.
      class GoogleCloudChannelV1Report
        include Google::Apis::Core::Hashable
      
        # The list of columns included in the report. This defines the schema of the
        # report results.
        # Corresponds to the JSON property `columns`
        # @return [Array<Google::Apis::CloudchannelV1::GoogleCloudChannelV1Column>]
        attr_accessor :columns
      
        # A description of other aspects of the report, such as the products it supports.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A human-readable name for this report.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. The report's resource name. Specifies the account and report used to
        # generate report data. The report_id identifier is a UID (for example, `
        # 613bf59q`). Name uses the format: accounts/`account_id`/reports/`report_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @columns = args[:columns] if args.key?(:columns)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The result of a RunReportJob operation. Contains the name to use in
      # FetchReportResultsRequest.report_job and the status of the operation.
      class GoogleCloudChannelV1ReportJob
        include Google::Apis::Core::Hashable
      
        # Required. The resource name of a report job. Name uses the format: `accounts/`
        # account_id`/reportJobs/`report_job_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Status of a report generation process.
        # Corresponds to the JSON property `reportStatus`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ReportStatus]
        attr_accessor :report_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @report_status = args[:report_status] if args.key?(:report_status)
        end
      end
      
      # The features describing the data. Returned by CloudChannelReportsService.
      # RunReportJob and CloudChannelReportsService.FetchReportResults.
      class GoogleCloudChannelV1ReportResultsMetadata
        include Google::Apis::Core::Hashable
      
        # A representation of usage or invoice date ranges.
        # Corresponds to the JSON property `dateRange`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1DateRange]
        attr_accessor :date_range
      
        # A representation of usage or invoice date ranges.
        # Corresponds to the JSON property `precedingDateRange`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1DateRange]
        attr_accessor :preceding_date_range
      
        # The ID and description of a report that was used to generate report data. For
        # example, "Google Cloud Daily Spend", "Google Workspace License Activity", etc.
        # Corresponds to the JSON property `report`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Report]
        attr_accessor :report
      
        # The total number of rows of data in the final report.
        # Corresponds to the JSON property `rowCount`
        # @return [Fixnum]
        attr_accessor :row_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date_range = args[:date_range] if args.key?(:date_range)
          @preceding_date_range = args[:preceding_date_range] if args.key?(:preceding_date_range)
          @report = args[:report] if args.key?(:report)
          @row_count = args[:row_count] if args.key?(:row_count)
        end
      end
      
      # Status of a report generation process.
      class GoogleCloudChannelV1ReportStatus
        include Google::Apis::Core::Hashable
      
        # The report generation's completion time.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The report generation's start time.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The current state of the report generation process.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # A single report value.
      class GoogleCloudChannelV1ReportValue
        include Google::Apis::Core::Hashable
      
        # Represents civil time (or occasionally physical time). This type can represent
        # a civil time in one of a few possible ways: * When utc_offset is set and
        # time_zone is unset: a civil time on a calendar day with a particular offset
        # from UTC. * When time_zone is set and utc_offset is unset: a civil time on a
        # calendar day in a particular time zone. * When neither time_zone nor
        # utc_offset is set: a civil time on a calendar day in local time. The date is
        # relative to the Proleptic Gregorian Calendar. If year, month, or day are 0,
        # the DateTime is considered not to have a specific year, month, or day
        # respectively. This type may also be used to represent a physical time if all
        # the date and time fields are set and either case of the `time_offset` oneof is
        # set. Consider using `Timestamp` message for physical time instead. If your use
        # case also would like to store the user's timezone, that can be done in another
        # field. This type is more flexible than some applications may want. Make sure
        # to document and validate your application's limitations.
        # Corresponds to the JSON property `dateTimeValue`
        # @return [Google::Apis::CloudchannelV1::GoogleTypeDateTime]
        attr_accessor :date_time_value
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `dateValue`
        # @return [Google::Apis::CloudchannelV1::GoogleTypeDate]
        attr_accessor :date_value
      
        # A representation of a decimal value, such as 2.5. Clients may convert values
        # into language-native decimal formats, such as Java's BigDecimal or Python's
        # decimal.Decimal. [BigDecimal]: https://docs.oracle.com/en/java/javase/11/docs/
        # api/java.base/java/math/BigDecimal.html [decimal.Decimal]: https://docs.python.
        # org/3/library/decimal.html
        # Corresponds to the JSON property `decimalValue`
        # @return [Google::Apis::CloudchannelV1::GoogleTypeDecimal]
        attr_accessor :decimal_value
      
        # A value of type `int`.
        # Corresponds to the JSON property `intValue`
        # @return [Fixnum]
        attr_accessor :int_value
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `moneyValue`
        # @return [Google::Apis::CloudchannelV1::GoogleTypeMoney]
        attr_accessor :money_value
      
        # A value of type `string`.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date_time_value = args[:date_time_value] if args.key?(:date_time_value)
          @date_value = args[:date_value] if args.key?(:date_value)
          @decimal_value = args[:decimal_value] if args.key?(:decimal_value)
          @int_value = args[:int_value] if args.key?(:int_value)
          @money_value = args[:money_value] if args.key?(:money_value)
          @string_value = args[:string_value] if args.key?(:string_value)
        end
      end
      
      # A type that represents the various adjustments you can apply to a bill.
      class GoogleCloudChannelV1RepricingAdjustment
        include Google::Apis::Core::Hashable
      
        # An adjustment that applies a flat markup or markdown to an entire bill.
        # Corresponds to the JSON property `percentageAdjustment`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1PercentageAdjustment]
        attr_accessor :percentage_adjustment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @percentage_adjustment = args[:percentage_adjustment] if args.key?(:percentage_adjustment)
        end
      end
      
      # Represents the various repricing conditions you can use for a conditional
      # override.
      class GoogleCloudChannelV1RepricingCondition
        include Google::Apis::Core::Hashable
      
        # A condition that applies the override if a line item SKU is found in the SKU
        # group.
        # Corresponds to the JSON property `skuGroupCondition`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1SkuGroupCondition]
        attr_accessor :sku_group_condition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sku_group_condition = args[:sku_group_condition] if args.key?(:sku_group_condition)
        end
      end
      
      # Configuration for repricing a Google bill over a period of time.
      class GoogleCloudChannelV1RepricingConfig
        include Google::Apis::Core::Hashable
      
        # A type that represents the various adjustments you can apply to a bill.
        # Corresponds to the JSON property `adjustment`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1RepricingAdjustment]
        attr_accessor :adjustment
      
        # Applies the repricing configuration at the channel partner level. The channel
        # partner value is derived from the resource name. Takes an empty json object.
        # Corresponds to the JSON property `channelPartnerGranularity`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1RepricingConfigChannelPartnerGranularity]
        attr_accessor :channel_partner_granularity
      
        # The conditional overrides to apply for this configuration. If you list
        # multiple overrides, only the first valid override is used. If you don't list
        # any overrides, the API uses the normal adjustment and rebilling basis.
        # Corresponds to the JSON property `conditionalOverrides`
        # @return [Array<Google::Apis::CloudchannelV1::GoogleCloudChannelV1ConditionalOverride>]
        attr_accessor :conditional_overrides
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `effectiveInvoiceMonth`
        # @return [Google::Apis::CloudchannelV1::GoogleTypeDate]
        attr_accessor :effective_invoice_month
      
        # Applies the repricing configuration at the entitlement level.
        # Corresponds to the JSON property `entitlementGranularity`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1RepricingConfigEntitlementGranularity]
        attr_accessor :entitlement_granularity
      
        # Required. The RebillingBasis to use for this bill. Specifies the relative cost
        # based on repricing costs you will apply.
        # Corresponds to the JSON property `rebillingBasis`
        # @return [String]
        attr_accessor :rebilling_basis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adjustment = args[:adjustment] if args.key?(:adjustment)
          @channel_partner_granularity = args[:channel_partner_granularity] if args.key?(:channel_partner_granularity)
          @conditional_overrides = args[:conditional_overrides] if args.key?(:conditional_overrides)
          @effective_invoice_month = args[:effective_invoice_month] if args.key?(:effective_invoice_month)
          @entitlement_granularity = args[:entitlement_granularity] if args.key?(:entitlement_granularity)
          @rebilling_basis = args[:rebilling_basis] if args.key?(:rebilling_basis)
        end
      end
      
      # Applies the repricing configuration at the channel partner level. The channel
      # partner value is derived from the resource name. Takes an empty json object.
      class GoogleCloudChannelV1RepricingConfigChannelPartnerGranularity
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Applies the repricing configuration at the entitlement level.
      class GoogleCloudChannelV1RepricingConfigEntitlementGranularity
        include Google::Apis::Core::Hashable
      
        # Resource name of the entitlement. Format: accounts/`account_id`/customers/`
        # customer_id`/entitlements/`entitlement_id`
        # Corresponds to the JSON property `entitlement`
        # @return [String]
        attr_accessor :entitlement
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entitlement = args[:entitlement] if args.key?(:entitlement)
        end
      end
      
      # A row of report values.
      class GoogleCloudChannelV1Row
        include Google::Apis::Core::Hashable
      
        # The key for the partition this row belongs to. This field is empty if the
        # report is not partitioned.
        # Corresponds to the JSON property `partitionKey`
        # @return [String]
        attr_accessor :partition_key
      
        # The list of values in the row.
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::CloudchannelV1::GoogleCloudChannelV1ReportValue>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @partition_key = args[:partition_key] if args.key?(:partition_key)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Request message for CloudChannelReportsService.RunReportJob.
      class GoogleCloudChannelV1RunReportJobRequest
        include Google::Apis::Core::Hashable
      
        # A representation of usage or invoice date ranges.
        # Corresponds to the JSON property `dateRange`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1DateRange]
        attr_accessor :date_range
      
        # Optional. A structured string that defines conditions on dimension columns to
        # restrict the report output. Filters support logical operators (AND, OR, NOT)
        # and conditional operators (=, !=, <, >, <=, and >=) using `column_id` as keys.
        # For example: `(customer:"accounts/C123abc/customers/S456def" OR customer:"
        # accounts/C123abc/customers/S789ghi") AND invoice_start_date.year >= 2022`
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Optional. The BCP-47 language code, such as "en-US". If specified, the
        # response is localized to the corresponding language code if the original data
        # sources support it. Default is "en-US".
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date_range = args[:date_range] if args.key?(:date_range)
          @filter = args[:filter] if args.key?(:filter)
          @language_code = args[:language_code] if args.key?(:language_code)
        end
      end
      
      # Response message for CloudChannelReportsService.RunReportJob.
      class GoogleCloudChannelV1RunReportJobResponse
        include Google::Apis::Core::Hashable
      
        # The result of a RunReportJob operation. Contains the name to use in
        # FetchReportResultsRequest.report_job and the status of the operation.
        # Corresponds to the JSON property `reportJob`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ReportJob]
        attr_accessor :report_job
      
        # The features describing the data. Returned by CloudChannelReportsService.
        # RunReportJob and CloudChannelReportsService.FetchReportResults.
        # Corresponds to the JSON property `reportMetadata`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ReportResultsMetadata]
        attr_accessor :report_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @report_job = args[:report_job] if args.key?(:report_job)
          @report_metadata = args[:report_metadata] if args.key?(:report_metadata)
        end
      end
      
      # Represents a product's purchasable Stock Keeping Unit (SKU). SKUs represent
      # the different variations of the product. For example, Google Workspace
      # Business Standard and Google Workspace Business Plus are Google Workspace
      # product SKUs.
      class GoogleCloudChannelV1Sku
        include Google::Apis::Core::Hashable
      
        # Represents the marketing information for a Product, SKU or Offer.
        # Corresponds to the JSON property `marketingInfo`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1MarketingInfo]
        attr_accessor :marketing_info
      
        # Resource Name of the SKU. Format: products/`product_id`/skus/`sku_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A Product is the entity a customer uses when placing an order. For example,
        # Google Workspace, Google Voice, etc.
        # Corresponds to the JSON property `product`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Product]
        attr_accessor :product
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @marketing_info = args[:marketing_info] if args.key?(:marketing_info)
          @name = args[:name] if args.key?(:name)
          @product = args[:product] if args.key?(:product)
        end
      end
      
      # A condition that applies the override if a line item SKU is found in the SKU
      # group.
      class GoogleCloudChannelV1SkuGroupCondition
        include Google::Apis::Core::Hashable
      
        # Specifies a SKU group (https://cloud.google.com/skus/sku-groups). Resource
        # name of SKU group. Format: accounts/`account`/skuGroups/`sku_group`. Example: "
        # accounts/C01234/skuGroups/3d50fd57-3157-4577-a5a9-a219b8490041".
        # Corresponds to the JSON property `skuGroup`
        # @return [String]
        attr_accessor :sku_group
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sku_group = args[:sku_group] if args.key?(:sku_group)
        end
      end
      
      # Represents a set of SKUs that must be purchased using the same billing account.
      class GoogleCloudChannelV1SkuPurchaseGroup
        include Google::Apis::Core::Hashable
      
        # List of billing accounts that are eligible to purhcase these SKUs.
        # Corresponds to the JSON property `billingAccountPurchaseInfos`
        # @return [Array<Google::Apis::CloudchannelV1::GoogleCloudChannelV1BillingAccountPurchaseInfo>]
        attr_accessor :billing_account_purchase_infos
      
        # Resource names of the SKUs included in this group. Format: products/`
        # product_id`/skus/`sku_id`.
        # Corresponds to the JSON property `skus`
        # @return [Array<String>]
        attr_accessor :skus
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_account_purchase_infos = args[:billing_account_purchase_infos] if args.key?(:billing_account_purchase_infos)
          @skus = args[:skus] if args.key?(:skus)
        end
      end
      
      # Request message for CloudChannelService.StartPaidService.
      class GoogleCloudChannelV1StartPaidServiceRequest
        include Google::Apis::Core::Hashable
      
        # Optional. You can specify an optional unique request ID, and if you need to
        # retry your request, the server will know to ignore the request if it's
        # complete. For example, you make an initial request and the request times out.
        # If you make the request again with the same request ID, the server can check
        # if it received the original operation with the same request ID. If it did, it
        # will ignore the second request. The request ID must be a valid [UUID](https://
        # tools.ietf.org/html/rfc4122) with the exception that zero UUID is not
        # supported (`00000000-0000-0000-0000-000000000000`).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Represents information which resellers will get as part of notification from
      # Pub/Sub.
      class GoogleCloudChannelV1SubscriberEvent
        include Google::Apis::Core::Hashable
      
        # Represents Pub/Sub message content describing customer update.
        # Corresponds to the JSON property `customerEvent`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1CustomerEvent]
        attr_accessor :customer_event
      
        # Represents Pub/Sub message content describing entitlement update.
        # Corresponds to the JSON property `entitlementEvent`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1EntitlementEvent]
        attr_accessor :entitlement_event
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer_event = args[:customer_event] if args.key?(:customer_event)
          @entitlement_event = args[:entitlement_event] if args.key?(:entitlement_event)
        end
      end
      
      # Request message for CloudChannelService.SuspendEntitlement.
      class GoogleCloudChannelV1SuspendEntitlementRequest
        include Google::Apis::Core::Hashable
      
        # Optional. You can specify an optional unique request ID, and if you need to
        # retry your request, the server will know to ignore the request if it's
        # complete. For example, you make an initial request and the request times out.
        # If you make the request again with the same request ID, the server can check
        # if it received the original operation with the same request ID. If it did, it
        # will ignore the second request. The request ID must be a valid [UUID](https://
        # tools.ietf.org/html/rfc4122) with the exception that zero UUID is not
        # supported (`00000000-0000-0000-0000-000000000000`).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Specifies transfer eligibility of a SKU.
      class GoogleCloudChannelV1TransferEligibility
        include Google::Apis::Core::Hashable
      
        # Localized description if reseller is not eligible to transfer the SKU.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Specified the reason for ineligibility.
        # Corresponds to the JSON property `ineligibilityReason`
        # @return [String]
        attr_accessor :ineligibility_reason
      
        # Whether reseller is eligible to transfer the SKU.
        # Corresponds to the JSON property `isEligible`
        # @return [Boolean]
        attr_accessor :is_eligible
        alias_method :is_eligible?, :is_eligible
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @ineligibility_reason = args[:ineligibility_reason] if args.key?(:ineligibility_reason)
          @is_eligible = args[:is_eligible] if args.key?(:is_eligible)
        end
      end
      
      # Request message for CloudChannelService.TransferEntitlements.
      class GoogleCloudChannelV1TransferEntitlementsRequest
        include Google::Apis::Core::Hashable
      
        # The super admin of the resold customer generates this token to authorize a
        # reseller to access their Cloud Identity and purchase entitlements on their
        # behalf. You can omit this token after authorization. See https://support.
        # google.com/a/answer/7643790 for more details.
        # Corresponds to the JSON property `authToken`
        # @return [String]
        attr_accessor :auth_token
      
        # Required. The new entitlements to create or transfer.
        # Corresponds to the JSON property `entitlements`
        # @return [Array<Google::Apis::CloudchannelV1::GoogleCloudChannelV1Entitlement>]
        attr_accessor :entitlements
      
        # Optional. You can specify an optional unique request ID, and if you need to
        # retry your request, the server will know to ignore the request if it's
        # complete. For example, you make an initial request and the request times out.
        # If you make the request again with the same request ID, the server can check
        # if it received the original operation with the same request ID. If it did, it
        # will ignore the second request. The request ID must be a valid [UUID](https://
        # tools.ietf.org/html/rfc4122) with the exception that zero UUID is not
        # supported (`00000000-0000-0000-0000-000000000000`).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auth_token = args[:auth_token] if args.key?(:auth_token)
          @entitlements = args[:entitlements] if args.key?(:entitlements)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Response message for CloudChannelService.TransferEntitlements. This is put in
      # the response field of google.longrunning.Operation.
      class GoogleCloudChannelV1TransferEntitlementsResponse
        include Google::Apis::Core::Hashable
      
        # The transferred entitlements.
        # Corresponds to the JSON property `entitlements`
        # @return [Array<Google::Apis::CloudchannelV1::GoogleCloudChannelV1Entitlement>]
        attr_accessor :entitlements
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entitlements = args[:entitlements] if args.key?(:entitlements)
        end
      end
      
      # Request message for CloudChannelService.TransferEntitlementsToGoogle.
      class GoogleCloudChannelV1TransferEntitlementsToGoogleRequest
        include Google::Apis::Core::Hashable
      
        # Required. The entitlements to transfer to Google.
        # Corresponds to the JSON property `entitlements`
        # @return [Array<Google::Apis::CloudchannelV1::GoogleCloudChannelV1Entitlement>]
        attr_accessor :entitlements
      
        # Optional. You can specify an optional unique request ID, and if you need to
        # retry your request, the server will know to ignore the request if it's
        # complete. For example, you make an initial request and the request times out.
        # If you make the request again with the same request ID, the server can check
        # if it received the original operation with the same request ID. If it did, it
        # will ignore the second request. The request ID must be a valid [UUID](https://
        # tools.ietf.org/html/rfc4122) with the exception that zero UUID is not
        # supported (`00000000-0000-0000-0000-000000000000`).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entitlements = args[:entitlements] if args.key?(:entitlements)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # TransferableOffer represents an Offer that can be used in Transfer. Read-only.
      class GoogleCloudChannelV1TransferableOffer
        include Google::Apis::Core::Hashable
      
        # Represents an offer made to resellers for purchase. An offer is associated
        # with a Sku, has a plan for payment, a price, and defines the constraints for
        # buying.
        # Corresponds to the JSON property `offer`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Offer]
        attr_accessor :offer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @offer = args[:offer] if args.key?(:offer)
        end
      end
      
      # TransferableSku represents information a reseller needs to view existing
      # provisioned services for a customer that they do not own. Read-only.
      class GoogleCloudChannelV1TransferableSku
        include Google::Apis::Core::Hashable
      
        # Represents a product's purchasable Stock Keeping Unit (SKU). SKUs represent
        # the different variations of the product. For example, Google Workspace
        # Business Standard and Google Workspace Business Plus are Google Workspace
        # product SKUs.
        # Corresponds to the JSON property `legacySku`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Sku]
        attr_accessor :legacy_sku
      
        # Represents a product's purchasable Stock Keeping Unit (SKU). SKUs represent
        # the different variations of the product. For example, Google Workspace
        # Business Standard and Google Workspace Business Plus are Google Workspace
        # product SKUs.
        # Corresponds to the JSON property `sku`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Sku]
        attr_accessor :sku
      
        # Specifies transfer eligibility of a SKU.
        # Corresponds to the JSON property `transferEligibility`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1TransferEligibility]
        attr_accessor :transfer_eligibility
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @legacy_sku = args[:legacy_sku] if args.key?(:legacy_sku)
          @sku = args[:sku] if args.key?(:sku)
          @transfer_eligibility = args[:transfer_eligibility] if args.key?(:transfer_eligibility)
        end
      end
      
      # Settings for trial offers.
      class GoogleCloudChannelV1TrialSettings
        include Google::Apis::Core::Hashable
      
        # Date when the trial ends. The value is in milliseconds using the UNIX Epoch
        # format. See an example [Epoch converter](https://www.epochconverter.com).
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Determines if the entitlement is in a trial or not: * `true` - The entitlement
        # is in trial. * `false` - The entitlement is not in trial.
        # Corresponds to the JSON property `trial`
        # @return [Boolean]
        attr_accessor :trial
        alias_method :trial?, :trial
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @trial = args[:trial] if args.key?(:trial)
        end
      end
      
      # Request Message for UnregisterSubscriber.
      class GoogleCloudChannelV1UnregisterSubscriberRequest
        include Google::Apis::Core::Hashable
      
        # Required. Service account to unregister from subscriber access to the topic.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service_account = args[:service_account] if args.key?(:service_account)
        end
      end
      
      # Response Message for UnregisterSubscriber.
      class GoogleCloudChannelV1UnregisterSubscriberResponse
        include Google::Apis::Core::Hashable
      
        # Name of the topic the service account subscriber access was removed from.
        # Corresponds to the JSON property `topic`
        # @return [String]
        attr_accessor :topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @topic = args[:topic] if args.key?(:topic)
        end
      end
      
      # Request message for CloudChannelService.UpdateChannelPartnerLink
      class GoogleCloudChannelV1UpdateChannelPartnerLinkRequest
        include Google::Apis::Core::Hashable
      
        # Entity representing a link between distributors and their indirect resellers
        # in an n-tier resale channel.
        # Corresponds to the JSON property `channelPartnerLink`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerLink]
        attr_accessor :channel_partner_link
      
        # Required. The update mask that applies to the resource. The only allowable
        # value for an update mask is channel_partner_link.link_state.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel_partner_link = args[:channel_partner_link] if args.key?(:channel_partner_link)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Data type and value of a parameter.
      class GoogleCloudChannelV1Value
        include Google::Apis::Core::Hashable
      
        # Represents a boolean value.
        # Corresponds to the JSON property `boolValue`
        # @return [Boolean]
        attr_accessor :bool_value
        alias_method :bool_value?, :bool_value
      
        # Represents a double value.
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # Represents an int64 value.
        # Corresponds to the JSON property `int64Value`
        # @return [Fixnum]
        attr_accessor :int64_value
      
        # Represents an 'Any' proto value.
        # Corresponds to the JSON property `protoValue`
        # @return [Hash<String,Object>]
        attr_accessor :proto_value
      
        # Represents a string value.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bool_value = args[:bool_value] if args.key?(:bool_value)
          @double_value = args[:double_value] if args.key?(:double_value)
          @int64_value = args[:int64_value] if args.key?(:int64_value)
          @proto_value = args[:proto_value] if args.key?(:proto_value)
          @string_value = args[:string_value] if args.key?(:string_value)
        end
      end
      
      # Association links that an entitlement has to other entitlements.
      class GoogleCloudChannelV1alpha1AssociationInfo
        include Google::Apis::Core::Hashable
      
        # The name of the base entitlement, for which this entitlement is an add-on.
        # Corresponds to the JSON property `baseEntitlement`
        # @return [String]
        attr_accessor :base_entitlement
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base_entitlement = args[:base_entitlement] if args.key?(:base_entitlement)
        end
      end
      
      # Represents Pub/Sub messages about updates to a Channel Partner. You can
      # retrieve updated values through the ChannelPartnerLinks API.
      class GoogleCloudChannelV1alpha1ChannelPartnerEvent
        include Google::Apis::Core::Hashable
      
        # Resource name for the Channel Partner Link. Channel_partner uses the format:
        # accounts/`account_id`/channelPartnerLinks/`channel_partner_id`
        # Corresponds to the JSON property `channelPartner`
        # @return [String]
        attr_accessor :channel_partner
      
        # Type of event performed on the Channel Partner.
        # Corresponds to the JSON property `eventType`
        # @return [String]
        attr_accessor :event_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel_partner = args[:channel_partner] if args.key?(:channel_partner)
          @event_type = args[:event_type] if args.key?(:event_type)
        end
      end
      
      # The definition of a report column. Specifies the data properties in the
      # corresponding position of the report rows.
      class GoogleCloudChannelV1alpha1Column
        include Google::Apis::Core::Hashable
      
        # The unique name of the column (for example, customer_domain, channel_partner,
        # customer_cost). You can use column IDs in RunReportJobRequest.filter. To see
        # all reports and their columns, call CloudChannelReportsService.ListReports.
        # Corresponds to the JSON property `columnId`
        # @return [String]
        attr_accessor :column_id
      
        # The type of the values for this column.
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # The column's display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_id = args[:column_id] if args.key?(:column_id)
          @data_type = args[:data_type] if args.key?(:data_type)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # Commitment settings for commitment-based offers.
      class GoogleCloudChannelV1alpha1CommitmentSettings
        include Google::Apis::Core::Hashable
      
        # Output only. Commitment end timestamp.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Renewal settings for renewable Offers.
        # Corresponds to the JSON property `renewalSettings`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1RenewalSettings]
        attr_accessor :renewal_settings
      
        # Output only. Commitment start timestamp.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @renewal_settings = args[:renewal_settings] if args.key?(:renewal_settings)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Represents Pub/Sub message content describing customer update.
      class GoogleCloudChannelV1alpha1CustomerEvent
        include Google::Apis::Core::Hashable
      
        # Resource name of the customer. Format: accounts/`account_id`/customers/`
        # customer_id`
        # Corresponds to the JSON property `customer`
        # @return [String]
        attr_accessor :customer
      
        # Type of event which happened on the customer.
        # Corresponds to the JSON property `eventType`
        # @return [String]
        attr_accessor :event_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer = args[:customer] if args.key?(:customer)
          @event_type = args[:event_type] if args.key?(:event_type)
        end
      end
      
      # A representation of usage or invoice date ranges.
      class GoogleCloudChannelV1alpha1DateRange
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `invoiceEndDate`
        # @return [Google::Apis::CloudchannelV1::GoogleTypeDate]
        attr_accessor :invoice_end_date
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `invoiceStartDate`
        # @return [Google::Apis::CloudchannelV1::GoogleTypeDate]
        attr_accessor :invoice_start_date
      
        # Represents civil time (or occasionally physical time). This type can represent
        # a civil time in one of a few possible ways: * When utc_offset is set and
        # time_zone is unset: a civil time on a calendar day with a particular offset
        # from UTC. * When time_zone is set and utc_offset is unset: a civil time on a
        # calendar day in a particular time zone. * When neither time_zone nor
        # utc_offset is set: a civil time on a calendar day in local time. The date is
        # relative to the Proleptic Gregorian Calendar. If year, month, or day are 0,
        # the DateTime is considered not to have a specific year, month, or day
        # respectively. This type may also be used to represent a physical time if all
        # the date and time fields are set and either case of the `time_offset` oneof is
        # set. Consider using `Timestamp` message for physical time instead. If your use
        # case also would like to store the user's timezone, that can be done in another
        # field. This type is more flexible than some applications may want. Make sure
        # to document and validate your application's limitations.
        # Corresponds to the JSON property `usageEndDateTime`
        # @return [Google::Apis::CloudchannelV1::GoogleTypeDateTime]
        attr_accessor :usage_end_date_time
      
        # Represents civil time (or occasionally physical time). This type can represent
        # a civil time in one of a few possible ways: * When utc_offset is set and
        # time_zone is unset: a civil time on a calendar day with a particular offset
        # from UTC. * When time_zone is set and utc_offset is unset: a civil time on a
        # calendar day in a particular time zone. * When neither time_zone nor
        # utc_offset is set: a civil time on a calendar day in local time. The date is
        # relative to the Proleptic Gregorian Calendar. If year, month, or day are 0,
        # the DateTime is considered not to have a specific year, month, or day
        # respectively. This type may also be used to represent a physical time if all
        # the date and time fields are set and either case of the `time_offset` oneof is
        # set. Consider using `Timestamp` message for physical time instead. If your use
        # case also would like to store the user's timezone, that can be done in another
        # field. This type is more flexible than some applications may want. Make sure
        # to document and validate your application's limitations.
        # Corresponds to the JSON property `usageStartDateTime`
        # @return [Google::Apis::CloudchannelV1::GoogleTypeDateTime]
        attr_accessor :usage_start_date_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @invoice_end_date = args[:invoice_end_date] if args.key?(:invoice_end_date)
          @invoice_start_date = args[:invoice_start_date] if args.key?(:invoice_start_date)
          @usage_end_date_time = args[:usage_end_date_time] if args.key?(:usage_end_date_time)
          @usage_start_date_time = args[:usage_start_date_time] if args.key?(:usage_start_date_time)
        end
      end
      
      # An entitlement is a representation of a customer's ability to use a service.
      class GoogleCloudChannelV1alpha1Entitlement
        include Google::Apis::Core::Hashable
      
        # The current number of users that are assigned a license for the product
        # defined in provisioned_service.skuId. Read-only. Deprecated: Use `parameters`
        # instead.
        # Corresponds to the JSON property `assignedUnits`
        # @return [Fixnum]
        attr_accessor :assigned_units
      
        # Association links that an entitlement has to other entitlements.
        # Corresponds to the JSON property `associationInfo`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1AssociationInfo]
        attr_accessor :association_info
      
        # Optional. The billing account resource name that is used to pay for this
        # entitlement.
        # Corresponds to the JSON property `billingAccount`
        # @return [String]
        attr_accessor :billing_account
      
        # Cloud Identity ID of a channel partner who will be the direct reseller for the
        # customer's order. This field is generally used in 2-tier ordering, where the
        # order is placed by a top-level distributor on behalf of their channel partner
        # or reseller. Required for distributors. Deprecated: `channel_partner_id` has
        # been moved to the Customer.
        # Corresponds to the JSON property `channelPartnerId`
        # @return [String]
        attr_accessor :channel_partner_id
      
        # Commitment settings for commitment-based offers.
        # Corresponds to the JSON property `commitmentSettings`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1CommitmentSettings]
        attr_accessor :commitment_settings
      
        # Output only. The time at which the entitlement is created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Maximum number of units for a non commitment-based Offer, such as Flexible,
        # Trial or Free entitlements. For commitment-based entitlements, this is a read-
        # only field, which only the internal support team can update. Deprecated: Use `
        # parameters` instead.
        # Corresponds to the JSON property `maxUnits`
        # @return [Fixnum]
        attr_accessor :max_units
      
        # Output only. Resource name of an entitlement in the form: accounts/`account_id`
        # /customers/`customer_id`/entitlements/`entitlement_id`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Number of units for a commitment-based Offer. For example, for seat-based
        # Offers, this would be the number of seats; for license-based Offers, this
        # would be the number of licenses. Required for creating commitment-based Offers.
        # Deprecated: Use `parameters` instead.
        # Corresponds to the JSON property `numUnits`
        # @return [Fixnum]
        attr_accessor :num_units
      
        # Required. The offer resource name for which the entitlement is to be created.
        # Takes the form: accounts/`account_id`/offers/`offer_id`.
        # Corresponds to the JSON property `offer`
        # @return [String]
        attr_accessor :offer
      
        # Extended entitlement parameters. When creating an entitlement, valid parameter
        # names and values are defined in the Offer.parameter_definitions. For Google
        # Workspace, the following Parameters may be accepted as input: - max_units: The
        # maximum assignable units for a flexible offer OR - num_units: The total
        # commitment for commitment-based offers The response may additionally include
        # the following output-only Parameters: - assigned_units: The number of licenses
        # assigned to users. For Google Cloud billing subaccounts, the following
        # Parameter may be accepted as input: - display_name: The display name of the
        # billing subaccount.
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1Parameter>]
        attr_accessor :parameters
      
        # Service provisioned for an entitlement.
        # Corresponds to the JSON property `provisionedService`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1ProvisionedService]
        attr_accessor :provisioned_service
      
        # Output only. Current provisioning state of the entitlement.
        # Corresponds to the JSON property `provisioningState`
        # @return [String]
        attr_accessor :provisioning_state
      
        # Optional. This purchase order (PO) information is for resellers to use for
        # their company tracking usage. If a purchaseOrderId value is given, it appears
        # in the API responses and shows up in the invoice. The property accepts up to
        # 80 plain text characters. This is only supported for Google Workspace
        # entitlements.
        # Corresponds to the JSON property `purchaseOrderId`
        # @return [String]
        attr_accessor :purchase_order_id
      
        # Output only. Enumerable of all current suspension reasons for an entitlement.
        # Corresponds to the JSON property `suspensionReasons`
        # @return [Array<String>]
        attr_accessor :suspension_reasons
      
        # Settings for trial offers.
        # Corresponds to the JSON property `trialSettings`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1TrialSettings]
        attr_accessor :trial_settings
      
        # Output only. The time at which the entitlement is updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assigned_units = args[:assigned_units] if args.key?(:assigned_units)
          @association_info = args[:association_info] if args.key?(:association_info)
          @billing_account = args[:billing_account] if args.key?(:billing_account)
          @channel_partner_id = args[:channel_partner_id] if args.key?(:channel_partner_id)
          @commitment_settings = args[:commitment_settings] if args.key?(:commitment_settings)
          @create_time = args[:create_time] if args.key?(:create_time)
          @max_units = args[:max_units] if args.key?(:max_units)
          @name = args[:name] if args.key?(:name)
          @num_units = args[:num_units] if args.key?(:num_units)
          @offer = args[:offer] if args.key?(:offer)
          @parameters = args[:parameters] if args.key?(:parameters)
          @provisioned_service = args[:provisioned_service] if args.key?(:provisioned_service)
          @provisioning_state = args[:provisioning_state] if args.key?(:provisioning_state)
          @purchase_order_id = args[:purchase_order_id] if args.key?(:purchase_order_id)
          @suspension_reasons = args[:suspension_reasons] if args.key?(:suspension_reasons)
          @trial_settings = args[:trial_settings] if args.key?(:trial_settings)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Represents Pub/Sub message content describing entitlement update.
      class GoogleCloudChannelV1alpha1EntitlementEvent
        include Google::Apis::Core::Hashable
      
        # Resource name of an entitlement of the form: accounts/`account_id`/customers/`
        # customer_id`/entitlements/`entitlement_id`
        # Corresponds to the JSON property `entitlement`
        # @return [String]
        attr_accessor :entitlement
      
        # Type of event which happened on the entitlement.
        # Corresponds to the JSON property `eventType`
        # @return [String]
        attr_accessor :event_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entitlement = args[:entitlement] if args.key?(:entitlement)
          @event_type = args[:event_type] if args.key?(:event_type)
        end
      end
      
      # Provides contextual information about a google.longrunning.Operation.
      class GoogleCloudChannelV1alpha1OperationMetadata
        include Google::Apis::Core::Hashable
      
        # The RPC that initiated this Long Running Operation.
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation_type = args[:operation_type] if args.key?(:operation_type)
        end
      end
      
      # Definition for extended entitlement parameters.
      class GoogleCloudChannelV1alpha1Parameter
        include Google::Apis::Core::Hashable
      
        # Output only. Specifies whether this parameter is allowed to be changed. For
        # example, for a Google Workspace Business Starter entitlement in commitment
        # plan, num_units is editable when entitlement is active.
        # Corresponds to the JSON property `editable`
        # @return [Boolean]
        attr_accessor :editable
        alias_method :editable?, :editable
      
        # Name of the parameter.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Data type and value of a parameter.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1Value]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @editable = args[:editable] if args.key?(:editable)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Represents period in days/months/years.
      class GoogleCloudChannelV1alpha1Period
        include Google::Apis::Core::Hashable
      
        # Total duration of Period Type defined.
        # Corresponds to the JSON property `duration`
        # @return [Fixnum]
        attr_accessor :duration
      
        # Period Type.
        # Corresponds to the JSON property `periodType`
        # @return [String]
        attr_accessor :period_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration = args[:duration] if args.key?(:duration)
          @period_type = args[:period_type] if args.key?(:period_type)
        end
      end
      
      # Service provisioned for an entitlement.
      class GoogleCloudChannelV1alpha1ProvisionedService
        include Google::Apis::Core::Hashable
      
        # Output only. The product pertaining to the provisioning resource as specified
        # in the Offer.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # Output only. Provisioning ID of the entitlement. For Google Workspace, this is
        # the underlying Subscription ID. For Google Cloud, this is the Billing Account
        # ID of the billing subaccount."
        # Corresponds to the JSON property `provisioningId`
        # @return [String]
        attr_accessor :provisioning_id
      
        # Output only. The SKU pertaining to the provisioning resource as specified in
        # the Offer.
        # Corresponds to the JSON property `skuId`
        # @return [String]
        attr_accessor :sku_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @product_id = args[:product_id] if args.key?(:product_id)
          @provisioning_id = args[:provisioning_id] if args.key?(:provisioning_id)
          @sku_id = args[:sku_id] if args.key?(:sku_id)
        end
      end
      
      # Renewal settings for renewable Offers.
      class GoogleCloudChannelV1alpha1RenewalSettings
        include Google::Apis::Core::Hashable
      
        # If true, disables commitment-based offer on renewal and switches to flexible
        # or pay as you go. Deprecated: Use `payment_plan` instead.
        # Corresponds to the JSON property `disableCommitment`
        # @return [Boolean]
        attr_accessor :disable_commitment
        alias_method :disable_commitment?, :disable_commitment
      
        # If false, the plan will be completed at the end date.
        # Corresponds to the JSON property `enableRenewal`
        # @return [Boolean]
        attr_accessor :enable_renewal
        alias_method :enable_renewal?, :enable_renewal
      
        # Represents period in days/months/years.
        # Corresponds to the JSON property `paymentCycle`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1Period]
        attr_accessor :payment_cycle
      
        # Set if enable_renewal=true. Deprecated: Use `payment_cycle` instead.
        # Corresponds to the JSON property `paymentOption`
        # @return [String]
        attr_accessor :payment_option
      
        # Describes how a reseller will be billed.
        # Corresponds to the JSON property `paymentPlan`
        # @return [String]
        attr_accessor :payment_plan
      
        # If true and enable_renewal = true, the unit (for example seats or licenses)
        # will be set to the number of active units at renewal time.
        # Corresponds to the JSON property `resizeUnitCount`
        # @return [Boolean]
        attr_accessor :resize_unit_count
        alias_method :resize_unit_count?, :resize_unit_count
      
        # Output only. The offer resource name that the entitlement will renew on at the
        # end date. Takes the form: accounts/`account_id`/offers/`offer_id`.
        # Corresponds to the JSON property `scheduledRenewalOffer`
        # @return [String]
        attr_accessor :scheduled_renewal_offer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disable_commitment = args[:disable_commitment] if args.key?(:disable_commitment)
          @enable_renewal = args[:enable_renewal] if args.key?(:enable_renewal)
          @payment_cycle = args[:payment_cycle] if args.key?(:payment_cycle)
          @payment_option = args[:payment_option] if args.key?(:payment_option)
          @payment_plan = args[:payment_plan] if args.key?(:payment_plan)
          @resize_unit_count = args[:resize_unit_count] if args.key?(:resize_unit_count)
          @scheduled_renewal_offer = args[:scheduled_renewal_offer] if args.key?(:scheduled_renewal_offer)
        end
      end
      
      # The ID and description of a report that was used to generate report data. For
      # example, "Google Cloud Daily Spend", "Google Workspace License Activity", etc.
      class GoogleCloudChannelV1alpha1Report
        include Google::Apis::Core::Hashable
      
        # The list of columns included in the report. This defines the schema of the
        # report results.
        # Corresponds to the JSON property `columns`
        # @return [Array<Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1Column>]
        attr_accessor :columns
      
        # A description of other aspects of the report, such as the products it supports.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A human-readable name for this report.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. The report's resource name. Specifies the account and report used to
        # generate report data. The report_id identifier is a UID (for example, `
        # 613bf59q`). Name uses the format: accounts/`account_id`/reports/`report_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @columns = args[:columns] if args.key?(:columns)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The result of a RunReportJob operation. Contains the name to use in
      # FetchReportResultsRequest.report_job and the status of the operation.
      class GoogleCloudChannelV1alpha1ReportJob
        include Google::Apis::Core::Hashable
      
        # Required. The resource name of a report job. Name uses the format: `accounts/`
        # account_id`/reportJobs/`report_job_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Status of a report generation process.
        # Corresponds to the JSON property `reportStatus`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1ReportStatus]
        attr_accessor :report_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @report_status = args[:report_status] if args.key?(:report_status)
        end
      end
      
      # The features describing the data. Returned by CloudChannelReportsService.
      # RunReportJob and CloudChannelReportsService.FetchReportResults.
      class GoogleCloudChannelV1alpha1ReportResultsMetadata
        include Google::Apis::Core::Hashable
      
        # A representation of usage or invoice date ranges.
        # Corresponds to the JSON property `dateRange`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1DateRange]
        attr_accessor :date_range
      
        # A representation of usage or invoice date ranges.
        # Corresponds to the JSON property `precedingDateRange`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1DateRange]
        attr_accessor :preceding_date_range
      
        # The ID and description of a report that was used to generate report data. For
        # example, "Google Cloud Daily Spend", "Google Workspace License Activity", etc.
        # Corresponds to the JSON property `report`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1Report]
        attr_accessor :report
      
        # The total number of rows of data in the final report.
        # Corresponds to the JSON property `rowCount`
        # @return [Fixnum]
        attr_accessor :row_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date_range = args[:date_range] if args.key?(:date_range)
          @preceding_date_range = args[:preceding_date_range] if args.key?(:preceding_date_range)
          @report = args[:report] if args.key?(:report)
          @row_count = args[:row_count] if args.key?(:row_count)
        end
      end
      
      # Status of a report generation process.
      class GoogleCloudChannelV1alpha1ReportStatus
        include Google::Apis::Core::Hashable
      
        # The report generation's completion time.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The report generation's start time.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The current state of the report generation process.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Response message for CloudChannelReportsService.RunReportJob.
      class GoogleCloudChannelV1alpha1RunReportJobResponse
        include Google::Apis::Core::Hashable
      
        # The result of a RunReportJob operation. Contains the name to use in
        # FetchReportResultsRequest.report_job and the status of the operation.
        # Corresponds to the JSON property `reportJob`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1ReportJob]
        attr_accessor :report_job
      
        # The features describing the data. Returned by CloudChannelReportsService.
        # RunReportJob and CloudChannelReportsService.FetchReportResults.
        # Corresponds to the JSON property `reportMetadata`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1ReportResultsMetadata]
        attr_accessor :report_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @report_job = args[:report_job] if args.key?(:report_job)
          @report_metadata = args[:report_metadata] if args.key?(:report_metadata)
        end
      end
      
      # Represents information which resellers will get as part of notification from
      # Pub/Sub.
      class GoogleCloudChannelV1alpha1SubscriberEvent
        include Google::Apis::Core::Hashable
      
        # Represents Pub/Sub messages about updates to a Channel Partner. You can
        # retrieve updated values through the ChannelPartnerLinks API.
        # Corresponds to the JSON property `channelPartnerEvent`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1ChannelPartnerEvent]
        attr_accessor :channel_partner_event
      
        # Represents Pub/Sub message content describing customer update.
        # Corresponds to the JSON property `customerEvent`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1CustomerEvent]
        attr_accessor :customer_event
      
        # Represents Pub/Sub message content describing entitlement update.
        # Corresponds to the JSON property `entitlementEvent`
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1EntitlementEvent]
        attr_accessor :entitlement_event
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel_partner_event = args[:channel_partner_event] if args.key?(:channel_partner_event)
          @customer_event = args[:customer_event] if args.key?(:customer_event)
          @entitlement_event = args[:entitlement_event] if args.key?(:entitlement_event)
        end
      end
      
      # Response message for CloudChannelService.TransferEntitlements. This is put in
      # the response field of google.longrunning.Operation.
      class GoogleCloudChannelV1alpha1TransferEntitlementsResponse
        include Google::Apis::Core::Hashable
      
        # The transferred entitlements.
        # Corresponds to the JSON property `entitlements`
        # @return [Array<Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1Entitlement>]
        attr_accessor :entitlements
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entitlements = args[:entitlements] if args.key?(:entitlements)
        end
      end
      
      # Settings for trial offers.
      class GoogleCloudChannelV1alpha1TrialSettings
        include Google::Apis::Core::Hashable
      
        # Date when the trial ends. The value is in milliseconds using the UNIX Epoch
        # format. See an example [Epoch converter](https://www.epochconverter.com).
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Determines if the entitlement is in a trial or not: * `true` - The entitlement
        # is in trial. * `false` - The entitlement is not in trial.
        # Corresponds to the JSON property `trial`
        # @return [Boolean]
        attr_accessor :trial
        alias_method :trial?, :trial
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @trial = args[:trial] if args.key?(:trial)
        end
      end
      
      # Data type and value of a parameter.
      class GoogleCloudChannelV1alpha1Value
        include Google::Apis::Core::Hashable
      
        # Represents a boolean value.
        # Corresponds to the JSON property `boolValue`
        # @return [Boolean]
        attr_accessor :bool_value
        alias_method :bool_value?, :bool_value
      
        # Represents a double value.
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # Represents an int64 value.
        # Corresponds to the JSON property `int64Value`
        # @return [Fixnum]
        attr_accessor :int64_value
      
        # Represents an 'Any' proto value.
        # Corresponds to the JSON property `protoValue`
        # @return [Hash<String,Object>]
        attr_accessor :proto_value
      
        # Represents a string value.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bool_value = args[:bool_value] if args.key?(:bool_value)
          @double_value = args[:double_value] if args.key?(:double_value)
          @int64_value = args[:int64_value] if args.key?(:int64_value)
          @proto_value = args[:proto_value] if args.key?(:proto_value)
          @string_value = args[:string_value] if args.key?(:string_value)
        end
      end
      
      # The request message for Operations.CancelOperation.
      class GoogleLongrunningCancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The response message for Operations.ListOperations.
      class GoogleLongrunningListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::CloudchannelV1::GoogleLongrunningOperation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class GoogleLongrunningOperation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::CloudchannelV1::GoogleRpcStatus]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal response of the operation in case of success. If the original
        # method returns no data on success, such as `Delete`, the response is `google.
        # protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`,
        # the response should be the resource. For other methods, the response should
        # have the type `XxxResponse`, where `Xxx` is the original method name. For
        # example, if the original method name is `TakeSnapshot()`, the inferred
        # response type is `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class GoogleProtobufEmpty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class GoogleRpcStatus
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values. * A month
      # and day, with a zero year (for example, an anniversary). * A year on its own,
      # with a zero month and a zero day. * A year and month, with a zero day (for
      # example, a credit card expiration date). Related types: * google.type.
      # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
      class GoogleTypeDate
        include Google::Apis::Core::Hashable
      
        # Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        # specify a year by itself or a year and month where the day isn't significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        # and day.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        # year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
          @year = args[:year] if args.key?(:year)
        end
      end
      
      # Represents civil time (or occasionally physical time). This type can represent
      # a civil time in one of a few possible ways: * When utc_offset is set and
      # time_zone is unset: a civil time on a calendar day with a particular offset
      # from UTC. * When time_zone is set and utc_offset is unset: a civil time on a
      # calendar day in a particular time zone. * When neither time_zone nor
      # utc_offset is set: a civil time on a calendar day in local time. The date is
      # relative to the Proleptic Gregorian Calendar. If year, month, or day are 0,
      # the DateTime is considered not to have a specific year, month, or day
      # respectively. This type may also be used to represent a physical time if all
      # the date and time fields are set and either case of the `time_offset` oneof is
      # set. Consider using `Timestamp` message for physical time instead. If your use
      # case also would like to store the user's timezone, that can be done in another
      # field. This type is more flexible than some applications may want. Make sure
      # to document and validate your application's limitations.
      class GoogleTypeDateTime
        include Google::Apis::Core::Hashable
      
        # Optional. Day of month. Must be from 1 to 31 and valid for the year and month,
        # or 0 if specifying a datetime without a day.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Optional. Hours of day in 24 hour format. Should be from 0 to 23, defaults to
        # 0 (midnight). An API may choose to allow the value "24:00:00" for scenarios
        # like business closing time.
        # Corresponds to the JSON property `hours`
        # @return [Fixnum]
        attr_accessor :hours
      
        # Optional. Minutes of hour of day. Must be from 0 to 59, defaults to 0.
        # Corresponds to the JSON property `minutes`
        # @return [Fixnum]
        attr_accessor :minutes
      
        # Optional. Month of year. Must be from 1 to 12, or 0 if specifying a datetime
        # without a month.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Optional. Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999,
        # defaults to 0.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # Optional. Seconds of minutes of the time. Must normally be from 0 to 59,
        # defaults to 0. An API may allow the value 60 if it allows leap-seconds.
        # Corresponds to the JSON property `seconds`
        # @return [Fixnum]
        attr_accessor :seconds
      
        # Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/
        # time-zones).
        # Corresponds to the JSON property `timeZone`
        # @return [Google::Apis::CloudchannelV1::GoogleTypeTimeZone]
        attr_accessor :time_zone
      
        # UTC offset. Must be whole seconds, between -18 hours and +18 hours. For
        # example, a UTC offset of -4:00 would be represented as ` seconds: -14400 `.
        # Corresponds to the JSON property `utcOffset`
        # @return [String]
        attr_accessor :utc_offset
      
        # Optional. Year of date. Must be from 1 to 9999, or 0 if specifying a datetime
        # without a year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @hours = args[:hours] if args.key?(:hours)
          @minutes = args[:minutes] if args.key?(:minutes)
          @month = args[:month] if args.key?(:month)
          @nanos = args[:nanos] if args.key?(:nanos)
          @seconds = args[:seconds] if args.key?(:seconds)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @utc_offset = args[:utc_offset] if args.key?(:utc_offset)
          @year = args[:year] if args.key?(:year)
        end
      end
      
      # A representation of a decimal value, such as 2.5. Clients may convert values
      # into language-native decimal formats, such as Java's BigDecimal or Python's
      # decimal.Decimal. [BigDecimal]: https://docs.oracle.com/en/java/javase/11/docs/
      # api/java.base/java/math/BigDecimal.html [decimal.Decimal]: https://docs.python.
      # org/3/library/decimal.html
      class GoogleTypeDecimal
        include Google::Apis::Core::Hashable
      
        # The decimal value, as a string. The string representation consists of an
        # optional sign, `+` (`U+002B`) or `-` (`U+002D`), followed by a sequence of
        # zero or more decimal digits ("the integer"), optionally followed by a fraction,
        # optionally followed by an exponent. An empty string **should** be interpreted
        # as `0`. The fraction consists of a decimal point followed by zero or more
        # decimal digits. The string must contain at least one digit in either the
        # integer or the fraction. The number formed by the sign, the integer and the
        # fraction is referred to as the significand. The exponent consists of the
        # character `e` (`U+0065`) or `E` (`U+0045`) followed by one or more decimal
        # digits. Services **should** normalize decimal values before storing them by: -
        # Removing an explicitly-provided `+` sign (`+2.5` -> `2.5`). - Replacing a zero-
        # length integer value with `0` (`.5` -> `0.5`). - Coercing the exponent
        # character to upper-case, with explicit sign (`2.5e8` -> `2.5E+8`). - Removing
        # an explicitly-provided zero exponent (`2.5E0` -> `2.5`). Services **may**
        # perform additional normalization based on its own needs and the internal
        # decimal implementation selected, such as shifting the decimal point and
        # exponent value together (example: `2.5E-1` <-> `0.25`). Additionally, services
        # **may** preserve trailing zeroes in the fraction to indicate increased
        # precision, but are not required to do so. Note that only the `.` character is
        # supported to divide the integer and the fraction; `,` **should not** be
        # supported regardless of locale. Additionally, thousand separators **should not*
        # * be supported. If a service does support them, values **must** be normalized.
        # The ENBF grammar is: DecimalString = '' | [Sign] Significand [Exponent]; Sign =
        # '+' | '-'; Significand = Digits '.' | [Digits] '.' Digits; Exponent = ('e' | '
        # E') [Sign] Digits; Digits = ` '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '
        # 8' | '9' `; Services **should** clearly document the range of supported values,
        # the maximum supported precision (total number of digits), and, if applicable,
        # the scale (number of digits after the decimal point), as well as how it
        # behaves when receiving out-of-bounds values. Services **may** choose to accept
        # values passed as input even when the value has a higher precision or scale
        # than the service supports, and **should** round the value to fit the supported
        # scale. Alternatively, the service **may** error with `400 Bad Request` (`
        # INVALID_ARGUMENT` in gRPC) if precision would be lost. Services **should**
        # error with `400 Bad Request` (`INVALID_ARGUMENT` in gRPC) if the service
        # receives a value outside of the supported range.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Represents an amount of money with its currency type.
      class GoogleTypeMoney
        include Google::Apis::Core::Hashable
      
        # The three-letter currency code defined in ISO 4217.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Number of nano (10^-9) units of the amount. The value must be between -999,999,
        # 999 and +999,999,999 inclusive. If `units` is positive, `nanos` must be
        # positive or zero. If `units` is zero, `nanos` can be positive, zero, or
        # negative. If `units` is negative, `nanos` must be negative or zero. For
        # example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # The whole units of the amount. For example if `currencyCode` is `"USD"`, then
        # 1 unit is one US dollar.
        # Corresponds to the JSON property `units`
        # @return [Fixnum]
        attr_accessor :units
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @nanos = args[:nanos] if args.key?(:nanos)
          @units = args[:units] if args.key?(:units)
        end
      end
      
      # Represents a postal address, e.g. for postal delivery or payments addresses.
      # Given a postal address, a postal service can deliver items to a premise, P.O.
      # Box or similar. It is not intended to model geographical locations (roads,
      # towns, mountains). In typical usage an address would be created via user input
      # or from importing existing data, depending on the type of process. Advice on
      # address input / editing: - Use an internationalization-ready address widget
      # such as https://github.com/google/libaddressinput) - Users should not be
      # presented with UI elements for input or editing of fields outside countries
      # where that field is used. For more guidance on how to use this schema, please
      # see: https://support.google.com/business/answer/6397478
      class GoogleTypePostalAddress
        include Google::Apis::Core::Hashable
      
        # Unstructured address lines describing the lower levels of an address. Because
        # values in address_lines do not have type information and may sometimes contain
        # multiple values in a single field (e.g. "Austin, TX"), it is important that
        # the line order is clear. The order of address lines should be "envelope order"
        # for the country/region of the address. In places where this can vary (e.g.
        # Japan), address_language is used to make it explicit (e.g. "ja" for large-to-
        # small ordering and "ja-Latn" or "en" for small-to-large). This way, the most
        # specific line of an address can be selected based on the language. The minimum
        # permitted structural representation of an address consists of a region_code
        # with all remaining information placed in the address_lines. It would be
        # possible to format such an address very approximately without geocoding, but
        # no semantic reasoning could be made about any of the address components until
        # it was at least partially resolved. Creating an address only containing a
        # region_code and address_lines, and then geocoding is the recommended way to
        # handle completely unstructured addresses (as opposed to guessing which parts
        # of the address should be localities or administrative areas).
        # Corresponds to the JSON property `addressLines`
        # @return [Array<String>]
        attr_accessor :address_lines
      
        # Optional. Highest administrative subdivision which is used for postal
        # addresses of a country or region. For example, this can be a state, a province,
        # an oblast, or a prefecture. Specifically, for Spain this is the province and
        # not the autonomous community (e.g. "Barcelona" and not "Catalonia"). Many
        # countries don't use an administrative area in postal addresses. E.g. in
        # Switzerland this should be left unpopulated.
        # Corresponds to the JSON property `administrativeArea`
        # @return [String]
        attr_accessor :administrative_area
      
        # Optional. BCP-47 language code of the contents of this address (if known).
        # This is often the UI language of the input form or is expected to match one of
        # the languages used in the address' country/region, or their transliterated
        # equivalents. This can affect formatting in certain countries, but is not
        # critical to the correctness of the data and will never affect any validation
        # or other non-formatting related operations. If this value is not known, it
        # should be omitted (rather than specifying a possibly incorrect default).
        # Examples: "zh-Hant", "ja", "ja-Latn", "en".
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Optional. Generally refers to the city/town portion of the address. Examples:
        # US city, IT comune, UK post town. In regions of the world where localities are
        # not well defined or do not fit into this structure well, leave locality empty
        # and use address_lines.
        # Corresponds to the JSON property `locality`
        # @return [String]
        attr_accessor :locality
      
        # Optional. The name of the organization at the address.
        # Corresponds to the JSON property `organization`
        # @return [String]
        attr_accessor :organization
      
        # Optional. Postal code of the address. Not all countries use or require postal
        # codes to be present, but where they are used, they may trigger additional
        # validation with other parts of the address (e.g. state/zip validation in the U.
        # S.A.).
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # Optional. The recipient at the address. This field may, under certain
        # circumstances, contain multiline information. For example, it might contain "
        # care of" information.
        # Corresponds to the JSON property `recipients`
        # @return [Array<String>]
        attr_accessor :recipients
      
        # Required. CLDR region code of the country/region of the address. This is never
        # inferred and it is up to the user to ensure the value is correct. See https://
        # cldr.unicode.org/ and https://www.unicode.org/cldr/charts/30/supplemental/
        # territory_information.html for details. Example: "CH" for Switzerland.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # The schema revision of the `PostalAddress`. This must be set to 0, which is
        # the latest revision. All new revisions **must** be backward compatible with
        # old revisions.
        # Corresponds to the JSON property `revision`
        # @return [Fixnum]
        attr_accessor :revision
      
        # Optional. Additional, country-specific, sorting code. This is not used in most
        # regions. Where it is used, the value is either a string like "CEDEX",
        # optionally followed by a number (e.g. "CEDEX 7"), or just a number alone,
        # representing the "sector code" (Jamaica), "delivery area indicator" (Malawi)
        # or "post office indicator" (e.g. Côte d'Ivoire).
        # Corresponds to the JSON property `sortingCode`
        # @return [String]
        attr_accessor :sorting_code
      
        # Optional. Sublocality of the address. For example, this can be neighborhoods,
        # boroughs, districts.
        # Corresponds to the JSON property `sublocality`
        # @return [String]
        attr_accessor :sublocality
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address_lines = args[:address_lines] if args.key?(:address_lines)
          @administrative_area = args[:administrative_area] if args.key?(:administrative_area)
          @language_code = args[:language_code] if args.key?(:language_code)
          @locality = args[:locality] if args.key?(:locality)
          @organization = args[:organization] if args.key?(:organization)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @recipients = args[:recipients] if args.key?(:recipients)
          @region_code = args[:region_code] if args.key?(:region_code)
          @revision = args[:revision] if args.key?(:revision)
          @sorting_code = args[:sorting_code] if args.key?(:sorting_code)
          @sublocality = args[:sublocality] if args.key?(:sublocality)
        end
      end
      
      # Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/
      # time-zones).
      class GoogleTypeTimeZone
        include Google::Apis::Core::Hashable
      
        # IANA Time Zone Database time zone, e.g. "America/New_York".
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. IANA Time Zone Database version number, e.g. "2019a".
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @version = args[:version] if args.key?(:version)
        end
      end
    end
  end
end
