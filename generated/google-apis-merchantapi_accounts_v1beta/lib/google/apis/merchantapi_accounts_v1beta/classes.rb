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
    module MerchantapiAccountsV1beta
      
      # Collection of information related to the about page ([impressum](https://
      # support.google.com/merchants/answer/14675634?ref_topic=15145634&sjid=
      # 6892280366904591178-NC)).
      class About
        include Google::Apis::Core::Hashable
      
        # Output only. The state of the URI.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Required. The about page URI.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Response message for the `AcceptTermsOfService` method.
      class AcceptTermsOfServiceResponse
        include Google::Apis::Core::Hashable
      
        # This resource represents the agreement state for a given account and terms of
        # service kind. The state is as follows: * If the business has accepted a terms
        # of service, `accepted` will be populated, otherwise it will be empty * If the
        # business must sign a terms of service, `required` will be populated, otherwise
        # it will be empty. Note that both `required` and `accepted` can be present. In
        # this case the `accepted` terms of services will have an expiration date set in
        # the `valid_until` field. The `required` terms of services need to be accepted
        # before `valid_until` in order for the account to continue having a valid
        # agreement. When accepting new terms of services we expect third-party
        # providers to display the text associated with the given terms of service
        # agreement (the url to the file containing the text is added in the Required
        # message below as `tos_file_uri`). The actual acceptance of the terms of
        # service is done by calling accept on the `TermsOfService` resource. `
        # valid_until` field.
        # Corresponds to the JSON property `termsOfServiceAgreementState`
        # @return [Google::Apis::MerchantapiAccountsV1beta::TermsOfServiceAgreementState]
        attr_accessor :terms_of_service_agreement_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @terms_of_service_agreement_state = args[:terms_of_service_agreement_state] if args.key?(:terms_of_service_agreement_state)
        end
      end
      
      # Describes the [accepted terms of service](https://developers.google.com/
      # merchant/api/guides/accounts/create-and-configure#
      # accept_the_merchant_center_terms_of_service).
      class Accepted
        include Google::Apis::Core::Hashable
      
        # Required. The account where the acceptance was recorded. This can be the
        # account itself or, in the case of subaccounts, the advanced account.
        # Corresponds to the JSON property `acceptedBy`
        # @return [String]
        attr_accessor :accepted_by
      
        # Required. The accepted termsOfService.
        # Corresponds to the JSON property `termsOfService`
        # @return [String]
        attr_accessor :terms_of_service
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `validUntil`
        # @return [Google::Apis::MerchantapiAccountsV1beta::Date]
        attr_accessor :valid_until
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accepted_by = args[:accepted_by] if args.key?(:accepted_by)
          @terms_of_service = args[:terms_of_service] if args.key?(:terms_of_service)
          @valid_until = args[:valid_until] if args.key?(:valid_until)
        end
      end
      
      # The `Account` message represents a business's account within Shopping Ads. It'
      # s the primary entity for managing product data, settings, and interactions
      # with Google's services and external providers. Accounts can operate as
      # standalone entities or be part of a advanced account structure. In an advanced
      # account setup the parent account manages multiple sub-accounts. Establishing
      # an account involves configuring attributes like the account name, time zone,
      # and language preferences. The `Account` message is the parent entity for many
      # other resources, for example, `AccountRelationship`, `Homepage`, `BusinessInfo`
      # and so on.
      class Account
        include Google::Apis::Core::Hashable
      
        # Output only. The ID of the account.
        # Corresponds to the JSON property `accountId`
        # @return [Fixnum]
        attr_accessor :account_id
      
        # Required. A human-readable name of the account. See [store name](https://
        # support.google.com/merchants/answer/160556) and [business name](https://
        # support.google.com/merchants/answer/12159159) for more information.
        # Corresponds to the JSON property `accountName`
        # @return [String]
        attr_accessor :account_name
      
        # Optional. Whether this account contains adult content.
        # Corresponds to the JSON property `adultContent`
        # @return [Boolean]
        attr_accessor :adult_content
        alias_method :adult_content?, :adult_content
      
        # Required. The account's [BCP-47 language code](https://tools.ietf.org/html/
        # bcp47), such as `en-US` or `sr-Latn`.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Identifier. The resource name of the account. Format: `accounts/`account``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Whether this is a test account.
        # Corresponds to the JSON property `testAccount`
        # @return [Boolean]
        attr_accessor :test_account
        alias_method :test_account?, :test_account
      
        # Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/
        # time-zones).
        # Corresponds to the JSON property `timeZone`
        # @return [Google::Apis::MerchantapiAccountsV1beta::TimeZone]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @account_name = args[:account_name] if args.key?(:account_name)
          @adult_content = args[:adult_content] if args.key?(:adult_content)
          @language_code = args[:language_code] if args.key?(:language_code)
          @name = args[:name] if args.key?(:name)
          @test_account = args[:test_account] if args.key?(:test_account)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # `AccountAggregation` payload.
      class AccountAggregation
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Issues with your Merchant Center account that can impact all your products.
      # For more information, see [Account-level issues in Merchant Center](https://
      # support.google.com/merchants/answer/12153802?sjid=17798438912526418908-EU#
      # account).
      class AccountIssue
        include Google::Apis::Core::Hashable
      
        # Further localized details about the issue.
        # Corresponds to the JSON property `detail`
        # @return [String]
        attr_accessor :detail
      
        # Link to Merchant Center Help Center providing further information about the
        # issue and how to fix it.
        # Corresponds to the JSON property `documentationUri`
        # @return [String]
        attr_accessor :documentation_uri
      
        # The impact this issue has on various destinations.
        # Corresponds to the JSON property `impactedDestinations`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::ImpactedDestination>]
        attr_accessor :impacted_destinations
      
        # Identifier. The resource name of the account issue. Format: `accounts/`account`
        # /issues/`id``. For example, `accounts/123456/issues/misrepresentation-of-self-
        # or-products-unacceptable-business-practice-policy`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The overall severity of the issue.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # The localized title of the issue.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detail = args[:detail] if args.key?(:detail)
          @documentation_uri = args[:documentation_uri] if args.key?(:documentation_uri)
          @impacted_destinations = args[:impacted_destinations] if args.key?(:impacted_destinations)
          @name = args[:name] if args.key?(:name)
          @severity = args[:severity] if args.key?(:severity)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # `AccountManagement` payload.
      class AccountManagement
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The `AccountRelationship` message defines a formal connection between a
      # merchant's account and a service provider's account. This relationship enables
      # the provider to offer specific services to the business, such as product
      # management or campaign management. It specifies the access rights and
      # permissions to the business's data relevant to those services. Establishing an
      # account relationship involves linking the merchant's account with a provider's
      # account. The provider could be another Google account (like Google Ads or
      # Google My Business) or a third-party platform (such as Shopify or WooCommerce).
      class AccountRelationship
        include Google::Apis::Core::Hashable
      
        # Optional. An optional alias you can assign to this account relationship. This
        # alias acts as a convenient identifier for your own reference and management.
        # It must be unique among all your account relationships with the same provider.
        # For example, you might use `account_id_alias` to assign a friendly name to
        # this relationship for easier identification in your systems.
        # Corresponds to the JSON property `accountIdAlias`
        # @return [String]
        attr_accessor :account_id_alias
      
        # Identifier. The resource name of the account relationship. Format: `accounts/`
        # account`/relationships/`relationship``. For example, `accounts/123456/
        # relationships/567890`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Immutable. The provider of the service. Either the reference to an account
        # such as `providers/123` or a well-known service provider (one of `providers/
        # GOOGLE_ADS` or `providers/GOOGLE_BUSINESS_PROFILE`).
        # Corresponds to the JSON property `provider`
        # @return [String]
        attr_accessor :provider
      
        # Output only. The human-readable display name of the provider account.
        # Corresponds to the JSON property `providerDisplayName`
        # @return [String]
        attr_accessor :provider_display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id_alias = args[:account_id_alias] if args.key?(:account_id_alias)
          @name = args[:name] if args.key?(:name)
          @provider = args[:provider] if args.key?(:provider)
          @provider_display_name = args[:provider_display_name] if args.key?(:provider_display_name)
        end
      end
      
      # The `AccountService` message represents a specific service that a provider
      # account offers to a Merchant Center account. `AccountService` defines the
      # permissions and capabilities granted to the provider, allowing for operations
      # such as product management or campaign management. The lifecycle of an `
      # AccountService` involves a proposal phase, where one party suggests the
      # service, and an approval phase, where the other party accepts or rejects it.
      # This handshake mechanism ensures mutual consent before any access is granted.
      # This mechanism safeguards both parties by ensuring that access rights are
      # granted appropriately and that both the business and provider are aware of the
      # services enabled. In scenarios where a user is an admin of both accounts, the
      # approval can happen automatically. The mutability of a service is also managed
      # through `AccountService`. Some services might be immutable, for example, if
      # they were established through other systems or APIs, and you cannot alter them
      # through this API.
      class AccountService
        include Google::Apis::Core::Hashable
      
        # `AccountAggregation` payload.
        # Corresponds to the JSON property `accountAggregation`
        # @return [Google::Apis::MerchantapiAccountsV1beta::AccountAggregation]
        attr_accessor :account_aggregation
      
        # `AccountManagement` payload.
        # Corresponds to the JSON property `accountManagement`
        # @return [Google::Apis::MerchantapiAccountsV1beta::AccountManagement]
        attr_accessor :account_management
      
        # `CampaignManagement` payload.
        # Corresponds to the JSON property `campaignsManagement`
        # @return [Google::Apis::MerchantapiAccountsV1beta::CampaignsManagement]
        attr_accessor :campaigns_management
      
        # `ComparisonShopping` payload.
        # Corresponds to the JSON property `comparisonShopping`
        # @return [Google::Apis::MerchantapiAccountsV1beta::ComparisonShopping]
        attr_accessor :comparison_shopping
      
        # Immutable. An optional, immutable identifier that Google uses to refer to this
        # account when communicating with the provider. This should be the unique
        # account ID within the provider's system (for example, your shop ID in Shopify).
        # If you have multiple accounts with the same provider - for instance,
        # different accounts for various regions — the `external_account_id`
        # differentiates between them, ensuring accurate linking and integration between
        # Google and the provider.
        # Corresponds to the JSON property `externalAccountId`
        # @return [String]
        attr_accessor :external_account_id
      
        # The current status of establishing of the service. (for example, pending
        # approval or approved).
        # Corresponds to the JSON property `handshake`
        # @return [Google::Apis::MerchantapiAccountsV1beta::Handshake]
        attr_accessor :handshake
      
        # `LocalListingManagement` payload.
        # Corresponds to the JSON property `localListingManagement`
        # @return [Google::Apis::MerchantapiAccountsV1beta::LocalListingManagement]
        attr_accessor :local_listing_management
      
        # Output only. Whether the service is mutable (e.g. through Approve / Reject
        # RPCs). A service that was created through another system or API might be
        # immutable.
        # Corresponds to the JSON property `mutability`
        # @return [String]
        attr_accessor :mutability
      
        # Identifier. The resource name of the account service. Format: `accounts/`
        # account`/services/`service``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # `ProductsManagement` payload.
        # Corresponds to the JSON property `productsManagement`
        # @return [Google::Apis::MerchantapiAccountsV1beta::ProductsManagement]
        attr_accessor :products_management
      
        # Output only. The provider of the service. Either the reference to an account
        # such as `providers/123` or a well-known service provider (one of `providers/
        # GOOGLE_ADS` or `providers/GOOGLE_BUSINESS_PROFILE`).
        # Corresponds to the JSON property `provider`
        # @return [String]
        attr_accessor :provider
      
        # Output only. The human-readable display name of the provider account.
        # Corresponds to the JSON property `providerDisplayName`
        # @return [String]
        attr_accessor :provider_display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_aggregation = args[:account_aggregation] if args.key?(:account_aggregation)
          @account_management = args[:account_management] if args.key?(:account_management)
          @campaigns_management = args[:campaigns_management] if args.key?(:campaigns_management)
          @comparison_shopping = args[:comparison_shopping] if args.key?(:comparison_shopping)
          @external_account_id = args[:external_account_id] if args.key?(:external_account_id)
          @handshake = args[:handshake] if args.key?(:handshake)
          @local_listing_management = args[:local_listing_management] if args.key?(:local_listing_management)
          @mutability = args[:mutability] if args.key?(:mutability)
          @name = args[:name] if args.key?(:name)
          @products_management = args[:products_management] if args.key?(:products_management)
          @provider = args[:provider] if args.key?(:provider)
          @provider_display_name = args[:provider_display_name] if args.key?(:provider_display_name)
        end
      end
      
      # Additional instructions to add account services during creation of the account.
      class AddAccountService
        include Google::Apis::Core::Hashable
      
        # `AccountAggregation` payload.
        # Corresponds to the JSON property `accountAggregation`
        # @return [Google::Apis::MerchantapiAccountsV1beta::AccountAggregation]
        attr_accessor :account_aggregation
      
        # `AccountManagement` payload.
        # Corresponds to the JSON property `accountManagement`
        # @return [Google::Apis::MerchantapiAccountsV1beta::AccountManagement]
        attr_accessor :account_management
      
        # `CampaignManagement` payload.
        # Corresponds to the JSON property `campaignsManagement`
        # @return [Google::Apis::MerchantapiAccountsV1beta::CampaignsManagement]
        attr_accessor :campaigns_management
      
        # `ComparisonShopping` payload.
        # Corresponds to the JSON property `comparisonShopping`
        # @return [Google::Apis::MerchantapiAccountsV1beta::ComparisonShopping]
        attr_accessor :comparison_shopping
      
        # Immutable. An optional, immutable identifier that Google uses to refer to this
        # account when communicating with the provider. This should be the unique
        # account ID within the provider's system (for example, your shop ID in Shopify).
        # If you have multiple accounts with the same provider - for instance,
        # different accounts for various regions — the `external_account_id`
        # differentiates between them, ensuring accurate linking and integration between
        # Google and the provider. The external account ID must be specified for the
        # campaigns management service type. The external account ID must not be
        # specified for the account aggregation service type. The external account ID is
        # optional / may be specified for all other service types.
        # Corresponds to the JSON property `externalAccountId`
        # @return [String]
        attr_accessor :external_account_id
      
        # `ProductsManagement` payload.
        # Corresponds to the JSON property `productsManagement`
        # @return [Google::Apis::MerchantapiAccountsV1beta::ProductsManagement]
        attr_accessor :products_management
      
        # Required. The provider of the service. Either the reference to an account such
        # as `providers/123` or a well-known service provider (one of `providers/
        # GOOGLE_ADS` or `providers/GOOGLE_BUSINESS_PROFILE`).
        # Corresponds to the JSON property `provider`
        # @return [String]
        attr_accessor :provider
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_aggregation = args[:account_aggregation] if args.key?(:account_aggregation)
          @account_management = args[:account_management] if args.key?(:account_management)
          @campaigns_management = args[:campaigns_management] if args.key?(:campaigns_management)
          @comparison_shopping = args[:comparison_shopping] if args.key?(:comparison_shopping)
          @external_account_id = args[:external_account_id] if args.key?(:external_account_id)
          @products_management = args[:products_management] if args.key?(:products_management)
          @provider = args[:provider] if args.key?(:provider)
        end
      end
      
      # Instruction for adding a user to the account during creation.
      class AddUser
        include Google::Apis::Core::Hashable
      
        # The `User` resource represents a user associated with a Merchant Center
        # account. It is used to manage user permissions and access rights within the
        # account. For more information, see [Frequently asked questions about people
        # and access levels](//support.google.com/merchants/answer/12160472).
        # Corresponds to the JSON property `user`
        # @return [Google::Apis::MerchantapiAccountsV1beta::User]
        attr_accessor :user
      
        # Required. The email address of the user (for example, `john.doe@gmail.com`).
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        # Settings related to the verification email that is sent after adding a user.
        # Corresponds to the JSON property `verificationMailSettings`
        # @return [Google::Apis::MerchantapiAccountsV1beta::VerificationMailSettings]
        attr_accessor :verification_mail_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user = args[:user] if args.key?(:user)
          @user_id = args[:user_id] if args.key?(:user_id)
          @verification_mail_settings = args[:verification_mail_settings] if args.key?(:verification_mail_settings)
        end
      end
      
      # Shipping address of the warehouse.
      class Address
        include Google::Apis::Core::Hashable
      
        # Required. Top-level administrative subdivision of the country. For example, a
        # state like California ("CA") or a province like Quebec ("QC").
        # Corresponds to the JSON property `administrativeArea`
        # @return [String]
        attr_accessor :administrative_area
      
        # Required. City, town or commune. May also include dependent localities or
        # sublocalities (For example neighborhoods or suburbs).
        # Corresponds to the JSON property `city`
        # @return [String]
        attr_accessor :city
      
        # Required. Postal code or ZIP (For example "94043").
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # Required. [CLDR country code](http://www.unicode.org/repos/cldr/tags/latest/
        # common/main/en.xml) (For example "US").
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # Street-level part of the address. For example: `111w 31st Street`.
        # Corresponds to the JSON property `streetAddress`
        # @return [String]
        attr_accessor :street_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @administrative_area = args[:administrative_area] if args.key?(:administrative_area)
          @city = args[:city] if args.key?(:city)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @region_code = args[:region_code] if args.key?(:region_code)
          @street_address = args[:street_address] if args.key?(:street_address)
        end
      end
      
      # Request to approve an account service.
      class ApproveAccountServiceRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Collection of information related to the [autofeed](https://support.google.com/
      # merchants/answer/7538732) settings.
      class AutofeedSettings
        include Google::Apis::Core::Hashable
      
        # Output only. Determines whether the business is eligible for being enrolled
        # into an autofeed.
        # Corresponds to the JSON property `eligible`
        # @return [Boolean]
        attr_accessor :eligible
        alias_method :eligible?, :eligible
      
        # Required. Enables or disables product crawling through the autofeed for the
        # given account. Autofeed accounts must meet [certain conditions](https://
        # support.google.com/merchants/answer/7538732#
        # Configure_automated_feeds_Standard_Experience), which can be checked through
        # the `eligible` field. The account must **not** be a marketplace. When the
        # autofeed is enabled for the first time, the products usually appear instantly.
        # When re-enabling, it might take up to 24 hours for products to appear.
        # Corresponds to the JSON property `enableProducts`
        # @return [Boolean]
        attr_accessor :enable_products
        alias_method :enable_products?, :enable_products
      
        # Identifier. The resource name of the autofeed settings. Format: `accounts/`
        # account`/autofeedSettings`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @eligible = args[:eligible] if args.key?(:eligible)
          @enable_products = args[:enable_products] if args.key?(:enable_products)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # This improvement will attempt to automatically correct submitted images if
      # they don't meet the [image requirements](https://support.google.com/merchants/
      # answer/6324350), for example, removing overlays. If successful, the image will
      # be replaced and approved. This improvement is only applied to images of
      # disapproved offers. For more information see: [Automatic image improvements](
      # https://support.google.com/merchants/answer/9242973)
      class AutomaticImageImprovements
        include Google::Apis::Core::Hashable
      
        # Settings for the Automatic Image Improvements.
        # Corresponds to the JSON property `accountImageImprovementsSettings`
        # @return [Google::Apis::MerchantapiAccountsV1beta::ImageImprovementsAccountLevelSettings]
        attr_accessor :account_image_improvements_settings
      
        # Output only. The effective value of allow_automatic_image_improvements. If
        # account_image_improvements_settings is present, then this value is the same.
        # Otherwise, it represents the inherited value of the parent account. Read-only.
        # Corresponds to the JSON property `effectiveAllowAutomaticImageImprovements`
        # @return [Boolean]
        attr_accessor :effective_allow_automatic_image_improvements
        alias_method :effective_allow_automatic_image_improvements?, :effective_allow_automatic_image_improvements
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_image_improvements_settings = args[:account_image_improvements_settings] if args.key?(:account_image_improvements_settings)
          @effective_allow_automatic_image_improvements = args[:effective_allow_automatic_image_improvements] if args.key?(:effective_allow_automatic_image_improvements)
        end
      end
      
      # Collection of information related to the [automatic improvements](https://
      # developers.google.com/shopping-content/guides/automatic-improvements) of an
      # account.
      class AutomaticImprovements
        include Google::Apis::Core::Hashable
      
        # This improvement will attempt to automatically correct submitted images if
        # they don't meet the [image requirements](https://support.google.com/merchants/
        # answer/6324350), for example, removing overlays. If successful, the image will
        # be replaced and approved. This improvement is only applied to images of
        # disapproved offers. For more information see: [Automatic image improvements](
        # https://support.google.com/merchants/answer/9242973)
        # Corresponds to the JSON property `imageImprovements`
        # @return [Google::Apis::MerchantapiAccountsV1beta::AutomaticImageImprovements]
        attr_accessor :image_improvements
      
        # Turning on [item updates](https://support.google.com/merchants/answer/3246284)
        # allows Google to automatically update items for you. When item updates are on,
        # Google uses the structured data markup on the website and advanced data
        # extractors to update the price and availability of the items. When the item
        # updates are off, items with mismatched data aren't shown.
        # Corresponds to the JSON property `itemUpdates`
        # @return [Google::Apis::MerchantapiAccountsV1beta::AutomaticItemUpdates]
        attr_accessor :item_updates
      
        # Identifier. The resource name of the automatic improvements. Format: `accounts/
        # `account`/automaticImprovements`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Not available for [advanced accounts](https://support.google.com/merchants/
        # answer/188487). By turning on [automatic shipping improvements](https://
        # support.google.com/merchants/answer/10027038), you are allowing Google to
        # improve the accuracy of your delivery times shown to shoppers using Google.
        # More accurate delivery times, especially when faster, typically lead to better
        # conversion rates. Google will improve your estimated delivery times based on
        # various factors: * Delivery address of an order * Current handling time and
        # shipping time settings * Estimated weekdays or business days * Parcel tracking
        # data
        # Corresponds to the JSON property `shippingImprovements`
        # @return [Google::Apis::MerchantapiAccountsV1beta::AutomaticShippingImprovements]
        attr_accessor :shipping_improvements
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image_improvements = args[:image_improvements] if args.key?(:image_improvements)
          @item_updates = args[:item_updates] if args.key?(:item_updates)
          @name = args[:name] if args.key?(:name)
          @shipping_improvements = args[:shipping_improvements] if args.key?(:shipping_improvements)
        end
      end
      
      # Turning on [item updates](https://support.google.com/merchants/answer/3246284)
      # allows Google to automatically update items for you. When item updates are on,
      # Google uses the structured data markup on the website and advanced data
      # extractors to update the price and availability of the items. When the item
      # updates are off, items with mismatched data aren't shown.
      class AutomaticItemUpdates
        include Google::Apis::Core::Hashable
      
        # Settings for the Automatic Item Updates.
        # Corresponds to the JSON property `accountItemUpdatesSettings`
        # @return [Google::Apis::MerchantapiAccountsV1beta::ItemUpdatesAccountLevelSettings]
        attr_accessor :account_item_updates_settings
      
        # Output only. The effective value of allow_availability_updates. If
        # account_item_updates_settings is present, then this value is the same.
        # Otherwise, it represents the inherited value of the parent account. The
        # default value is true if no settings are present. Read-only.
        # Corresponds to the JSON property `effectiveAllowAvailabilityUpdates`
        # @return [Boolean]
        attr_accessor :effective_allow_availability_updates
        alias_method :effective_allow_availability_updates?, :effective_allow_availability_updates
      
        # Output only. The effective value of allow_condition_updates. If
        # account_item_updates_settings is present, then this value is the same.
        # Otherwise, it represents the inherited value of the parent account. The
        # default value is true if no settings are present. Read-only.
        # Corresponds to the JSON property `effectiveAllowConditionUpdates`
        # @return [Boolean]
        attr_accessor :effective_allow_condition_updates
        alias_method :effective_allow_condition_updates?, :effective_allow_condition_updates
      
        # Output only. The effective value of allow_price_updates. If
        # account_item_updates_settings is present, then this value is the same.
        # Otherwise, it represents the inherited value of the parent account. The
        # default value is true if no settings are present. Read-only.
        # Corresponds to the JSON property `effectiveAllowPriceUpdates`
        # @return [Boolean]
        attr_accessor :effective_allow_price_updates
        alias_method :effective_allow_price_updates?, :effective_allow_price_updates
      
        # Output only. The effective value of allow_strict_availability_updates. If
        # account_item_updates_settings is present, then this value is the same.
        # Otherwise, it represents the inherited value of the parent account. The
        # default value is true if no settings are present. Read-only.
        # Corresponds to the JSON property `effectiveAllowStrictAvailabilityUpdates`
        # @return [Boolean]
        attr_accessor :effective_allow_strict_availability_updates
        alias_method :effective_allow_strict_availability_updates?, :effective_allow_strict_availability_updates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_item_updates_settings = args[:account_item_updates_settings] if args.key?(:account_item_updates_settings)
          @effective_allow_availability_updates = args[:effective_allow_availability_updates] if args.key?(:effective_allow_availability_updates)
          @effective_allow_condition_updates = args[:effective_allow_condition_updates] if args.key?(:effective_allow_condition_updates)
          @effective_allow_price_updates = args[:effective_allow_price_updates] if args.key?(:effective_allow_price_updates)
          @effective_allow_strict_availability_updates = args[:effective_allow_strict_availability_updates] if args.key?(:effective_allow_strict_availability_updates)
        end
      end
      
      # Not available for [advanced accounts](https://support.google.com/merchants/
      # answer/188487). By turning on [automatic shipping improvements](https://
      # support.google.com/merchants/answer/10027038), you are allowing Google to
      # improve the accuracy of your delivery times shown to shoppers using Google.
      # More accurate delivery times, especially when faster, typically lead to better
      # conversion rates. Google will improve your estimated delivery times based on
      # various factors: * Delivery address of an order * Current handling time and
      # shipping time settings * Estimated weekdays or business days * Parcel tracking
      # data
      class AutomaticShippingImprovements
        include Google::Apis::Core::Hashable
      
        # Enables automatic shipping improvements.
        # Corresponds to the JSON property `allowShippingImprovements`
        # @return [Boolean]
        attr_accessor :allow_shipping_improvements
        alias_method :allow_shipping_improvements?, :allow_shipping_improvements
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_shipping_improvements = args[:allow_shipping_improvements] if args.key?(:allow_shipping_improvements)
        end
      end
      
      # Business days of the warehouse.
      class BusinessDayConfig
        include Google::Apis::Core::Hashable
      
        # Required. Regular business days. May not be empty.
        # Corresponds to the JSON property `businessDays`
        # @return [Array<String>]
        attr_accessor :business_days
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @business_days = args[:business_days] if args.key?(:business_days)
        end
      end
      
      # Collection of information related to the [identity of a business](https://
      # support.google.com/merchants/answer/12564247).
      class BusinessIdentity
        include Google::Apis::Core::Hashable
      
        # All information related to an identity attribute.
        # Corresponds to the JSON property `blackOwned`
        # @return [Google::Apis::MerchantapiAccountsV1beta::IdentityAttribute]
        attr_accessor :black_owned
      
        # All information related to an identity attribute.
        # Corresponds to the JSON property `latinoOwned`
        # @return [Google::Apis::MerchantapiAccountsV1beta::IdentityAttribute]
        attr_accessor :latino_owned
      
        # Identifier. The resource name of the business identity. Format: `accounts/`
        # account`/businessIdentity`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Whether the identity attributes may be used for promotions.
        # Corresponds to the JSON property `promotionsConsent`
        # @return [String]
        attr_accessor :promotions_consent
      
        # All information related to an identity attribute.
        # Corresponds to the JSON property `smallBusiness`
        # @return [Google::Apis::MerchantapiAccountsV1beta::IdentityAttribute]
        attr_accessor :small_business
      
        # All information related to an identity attribute.
        # Corresponds to the JSON property `veteranOwned`
        # @return [Google::Apis::MerchantapiAccountsV1beta::IdentityAttribute]
        attr_accessor :veteran_owned
      
        # All information related to an identity attribute.
        # Corresponds to the JSON property `womenOwned`
        # @return [Google::Apis::MerchantapiAccountsV1beta::IdentityAttribute]
        attr_accessor :women_owned
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @black_owned = args[:black_owned] if args.key?(:black_owned)
          @latino_owned = args[:latino_owned] if args.key?(:latino_owned)
          @name = args[:name] if args.key?(:name)
          @promotions_consent = args[:promotions_consent] if args.key?(:promotions_consent)
          @small_business = args[:small_business] if args.key?(:small_business)
          @veteran_owned = args[:veteran_owned] if args.key?(:veteran_owned)
          @women_owned = args[:women_owned] if args.key?(:women_owned)
        end
      end
      
      # The `BusinessInfo` message contains essential information about a business.
      # This message captures key business details such as physical address, customer
      # service contacts, and region-specific identifiers.
      class BusinessInfo
        include Google::Apis::Core::Hashable
      
        # Represents a postal address, such as for postal delivery or payments addresses.
        # With a postal address, a postal service can deliver items to a premise, P.O.
        # box, or similar. A postal address is not intended to model geographical
        # locations like roads, towns, or mountains. In typical usage, an address would
        # be created by user input or from importing existing data, depending on the
        # type of process. Advice on address input or editing: - Use an
        # internationalization-ready address widget such as https://github.com/google/
        # libaddressinput. - Users should not be presented with UI elements for input or
        # editing of fields outside countries where that field is used. For more
        # guidance on how to use this schema, see: https://support.google.com/business/
        # answer/6397478.
        # Corresponds to the JSON property `address`
        # @return [Google::Apis::MerchantapiAccountsV1beta::PostalAddress]
        attr_accessor :address
      
        # Customer service information.
        # Corresponds to the JSON property `customerService`
        # @return [Google::Apis::MerchantapiAccountsV1beta::CustomerService]
        attr_accessor :customer_service
      
        # Optional. The 10-digit [Korean business registration number](https://support.
        # google.com/merchants/answer/9037766) separated with dashes in the format: XXX-
        # XX-XXXXX.
        # Corresponds to the JSON property `koreanBusinessRegistrationNumber`
        # @return [String]
        attr_accessor :korean_business_registration_number
      
        # Identifier. The resource name of the business info. Format: `accounts/`account`
        # /businessInfo`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # An object representing a phone number, suitable as an API wire format. This
        # representation: - should not be used for locale-specific formatting of a phone
        # number, such as "+1 (650) 253-0000 ext. 123" - is not designed for efficient
        # storage - may not be suitable for dialing - specialized libraries (see
        # references) should be used to parse the number for that purpose To do
        # something meaningful with this number, such as format it for various use-cases,
        # convert it to an `i18n.phonenumbers.PhoneNumber` object first. For instance,
        # in Java this would be: com.google.type.PhoneNumber wireProto = com.google.type.
        # PhoneNumber.newBuilder().build(); com.google.i18n.phonenumbers.Phonenumber.
        # PhoneNumber phoneNumber = PhoneNumberUtil.getInstance().parse(wireProto.
        # getE164Number(), "ZZ"); if (!wireProto.getExtension().isEmpty()) ` phoneNumber.
        # setExtension(wireProto.getExtension()); ` Reference(s): - https://github.com/
        # google/libphonenumber
        # Corresponds to the JSON property `phone`
        # @return [Google::Apis::MerchantapiAccountsV1beta::PhoneNumber]
        attr_accessor :phone
      
        # Output only. The phone verification state of the business.
        # Corresponds to the JSON property `phoneVerificationState`
        # @return [String]
        attr_accessor :phone_verification_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @customer_service = args[:customer_service] if args.key?(:customer_service)
          @korean_business_registration_number = args[:korean_business_registration_number] if args.key?(:korean_business_registration_number)
          @name = args[:name] if args.key?(:name)
          @phone = args[:phone] if args.key?(:phone)
          @phone_verification_state = args[:phone_verification_state] if args.key?(:phone_verification_state)
        end
      end
      
      # `CampaignManagement` payload.
      class CampaignsManagement
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A list of carrier rates that can be referred to by `main_table` or `
      # single_value`. Supported carrier services are defined in https://support.
      # google.com/merchants/answer/12577710?ref_topic=12570808&sjid=
      # 10662598224319463032-NC#zippy=%2Cdelivery-cost-rate-type%2Ccarrier-rate-au-de-
      # uk-and-us-only.
      class CarrierRate
        include Google::Apis::Core::Hashable
      
        # Required. Carrier service, such as `"UPS"` or `"Fedex"`.
        # Corresponds to the JSON property `carrier`
        # @return [String]
        attr_accessor :carrier
      
        # Required. Carrier service, such as `"ground"` or `"2 days"`.
        # Corresponds to the JSON property `carrierService`
        # @return [String]
        attr_accessor :carrier_service
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `flatAdjustment`
        # @return [Google::Apis::MerchantapiAccountsV1beta::Price]
        attr_accessor :flat_adjustment
      
        # Required. Name of the carrier rate. Must be unique per rate group.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Shipping origin for this carrier rate.
        # Corresponds to the JSON property `originPostalCode`
        # @return [String]
        attr_accessor :origin_postal_code
      
        # Optional. Multiplicative shipping rate modifier as a number in decimal
        # notation. Can be negative. For example `"5.4"` increases the rate by 5.4%, `"-
        # 3"` decreases the rate by 3%.
        # Corresponds to the JSON property `percentageAdjustment`
        # @return [String]
        attr_accessor :percentage_adjustment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @carrier = args[:carrier] if args.key?(:carrier)
          @carrier_service = args[:carrier_service] if args.key?(:carrier_service)
          @flat_adjustment = args[:flat_adjustment] if args.key?(:flat_adjustment)
          @name = args[:name] if args.key?(:name)
          @origin_postal_code = args[:origin_postal_code] if args.key?(:origin_postal_code)
          @percentage_adjustment = args[:percentage_adjustment] if args.key?(:percentage_adjustment)
        end
      end
      
      # [CheckoutSettings](https://support.google.com/merchants/answer/13945960) for a
      # specific merchant.
      class CheckoutSettings
        include Google::Apis::Core::Hashable
      
        # Output only. The effective value of enrollment_state for a given merchant ID.
        # If account level settings are present then this value will be a copy of the
        # account level settings. Otherwise, it will have the value of the parent
        # account (for only marketplace sellers).
        # Corresponds to the JSON property `effectiveEnrollmentState`
        # @return [String]
        attr_accessor :effective_enrollment_state
      
        # Output only. The effective value of `review_state` for a given merchant ID. If
        # account level settings are present then this value will be a copy of the
        # account level settings. Otherwise, it will have the value of the parent
        # account (for only marketplace sellers).
        # Corresponds to the JSON property `effectiveReviewState`
        # @return [String]
        attr_accessor :effective_review_state
      
        # URL settings for cart or checkout URL.
        # Corresponds to the JSON property `effectiveUriSettings`
        # @return [Google::Apis::MerchantapiAccountsV1beta::UriSettings]
        attr_accessor :effective_uri_settings
      
        # Optional. The destinations (also known as [Marketing methods](https://support.
        # google.com/merchants/answer/15130232)) to which the checkout program applies,
        # valid destination values are `SHOPPING_ADS`, `FREE_LISTINGS`
        # Corresponds to the JSON property `eligibleDestinations`
        # @return [Array<String>]
        attr_accessor :eligible_destinations
      
        # Output only. Reflects the merchant enrollment state in `Checkout` program.
        # Corresponds to the JSON property `enrollmentState`
        # @return [String]
        attr_accessor :enrollment_state
      
        # Identifier. The resource name of the program configuration settings. Format: `
        # accounts/`account`/programs/`program`/checkoutSettings`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Reflects the merchant review state in `Checkout` program. This is
        # set based on the data quality reviews of the URL provided by the merchant. A
        # merchant with enrollment state as `ENROLLED` can be in the following review
        # states: `IN_REVIEW`, `APPROVED` or `DISAPPROVED`. A merchant must be in an `
        # enrollment_state` of `ENROLLED` before a review can begin for the merchant.For
        # more details, check the help center doc.
        # Corresponds to the JSON property `reviewState`
        # @return [String]
        attr_accessor :review_state
      
        # URL settings for cart or checkout URL.
        # Corresponds to the JSON property `uriSettings`
        # @return [Google::Apis::MerchantapiAccountsV1beta::UriSettings]
        attr_accessor :uri_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @effective_enrollment_state = args[:effective_enrollment_state] if args.key?(:effective_enrollment_state)
          @effective_review_state = args[:effective_review_state] if args.key?(:effective_review_state)
          @effective_uri_settings = args[:effective_uri_settings] if args.key?(:effective_uri_settings)
          @eligible_destinations = args[:eligible_destinations] if args.key?(:eligible_destinations)
          @enrollment_state = args[:enrollment_state] if args.key?(:enrollment_state)
          @name = args[:name] if args.key?(:name)
          @review_state = args[:review_state] if args.key?(:review_state)
          @uri_settings = args[:uri_settings] if args.key?(:uri_settings)
        end
      end
      
      # Request message for the `ClaimHomepage` method.
      class ClaimHomepageRequest
        include Google::Apis::Core::Hashable
      
        # Optional. When set to `true`, this option removes any existing claim on the
        # requested website from any other account to the account making the request,
        # effectively replacing the previous claim.
        # Corresponds to the JSON property `overwrite`
        # @return [Boolean]
        attr_accessor :overwrite
        alias_method :overwrite?, :overwrite
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @overwrite = args[:overwrite] if args.key?(:overwrite)
        end
      end
      
      # `ComparisonShopping` payload.
      class ComparisonShopping
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for the `CreateAndConfigureAccount` method.
      class CreateAndConfigureAccountRequest
        include Google::Apis::Core::Hashable
      
        # The `Account` message represents a business's account within Shopping Ads. It'
        # s the primary entity for managing product data, settings, and interactions
        # with Google's services and external providers. Accounts can operate as
        # standalone entities or be part of a advanced account structure. In an advanced
        # account setup the parent account manages multiple sub-accounts. Establishing
        # an account involves configuring attributes like the account name, time zone,
        # and language preferences. The `Account` message is the parent entity for many
        # other resources, for example, `AccountRelationship`, `Homepage`, `BusinessInfo`
        # and so on.
        # Corresponds to the JSON property `account`
        # @return [Google::Apis::MerchantapiAccountsV1beta::Account]
        attr_accessor :account
      
        # Required. An account service between the account to be created and the
        # provider account is initialized as part of the creation. At least one such
        # service needs to be provided. Currently exactly one of these needs to be `
        # account_aggregation` and `accounts.createAndConfigure` method can be used to
        # create a sub-account under an existing advanced account through this method.
        # Additional `account_management` or `product_management` services may be
        # provided.
        # Corresponds to the JSON property `service`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::AddAccountService>]
        attr_accessor :service
      
        # Optional. If a relationship is created with a provider, you can set an alias
        # for it with this field. The calling user must be an admin on the provider to
        # be able to set an alias.
        # Corresponds to the JSON property `setAlias`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::SetAliasForRelationship>]
        attr_accessor :set_alias
      
        # Optional. Users to be added to the account.
        # Corresponds to the JSON property `user`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::AddUser>]
        attr_accessor :user
      
        # Optional. Users to be added to the account. This field is deprecated and will
        # not exist after the API evolves out of beta. Use the `user` field instead.
        # Corresponds to the JSON property `users`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::CreateUserRequest>]
        attr_accessor :users
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] if args.key?(:account)
          @service = args[:service] if args.key?(:service)
          @set_alias = args[:set_alias] if args.key?(:set_alias)
          @user = args[:user] if args.key?(:user)
          @users = args[:users] if args.key?(:users)
        end
      end
      
      # Request message for the `CreateUser` method.
      class CreateUserRequest
        include Google::Apis::Core::Hashable
      
        # Required. The resource name of the account for which a user will be created.
        # Format: `accounts/`account``
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # The `User` resource represents a user associated with a Merchant Center
        # account. It is used to manage user permissions and access rights within the
        # account. For more information, see [Frequently asked questions about people
        # and access levels](//support.google.com/merchants/answer/12160472).
        # Corresponds to the JSON property `user`
        # @return [Google::Apis::MerchantapiAccountsV1beta::User]
        attr_accessor :user
      
        # Required. The email address of the user (for example, `john.doe@gmail.com`).
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parent = args[:parent] if args.key?(:parent)
          @user = args[:user] if args.key?(:user)
          @user_id = args[:user_id] if args.key?(:user_id)
        end
      end
      
      # Customer service information.
      class CustomerService
        include Google::Apis::Core::Hashable
      
        # Optional. The email address where customer service may be reached.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # An object representing a phone number, suitable as an API wire format. This
        # representation: - should not be used for locale-specific formatting of a phone
        # number, such as "+1 (650) 253-0000 ext. 123" - is not designed for efficient
        # storage - may not be suitable for dialing - specialized libraries (see
        # references) should be used to parse the number for that purpose To do
        # something meaningful with this number, such as format it for various use-cases,
        # convert it to an `i18n.phonenumbers.PhoneNumber` object first. For instance,
        # in Java this would be: com.google.type.PhoneNumber wireProto = com.google.type.
        # PhoneNumber.newBuilder().build(); com.google.i18n.phonenumbers.Phonenumber.
        # PhoneNumber phoneNumber = PhoneNumberUtil.getInstance().parse(wireProto.
        # getE164Number(), "ZZ"); if (!wireProto.getExtension().isEmpty()) ` phoneNumber.
        # setExtension(wireProto.getExtension()); ` Reference(s): - https://github.com/
        # google/libphonenumber
        # Corresponds to the JSON property `phone`
        # @return [Google::Apis::MerchantapiAccountsV1beta::PhoneNumber]
        attr_accessor :phone
      
        # Optional. The URI where customer service may be found.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @phone = args[:phone] if args.key?(:phone)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Configs related to local delivery ends for the day.
      class CutoffConfig
        include Google::Apis::Core::Hashable
      
        # Time that local delivery ends for the day.
        # Corresponds to the JSON property `localCutoffTime`
        # @return [Google::Apis::MerchantapiAccountsV1beta::LocalCutoffTime]
        attr_accessor :local_cutoff_time
      
        # Businesses can opt-out of showing n+1 day local delivery when they have a
        # shipping service configured to n day local delivery. For example, if the
        # shipping service defines same-day delivery, and it's past the cut-off, setting
        # this field to `true` results in the calculated shipping service rate returning
        # `NO_DELIVERY_POST_CUTOFF`. In the same example, setting this field to `false`
        # results in the calculated shipping time being one day. This is only for local
        # delivery.
        # Corresponds to the JSON property `noDeliveryPostCutoff`
        # @return [Boolean]
        attr_accessor :no_delivery_post_cutoff
        alias_method :no_delivery_post_cutoff?, :no_delivery_post_cutoff
      
        # Only valid with local delivery fulfillment. Represents cutoff time as the
        # number of hours before store closing. Mutually exclusive with `
        # local_cutoff_time`.
        # Corresponds to the JSON property `storeCloseOffsetHours`
        # @return [Fixnum]
        attr_accessor :store_close_offset_hours
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @local_cutoff_time = args[:local_cutoff_time] if args.key?(:local_cutoff_time)
          @no_delivery_post_cutoff = args[:no_delivery_post_cutoff] if args.key?(:no_delivery_post_cutoff)
          @store_close_offset_hours = args[:store_close_offset_hours] if args.key?(:store_close_offset_hours)
        end
      end
      
      # Business days cutoff time definition.
      class CutoffTime
        include Google::Apis::Core::Hashable
      
        # Required. Hour of the cutoff time until which an order has to be placed to be
        # processed in the same day.
        # Corresponds to the JSON property `hour`
        # @return [Fixnum]
        attr_accessor :hour
      
        # Required. Minute of the cutoff time until which an order has to be placed to
        # be processed in the same day.
        # Corresponds to the JSON property `minute`
        # @return [Fixnum]
        attr_accessor :minute
      
        # Required. [Timezone identifier](https://developers.google.com/adwords/api/docs/
        # appendix/codes-formats#timezone-ids) For example "Europe/Zurich".
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hour = args[:hour] if args.key?(:hour)
          @minute = args[:minute] if args.key?(:minute)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
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
      class Date
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
      
      # Time spent in various aspects from order to the delivery of the product.
      class DeliveryTime
        include Google::Apis::Core::Hashable
      
        # Business days cutoff time definition.
        # Corresponds to the JSON property `cutoffTime`
        # @return [Google::Apis::MerchantapiAccountsV1beta::CutoffTime]
        attr_accessor :cutoff_time
      
        # Business days of the warehouse.
        # Corresponds to the JSON property `handlingBusinessDayConfig`
        # @return [Google::Apis::MerchantapiAccountsV1beta::BusinessDayConfig]
        attr_accessor :handling_business_day_config
      
        # Maximum number of business days spent before an order is shipped. 0 means same
        # day shipped, 1 means next day shipped. Must be greater than or equal to `
        # min_handling_days`. 'min_handling_days' and 'max_handling_days' should be
        # either set or not set at the same time.
        # Corresponds to the JSON property `maxHandlingDays`
        # @return [Fixnum]
        attr_accessor :max_handling_days
      
        # Maximum number of business days that is spent in transit. 0 means same day
        # delivery, 1 means next day delivery. Must be greater than or equal to `
        # min_transit_days`.
        # Corresponds to the JSON property `maxTransitDays`
        # @return [Fixnum]
        attr_accessor :max_transit_days
      
        # Minimum number of business days spent before an order is shipped. 0 means same
        # day shipped, 1 means next day shipped. 'min_handling_days' and '
        # max_handling_days' should be either set or not set at the same time.
        # Corresponds to the JSON property `minHandlingDays`
        # @return [Fixnum]
        attr_accessor :min_handling_days
      
        # Minimum number of business days that is spent in transit. 0 means same day
        # delivery, 1 means next day delivery. Either `min_transit_days`, `
        # max_transit_days` or `transit_time_table` must be set, but not both.
        # Corresponds to the JSON property `minTransitDays`
        # @return [Fixnum]
        attr_accessor :min_transit_days
      
        # Business days of the warehouse.
        # Corresponds to the JSON property `transitBusinessDayConfig`
        # @return [Google::Apis::MerchantapiAccountsV1beta::BusinessDayConfig]
        attr_accessor :transit_business_day_config
      
        # Transit time table, number of business days spent in transit based on row and
        # column dimensions. Either `min_transit_days`, `max_transit_days` or `
        # transit_time_table` can be set, but not both.
        # Corresponds to the JSON property `transitTimeTable`
        # @return [Google::Apis::MerchantapiAccountsV1beta::TransitTable]
        attr_accessor :transit_time_table
      
        # Optional. Indicates that the delivery time should be calculated per warehouse (
        # shipping origin location) based on the settings of the selected carrier. When
        # set, no other transit time related field in delivery time should be set.
        # Corresponds to the JSON property `warehouseBasedDeliveryTimes`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::WarehouseBasedDeliveryTime>]
        attr_accessor :warehouse_based_delivery_times
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cutoff_time = args[:cutoff_time] if args.key?(:cutoff_time)
          @handling_business_day_config = args[:handling_business_day_config] if args.key?(:handling_business_day_config)
          @max_handling_days = args[:max_handling_days] if args.key?(:max_handling_days)
          @max_transit_days = args[:max_transit_days] if args.key?(:max_transit_days)
          @min_handling_days = args[:min_handling_days] if args.key?(:min_handling_days)
          @min_transit_days = args[:min_transit_days] if args.key?(:min_transit_days)
          @transit_business_day_config = args[:transit_business_day_config] if args.key?(:transit_business_day_config)
          @transit_time_table = args[:transit_time_table] if args.key?(:transit_time_table)
          @warehouse_based_delivery_times = args[:warehouse_based_delivery_times] if args.key?(:warehouse_based_delivery_times)
        end
      end
      
      # Represents a developer registration owned by a Merchant account.
      class DeveloperRegistration
        include Google::Apis::Core::Hashable
      
        # Output only. The GCP ids attached to this developer registration
        # Corresponds to the JSON property `gcpIds`
        # @return [Array<String>]
        attr_accessor :gcp_ids
      
        # Identifier. The `name` (ID) of the developer registration. Generated by the
        # Content API upon creation of a new `DeveloperRegistration`. The `account`
        # represents the merchant ID of the merchant that owns the registration.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcp_ids = args[:gcp_ids] if args.key?(:gcp_ids)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Request message for the DisableProgram method.
      class DisableProgramRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Maximum delivery radius. This is only required for the local delivery shipment
      # type.
      class Distance
        include Google::Apis::Core::Hashable
      
        # Unit can differ based on country, it is parameterized to include miles and
        # kilometers.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # Integer value of distance.
        # Corresponds to the JSON property `value`
        # @return [Fixnum]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @unit = args[:unit] if args.key?(:unit)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # The categories of notifications the user opted into / opted out of. The email
      # preferences do not include mandatory announcements as users can't opt out of
      # them.
      class EmailPreferences
        include Google::Apis::Core::Hashable
      
        # Identifier. The name of the EmailPreferences. The endpoint is only supported
        # for the authenticated user.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Updates on new features, tips and best practices.
        # Corresponds to the JSON property `newsAndTips`
        # @return [String]
        attr_accessor :news_and_tips
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @news_and_tips = args[:news_and_tips] if args.key?(:news_and_tips)
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
      
      # Request message for the EnableProgram method.
      class EnableProgramRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for the FindLfpProviders method.
      class FindLfpProvidersResponse
        include Google::Apis::Core::Hashable
      
        # The LFP providers from the specified merchant in the specified country.
        # Corresponds to the JSON property `lfpProviders`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::LfpProvider>]
        attr_accessor :lfp_providers
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lfp_providers = args[:lfp_providers] if args.key?(:lfp_providers)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Collection of information related to a Google Business Profile (GBP) account.
      class GbpAccount
        include Google::Apis::Core::Hashable
      
        # The id of the GBP account.
        # Corresponds to the JSON property `gbpAccountId`
        # @return [String]
        attr_accessor :gbp_account_id
      
        # The name of the Business Profile. For personal accounts: Email id of the owner.
        # For Business accounts: Name of the Business Account.
        # Corresponds to the JSON property `gbpAccountName`
        # @return [String]
        attr_accessor :gbp_account_name
      
        # Number of listings under this account.
        # Corresponds to the JSON property `listingCount`
        # @return [Fixnum]
        attr_accessor :listing_count
      
        # Identifier. The resource name of the GBP account. Format: `accounts/`account`/
        # gbpAccount/`gbp_account``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The type of the Business Profile.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gbp_account_id = args[:gbp_account_id] if args.key?(:gbp_account_id)
          @gbp_account_name = args[:gbp_account_name] if args.key?(:gbp_account_name)
          @listing_count = args[:listing_count] if args.key?(:listing_count)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A list of geotargets that defines the region area.
      class GeoTargetArea
        include Google::Apis::Core::Hashable
      
        # Required. A non-empty list of [location IDs](https://developers.google.com/
        # adwords/api/docs/appendix/geotargeting). They must all be of the same location
        # type (for example, state).
        # Corresponds to the JSON property `geotargetCriteriaIds`
        # @return [Array<Fixnum>]
        attr_accessor :geotarget_criteria_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @geotarget_criteria_ids = args[:geotarget_criteria_ids] if args.key?(:geotarget_criteria_ids)
        end
      end
      
      # Response message for the GetAccountForGcpRegistration method.
      class GetAccountForGcpRegistrationResponse
        include Google::Apis::Core::Hashable
      
        # The name of the merchant account id that the GCP is registered with.
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
      
      # The current status of establishing of the service. (for example, pending
      # approval or approved).
      class Handshake
        include Google::Apis::Core::Hashable
      
        # Output only. The most recent account to modify the account service's `
        # approval_status`.
        # Corresponds to the JSON property `actor`
        # @return [String]
        attr_accessor :actor
      
        # Output only. The approval state of this handshake.
        # Corresponds to the JSON property `approvalState`
        # @return [String]
        attr_accessor :approval_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actor = args[:actor] if args.key?(:actor)
          @approval_state = args[:approval_state] if args.key?(:approval_state)
        end
      end
      
      # A non-empty list of row or column headers for a table. Exactly one of `prices`,
      # `weights`, `num_items`, `postal_code_group_names`, or `location` must be set.
      class Headers
        include Google::Apis::Core::Hashable
      
        # Required. A list of location ID sets. Must be non-empty. Can only be set if
        # all other fields are not set.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::LocationIdSet>]
        attr_accessor :locations
      
        # Required. A list of inclusive number of items upper bounds. The last value can
        # be `"infinity"`. For example `["10", "50", "infinity"]` represents the headers
        # "<= 10 items", "<= 50 items", and "> 50 items". Must be non-empty. Can only be
        # set if all other fields are not set.
        # Corresponds to the JSON property `numberOfItems`
        # @return [Array<String>]
        attr_accessor :number_of_items
      
        # Required. A list of postal group names. The last value can be `"all other
        # locations"`. Example: `["zone 1", "zone 2", "all other locations"]`. The
        # referred postal code groups must match the delivery country of the service.
        # Must be non-empty. Can only be set if all other fields are not set.
        # Corresponds to the JSON property `postalCodeGroupNames`
        # @return [Array<String>]
        attr_accessor :postal_code_group_names
      
        # Required. A list of inclusive order price upper bounds. The last price's value
        # can be infinity by setting price amount_micros = -1. For example `[`"
        # amount_micros": 10000000, "currency_code": "USD"`, `"amount_micros": 500000000,
        # "currency_code": "USD"`, `"amount_micros": -1, "currency_code": "USD"`]`
        # represents the headers "<= $10", "<= $500", and "> $500". All prices within a
        # service must have the same currency. Must be non-empty. Must be positive
        # except -1. Can only be set if all other fields are not set.
        # Corresponds to the JSON property `prices`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::Price>]
        attr_accessor :prices
      
        # Required. A list of inclusive order weight upper bounds. The last weight's
        # value can be infinity by setting price amount_micros = -1. For example `[`"
        # amount_micros": 10000000, "unit": "kg"`, `"amount_micros": 50000000, "unit": "
        # kg"`, `"amount_micros": -1, "unit": "kg"`]` represents the headers "<= 10kg", "
        # <= 50kg", and "> 50kg". All weights within a service must have the same unit.
        # Must be non-empty. Must be positive except -1. Can only be set if all other
        # fields are not set.
        # Corresponds to the JSON property `weights`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::Weight>]
        attr_accessor :weights
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @number_of_items = args[:number_of_items] if args.key?(:number_of_items)
          @postal_code_group_names = args[:postal_code_group_names] if args.key?(:postal_code_group_names)
          @prices = args[:prices] if args.key?(:prices)
          @weights = args[:weights] if args.key?(:weights)
        end
      end
      
      # The `Homepage` message represents a business's store homepage within the
      # system. A business's homepage is the primary domain where customers interact
      # with their store. The homepage can be claimed and verified as a proof of
      # ownership and allows the business to unlock features that require a verified
      # website. For more information, see [Understanding online store URL
      # verification](//support.google.com/merchants/answer/176793).
      class Homepage
        include Google::Apis::Core::Hashable
      
        # Output only. Whether the homepage is claimed. See https://support.google.com/
        # merchants/answer/176793.
        # Corresponds to the JSON property `claimed`
        # @return [Boolean]
        attr_accessor :claimed
        alias_method :claimed?, :claimed
      
        # Identifier. The resource name of the store's homepage. Format: `accounts/`
        # account`/homepage`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The URI (typically a URL) of the store's homepage.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @claimed = args[:claimed] if args.key?(:claimed)
          @name = args[:name] if args.key?(:name)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # All information related to an identity attribute.
      class IdentityAttribute
        include Google::Apis::Core::Hashable
      
        # Required. The declaration of identity for this attribute.
        # Corresponds to the JSON property `identityDeclaration`
        # @return [String]
        attr_accessor :identity_declaration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @identity_declaration = args[:identity_declaration] if args.key?(:identity_declaration)
        end
      end
      
      # Settings for the Automatic Image Improvements.
      class ImageImprovementsAccountLevelSettings
        include Google::Apis::Core::Hashable
      
        # Enables automatic image improvements.
        # Corresponds to the JSON property `allowAutomaticImageImprovements`
        # @return [Boolean]
        attr_accessor :allow_automatic_image_improvements
        alias_method :allow_automatic_image_improvements?, :allow_automatic_image_improvements
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_automatic_image_improvements = args[:allow_automatic_image_improvements] if args.key?(:allow_automatic_image_improvements)
        end
      end
      
      # The impact of the issue on a region.
      class Impact
        include Google::Apis::Core::Hashable
      
        # The [CLDR region code](https://cldr.unicode.org/) where this issue applies.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # The severity of the issue on the destination and region.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @region_code = args[:region_code] if args.key?(:region_code)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # The impact of the issue on a destination.
      class ImpactedDestination
        include Google::Apis::Core::Hashable
      
        # The (negative) impact for various regions on the given destination.
        # Corresponds to the JSON property `impacts`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::Impact>]
        attr_accessor :impacts
      
        # The impacted reporting context.
        # Corresponds to the JSON property `reportingContext`
        # @return [String]
        attr_accessor :reporting_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @impacts = args[:impacts] if args.key?(:impacts)
          @reporting_context = args[:reporting_context] if args.key?(:reporting_context)
        end
      end
      
      # Collection of information related to InStock.
      class InStock
        include Google::Apis::Core::Hashable
      
        # Output only. The state of the in-stock serving.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Optional. Product landing page URI. It is only used for the review of MHLSF in-
        # stock serving. This URI domain should match with the business's homepage.
        # Required to be empty if the lsf_type is GHLSF, and required when the lsf_type
        # is MHLSF_FULL or MHLSF_BASIC.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Collection of information related to [inventory verification](https://support.
      # google.com/merchants/answer/14684499?ref_topic=15145634&sjid=
      # 6892280366904591178-NC).
      class InventoryVerification
        include Google::Apis::Core::Hashable
      
        # Required. The name of the contact for the inventory verification process.
        # Corresponds to the JSON property `contact`
        # @return [String]
        attr_accessor :contact
      
        # Required. The email address of the contact for the inventory verification
        # process.
        # Corresponds to the JSON property `contactEmail`
        # @return [String]
        attr_accessor :contact_email
      
        # Output only. The state of the contact verification.
        # Corresponds to the JSON property `contactState`
        # @return [String]
        attr_accessor :contact_state
      
        # Output only. The state of the inventory verification process.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contact = args[:contact] if args.key?(:contact)
          @contact_email = args[:contact_email] if args.key?(:contact_email)
          @contact_state = args[:contact_state] if args.key?(:contact_state)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Settings for the Automatic Item Updates.
      class ItemUpdatesAccountLevelSettings
        include Google::Apis::Core::Hashable
      
        # If availability updates are enabled, any previous availability values get
        # overwritten if Google finds an out-of-stock annotation on the offer's page. If
        # additionally `allow_strict_availability_updates` field is set to true, values
        # get overwritten if Google finds an in-stock annotation on the offer’s page.
        # Corresponds to the JSON property `allowAvailabilityUpdates`
        # @return [Boolean]
        attr_accessor :allow_availability_updates
        alias_method :allow_availability_updates?, :allow_availability_updates
      
        # If condition updates are enabled, Google always updates item condition with
        # the condition detected from the details of your product.
        # Corresponds to the JSON property `allowConditionUpdates`
        # @return [Boolean]
        attr_accessor :allow_condition_updates
        alias_method :allow_condition_updates?, :allow_condition_updates
      
        # If price updates are enabled, Google always updates the active price with the
        # crawled information.
        # Corresponds to the JSON property `allowPriceUpdates`
        # @return [Boolean]
        attr_accessor :allow_price_updates
        alias_method :allow_price_updates?, :allow_price_updates
      
        # If `allow_availability_updates` is enabled, items are automatically updated in
        # all your Shopping target countries. By default, availability updates will only
        # be applied to items that are 'out of stock' on your website but 'in stock' on
        # Shopping. Set this to true to also update items that are 'in stock' on your
        # website, but 'out of stock' on Google Shopping. In order for this field to
        # have an effect, you must also set `allow_availability_updates`.
        # Corresponds to the JSON property `allowStrictAvailabilityUpdates`
        # @return [Boolean]
        attr_accessor :allow_strict_availability_updates
        alias_method :allow_strict_availability_updates?, :allow_strict_availability_updates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_availability_updates = args[:allow_availability_updates] if args.key?(:allow_availability_updates)
          @allow_condition_updates = args[:allow_condition_updates] if args.key?(:allow_condition_updates)
          @allow_price_updates = args[:allow_price_updates] if args.key?(:allow_price_updates)
          @allow_strict_availability_updates = args[:allow_strict_availability_updates] if args.key?(:allow_strict_availability_updates)
        end
      end
      
      # An object that represents a latitude/longitude pair. This is expressed as a
      # pair of doubles to represent degrees latitude and degrees longitude. Unless
      # specified otherwise, this object must conform to the WGS84 standard. Values
      # must be within normalized ranges.
      class LatLng
        include Google::Apis::Core::Hashable
      
        # The latitude in degrees. It must be in the range [-90.0, +90.0].
        # Corresponds to the JSON property `latitude`
        # @return [Float]
        attr_accessor :latitude
      
        # The longitude in degrees. It must be in the range [-180.0, +180.0].
        # Corresponds to the JSON property `longitude`
        # @return [Float]
        attr_accessor :longitude
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @latitude = args[:latitude] if args.key?(:latitude)
          @longitude = args[:longitude] if args.key?(:longitude)
        end
      end
      
      # Collection of information related to the LFP link.
      class LfpLink
        include Google::Apis::Core::Hashable
      
        # Required. The account ID by which this merchant is known to the LFP provider.
        # Corresponds to the JSON property `externalAccountId`
        # @return [String]
        attr_accessor :external_account_id
      
        # Required. The resource name of the LFP provider. Format: `lfpProviders/`
        # lfp_provider``
        # Corresponds to the JSON property `lfpProvider`
        # @return [String]
        attr_accessor :lfp_provider
      
        # Output only. The state of the LFP link.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @external_account_id = args[:external_account_id] if args.key?(:external_account_id)
          @lfp_provider = args[:lfp_provider] if args.key?(:lfp_provider)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Collection of information related to a Local Feed Partnership (LFP) provider.
      class LfpProvider
        include Google::Apis::Core::Hashable
      
        # The display name of the LFP provider.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Identifier. The resource name of the LFP provider. Format: `accounts/`account`/
        # omnichannelSettings/`omnichannel_setting`/lfpProviders/`lfp_provider``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Region code defined by [CLDR](https://cldr.unicode.org/).
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @region_code = args[:region_code] if args.key?(:region_code)
        end
      end
      
      # Request message for the LinkGbpAccount method.
      class LinkGbpAccountRequest
        include Google::Apis::Core::Hashable
      
        # Required. The email address of the Business Profile account.
        # Corresponds to the JSON property `gbpEmail`
        # @return [String]
        attr_accessor :gbp_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gbp_email = args[:gbp_email] if args.key?(:gbp_email)
        end
      end
      
      # Response message for the LinkGbpAccount method.
      class LinkGbpAccountResponse
        include Google::Apis::Core::Hashable
      
        # A generic empty message that you can re-use to avoid defining duplicated empty
        # messages in your APIs. A typical example is to use it as the request or the
        # response type of an API method. For instance: service Foo ` rpc Bar(google.
        # protobuf.Empty) returns (google.protobuf.Empty); `
        # Corresponds to the JSON property `response`
        # @return [Google::Apis::MerchantapiAccountsV1beta::Empty]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # Request message for the LinkLfpProvider method.
      class LinkLfpProviderRequest
        include Google::Apis::Core::Hashable
      
        # Required. The external account ID by which this merchant is known to the LFP
        # provider.
        # Corresponds to the JSON property `externalAccountId`
        # @return [String]
        attr_accessor :external_account_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @external_account_id = args[:external_account_id] if args.key?(:external_account_id)
        end
      end
      
      # Response message for the LinkLfpProvider method.
      class LinkLfpProviderResponse
        include Google::Apis::Core::Hashable
      
        # A generic empty message that you can re-use to avoid defining duplicated empty
        # messages in your APIs. A typical example is to use it as the request or the
        # response type of an API method. For instance: service Foo ` rpc Bar(google.
        # protobuf.Empty) returns (google.protobuf.Empty); `
        # Corresponds to the JSON property `response`
        # @return [Google::Apis::MerchantapiAccountsV1beta::Empty]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # Response message for the `ListAccountIssues` method.
      class ListAccountIssuesResponse
        include Google::Apis::Core::Hashable
      
        # The issues from the specified account.
        # Corresponds to the JSON property `accountIssues`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::AccountIssue>]
        attr_accessor :account_issues
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_issues = args[:account_issues] if args.key?(:account_issues)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response after trying to list account relationships.
      class ListAccountRelationshipsResponse
        include Google::Apis::Core::Hashable
      
        # The account relationships that match your filter.
        # Corresponds to the JSON property `accountRelationships`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::AccountRelationship>]
        attr_accessor :account_relationships
      
        # A page token. You can send the `page_token` to get the next page. Only
        # included in the `list` response if there are more pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_relationships = args[:account_relationships] if args.key?(:account_relationships)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response after trying to list account services.
      class ListAccountServicesResponse
        include Google::Apis::Core::Hashable
      
        # The account services that match your filter.
        # Corresponds to the JSON property `accountServices`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::AccountService>]
        attr_accessor :account_services
      
        # A page token. You can send the `page_token` to get the next page. Only
        # included in the `list` response if there are more pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_services = args[:account_services] if args.key?(:account_services)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for the `accounts.list` method.
      class ListAccountsResponse
        include Google::Apis::Core::Hashable
      
        # The accounts matching the `ListAccountsRequest`.
        # Corresponds to the JSON property `accounts`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::Account>]
        attr_accessor :accounts
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
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
      
      # Response message for the ListGbpAccounts method.
      class ListGbpAccountsResponse
        include Google::Apis::Core::Hashable
      
        # The GBP accounts from the specified merchant in the specified country.
        # Corresponds to the JSON property `gbpAccounts`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::GbpAccount>]
        attr_accessor :gbp_accounts
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gbp_accounts = args[:gbp_accounts] if args.key?(:gbp_accounts)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for the ListOmnichannelSettings method.
      class ListOmnichannelSettingsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The omnichannel settings from the specified merchant.
        # Corresponds to the JSON property `omnichannelSettings`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::OmnichannelSetting>]
        attr_accessor :omnichannel_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @omnichannel_settings = args[:omnichannel_settings] if args.key?(:omnichannel_settings)
        end
      end
      
      # Response message for the `ListOnlineReturnPolicies` method.
      class ListOnlineReturnPoliciesResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `pageToken` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The retrieved return policies.
        # Corresponds to the JSON property `onlineReturnPolicies`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::OnlineReturnPolicy>]
        attr_accessor :online_return_policies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @online_return_policies = args[:online_return_policies] if args.key?(:online_return_policies)
        end
      end
      
      # Response message for the ListPrograms method.
      class ListProgramsResponse
        include Google::Apis::Core::Hashable
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The programs for the given account.
        # Corresponds to the JSON property `programs`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::Program>]
        attr_accessor :programs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @programs = args[:programs] if args.key?(:programs)
        end
      end
      
      # Response message for the `ListRegions` method.
      class ListRegionsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The regions from the specified business.
        # Corresponds to the JSON property `regions`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::Region>]
        attr_accessor :regions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @regions = args[:regions] if args.key?(:regions)
        end
      end
      
      # Response message for the `ListSubAccounts` method.
      class ListSubAccountsResponse
        include Google::Apis::Core::Hashable
      
        # The accounts for which the given parent account is an aggregator.
        # Corresponds to the JSON property `accounts`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::Account>]
        attr_accessor :accounts
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
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
      
      # Response message for the `ListUsers` method.
      class ListUsersResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The users from the specified account.
        # Corresponds to the JSON property `users`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::User>]
        attr_accessor :users
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @users = args[:users] if args.key?(:users)
        end
      end
      
      # Time that local delivery ends for the day.
      class LocalCutoffTime
        include Google::Apis::Core::Hashable
      
        # Hour local delivery orders must be placed by to process the same day.
        # Corresponds to the JSON property `hour`
        # @return [Fixnum]
        attr_accessor :hour
      
        # Minute local delivery orders must be placed by to process the same day.
        # Corresponds to the JSON property `minute`
        # @return [Fixnum]
        attr_accessor :minute
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hour = args[:hour] if args.key?(:hour)
          @minute = args[:minute] if args.key?(:minute)
        end
      end
      
      # `LocalListingManagement` payload.
      class LocalListingManagement
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A list of location ID sets. Must be non-empty. Can only be set if all other
      # fields are not set.
      class LocationIdSet
        include Google::Apis::Core::Hashable
      
        # Required. A non-empty list of [location IDs](https://developers.google.com/
        # adwords/api/docs/appendix/geotargeting). They must all be of the same location
        # type (For example, state).
        # Corresponds to the JSON property `locationIds`
        # @return [Array<String>]
        attr_accessor :location_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location_ids = args[:location_ids] if args.key?(:location_ids)
        end
      end
      
      # [Loyalty program](https://support.google.com/merchants/answer/12922446)
      # provided by a business.
      class LoyaltyProgram
        include Google::Apis::Core::Hashable
      
        # Optional. Loyalty program tier of this shipping service.
        # Corresponds to the JSON property `loyaltyProgramTiers`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::LoyaltyProgramTiers>]
        attr_accessor :loyalty_program_tiers
      
        # This is the loyalty program label set in your loyalty program settings in
        # Merchant Center. This sub-attribute allows Google to map your loyalty program
        # to eligible offers.
        # Corresponds to the JSON property `programLabel`
        # @return [String]
        attr_accessor :program_label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @loyalty_program_tiers = args[:loyalty_program_tiers] if args.key?(:loyalty_program_tiers)
          @program_label = args[:program_label] if args.key?(:program_label)
        end
      end
      
      # Subset of a business's loyalty program.
      class LoyaltyProgramTiers
        include Google::Apis::Core::Hashable
      
        # The tier label [tier_label] sub-attribute differentiates offer level benefits
        # between each tier. This value is also set in your program settings in Merchant
        # Center, and is required for data source changes even if your loyalty program
        # only has 1 tier.
        # Corresponds to the JSON property `tierLabel`
        # @return [String]
        attr_accessor :tier_label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tier_label = args[:tier_label] if args.key?(:tier_label)
        end
      end
      
      # Table of per store minimum order values for the pickup fulfillment type.
      class MinimumOrderValueTable
        include Google::Apis::Core::Hashable
      
        # Required. A list of store code sets sharing the same minimum order value (MOV).
        # At least two sets are required and the last one must be empty, which
        # signifies 'MOV for all other stores'. Each store code can only appear once
        # across all the sets. All prices within a service must have the same currency.
        # Corresponds to the JSON property `storeCodeSetWithMovs`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::StoreCodeSetWithMov>]
        attr_accessor :store_code_set_with_movs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @store_code_set_with_movs = args[:store_code_set_with_movs] if args.key?(:store_code_set_with_movs)
        end
      end
      
      # Collection of information related to the omnichannel settings of a merchant.
      class OmnichannelSetting
        include Google::Apis::Core::Hashable
      
        # Collection of information related to the about page ([impressum](https://
        # support.google.com/merchants/answer/14675634?ref_topic=15145634&sjid=
        # 6892280366904591178-NC)).
        # Corresponds to the JSON property `about`
        # @return [Google::Apis::MerchantapiAccountsV1beta::About]
        attr_accessor :about
      
        # Collection of information related to InStock.
        # Corresponds to the JSON property `inStock`
        # @return [Google::Apis::MerchantapiAccountsV1beta::InStock]
        attr_accessor :in_stock
      
        # Collection of information related to [inventory verification](https://support.
        # google.com/merchants/answer/14684499?ref_topic=15145634&sjid=
        # 6892280366904591178-NC).
        # Corresponds to the JSON property `inventoryVerification`
        # @return [Google::Apis::MerchantapiAccountsV1beta::InventoryVerification]
        attr_accessor :inventory_verification
      
        # Collection of information related to the LFP link.
        # Corresponds to the JSON property `lfpLink`
        # @return [Google::Apis::MerchantapiAccountsV1beta::LfpLink]
        attr_accessor :lfp_link
      
        # Required. The Local Store Front type for this country.
        # Corresponds to the JSON property `lsfType`
        # @return [String]
        attr_accessor :lsf_type
      
        # Identifier. The resource name of the omnichannel setting. Format: `accounts/`
        # account`/omnichannelSettings/`omnichannel_setting``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Collection of information related to the on display to order ([ODO](https://
        # support.google.com/merchants/answer/14615056?ref_topic=15145747&sjid=
        # 6892280366904591178-NC)).
        # Corresponds to the JSON property `odo`
        # @return [Google::Apis::MerchantapiAccountsV1beta::OnDisplayToOrder]
        attr_accessor :odo
      
        # Collection of information related to Pickup.
        # Corresponds to the JSON property `pickup`
        # @return [Google::Apis::MerchantapiAccountsV1beta::Pickup]
        attr_accessor :pickup
      
        # Required. Immutable. Region code defined by [CLDR](https://cldr.unicode.org/).
        # Must be provided in the Create method, and is immutable.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @about = args[:about] if args.key?(:about)
          @in_stock = args[:in_stock] if args.key?(:in_stock)
          @inventory_verification = args[:inventory_verification] if args.key?(:inventory_verification)
          @lfp_link = args[:lfp_link] if args.key?(:lfp_link)
          @lsf_type = args[:lsf_type] if args.key?(:lsf_type)
          @name = args[:name] if args.key?(:name)
          @odo = args[:odo] if args.key?(:odo)
          @pickup = args[:pickup] if args.key?(:pickup)
          @region_code = args[:region_code] if args.key?(:region_code)
        end
      end
      
      # Collection of information related to the on display to order ([ODO](https://
      # support.google.com/merchants/answer/14615056?ref_topic=15145747&sjid=
      # 6892280366904591178-NC)).
      class OnDisplayToOrder
        include Google::Apis::Core::Hashable
      
        # Output only. The state of the URI.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Required. The on display to order (ODO) policy URI.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # [Online return policy](https://support.google.com/merchants/answer/10220642)
      # object. This is currently used to represent return policies for ads and free
      # listings programs.
      class OnlineReturnPolicy
        include Google::Apis::Core::Hashable
      
        # Optional. This field specifies if business only accepts defective products for
        # returns.
        # Corresponds to the JSON property `acceptDefectiveOnly`
        # @return [Boolean]
        attr_accessor :accept_defective_only
        alias_method :accept_defective_only?, :accept_defective_only
      
        # Optional. This field specifies if business allows customers to exchange
        # products.
        # Corresponds to the JSON property `acceptExchange`
        # @return [Boolean]
        attr_accessor :accept_exchange
        alias_method :accept_exchange?, :accept_exchange
      
        # Required. Immutable. The countries of sale where the return policy applies.
        # The values must be a valid 2 letter ISO 3166 code.
        # Corresponds to the JSON property `countries`
        # @return [Array<String>]
        attr_accessor :countries
      
        # Optional. The item conditions accepted for returns must not be empty unless
        # the type of return policy is 'noReturns'.
        # Corresponds to the JSON property `itemConditions`
        # @return [Array<String>]
        attr_accessor :item_conditions
      
        # Optional. Immutable. This field represents the unique user-defined label of
        # the return policy for the given country. It is important to note that the same
        # label cannot be used in different return policies for the same country. If not
        # given, policies will be automatically treated as the 'default' for the country.
        # When using label, you are creating an exception policy in that country to
        # assign a custom return policy to certain product groups, follow the
        # instructions provided in the [Return policy label] (https://support.google.com/
        # merchants/answer/9445425). The label can contain up to 50 characters.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # Identifier. The name of the `OnlineReturnPolicy` resource. Format: `accounts/`
        # account`/onlineReturnPolicies/`return_policy``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The available policies.
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::MerchantapiAccountsV1beta::Policy]
        attr_accessor :policy
      
        # Optional. The field specifies the number of days it takes for business to
        # process refunds.
        # Corresponds to the JSON property `processRefundDays`
        # @return [Fixnum]
        attr_accessor :process_refund_days
      
        # The restocking fee. This can be a flat fee or a micro percent.
        # Corresponds to the JSON property `restockingFee`
        # @return [Google::Apis::MerchantapiAccountsV1beta::RestockingFee]
        attr_accessor :restocking_fee
      
        # Optional. The field specifies the return label source.
        # Corresponds to the JSON property `returnLabelSource`
        # @return [String]
        attr_accessor :return_label_source
      
        # Optional. The return methods of how customers can return an item. This value
        # is required to not be empty unless the type of return policy is noReturns.
        # Corresponds to the JSON property `returnMethods`
        # @return [Array<String>]
        attr_accessor :return_methods
      
        # Output only. Return policy ID generated by Google.
        # Corresponds to the JSON property `returnPolicyId`
        # @return [String]
        attr_accessor :return_policy_id
      
        # Required. The return policy uri. This can used by Google to do a sanity check
        # for the policy. It must be a valid URL.
        # Corresponds to the JSON property `returnPolicyUri`
        # @return [String]
        attr_accessor :return_policy_uri
      
        # The return shipping fee. This can either be a fixed fee or a boolean to
        # indicate that the customer pays the actual shipping cost.
        # Corresponds to the JSON property `returnShippingFee`
        # @return [Google::Apis::MerchantapiAccountsV1beta::ReturnShippingFee]
        attr_accessor :return_shipping_fee
      
        # Optional. Overrides to the general policy for orders placed during a specific
        # set of time intervals.
        # Corresponds to the JSON property `seasonalOverrides`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::SeasonalOverride>]
        attr_accessor :seasonal_overrides
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accept_defective_only = args[:accept_defective_only] if args.key?(:accept_defective_only)
          @accept_exchange = args[:accept_exchange] if args.key?(:accept_exchange)
          @countries = args[:countries] if args.key?(:countries)
          @item_conditions = args[:item_conditions] if args.key?(:item_conditions)
          @label = args[:label] if args.key?(:label)
          @name = args[:name] if args.key?(:name)
          @policy = args[:policy] if args.key?(:policy)
          @process_refund_days = args[:process_refund_days] if args.key?(:process_refund_days)
          @restocking_fee = args[:restocking_fee] if args.key?(:restocking_fee)
          @return_label_source = args[:return_label_source] if args.key?(:return_label_source)
          @return_methods = args[:return_methods] if args.key?(:return_methods)
          @return_policy_id = args[:return_policy_id] if args.key?(:return_policy_id)
          @return_policy_uri = args[:return_policy_uri] if args.key?(:return_policy_uri)
          @return_shipping_fee = args[:return_shipping_fee] if args.key?(:return_shipping_fee)
          @seasonal_overrides = args[:seasonal_overrides] if args.key?(:seasonal_overrides)
        end
      end
      
      # An object representing a phone number, suitable as an API wire format. This
      # representation: - should not be used for locale-specific formatting of a phone
      # number, such as "+1 (650) 253-0000 ext. 123" - is not designed for efficient
      # storage - may not be suitable for dialing - specialized libraries (see
      # references) should be used to parse the number for that purpose To do
      # something meaningful with this number, such as format it for various use-cases,
      # convert it to an `i18n.phonenumbers.PhoneNumber` object first. For instance,
      # in Java this would be: com.google.type.PhoneNumber wireProto = com.google.type.
      # PhoneNumber.newBuilder().build(); com.google.i18n.phonenumbers.Phonenumber.
      # PhoneNumber phoneNumber = PhoneNumberUtil.getInstance().parse(wireProto.
      # getE164Number(), "ZZ"); if (!wireProto.getExtension().isEmpty()) ` phoneNumber.
      # setExtension(wireProto.getExtension()); ` Reference(s): - https://github.com/
      # google/libphonenumber
      class PhoneNumber
        include Google::Apis::Core::Hashable
      
        # The phone number, represented as a leading plus sign ('+'), followed by a
        # phone number that uses a relaxed ITU E.164 format consisting of the country
        # calling code (1 to 3 digits) and the subscriber number, with no additional
        # spaces or formatting. For example: - correct: "+15552220123" - incorrect: "+1 (
        # 555) 222-01234 x123" The ITU E.164 format limits the latter to 12 digits, but
        # in practice not all countries respect that, so we relax that restriction here.
        # National-only numbers are not allowed. References: - https://www.itu.int/rec/T-
        # REC-E.164-201011-I - https://en.wikipedia.org/wiki/E.164. - https://en.
        # wikipedia.org/wiki/List_of_country_calling_codes
        # Corresponds to the JSON property `e164Number`
        # @return [String]
        attr_accessor :e164_number
      
        # The phone number's extension. The extension is not standardized in ITU
        # recommendations, except for being defined as a series of numbers with a
        # maximum length of 40 digits. Other than digits, some other dialing characters
        # such as ',' (indicating a wait) or '#' may be stored here. Note that no
        # regions currently use extensions with short codes, so this field is normally
        # only set in conjunction with an E.164 number. It is held separately from the E.
        # 164 number to allow for short code extensions in the future.
        # Corresponds to the JSON property `extension`
        # @return [String]
        attr_accessor :extension
      
        # An object representing a short code, which is a phone number that is typically
        # much shorter than regular phone numbers and can be used to address messages in
        # MMS and SMS systems, as well as for abbreviated dialing (For example "Text 611
        # to see how many minutes you have remaining on your plan."). Short codes are
        # restricted to a region and are not internationally dialable, which means the
        # same short code can exist in different regions, with different usage and
        # pricing, even if those regions share the same country calling code (For
        # example: US and CA).
        # Corresponds to the JSON property `shortCode`
        # @return [Google::Apis::MerchantapiAccountsV1beta::ShortCode]
        attr_accessor :short_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @e164_number = args[:e164_number] if args.key?(:e164_number)
          @extension = args[:extension] if args.key?(:extension)
          @short_code = args[:short_code] if args.key?(:short_code)
        end
      end
      
      # Collection of information related to Pickup.
      class Pickup
        include Google::Apis::Core::Hashable
      
        # Output only. The state of the pickup serving.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Required. Pickup product page URI. It is only used for the review of pickup
        # serving. This URI domain should match with the business's homepage.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # The available policies.
      class Policy
        include Google::Apis::Core::Hashable
      
        # The number of days items can be returned after delivery, where one day is
        # defined as 24 hours after the delivery timestamp. Required for `
        # NUMBER_OF_DAYS_AFTER_DELIVERY` returns.
        # Corresponds to the JSON property `days`
        # @return [Fixnum]
        attr_accessor :days
      
        # Policy type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @days = args[:days] if args.key?(:days)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Represents a postal address, such as for postal delivery or payments addresses.
      # With a postal address, a postal service can deliver items to a premise, P.O.
      # box, or similar. A postal address is not intended to model geographical
      # locations like roads, towns, or mountains. In typical usage, an address would
      # be created by user input or from importing existing data, depending on the
      # type of process. Advice on address input or editing: - Use an
      # internationalization-ready address widget such as https://github.com/google/
      # libaddressinput. - Users should not be presented with UI elements for input or
      # editing of fields outside countries where that field is used. For more
      # guidance on how to use this schema, see: https://support.google.com/business/
      # answer/6397478.
      class PostalAddress
        include Google::Apis::Core::Hashable
      
        # Unstructured address lines describing the lower levels of an address. Because
        # values in `address_lines` do not have type information and may sometimes
        # contain multiple values in a single field (for example, "Austin, TX"), it is
        # important that the line order is clear. The order of address lines should be "
        # envelope order" for the country or region of the address. In places where this
        # can vary (for example, Japan), `address_language` is used to make it explicit (
        # for example, "ja" for large-to-small ordering and "ja-Latn" or "en" for small-
        # to-large). In this way, the most specific line of an address can be selected
        # based on the language. The minimum permitted structural representation of an
        # address consists of a `region_code` with all remaining information placed in
        # the `address_lines`. It would be possible to format such an address very
        # approximately without geocoding, but no semantic reasoning could be made about
        # any of the address components until it was at least partially resolved.
        # Creating an address only containing a `region_code` and `address_lines` and
        # then geocoding is the recommended way to handle completely unstructured
        # addresses (as opposed to guessing which parts of the address should be
        # localities or administrative areas).
        # Corresponds to the JSON property `addressLines`
        # @return [Array<String>]
        attr_accessor :address_lines
      
        # Optional. Highest administrative subdivision which is used for postal
        # addresses of a country or region. For example, this can be a state, a province,
        # an oblast, or a prefecture. For Spain, this is the province and not the
        # autonomous community (for example, "Barcelona" and not "Catalonia"). Many
        # countries don't use an administrative area in postal addresses. For example,
        # in Switzerland, this should be left unpopulated.
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
      
        # Optional. Generally refers to the city or town portion of the address.
        # Examples: US city, IT comune, UK post town. In regions of the world where
        # localities are not well defined or do not fit into this structure well, leave `
        # locality` empty and use `address_lines`.
        # Corresponds to the JSON property `locality`
        # @return [String]
        attr_accessor :locality
      
        # Optional. The name of the organization at the address.
        # Corresponds to the JSON property `organization`
        # @return [String]
        attr_accessor :organization
      
        # Optional. Postal code of the address. Not all countries use or require postal
        # codes to be present, but where they are used, they may trigger additional
        # validation with other parts of the address (for example, state or zip code
        # validation in the United States).
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
        # optionally followed by a number (for example, "CEDEX 7"), or just a number
        # alone, representing the "sector code" (Jamaica), "delivery area indicator" (
        # Malawi) or "post office indicator" (Côte d'Ivoire).
        # Corresponds to the JSON property `sortingCode`
        # @return [String]
        attr_accessor :sorting_code
      
        # Optional. Sublocality of the address. For example, this can be a neighborhood,
        # borough, or district.
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
      
      # A list of postal codes that defines the region area. Note: All regions defined
      # using postal codes are accessible through the account's `ShippingSettings.
      # postalCodeGroups` resource.
      class PostalCodeArea
        include Google::Apis::Core::Hashable
      
        # Required. A range of postal codes.
        # Corresponds to the JSON property `postalCodes`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::PostalCodeRange>]
        attr_accessor :postal_codes
      
        # Required. [CLDR territory code](http://www.unicode.org/repos/cldr/tags/latest/
        # common/main/en.xml) or the country the postal code group applies to.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @postal_codes = args[:postal_codes] if args.key?(:postal_codes)
          @region_code = args[:region_code] if args.key?(:region_code)
        end
      end
      
      # A range of postal codes that defines the region area.
      class PostalCodeRange
        include Google::Apis::Core::Hashable
      
        # Required. A postal code or a pattern of the form prefix* denoting the
        # inclusive lower bound of the range defining the area. Examples values: `94108`,
        # `9410*`, `9*`.
        # Corresponds to the JSON property `begin`
        # @return [String]
        attr_accessor :begin
      
        # Optional. A postal code or a pattern of the form `prefix*` denoting the
        # inclusive upper bound of the range defining the area. It must have the same
        # length as postalCodeRangeBegin: if postalCodeRangeBegin is a postal code then
        # postalCodeRangeEnd must be a postal code too; if postalCodeRangeBegin is a
        # pattern then postalCodeRangeEnd must be a pattern with the same prefix length.
        # Optional: if not set, then the area is defined as being all the postal codes
        # matching postalCodeRangeBegin.
        # Corresponds to the JSON property `end`
        # @return [String]
        attr_accessor :end
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @begin = args[:begin] if args.key?(:begin)
          @end = args[:end] if args.key?(:end)
        end
      end
      
      # The price represented as a number and currency.
      class Price
        include Google::Apis::Core::Hashable
      
        # The price represented as a number in micros (1 million micros is an equivalent
        # to one's currency standard unit, for example, 1 USD = 1000000 micros).
        # Corresponds to the JSON property `amountMicros`
        # @return [Fixnum]
        attr_accessor :amount_micros
      
        # The currency of the price using three-letter acronyms according to [ISO 4217](
        # http://en.wikipedia.org/wiki/ISO_4217).
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
      
      # The change that happened to the product including old value, new value,
      # country code as the region code and reporting context.
      class ProductChange
        include Google::Apis::Core::Hashable
      
        # The new value of the changed resource or attribute. If empty, it means that
        # the product was deleted. Will have one of these values : (`approved`, `pending`
        # , `disapproved`, ``)
        # Corresponds to the JSON property `newValue`
        # @return [String]
        attr_accessor :new_value
      
        # The old value of the changed resource or attribute. If empty, it means that
        # the product was created. Will have one of these values : (`approved`, `pending`
        # , `disapproved`, ``)
        # Corresponds to the JSON property `oldValue`
        # @return [String]
        attr_accessor :old_value
      
        # Countries that have the change (if applicable). Represented in the ISO 3166
        # format.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # Reporting contexts that have the change (if applicable). Currently this field
        # supports only (`SHOPPING_ADS`, `LOCAL_INVENTORY_ADS`, `YOUTUBE_SHOPPING`, `
        # YOUTUBE_CHECKOUT`, `YOUTUBE_AFFILIATE`) from the enum value [
        # ReportingContextEnum](/merchant/api/reference/rest/Shared.Types/
        # ReportingContextEnum)
        # Corresponds to the JSON property `reportingContext`
        # @return [String]
        attr_accessor :reporting_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_value = args[:new_value] if args.key?(:new_value)
          @old_value = args[:old_value] if args.key?(:old_value)
          @region_code = args[:region_code] if args.key?(:region_code)
          @reporting_context = args[:reporting_context] if args.key?(:reporting_context)
        end
      end
      
      # The message that the merchant will receive to notify about product status
      # change event
      class ProductStatusChangeMessage
        include Google::Apis::Core::Hashable
      
        # The target account that owns the entity that changed. Format : `accounts/`
        # merchant_id``
        # Corresponds to the JSON property `account`
        # @return [String]
        attr_accessor :account
      
        # The attribute in the resource that changed, in this case it will be always `
        # Status`.
        # Corresponds to the JSON property `attribute`
        # @return [String]
        attr_accessor :attribute
      
        # A message to describe the change that happened to the product
        # Corresponds to the JSON property `changes`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::ProductChange>]
        attr_accessor :changes
      
        # The time at which the event was generated. If you want to order the
        # notification messages you receive you should rely on this field not on the
        # order of receiving the notifications.
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # Optional. The product expiration time. This field will not be set if the
        # notification is sent for a product deletion event.
        # Corresponds to the JSON property `expirationTime`
        # @return [String]
        attr_accessor :expiration_time
      
        # The account that manages the merchant's account. can be the same as merchant
        # id if it is standalone account. Format : `accounts/`service_provider_id``
        # Corresponds to the JSON property `managingAccount`
        # @return [String]
        attr_accessor :managing_account
      
        # The product name. Format: `accounts/`account`/products/`product``
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # The product id.
        # Corresponds to the JSON property `resourceId`
        # @return [String]
        attr_accessor :resource_id
      
        # The resource that changed, in this case it will always be `Product`.
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] if args.key?(:account)
          @attribute = args[:attribute] if args.key?(:attribute)
          @changes = args[:changes] if args.key?(:changes)
          @event_time = args[:event_time] if args.key?(:event_time)
          @expiration_time = args[:expiration_time] if args.key?(:expiration_time)
          @managing_account = args[:managing_account] if args.key?(:managing_account)
          @resource = args[:resource] if args.key?(:resource)
          @resource_id = args[:resource_id] if args.key?(:resource_id)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
        end
      end
      
      # `ProductsManagement` payload.
      class ProductsManagement
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Defines participation in a given program for the specified account. Programs
      # provide a mechanism for adding functionality to a Merchant Center accounts. A
      # typical example of this is the [Free product listings](https://support.google.
      # com/merchants/answer/13889434) program, which enables products from a business'
      # s store to be shown across Google for free. The following list is the
      # available set of program resource IDs accessible through the API: * `checkout`
      # * `free-listings` * `shopping-ads` * `youtube-shopping-checkout`
      class Program
        include Google::Apis::Core::Hashable
      
        # Output only. The regions in which the account is actively participating in the
        # program. Active regions are defined as those where all program requirements
        # affecting the regions have been met. Region codes are defined by [CLDR](https:/
        # /cldr.unicode.org/). This is either a country where the program applies
        # specifically to that country or `001` when the program applies globally.
        # Corresponds to the JSON property `activeRegionCodes`
        # @return [Array<String>]
        attr_accessor :active_region_codes
      
        # Output only. The URL of a Merchant Center help page describing the program.
        # Corresponds to the JSON property `documentationUri`
        # @return [String]
        attr_accessor :documentation_uri
      
        # Identifier. The resource name of the program. Format: `accounts/`account`/
        # programs/`program``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The participation state of the account in the program.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The requirements that the account has not yet satisfied that are
        # affecting participation in the program.
        # Corresponds to the JSON property `unmetRequirements`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::Requirement>]
        attr_accessor :unmet_requirements
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_region_codes = args[:active_region_codes] if args.key?(:active_region_codes)
          @documentation_uri = args[:documentation_uri] if args.key?(:documentation_uri)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @unmet_requirements = args[:unmet_requirements] if args.key?(:unmet_requirements)
        end
      end
      
      # Request to propose an account service.
      class ProposeAccountServiceRequest
        include Google::Apis::Core::Hashable
      
        # The `AccountService` message represents a specific service that a provider
        # account offers to a Merchant Center account. `AccountService` defines the
        # permissions and capabilities granted to the provider, allowing for operations
        # such as product management or campaign management. The lifecycle of an `
        # AccountService` involves a proposal phase, where one party suggests the
        # service, and an approval phase, where the other party accepts or rejects it.
        # This handshake mechanism ensures mutual consent before any access is granted.
        # This mechanism safeguards both parties by ensuring that access rights are
        # granted appropriately and that both the business and provider are aware of the
        # services enabled. In scenarios where a user is an admin of both accounts, the
        # approval can happen automatically. The mutability of a service is also managed
        # through `AccountService`. Some services might be immutable, for example, if
        # they were established through other systems or APIs, and you cannot alter them
        # through this API.
        # Corresponds to the JSON property `accountService`
        # @return [Google::Apis::MerchantapiAccountsV1beta::AccountService]
        attr_accessor :account_service
      
        # Required. The provider of the service. Either the reference to an account such
        # as `providers/123` or a well-known service provider (one of `providers/
        # GOOGLE_ADS` or `providers/GOOGLE_BUSINESS_PROFILE`).
        # Corresponds to the JSON property `provider`
        # @return [String]
        attr_accessor :provider
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_service = args[:account_service] if args.key?(:account_service)
          @provider = args[:provider] if args.key?(:provider)
        end
      end
      
      # A radius area that defines the region area.
      class RadiusArea
        include Google::Apis::Core::Hashable
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this object must conform to the WGS84 standard. Values
        # must be within normalized ranges.
        # Corresponds to the JSON property `latLng`
        # @return [Google::Apis::MerchantapiAccountsV1beta::LatLng]
        attr_accessor :lat_lng
      
        # Required. The radius distance of the area.
        # Corresponds to the JSON property `radius`
        # @return [Float]
        attr_accessor :radius
      
        # Optional. The unit of the radius.
        # Corresponds to the JSON property `radiusUnits`
        # @return [String]
        attr_accessor :radius_units
      
        # Required. [CLDR territory code](http://www.unicode.org/repos/cldr/tags/latest/
        # common/main/en.xml) or the country the radius area applies to.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lat_lng = args[:lat_lng] if args.key?(:lat_lng)
          @radius = args[:radius] if args.key?(:radius)
          @radius_units = args[:radius_units] if args.key?(:radius_units)
          @region_code = args[:region_code] if args.key?(:region_code)
        end
      end
      
      # Shipping rate group definitions. Only the last one is allowed to have an empty
      # `applicable_shipping_labels`, which means "everything else". The other `
      # applicable_shipping_labels` must not overlap.
      class RateGroup
        include Google::Apis::Core::Hashable
      
        # Required. A list of [shipping labels](https://support.google.com/merchants/
        # answer/6324504) defining the products to which this rate group applies to.
        # This is a disjunction: only one of the labels has to match for the rate group
        # to apply. May only be empty for the last rate group of a service.
        # Corresponds to the JSON property `applicableShippingLabels`
        # @return [Array<String>]
        attr_accessor :applicable_shipping_labels
      
        # Optional. A list of carrier rates that can be referred to by `main_table` or `
        # single_value`.
        # Corresponds to the JSON property `carrierRates`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::CarrierRate>]
        attr_accessor :carrier_rates
      
        # A table defining the rate group, when `single_value` is not expressive enough.
        # Corresponds to the JSON property `mainTable`
        # @return [Google::Apis::MerchantapiAccountsV1beta::Table]
        attr_accessor :main_table
      
        # Optional. Name of the rate group. If set has to be unique within shipping
        # service.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The single value of a rate group or the value of a rate group table's cell.
        # Exactly one of `no_shipping`, `flat_rate`, `price_percentage`, `
        # carrier_rateName`, `subtable_name` must be set.
        # Corresponds to the JSON property `singleValue`
        # @return [Google::Apis::MerchantapiAccountsV1beta::Value]
        attr_accessor :single_value
      
        # Optional. A list of subtables referred to by `main_table`. Can only be set if `
        # main_table` is set.
        # Corresponds to the JSON property `subtables`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::Table>]
        attr_accessor :subtables
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @applicable_shipping_labels = args[:applicable_shipping_labels] if args.key?(:applicable_shipping_labels)
          @carrier_rates = args[:carrier_rates] if args.key?(:carrier_rates)
          @main_table = args[:main_table] if args.key?(:main_table)
          @name = args[:name] if args.key?(:name)
          @single_value = args[:single_value] if args.key?(:single_value)
          @subtables = args[:subtables] if args.key?(:subtables)
        end
      end
      
      # Represents a geographic region that you can use as a target with both the `
      # RegionalInventory` and `ShippingSettings` services. You can define regions as
      # collections of either postal codes or, in some countries, using predefined
      # geotargets. For more information, see [Set up regions ](https://support.google.
      # com/merchants/answer/7410946#zippy=%2Ccreate-a-new-region) for more
      # information.
      class Region
        include Google::Apis::Core::Hashable
      
        # Optional. The display name of the region.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # A list of geotargets that defines the region area.
        # Corresponds to the JSON property `geotargetArea`
        # @return [Google::Apis::MerchantapiAccountsV1beta::GeoTargetArea]
        attr_accessor :geotarget_area
      
        # Identifier. The resource name of the region. Format: `accounts/`account`/
        # regions/`region``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A list of postal codes that defines the region area. Note: All regions defined
        # using postal codes are accessible through the account's `ShippingSettings.
        # postalCodeGroups` resource.
        # Corresponds to the JSON property `postalCodeArea`
        # @return [Google::Apis::MerchantapiAccountsV1beta::PostalCodeArea]
        attr_accessor :postal_code_area
      
        # A radius area that defines the region area.
        # Corresponds to the JSON property `radiusArea`
        # @return [Google::Apis::MerchantapiAccountsV1beta::RadiusArea]
        attr_accessor :radius_area
      
        # Output only. Indicates if the region is eligible for use in the Regional
        # Inventory configuration.
        # Corresponds to the JSON property `regionalInventoryEligible`
        # @return [Boolean]
        attr_accessor :regional_inventory_eligible
        alias_method :regional_inventory_eligible?, :regional_inventory_eligible
      
        # Output only. Indicates if the region is eligible for use in the Shipping
        # Services configuration.
        # Corresponds to the JSON property `shippingEligible`
        # @return [Boolean]
        attr_accessor :shipping_eligible
        alias_method :shipping_eligible?, :shipping_eligible
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @geotarget_area = args[:geotarget_area] if args.key?(:geotarget_area)
          @name = args[:name] if args.key?(:name)
          @postal_code_area = args[:postal_code_area] if args.key?(:postal_code_area)
          @radius_area = args[:radius_area] if args.key?(:radius_area)
          @regional_inventory_eligible = args[:regional_inventory_eligible] if args.key?(:regional_inventory_eligible)
          @shipping_eligible = args[:shipping_eligible] if args.key?(:shipping_eligible)
        end
      end
      
      # Request message for the RegisterGCP method.
      class RegisterGcpRequest
        include Google::Apis::Core::Hashable
      
        # Immutable. If the developer email provided is associated with a user in the
        # merchant account provided, the user will be updated to have "API developer"
        # access type and the email preference corresponding to that user will be
        # updated to have the new "API notifications" preference. If the developer email
        # provided is not associated with any user we will just add it as a contact. The
        # email preference corresponding to that contact will have the new "API
        # notifications" preference. Make sure the email used is associated with a
        # Google Account (Google Workspace account or Gmail account) and is not a
        # service account as service accounts can't receive emails.
        # Corresponds to the JSON property `developerEmail`
        # @return [String]
        attr_accessor :developer_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @developer_email = args[:developer_email] if args.key?(:developer_email)
        end
      end
      
      # Request to reject an account service.
      class RejectAccountServiceRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for the RequestInventoryVerification method.
      class RequestInventoryVerificationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for the RequestInventoryVerification method.
      class RequestInventoryVerificationResponse
        include Google::Apis::Core::Hashable
      
        # Collection of information related to the omnichannel settings of a merchant.
        # Corresponds to the JSON property `omnichannelSetting`
        # @return [Google::Apis::MerchantapiAccountsV1beta::OmnichannelSetting]
        attr_accessor :omnichannel_setting
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @omnichannel_setting = args[:omnichannel_setting] if args.key?(:omnichannel_setting)
        end
      end
      
      # Describes the terms of service which are required to be accepted.
      class Required
        include Google::Apis::Core::Hashable
      
        # Required. The `TermsOfService` that need to be accepted.
        # Corresponds to the JSON property `termsOfService`
        # @return [String]
        attr_accessor :terms_of_service
      
        # Required. Full URL to the terms of service file. This field is the same as `
        # TermsOfService.file_uri`, it is added here for convenience only.
        # Corresponds to the JSON property `tosFileUri`
        # @return [String]
        attr_accessor :tos_file_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @terms_of_service = args[:terms_of_service] if args.key?(:terms_of_service)
          @tos_file_uri = args[:tos_file_uri] if args.key?(:tos_file_uri)
        end
      end
      
      # Defines a requirement specified for participation in the program.
      class Requirement
        include Google::Apis::Core::Hashable
      
        # Output only. The regions that are currently affected by this requirement not
        # being met. Region codes are defined by [CLDR](https://cldr.unicode.org/). This
        # is either a country where the program applies specifically to that country or `
        # 001` when the program applies globally.
        # Corresponds to the JSON property `affectedRegionCodes`
        # @return [Array<String>]
        attr_accessor :affected_region_codes
      
        # Output only. The URL of a help page describing the requirement.
        # Corresponds to the JSON property `documentationUri`
        # @return [String]
        attr_accessor :documentation_uri
      
        # Output only. Name of the requirement.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @affected_region_codes = args[:affected_region_codes] if args.key?(:affected_region_codes)
          @documentation_uri = args[:documentation_uri] if args.key?(:documentation_uri)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # The restocking fee. This can be a flat fee or a micro percent.
      class RestockingFee
        include Google::Apis::Core::Hashable
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `fixedFee`
        # @return [Google::Apis::MerchantapiAccountsV1beta::Price]
        attr_accessor :fixed_fee
      
        # Percent of total price in micros. 15,000,000 means 15% of the total price
        # would be charged.
        # Corresponds to the JSON property `microPercent`
        # @return [Fixnum]
        attr_accessor :micro_percent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fixed_fee = args[:fixed_fee] if args.key?(:fixed_fee)
          @micro_percent = args[:micro_percent] if args.key?(:micro_percent)
        end
      end
      
      # The return shipping fee. This can either be a fixed fee or a boolean to
      # indicate that the customer pays the actual shipping cost.
      class ReturnShippingFee
        include Google::Apis::Core::Hashable
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `fixedFee`
        # @return [Google::Apis::MerchantapiAccountsV1beta::Price]
        attr_accessor :fixed_fee
      
        # Required. Type of return shipping fee.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fixed_fee = args[:fixed_fee] if args.key?(:fixed_fee)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Include a list of cells.
      class Row
        include Google::Apis::Core::Hashable
      
        # Required. The list of cells that constitute the row. Must have the same length
        # as `columnHeaders` for two-dimensional tables, a length of 1 for one-
        # dimensional tables.
        # Corresponds to the JSON property `cells`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::Value>]
        attr_accessor :cells
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cells = args[:cells] if args.key?(:cells)
        end
      end
      
      # 
      class SeasonalOverride
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `endDate`
        # @return [Google::Apis::MerchantapiAccountsV1beta::Date]
        attr_accessor :end_date
      
        # Required. Display name of this seasonal override in Merchant Center.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # Number of days (from the delivery date) that the product can be returned.
        # Corresponds to the JSON property `returnDays`
        # @return [Fixnum]
        attr_accessor :return_days
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `returnUntilDate`
        # @return [Google::Apis::MerchantapiAccountsV1beta::Date]
        attr_accessor :return_until_date
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `startDate`
        # @return [Google::Apis::MerchantapiAccountsV1beta::Date]
        attr_accessor :start_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_date = args[:end_date] if args.key?(:end_date)
          @label = args[:label] if args.key?(:label)
          @return_days = args[:return_days] if args.key?(:return_days)
          @return_until_date = args[:return_until_date] if args.key?(:return_until_date)
          @start_date = args[:start_date] if args.key?(:start_date)
        end
      end
      
      # Shipping service.
      class Service
        include Google::Apis::Core::Hashable
      
        # Required. A boolean exposing the active status of the shipping service.
        # Corresponds to the JSON property `active`
        # @return [Boolean]
        attr_accessor :active
        alias_method :active?, :active
      
        # Required. The CLDR code of the currency to which this service applies. Must
        # match that of the prices in rate groups.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Required. The CLDR territory code of the countries to which the service
        # applies.
        # Corresponds to the JSON property `deliveryCountries`
        # @return [Array<String>]
        attr_accessor :delivery_countries
      
        # Time spent in various aspects from order to the delivery of the product.
        # Corresponds to the JSON property `deliveryTime`
        # @return [Google::Apis::MerchantapiAccountsV1beta::DeliveryTime]
        attr_accessor :delivery_time
      
        # Optional. Loyalty programs that this shipping service is limited to.
        # Corresponds to the JSON property `loyaltyPrograms`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::LoyaltyProgram>]
        attr_accessor :loyalty_programs
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `minimumOrderValue`
        # @return [Google::Apis::MerchantapiAccountsV1beta::Price]
        attr_accessor :minimum_order_value
      
        # Table of per store minimum order values for the pickup fulfillment type.
        # Corresponds to the JSON property `minimumOrderValueTable`
        # @return [Google::Apis::MerchantapiAccountsV1beta::MinimumOrderValueTable]
        attr_accessor :minimum_order_value_table
      
        # Optional. Shipping rate group definitions. Only the last one is allowed to
        # have an empty `applicable_shipping_labels`, which means "everything else". The
        # other `applicable_shipping_labels` must not overlap.
        # Corresponds to the JSON property `rateGroups`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::RateGroup>]
        attr_accessor :rate_groups
      
        # Required. Free-form name of the service. Must be unique within target account.
        # Corresponds to the JSON property `serviceName`
        # @return [String]
        attr_accessor :service_name
      
        # Optional. Type of locations this service ships orders to.
        # Corresponds to the JSON property `shipmentType`
        # @return [String]
        attr_accessor :shipment_type
      
        # A list of stores your products are delivered from. This is only valid for the
        # local delivery shipment type.
        # Corresponds to the JSON property `storeConfig`
        # @return [Google::Apis::MerchantapiAccountsV1beta::StoreConfig]
        attr_accessor :store_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active = args[:active] if args.key?(:active)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @delivery_countries = args[:delivery_countries] if args.key?(:delivery_countries)
          @delivery_time = args[:delivery_time] if args.key?(:delivery_time)
          @loyalty_programs = args[:loyalty_programs] if args.key?(:loyalty_programs)
          @minimum_order_value = args[:minimum_order_value] if args.key?(:minimum_order_value)
          @minimum_order_value_table = args[:minimum_order_value_table] if args.key?(:minimum_order_value_table)
          @rate_groups = args[:rate_groups] if args.key?(:rate_groups)
          @service_name = args[:service_name] if args.key?(:service_name)
          @shipment_type = args[:shipment_type] if args.key?(:shipment_type)
          @store_config = args[:store_config] if args.key?(:store_config)
        end
      end
      
      # Set an alias for a relationship between a provider and the account to be
      # created.
      class SetAliasForRelationship
        include Google::Apis::Core::Hashable
      
        # Required. The unique ID of this account in the provider's system. The value
        # must be unique across all accounts on the platform for this provider.
        # Corresponds to the JSON property `accountIdAlias`
        # @return [String]
        attr_accessor :account_id_alias
      
        # Required. The provider of the service. This is a reference to an account such
        # as `providers/123` or `accounts/123`. The same provider must be specified in
        # at least one of the `service` fields.
        # Corresponds to the JSON property `provider`
        # @return [String]
        attr_accessor :provider
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id_alias = args[:account_id_alias] if args.key?(:account_id_alias)
          @provider = args[:provider] if args.key?(:provider)
        end
      end
      
      # The Merchant Center account's [shipping settings](https://support.google.com/
      # merchants/answer/6069284). The `ShippingSettings` resource lets you retrieve
      # and update the shipping settings of your advanced account and all its
      # associated sub-accounts.
      class ShippingSettings
        include Google::Apis::Core::Hashable
      
        # Required. This field helps avoid async issues. It ensures that the shipping
        # setting data doesn't change between the `get` call and the `insert` call. The
        # user should follow these steps: 1. Set the etag field as an empty string for
        # the initial shipping setting creation. 2. After the initial creation, call the
        # `get` method to obtain an etag and the current shipping setting data before
        # calling `insert`. 3. Modify the shipping setting information. 4. Call the `
        # insert` method with the shipping setting information and the etag obtained in
        # step 2. 5. If the shipping setting data changes between step 2 and step 4, the
        # insert request will fail because the etag changes every time the shipping
        # setting data changes. In this case, the user should repeat steps 2-4 with the
        # new etag.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Identifier. The resource name of the shipping settings. Format: `accounts/`
        # account`/shippingSettings`. For example, `accounts/123456/shippingSettings`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The target account's list of services.
        # Corresponds to the JSON property `services`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::Service>]
        attr_accessor :services
      
        # Optional. A list of warehouses which can be referred to in `services`.
        # Corresponds to the JSON property `warehouses`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::Warehouse>]
        attr_accessor :warehouses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @name = args[:name] if args.key?(:name)
          @services = args[:services] if args.key?(:services)
          @warehouses = args[:warehouses] if args.key?(:warehouses)
        end
      end
      
      # An object representing a short code, which is a phone number that is typically
      # much shorter than regular phone numbers and can be used to address messages in
      # MMS and SMS systems, as well as for abbreviated dialing (For example "Text 611
      # to see how many minutes you have remaining on your plan."). Short codes are
      # restricted to a region and are not internationally dialable, which means the
      # same short code can exist in different regions, with different usage and
      # pricing, even if those regions share the same country calling code (For
      # example: US and CA).
      class ShortCode
        include Google::Apis::Core::Hashable
      
        # Required. The short code digits, without a leading plus ('+') or country
        # calling code. For example "611".
        # Corresponds to the JSON property `number`
        # @return [String]
        attr_accessor :number
      
        # Required. The BCP-47 region code of the location where calls to this short
        # code can be made, such as "US" and "BB". Reference(s): - http://www.unicode.
        # org/reports/tr35/#unicode_region_subtag
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @number = args[:number] if args.key?(:number)
          @region_code = args[:region_code] if args.key?(:region_code)
        end
      end
      
      # A list of store code sets sharing the same minimum order value. At least two
      # sets are required and the last one must be empty, which signifies 'MOV for all
      # other stores'. Each store code can only appear once across all the sets. All
      # prices within a service must have the same currency.
      class StoreCodeSetWithMov
        include Google::Apis::Core::Hashable
      
        # Optional. A list of unique store codes or empty for the catch all.
        # Corresponds to the JSON property `storeCodes`
        # @return [Array<String>]
        attr_accessor :store_codes
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::MerchantapiAccountsV1beta::Price]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @store_codes = args[:store_codes] if args.key?(:store_codes)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A list of stores your products are delivered from. This is only valid for the
      # local delivery shipment type.
      class StoreConfig
        include Google::Apis::Core::Hashable
      
        # Configs related to local delivery ends for the day.
        # Corresponds to the JSON property `cutoffConfig`
        # @return [Google::Apis::MerchantapiAccountsV1beta::CutoffConfig]
        attr_accessor :cutoff_config
      
        # Maximum delivery radius. This is only required for the local delivery shipment
        # type.
        # Corresponds to the JSON property `serviceRadius`
        # @return [Google::Apis::MerchantapiAccountsV1beta::Distance]
        attr_accessor :service_radius
      
        # Optional. A list of store codes that provide local delivery. If empty, then `
        # all_stores` must be true.
        # Corresponds to the JSON property `storeCodes`
        # @return [Array<String>]
        attr_accessor :store_codes
      
        # Indicates whether all stores, or selected stores, listed by this business
        # provide local delivery.
        # Corresponds to the JSON property `storeServiceType`
        # @return [String]
        attr_accessor :store_service_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cutoff_config = args[:cutoff_config] if args.key?(:cutoff_config)
          @service_radius = args[:service_radius] if args.key?(:service_radius)
          @store_codes = args[:store_codes] if args.key?(:store_codes)
          @store_service_type = args[:store_service_type] if args.key?(:store_service_type)
        end
      end
      
      # A table defining the rate group, when `single_value` is not expressive enough.
      class Table
        include Google::Apis::Core::Hashable
      
        # A non-empty list of row or column headers for a table. Exactly one of `prices`,
        # `weights`, `num_items`, `postal_code_group_names`, or `location` must be set.
        # Corresponds to the JSON property `columnHeaders`
        # @return [Google::Apis::MerchantapiAccountsV1beta::Headers]
        attr_accessor :column_headers
      
        # Name of the table. Required for subtables, ignored for the main table.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A non-empty list of row or column headers for a table. Exactly one of `prices`,
        # `weights`, `num_items`, `postal_code_group_names`, or `location` must be set.
        # Corresponds to the JSON property `rowHeaders`
        # @return [Google::Apis::MerchantapiAccountsV1beta::Headers]
        attr_accessor :row_headers
      
        # Required. The list of rows that constitute the table. Must have the same
        # length as `row_headers`.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::Row>]
        attr_accessor :rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_headers = args[:column_headers] if args.key?(:column_headers)
          @name = args[:name] if args.key?(:name)
          @row_headers = args[:row_headers] if args.key?(:row_headers)
          @rows = args[:rows] if args.key?(:rows)
        end
      end
      
      # The `TermsOfService` message represents a specific version of the terms of
      # service that merchants must accept to access certain features or services. For
      # more information, see [Terms of Service](https://support.google.com/merchants/
      # answer/160173). This message is important for the onboarding process, ensuring
      # that merchants agree to the necessary legal agreements for using the service.
      # Merchants can retrieve the latest terms of service for a given `kind` and `
      # region` through `RetrieveLatestTermsOfService`, and accept them as required
      # through `AcceptTermsOfService`.
      class TermsOfService
        include Google::Apis::Core::Hashable
      
        # Whether this terms of service version is external. External terms of service
        # versions can only be agreed through external processes and not directly by the
        # merchant through UI or API.
        # Corresponds to the JSON property `external`
        # @return [Boolean]
        attr_accessor :external
        alias_method :external?, :external
      
        # URI for terms of service file that needs to be displayed to signing users.
        # Corresponds to the JSON property `fileUri`
        # @return [String]
        attr_accessor :file_uri
      
        # The Kind this terms of service version applies to.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Identifier. The resource name of the terms of service version. Format: `
        # termsOfService/`version``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Region code as defined by [CLDR](https://cldr.unicode.org/). This is either a
        # country where the ToS applies specifically to that country or `001` when the
        # same `TermsOfService` can be signed in any country. However note that when
        # signing a ToS that applies globally we still expect that a specific country is
        # provided (this should be merchant business country or program country of
        # participation).
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @external = args[:external] if args.key?(:external)
          @file_uri = args[:file_uri] if args.key?(:file_uri)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @region_code = args[:region_code] if args.key?(:region_code)
        end
      end
      
      # This resource represents the agreement state for a given account and terms of
      # service kind. The state is as follows: * If the business has accepted a terms
      # of service, `accepted` will be populated, otherwise it will be empty * If the
      # business must sign a terms of service, `required` will be populated, otherwise
      # it will be empty. Note that both `required` and `accepted` can be present. In
      # this case the `accepted` terms of services will have an expiration date set in
      # the `valid_until` field. The `required` terms of services need to be accepted
      # before `valid_until` in order for the account to continue having a valid
      # agreement. When accepting new terms of services we expect third-party
      # providers to display the text associated with the given terms of service
      # agreement (the url to the file containing the text is added in the Required
      # message below as `tos_file_uri`). The actual acceptance of the terms of
      # service is done by calling accept on the `TermsOfService` resource. `
      # valid_until` field.
      class TermsOfServiceAgreementState
        include Google::Apis::Core::Hashable
      
        # Describes the [accepted terms of service](https://developers.google.com/
        # merchant/api/guides/accounts/create-and-configure#
        # accept_the_merchant_center_terms_of_service).
        # Corresponds to the JSON property `accepted`
        # @return [Google::Apis::MerchantapiAccountsV1beta::Accepted]
        attr_accessor :accepted
      
        # Identifier. The resource name of the terms of service version. Format: `
        # accounts/`account`/termsOfServiceAgreementState/`identifier`` The identifier
        # format is: ``TermsOfServiceKind`-`country`` For example, an identifier could
        # be: `MERCHANT_CENTER-EU` or `MERCHANT_CENTER-US`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Region code as defined by https://cldr.unicode.org/. This is the
        # country the current state applies to.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # Describes the terms of service which are required to be accepted.
        # Corresponds to the JSON property `required`
        # @return [Google::Apis::MerchantapiAccountsV1beta::Required]
        attr_accessor :required
      
        # Required. Terms of Service kind associated with the particular version.
        # Corresponds to the JSON property `termsOfServiceKind`
        # @return [String]
        attr_accessor :terms_of_service_kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accepted = args[:accepted] if args.key?(:accepted)
          @name = args[:name] if args.key?(:name)
          @region_code = args[:region_code] if args.key?(:region_code)
          @required = args[:required] if args.key?(:required)
          @terms_of_service_kind = args[:terms_of_service_kind] if args.key?(:terms_of_service_kind)
        end
      end
      
      # Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/
      # time-zones).
      class TimeZone
        include Google::Apis::Core::Hashable
      
        # IANA Time Zone Database time zone. For example "America/New_York".
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. IANA Time Zone Database version number. For example "2019a".
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
      
      # Transit time table, number of business days spent in transit based on row and
      # column dimensions. Either `min_transit_days`, `max_transit_days` or `
      # transit_time_table` can be set, but not both.
      class TransitTable
        include Google::Apis::Core::Hashable
      
        # Required. A list of region names Region.name . The last value can be `"all
        # other locations"`. Example: `["zone 1", "zone 2", "all other locations"]`. The
        # referred postal code groups must match the delivery country of the service.
        # Corresponds to the JSON property `postalCodeGroupNames`
        # @return [Array<String>]
        attr_accessor :postal_code_group_names
      
        # Required. If there's only one dimension set of `postal_code_group_names` or `
        # transit_time_labels`, there are multiple rows each with one value for that
        # dimension. If there are two dimensions, each row corresponds to a `
        # postal_code_group_names`, and columns (values) to a `transit_time_labels`.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::TransitTimeRow>]
        attr_accessor :rows
      
        # Required. A list of transit time labels. The last value can be `"all other
        # labels"`. Example: `["food", "electronics", "all other labels"]`.
        # Corresponds to the JSON property `transitTimeLabels`
        # @return [Array<String>]
        attr_accessor :transit_time_labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @postal_code_group_names = args[:postal_code_group_names] if args.key?(:postal_code_group_names)
          @rows = args[:rows] if args.key?(:rows)
          @transit_time_labels = args[:transit_time_labels] if args.key?(:transit_time_labels)
        end
      end
      
      # If there's only one dimension set of `postal_code_group_names` or `
      # transit_time_labels`, there are multiple rows each with one value for that
      # dimension. If there are two dimensions, each row corresponds to a `
      # postal_code_group_names`, and columns (values) to a `transit_time_labels`.
      class TransitTimeRow
        include Google::Apis::Core::Hashable
      
        # Required. Transit time range (min-max) in business days.
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::TransitTimeValue>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Transit time range (min-max) in business days.
      class TransitTimeValue
        include Google::Apis::Core::Hashable
      
        # Must be greater than or equal to `min_transit_days`.
        # Corresponds to the JSON property `maxTransitDays`
        # @return [Fixnum]
        attr_accessor :max_transit_days
      
        # Minimum transit time range in business days. 0 means same day delivery, 1
        # means next day delivery.
        # Corresponds to the JSON property `minTransitDays`
        # @return [Fixnum]
        attr_accessor :min_transit_days
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_transit_days = args[:max_transit_days] if args.key?(:max_transit_days)
          @min_transit_days = args[:min_transit_days] if args.key?(:min_transit_days)
        end
      end
      
      # Request message for the `UnclaimHomepage` method.
      class UnclaimHomepageRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for the UnregisterGCP method.
      class UnregisterGcpRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # URL settings for cart or checkout URL.
      class UriSettings
        include Google::Apis::Core::Hashable
      
        # Cart URL template. When the placeholders are expanded will redirect the buyer
        # to the cart page on the merchant website with the selected item in cart. For
        # more details, check the [help center doc](https://support.google.com/merchants/
        # answer/13945960#method1&zippy=%2Cproduct-level-url-formatting%2Caccount-level-
        # url-formatting)
        # Corresponds to the JSON property `cartUriTemplate`
        # @return [String]
        attr_accessor :cart_uri_template
      
        # Checkout URL template. When the placeholders are expanded will redirect the
        # buyer to the merchant checkout page with the item in the cart. For more
        # details, check the [help center doc](https://support.google.com/merchants/
        # answer/13945960#method1&zippy=%2Cproduct-level-url-formatting%2Caccount-level-
        # url-formatting)
        # Corresponds to the JSON property `checkoutUriTemplate`
        # @return [String]
        attr_accessor :checkout_uri_template
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cart_uri_template = args[:cart_uri_template] if args.key?(:cart_uri_template)
          @checkout_uri_template = args[:checkout_uri_template] if args.key?(:checkout_uri_template)
        end
      end
      
      # The `User` resource represents a user associated with a Merchant Center
      # account. It is used to manage user permissions and access rights within the
      # account. For more information, see [Frequently asked questions about people
      # and access levels](//support.google.com/merchants/answer/12160472).
      class User
        include Google::Apis::Core::Hashable
      
        # Required. The [access rights](https://support.google.com/merchants/answer/
        # 12160472?sjid=6789834943175119429-EU#accesstypes) the user has.
        # Corresponds to the JSON property `accessRights`
        # @return [Array<String>]
        attr_accessor :access_rights
      
        # Identifier. The resource name of the user. Format: `accounts/`account`/user/`
        # email`` Use `me` to refer to your own email address, for example `accounts/`
        # account`/users/me`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The state of the user.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_rights = args[:access_rights] if args.key?(:access_rights)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # The single value of a rate group or the value of a rate group table's cell.
      # Exactly one of `no_shipping`, `flat_rate`, `price_percentage`, `
      # carrier_rateName`, `subtable_name` must be set.
      class Value
        include Google::Apis::Core::Hashable
      
        # The name of a carrier rate referring to a carrier rate defined in the same
        # rate group. Can only be set if all other fields are not set.
        # Corresponds to the JSON property `carrierRate`
        # @return [String]
        attr_accessor :carrier_rate
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `flatRate`
        # @return [Google::Apis::MerchantapiAccountsV1beta::Price]
        attr_accessor :flat_rate
      
        # If true, then the product can't be shipped. Must be true when set, can only be
        # set if all other fields are not set.
        # Corresponds to the JSON property `noShipping`
        # @return [Boolean]
        attr_accessor :no_shipping
        alias_method :no_shipping?, :no_shipping
      
        # A percentage of the price represented as a number in decimal notation (For
        # example, `"5.4"`). Can only be set if all other fields are not set.
        # Corresponds to the JSON property `pricePercentage`
        # @return [String]
        attr_accessor :price_percentage
      
        # The name of a subtable. Can only be set in table cells (For example, not for
        # single values), and only if all other fields are not set.
        # Corresponds to the JSON property `subtable`
        # @return [String]
        attr_accessor :subtable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @carrier_rate = args[:carrier_rate] if args.key?(:carrier_rate)
          @flat_rate = args[:flat_rate] if args.key?(:flat_rate)
          @no_shipping = args[:no_shipping] if args.key?(:no_shipping)
          @price_percentage = args[:price_percentage] if args.key?(:price_percentage)
          @subtable = args[:subtable] if args.key?(:subtable)
        end
      end
      
      # Settings related to the verification email that is sent after adding a user.
      class VerificationMailSettings
        include Google::Apis::Core::Hashable
      
        # Optional. Mode of the verification mail. If not set, the default is `
        # SEND_VERIFICATION_MAIL`.
        # Corresponds to the JSON property `verificationMailMode`
        # @return [String]
        attr_accessor :verification_mail_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @verification_mail_mode = args[:verification_mail_mode] if args.key?(:verification_mail_mode)
        end
      end
      
      # Request message for the `VerifySelf` method.
      class VerifySelfRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A fulfillment warehouse, which stores and handles inventory.
      class Warehouse
        include Google::Apis::Core::Hashable
      
        # Business days of the warehouse.
        # Corresponds to the JSON property `businessDayConfig`
        # @return [Google::Apis::MerchantapiAccountsV1beta::BusinessDayConfig]
        attr_accessor :business_day_config
      
        # The latest time of day that an order can be accepted and begin processing.
        # Later orders will be processed in the next day. The time is based on the
        # warehouse postal code.
        # Corresponds to the JSON property `cutoffTime`
        # @return [Google::Apis::MerchantapiAccountsV1beta::WarehouseCutoffTime]
        attr_accessor :cutoff_time
      
        # Required. The number of days it takes for this warehouse to pack up and ship
        # an item. This is on the warehouse level, but can be overridden on the offer
        # level based on the attributes of an item.
        # Corresponds to the JSON property `handlingDays`
        # @return [Fixnum]
        attr_accessor :handling_days
      
        # Required. The name of the warehouse. Must be unique within account.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Shipping address of the warehouse.
        # Corresponds to the JSON property `shippingAddress`
        # @return [Google::Apis::MerchantapiAccountsV1beta::Address]
        attr_accessor :shipping_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @business_day_config = args[:business_day_config] if args.key?(:business_day_config)
          @cutoff_time = args[:cutoff_time] if args.key?(:cutoff_time)
          @handling_days = args[:handling_days] if args.key?(:handling_days)
          @name = args[:name] if args.key?(:name)
          @shipping_address = args[:shipping_address] if args.key?(:shipping_address)
        end
      end
      
      # Indicates that the delivery time should be calculated per warehouse (shipping
      # origin location) based on the settings of the selected carrier. When set, no
      # other transit time related field in `delivery_time` should be set.
      class WarehouseBasedDeliveryTime
        include Google::Apis::Core::Hashable
      
        # Required. Carrier, such as `"UPS"` or `"Fedex"`. [supported carriers](https://
        # support.google.com/merchants/answer/7050921#zippy=%2Ccarrier-rates-au-de-uk-
        # and-us-only)
        # Corresponds to the JSON property `carrier`
        # @return [String]
        attr_accessor :carrier
      
        # Required. Carrier service, such as `"ground"` or `"2 days"`. The name of the
        # service must be in the eddSupportedServices list.
        # Corresponds to the JSON property `carrierService`
        # @return [String]
        attr_accessor :carrier_service
      
        # Required. Warehouse name. This should match warehouse.
        # Corresponds to the JSON property `warehouse`
        # @return [String]
        attr_accessor :warehouse
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @carrier = args[:carrier] if args.key?(:carrier)
          @carrier_service = args[:carrier_service] if args.key?(:carrier_service)
          @warehouse = args[:warehouse] if args.key?(:warehouse)
        end
      end
      
      # The latest time of day that an order can be accepted and begin processing.
      # Later orders will be processed in the next day. The time is based on the
      # warehouse postal code.
      class WarehouseCutoffTime
        include Google::Apis::Core::Hashable
      
        # Required. Hour of the cutoff time until which an order has to be placed to be
        # processed in the same day by the warehouse. Hour is based on the timezone of
        # warehouse.
        # Corresponds to the JSON property `hour`
        # @return [Fixnum]
        attr_accessor :hour
      
        # Required. Minute of the cutoff time until which an order has to be placed to
        # be processed in the same day by the warehouse. Minute is based on the timezone
        # of warehouse.
        # Corresponds to the JSON property `minute`
        # @return [Fixnum]
        attr_accessor :minute
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hour = args[:hour] if args.key?(:hour)
          @minute = args[:minute] if args.key?(:minute)
        end
      end
      
      # The weight represented as the value in string and the unit.
      class Weight
        include Google::Apis::Core::Hashable
      
        # Required. The weight represented as a number in micros (1 million micros is an
        # equivalent to one's currency standard unit, for example, 1 kg = 1000000 micros)
        # . This field can also be set as infinity by setting to -1. This field only
        # support -1 and positive value.
        # Corresponds to the JSON property `amountMicros`
        # @return [Fixnum]
        attr_accessor :amount_micros
      
        # Required. The weight unit. Acceptable values are: kg and lb
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amount_micros = args[:amount_micros] if args.key?(:amount_micros)
          @unit = args[:unit] if args.key?(:unit)
        end
      end
    end
  end
end
