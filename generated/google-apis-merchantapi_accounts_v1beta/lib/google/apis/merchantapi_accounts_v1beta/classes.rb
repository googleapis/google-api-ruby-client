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
      
      # Reference to a Terms of Service resource.
      class AcceptTermsOfService
        include Google::Apis::Core::Hashable
      
        # Required. The resource name of the terms of service version.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Region code as defined by [CLDR](https://cldr.unicode.org/). This is
        # either a country when the ToS applies specifically to that country or `001`
        # when it applies globally.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @region_code = args[:region_code] if args.key?(:region_code)
        end
      end
      
      # Describes the accepted terms of service.
      class Accepted
        include Google::Apis::Core::Hashable
      
        # The account where the acceptance was recorded. This can be the account itself
        # or, in the case of subaccounts, the MCA account.
        # Corresponds to the JSON property `acceptedBy`
        # @return [String]
        attr_accessor :accepted_by
      
        # The accepted [termsOfService](google.shopping.merchant.accounts.v1main.
        # TermsOfService).
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
      
      # An account.
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
      
        # Whether this account contains adult content.
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
      
      # An [`AccountIssue`](https://support.google.com/merchants/answer/12153802?sjid=
      # 17798438912526418908-EU#account).
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
        # /issues/`id``
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
      
      # The tax settings of a merchant account. All methods require the admin role.
      class AccountTax
        include Google::Apis::Core::Hashable
      
        # Output only. The ID of the account to which these account tax settings belong.
        # Corresponds to the JSON property `account`
        # @return [Fixnum]
        attr_accessor :account
      
        # Identifier. The name of the tax setting. Format: "`account_tax.name=accounts/`
        # account``"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Tax rules. "Define the tax rules in each region. No tax will be presented if a
        # region has no rule."
        # Corresponds to the JSON property `taxRules`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::TaxRule>]
        attr_accessor :tax_rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] if args.key?(:account)
          @name = args[:name] if args.key?(:name)
          @tax_rules = args[:tax_rules] if args.key?(:tax_rules)
        end
      end
      
      # Additional instructions to add account services during creation of the account.
      class AddAccountService
        include Google::Apis::Core::Hashable
      
        # A generic empty message that you can re-use to avoid defining duplicated empty
        # messages in your APIs. A typical example is to use it as the request or the
        # response type of an API method. For instance: service Foo ` rpc Bar(google.
        # protobuf.Empty) returns (google.protobuf.Empty); `
        # Corresponds to the JSON property `accountAggregation`
        # @return [Google::Apis::MerchantapiAccountsV1beta::Empty]
        attr_accessor :account_aggregation
      
        # Optional. The provider of the service. Format: `accounts/`account``
        # Corresponds to the JSON property `provider`
        # @return [String]
        attr_accessor :provider
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_aggregation = args[:account_aggregation] if args.key?(:account_aggregation)
          @provider = args[:provider] if args.key?(:provider)
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
      
        # Optional. Whether the identity attributes may be used for promotions.
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
      
      # Collection of information related to a business.
      class BusinessInfo
        include Google::Apis::Core::Hashable
      
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
        # Corresponds to the JSON property `address`
        # @return [Google::Apis::MerchantapiAccountsV1beta::PostalAddress]
        attr_accessor :address
      
        # Customer service information.
        # Corresponds to the JSON property `customerService`
        # @return [Google::Apis::MerchantapiAccountsV1beta::CustomerService]
        attr_accessor :customer_service
      
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
          @name = args[:name] if args.key?(:name)
          @phone = args[:phone] if args.key?(:phone)
          @phone_verification_state = args[:phone_verification_state] if args.key?(:phone_verification_state)
        end
      end
      
      # A list of carrier rates that can be referred to by `main_table` or `
      # single_value`.
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
      
      # Request message for the `ClaimHomepage` method.
      class ClaimHomepageRequest
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
      
        # Reference to a Terms of Service resource.
        # Corresponds to the JSON property `acceptTermsOfService`
        # @return [Google::Apis::MerchantapiAccountsV1beta::AcceptTermsOfService]
        attr_accessor :accept_terms_of_service
      
        # An account.
        # Corresponds to the JSON property `account`
        # @return [Google::Apis::MerchantapiAccountsV1beta::Account]
        attr_accessor :account
      
        # Optional. If specified, an account service between the account to be created
        # and the provider account is initialized as part of the creation.
        # Corresponds to the JSON property `service`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::AddAccountService>]
        attr_accessor :service
      
        # Optional. Users to be added to the account.
        # Corresponds to the JSON property `users`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::CreateUserRequest>]
        attr_accessor :users
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accept_terms_of_service = args[:accept_terms_of_service] if args.key?(:accept_terms_of_service)
          @account = args[:account] if args.key?(:account)
          @service = args[:service] if args.key?(:service)
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
      
        # A [user](https://support.google.com/merchants/answer/12160472).
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
      
        # Merchants can opt-out of showing n+1 day local delivery when they have a
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
        # min_handling_days`.
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
        # day shipped, 1 means next day shipped.
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
      
      # A store's homepage.
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
      
      # Represents a time interval, encoded as a Timestamp start (inclusive) and a
      # Timestamp end (exclusive). The start must be less than or equal to the end.
      # When the start equals the end, the interval is empty (matches no time). When
      # both start and end are unspecified, the interval matches any time.
      class Interval
        include Google::Apis::Core::Hashable
      
        # Optional. Exclusive end of the interval. If specified, a Timestamp matching
        # this interval will have to be before the end.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Optional. Inclusive start of the interval. If specified, a Timestamp matching
        # this interval will have to be the same or after the start.
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
      
      # Response to account tax list request This method can only be called on a multi-
      # client account, otherwise it'll return an error.
      class ListAccountTaxResponse
        include Google::Apis::Core::Hashable
      
        # Page of accounttax settings
        # Corresponds to the JSON property `accountTaxes`
        # @return [Array<Google::Apis::MerchantapiAccountsV1beta::AccountTax>]
        attr_accessor :account_taxes
      
        # The token for the retrieval of the next page of account tax settings.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_taxes = args[:account_taxes] if args.key?(:account_taxes)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for the `ListAccounts` method.
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
      
        # The regions from the specified merchant.
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
      # provided by a merchant.
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
      
      # Subset of a merchants loyalty program.
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
      
      # [Online return policy](https://support.google.com/merchants/answer/10220642)
      # object. This is currently used to represent return policies for ads and free
      # listings programs.
      class OnlineReturnPolicy
        include Google::Apis::Core::Hashable
      
        # This field specifies if merchant only accepts defective products for returns,
        # and this field is required.
        # Corresponds to the JSON property `acceptDefectiveOnly`
        # @return [Boolean]
        attr_accessor :accept_defective_only
        alias_method :accept_defective_only?, :accept_defective_only
      
        # This field specifies if merchant allows customers to exchange products, this
        # field is required.
        # Corresponds to the JSON property `acceptExchange`
        # @return [Boolean]
        attr_accessor :accept_exchange
        alias_method :accept_exchange?, :accept_exchange
      
        # The countries of sale where the return policy applies. The values must be a
        # valid 2 letter ISO 3166 code.
        # Corresponds to the JSON property `countries`
        # @return [Array<String>]
        attr_accessor :countries
      
        # The item conditions accepted for returns must not be empty unless the type of
        # return policy is 'noReturns'.
        # Corresponds to the JSON property `itemConditions`
        # @return [Array<String>]
        attr_accessor :item_conditions
      
        # This field represents the unique user-defined label of the return policy. It
        # is important to note that the same label cannot be used in different return
        # policies for the same country. Unless a product specifies a specific label
        # attribute, policies will be automatically labeled as 'default'. To assign a
        # custom return policy to certain product groups, follow the instructions
        # provided in the [Return policy label] (https://support.google.com/merchants/
        # answer/9445425). The label can contain up to 50 characters.
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
      
        # The field specifies the number of days it takes for merchants to process
        # refunds, field is optional.
        # Corresponds to the JSON property `processRefundDays`
        # @return [Fixnum]
        attr_accessor :process_refund_days
      
        # The restocking fee. This can be a flat fee or a micro percent.
        # Corresponds to the JSON property `restockingFee`
        # @return [Google::Apis::MerchantapiAccountsV1beta::RestockingFee]
        attr_accessor :restocking_fee
      
        # The return methods of how customers can return an item. This value is required
        # to not be empty unless the type of return policy is noReturns.
        # Corresponds to the JSON property `returnMethods`
        # @return [Array<String>]
        attr_accessor :return_methods
      
        # Output only. Return policy ID generated by Google.
        # Corresponds to the JSON property `returnPolicyId`
        # @return [String]
        attr_accessor :return_policy_id
      
        # The return policy uri. This can used by Google to do a sanity check for the
        # policy. It must be a valid URL.
        # Corresponds to the JSON property `returnPolicyUri`
        # @return [String]
        attr_accessor :return_policy_uri
      
        # The return shipping fee. This can either be a fixed fee or a boolean to
        # indicate that the customer pays the actual shipping cost.
        # Corresponds to the JSON property `returnShippingFee`
        # @return [Google::Apis::MerchantapiAccountsV1beta::ReturnShippingFee]
        attr_accessor :return_shipping_fee
      
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
          @return_methods = args[:return_methods] if args.key?(:return_methods)
          @return_policy_id = args[:return_policy_id] if args.key?(:return_policy_id)
          @return_policy_uri = args[:return_policy_uri] if args.key?(:return_policy_uri)
          @return_shipping_fee = args[:return_shipping_fee] if args.key?(:return_shipping_fee)
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
        # spaces or formatting, e.g.: - correct: "+15552220123" - incorrect: "+1 (555)
        # 222-01234 x123". The ITU E.164 format limits the latter to 12 digits, but in
        # practice not all countries respect that, so we relax that restriction here.
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
        # MMS and SMS systems, as well as for abbreviated dialing (e.g. "Text 611 to see
        # how many minutes you have remaining on your plan."). Short codes are
        # restricted to a region and are not internationally dialable, which means the
        # same short code can exist in different regions, with different usage and
        # pricing, even if those regions share the same country calling code (e.g. US
        # and CA).
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
      class PostalAddress
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
      
        # The new value of the changed resource or attribute.
        # Corresponds to the JSON property `newValue`
        # @return [String]
        attr_accessor :new_value
      
        # The old value of the changed resource or attribute.
        # Corresponds to the JSON property `oldValue`
        # @return [String]
        attr_accessor :old_value
      
        # Countries that have the change (if applicable)
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # Reporting contexts that have the change (if applicable)
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
      
        # The account that manages the merchant's account. can be the same as merchant
        # id if it is standalone account. Format : `accounts/`service_provider_id``
        # Corresponds to the JSON property `managingAccount`
        # @return [String]
        attr_accessor :managing_account
      
        # The product name. Format: ``product.name=accounts/`account`/products/`product``
        # `
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
          @managing_account = args[:managing_account] if args.key?(:managing_account)
          @resource = args[:resource] if args.key?(:resource)
          @resource_id = args[:resource_id] if args.key?(:resource_id)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
        end
      end
      
      # Defines participation in a given program for the specified account. Programs
      # provide a mechanism for adding functionality to merchant accounts. A typical
      # example of this is the [Free product listings](https://support.google.com/
      # merchants/topic/9240261?ref_topic=7257954,7259405,&sjid=796648681813264022-EU)
      # program, which enables products from a merchant's store to be shown across
      # Google for free.
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
          @regional_inventory_eligible = args[:regional_inventory_eligible] if args.key?(:regional_inventory_eligible)
          @shipping_eligible = args[:shipping_eligible] if args.key?(:shipping_eligible)
        end
      end
      
      # Describes the terms of service which are required to be accepted.
      class Required
        include Google::Apis::Core::Hashable
      
        # The [termsOfService](google.shopping.merchant.accounts.v1main.TermsOfService)
        # that need to be accepted.
        # Corresponds to the JSON property `termsOfService`
        # @return [String]
        attr_accessor :terms_of_service
      
        # Full URL to the terms of service file. This field is the same as [
        # TermsOfService.file_uri](TermsOfService.file_uri), it is added here for
        # convenience only.
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
      
        # Type of return shipping fee.
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
      
      # Shipping service.
      class Service
        include Google::Apis::Core::Hashable
      
        # Required. A boolean exposing the active status of the shipping service.
        # Corresponds to the JSON property `active`
        # @return [Boolean]
        attr_accessor :active
        alias_method :active?, :active
      
        # The CLDR code of the currency to which this service applies. Must match that
        # of the prices in rate groups.
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
      
        # Type of locations this service ships orders to.
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
      
      # The merchant account's [shipping setting]((https://support.google.com/
      # merchants/answer/6069284).
      class ShippingSettings
        include Google::Apis::Core::Hashable
      
        # Required. This field is used for avoid async issue. Make sure shipping setting
        # data didn't change between get call and insert call. The user should do
        # following steps： 1. Set etag field as empty string for initial shipping
        # setting creation. 2. After initial creation, call get method to obtain an etag
        # and current shipping setting data before call insert. 3. Modify to wanted
        # shipping setting information. 4. Call insert method with the wanted shipping
        # setting information with the etag obtained from step 2. 5. If shipping setting
        # data changed between step 2 and step 4. Insert request will fail because the
        # etag changes every time the shipping setting data changes. User should repeate
        # step 2-4 with the new etag.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Identifier. The resource name of the shipping setting. Format: `accounts/`
        # account`/shippingSetting`
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
      # MMS and SMS systems, as well as for abbreviated dialing (e.g. "Text 611 to see
      # how many minutes you have remaining on your plan."). Short codes are
      # restricted to a region and are not internationally dialable, which means the
      # same short code can exist in different regions, with different usage and
      # pricing, even if those regions share the same country calling code (e.g. US
      # and CA).
      class ShortCode
        include Google::Apis::Core::Hashable
      
        # Required. The short code digits, without a leading plus ('+') or country
        # calling code, e.g. "611".
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
      
        # Indicates whether all stores, or selected stores, listed by this merchant
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
      
      # A range of postal codes that defines the area.
      class TaxPostalCodeRange
        include Google::Apis::Core::Hashable
      
        # The end of the postal code range. Will be the same as start if not specified.
        # Corresponds to the JSON property `end`
        # @return [String]
        attr_accessor :end
      
        # Required. The start of the postal code range, which is also the smallest in
        # the range.
        # Corresponds to the JSON property `start`
        # @return [String]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end = args[:end] if args.key?(:end)
          @start = args[:start] if args.key?(:start)
        end
      end
      
      # Primary type convension percent micro : 100% = 1 000 000 and 1% = 10 000
      # cannot be negative. Information about tax nexus and related parameters
      # applicable to orders delivered to the area covered by a single tax admin.
      # Nexus is created when a merchant is doing business in an area administered by
      # tax admin (only US states are supported for nexus configuration). If merchant
      # has nexus in a US state, merchant needs to pay tax to all tax authorities
      # associated with the shipping destination. Next Id : 8
      class TaxRule
        include Google::Apis::Core::Hashable
      
        # Represents a time interval, encoded as a Timestamp start (inclusive) and a
        # Timestamp end (exclusive). The start must be less than or equal to the end.
        # When the start equals the end, the interval is empty (matches no time). When
        # both start and end are unspecified, the interval matches any time.
        # Corresponds to the JSON property `effectiveTimePeriod`
        # @return [Google::Apis::MerchantapiAccountsV1beta::Interval]
        attr_accessor :effective_time_period
      
        # The admin_id or criteria_id of the region in which this rule is applicable.
        # Corresponds to the JSON property `locationId`
        # @return [Fixnum]
        attr_accessor :location_id
      
        # A range of postal codes that defines the area.
        # Corresponds to the JSON property `postCodeRange`
        # @return [Google::Apis::MerchantapiAccountsV1beta::TaxPostalCodeRange]
        attr_accessor :post_code_range
      
        # Region code in which this rule is applicable
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # A fixed rate specified in micros, where 100% = 1_000_000. Suitable for origin-
        # based states.
        # Corresponds to the JSON property `selfSpecifiedRateMicros`
        # @return [Fixnum]
        attr_accessor :self_specified_rate_micros
      
        # If set, shipping charge is taxed (at the same rate as product) when delivering
        # to this admin's area. Can only be set on US states without category.
        # Corresponds to the JSON property `shippingTaxed`
        # @return [Boolean]
        attr_accessor :shipping_taxed
        alias_method :shipping_taxed?, :shipping_taxed
      
        # Rate that depends on delivery location: if merchant has a nexus in
        # corresponding US state, rates from authorities with jurisdiction over delivery
        # area are added up.
        # Corresponds to the JSON property `useGoogleRate`
        # @return [Boolean]
        attr_accessor :use_google_rate
        alias_method :use_google_rate?, :use_google_rate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @effective_time_period = args[:effective_time_period] if args.key?(:effective_time_period)
          @location_id = args[:location_id] if args.key?(:location_id)
          @post_code_range = args[:post_code_range] if args.key?(:post_code_range)
          @region_code = args[:region_code] if args.key?(:region_code)
          @self_specified_rate_micros = args[:self_specified_rate_micros] if args.key?(:self_specified_rate_micros)
          @shipping_taxed = args[:shipping_taxed] if args.key?(:shipping_taxed)
          @use_google_rate = args[:use_google_rate] if args.key?(:use_google_rate)
        end
      end
      
      # A `TermsOfService`.
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
      # service kind. The state is as follows: * If the merchant has accepted a terms
      # of service: [accepted](TermsOfServiceAggrementState.accepted) will be
      # populated, otherwise it will be empty * If the merchant must sign a terms of
      # service: [required](TermsOfServiceAggrementState.required) will be populated,
      # otherwise it will be empty. Note that both [required](
      # TermsOfServiceAggrementState.required) and [accepted](
      # TermsOfServiceAggrementState.accepted) can be present. In this case the `
      # accepted` terms of services will have an expiration date set in the [
      # valid_until](Accepted.valid_until) field. The `required` terms of services
      # need to be accepted before `valid_until` in order for the account to continue
      # having a valid agreement. When accepting new terms of services we expect 3Ps
      # to display the text associated with the given terms of service agreement (the
      # url to the file containing the text is added in the Required message below as [
      # tos_file_uri](Accepted.tos_file_uri). The actual acceptance of the terms of
      # service is done by calling accept on the [TermsOfService](TermsOfService)
      # resource.
      class TermsOfServiceAgreementState
        include Google::Apis::Core::Hashable
      
        # Describes the accepted terms of service.
        # Corresponds to the JSON property `accepted`
        # @return [Google::Apis::MerchantapiAccountsV1beta::Accepted]
        attr_accessor :accepted
      
        # Identifier. The resource name of the terms of service version. Format: `
        # accounts/`account`/termsOfServiceAgreementState/`identifier``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Region code as defined by https://cldr.unicode.org/. This is the country the
        # current state applies to.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # Describes the terms of service which are required to be accepted.
        # Corresponds to the JSON property `required`
        # @return [Google::Apis::MerchantapiAccountsV1beta::Required]
        attr_accessor :required
      
        # Terms of Service kind associated with the particular version.
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
      
      # A [user](https://support.google.com/merchants/answer/12160472).
      class User
        include Google::Apis::Core::Hashable
      
        # Optional. The [access rights](https://support.google.com/merchants/answer/
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
      
      # A fulfillment warehouse, which stores and handles inventory. Next tag: 7
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
      
        # Required. Carrier, such as `"UPS"` or `"Fedex"`.
        # Corresponds to the JSON property `carrier`
        # @return [String]
        attr_accessor :carrier
      
        # Required. Carrier service, such as `"ground"` or `"2 days"`. The name of the
        # service must be in the eddSupportedServices list.
        # Corresponds to the JSON property `carrierService`
        # @return [String]
        attr_accessor :carrier_service
      
        # Required. Warehouse name. This should match warehouse
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
