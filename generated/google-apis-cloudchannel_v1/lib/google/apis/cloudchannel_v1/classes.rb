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
        # address input / editing: - Use an i18n-ready address widget such as https://
        # github.com/google/libaddressinput) - Users should not be presented with UI
        # elements for input or editing of fields outside countries where that field is
        # used. For more guidance on how to use this schema, please see: https://support.
        # google.com/business/answer/6397478
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
        # names and values are defined in the Offer.parameter_definitions. The response
        # may include the following output-only Parameters: - assigned_units: The number
        # of licenses assigned to users. - max_units: The maximum assignable units for a
        # flexible offer. - num_units: The total commitment for commitment-based offers.
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
      
        # The BCP-47 language code. For example, "en-US". The response will localize in
        # the corresponding language code, if specified. The default value is "en-US".
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
      
        # The super admin of the resold customer generates this token to authorize a
        # reseller to access their Cloud Identity and purchase entitlements on their
        # behalf. You can omit this token after authorization. See https://support.
        # google.com/a/answer/7643790 for more details.
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
        # for Google Cloud Platform offers.
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
        # the underlying Subscription ID. For Google Cloud Platform, this is the Billing
        # Account ID of the billing subaccount."
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
        # names and values are defined in the Offer.parameter_definitions. The response
        # may include the following output-only Parameters: - assigned_units: The number
        # of licenses assigned to users. - max_units: The maximum assignable units for a
        # flexible offer. - num_units: The total commitment for commitment-based offers.
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
        # the underlying Subscription ID. For Google Cloud Platform, this is the Billing
        # Account ID of the billing subaccount."
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
        end
      end
      
      # Represents information which resellers will get as part of notification from
      # Pub/Sub.
      class GoogleCloudChannelV1alpha1SubscriberEvent
        include Google::Apis::Core::Hashable
      
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
      # address input / editing: - Use an i18n-ready address widget such as https://
      # github.com/google/libaddressinput) - Users should not be presented with UI
      # elements for input or editing of fields outside countries where that field is
      # used. For more guidance on how to use this schema, please see: https://support.
      # google.com/business/answer/6397478
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
    end
  end
end
