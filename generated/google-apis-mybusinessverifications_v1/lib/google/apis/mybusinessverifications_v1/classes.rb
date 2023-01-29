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
    module MybusinessverificationsV1
      
      # Display data for verifications through postcard.
      class AddressVerificationData
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
        # @return [Google::Apis::MybusinessverificationsV1::PostalAddress]
        attr_accessor :address
      
        # Merchant's business name.
        # Corresponds to the JSON property `business`
        # @return [String]
        attr_accessor :business
      
        # Expected number of days it takes to deliver a postcard to the address's region.
        # Corresponds to the JSON property `expectedDeliveryDaysRegion`
        # @return [Fixnum]
        attr_accessor :expected_delivery_days_region
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @business = args[:business] if args.key?(:business)
          @expected_delivery_days_region = args[:expected_delivery_days_region] if args.key?(:expected_delivery_days_region)
        end
      end
      
      # Request message for Verifications.CompleteVerificationAction.
      class CompleteVerificationRequest
        include Google::Apis::Core::Hashable
      
        # Required. PIN code received by the merchant to complete the verification.
        # Corresponds to the JSON property `pin`
        # @return [String]
        attr_accessor :pin
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pin = args[:pin] if args.key?(:pin)
        end
      end
      
      # Response message for Verifications.CompleteVerificationAction.
      class CompleteVerificationResponse
        include Google::Apis::Core::Hashable
      
        # A verification represents a verification attempt on a location.
        # Corresponds to the JSON property `verification`
        # @return [Google::Apis::MybusinessverificationsV1::Verification]
        attr_accessor :verification
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @verification = args[:verification] if args.key?(:verification)
        end
      end
      
      # Indicates that the location fails to comply with our [guidelines](https://
      # support.google.com/business/answer/3038177).
      class ComplyWithGuidelines
        include Google::Apis::Core::Hashable
      
        # The reason why the location is being recommended to comply with guidelines.
        # Corresponds to the JSON property `recommendationReason`
        # @return [String]
        attr_accessor :recommendation_reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @recommendation_reason = args[:recommendation_reason] if args.key?(:recommendation_reason)
        end
      end
      
      # Display data for verifications through email.
      class EmailVerificationData
        include Google::Apis::Core::Hashable
      
        # Domain name in the email address. e.g. "gmail.com" in foo@gmail.com
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # Whether client is allowed to provide a different user name.
        # Corresponds to the JSON property `isUserNameEditable`
        # @return [Boolean]
        attr_accessor :is_user_name_editable
        alias_method :is_user_name_editable?, :is_user_name_editable
      
        # User name in the email address. e.g. "foo" in foo@gmail.com
        # Corresponds to the JSON property `user`
        # @return [String]
        attr_accessor :user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain = args[:domain] if args.key?(:domain)
          @is_user_name_editable = args[:is_user_name_editable] if args.key?(:is_user_name_editable)
          @user = args[:user] if args.key?(:user)
        end
      end
      
      # Request message for Verifications.FetchVerificationOptions.
      class FetchVerificationOptionsRequest
        include Google::Apis::Core::Hashable
      
        # Additional data for service business verification.
        # Corresponds to the JSON property `context`
        # @return [Google::Apis::MybusinessverificationsV1::ServiceBusinessContext]
        attr_accessor :context
      
        # Required. The BCP 47 language code representing the language that is to be
        # used for the verification process. Available options vary by language.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context = args[:context] if args.key?(:context)
          @language_code = args[:language_code] if args.key?(:language_code)
        end
      end
      
      # Response message for Verifications.FetchVerificationOptions.
      class FetchVerificationOptionsResponse
        include Google::Apis::Core::Hashable
      
        # The available verification options.
        # Corresponds to the JSON property `options`
        # @return [Array<Google::Apis::MybusinessverificationsV1::VerificationOption>]
        attr_accessor :options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @options = args[:options] if args.key?(:options)
        end
      end
      
      # Request message for Verifications.GenerateVerificationToken.
      class GenerateVerificationTokenRequest
        include Google::Apis::Core::Hashable
      
        # A subset of location info. See the [help center article] (https://support.
        # google.com/business/answer/3038177) for a detailed description of these fields,
        # or the [category endpoint](/my-business/reference/rest/v4/categories) for a
        # list of valid business categories.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::MybusinessverificationsV1::Location]
        attr_accessor :location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
        end
      end
      
      # Response message for Verifications.GenerateVerificationToken.
      class GenerateVerificationTokenResponse
        include Google::Apis::Core::Hashable
      
        # Token generated by a vetted [partner](https://support.google.com/business/
        # answer/7674102).
        # Corresponds to the JSON property `token`
        # @return [Google::Apis::MybusinessverificationsV1::VerificationToken]
        attr_accessor :token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @token = args[:token] if args.key?(:token)
        end
      end
      
      # Response message for Verifications.ListVerifications.
      class ListVerificationsResponse
        include Google::Apis::Core::Hashable
      
        # If the number of verifications exceeded the requested page size, this field
        # will be populated with a token to fetch the next page of verification on a
        # subsequent call. If there are no more attributes, this field will not be
        # present in the response.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of the verifications.
        # Corresponds to the JSON property `verifications`
        # @return [Array<Google::Apis::MybusinessverificationsV1::Verification>]
        attr_accessor :verifications
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @verifications = args[:verifications] if args.key?(:verifications)
        end
      end
      
      # A subset of location info. See the [help center article] (https://support.
      # google.com/business/answer/3038177) for a detailed description of these fields,
      # or the [category endpoint](/my-business/reference/rest/v4/categories) for a
      # list of valid business categories.
      class Location
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
        # @return [Google::Apis::MybusinessverificationsV1::PostalAddress]
        attr_accessor :address
      
        # Required. Location name should reflect your business's real-world name, as
        # used consistently on your storefront, website, and stationery, and as known to
        # customers. Any additional information, when relevant, can be included in other
        # fields of the resource (for example, `Address`, `Categories`). Don't add
        # unnecessary information to your name (for example, prefer "Google" over "
        # Google Inc. - Mountain View Corporate Headquarters"). Don't include marketing
        # taglines, store codes, special characters, hours or closed/open status, phone
        # numbers, website URLs, service/product information, location/address or
        # directions, or containment information (for example, "Chase ATM in Duane Reade"
        # ).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Id of the category that best describes the core business this
        # location engages in. e.g. gcid:bakery.
        # Corresponds to the JSON property `primaryCategoryId`
        # @return [String]
        attr_accessor :primary_category_id
      
        # Optional. A phone number that connects to your individual business location as
        # directly as possible. Use a local phone number instead of a central, call
        # center helpline number whenever possible.
        # Corresponds to the JSON property `primaryPhone`
        # @return [String]
        attr_accessor :primary_phone
      
        # Optional. A URL for this business. If possible, use a URL that represents this
        # individual business location instead of a generic website/URL that represents
        # all locations, or the brand.
        # Corresponds to the JSON property `websiteUri`
        # @return [String]
        attr_accessor :website_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @name = args[:name] if args.key?(:name)
          @primary_category_id = args[:primary_category_id] if args.key?(:primary_category_id)
          @primary_phone = args[:primary_phone] if args.key?(:primary_phone)
          @website_uri = args[:website_uri] if args.key?(:website_uri)
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
      
      # Indicates that the location duplicates another location that is in good
      # standing.
      class ResolveOwnershipConflict
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Additional data for service business verification.
      class ServiceBusinessContext
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
        # @return [Google::Apis::MybusinessverificationsV1::PostalAddress]
        attr_accessor :address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
        end
      end
      
      # A verification represents a verification attempt on a location.
      class Verification
        include Google::Apis::Core::Hashable
      
        # Optional. Response announcement set only if the method is VETTED_PARTNER.
        # Corresponds to the JSON property `announcement`
        # @return [String]
        attr_accessor :announcement
      
        # The timestamp when the verification is requested.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The method of the verification.
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # Resource name of the verification.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The state of the verification.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @announcement = args[:announcement] if args.key?(:announcement)
          @create_time = args[:create_time] if args.key?(:create_time)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # The verification option represents how to verify the location (indicated by
      # verification method) and where the verification will be sent to (indicated by
      # display data).
      class VerificationOption
        include Google::Apis::Core::Hashable
      
        # Display data for verifications through postcard.
        # Corresponds to the JSON property `addressData`
        # @return [Google::Apis::MybusinessverificationsV1::AddressVerificationData]
        attr_accessor :address_data
      
        # Set only if the method is VETTED_PARTNER.
        # Corresponds to the JSON property `announcement`
        # @return [String]
        attr_accessor :announcement
      
        # Display data for verifications through email.
        # Corresponds to the JSON property `emailData`
        # @return [Google::Apis::MybusinessverificationsV1::EmailVerificationData]
        attr_accessor :email_data
      
        # Set only if the method is PHONE_CALL or SMS. Phone number that the PIN will be
        # sent to.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # Method to verify the location.
        # Corresponds to the JSON property `verificationMethod`
        # @return [String]
        attr_accessor :verification_method
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address_data = args[:address_data] if args.key?(:address_data)
          @announcement = args[:announcement] if args.key?(:announcement)
          @email_data = args[:email_data] if args.key?(:email_data)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @verification_method = args[:verification_method] if args.key?(:verification_method)
        end
      end
      
      # Token generated by a vetted [partner](https://support.google.com/business/
      # answer/7674102).
      class VerificationToken
        include Google::Apis::Core::Hashable
      
        # The token string.
        # Corresponds to the JSON property `tokenString`
        # @return [String]
        attr_accessor :token_string
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @token_string = args[:token_string] if args.key?(:token_string)
        end
      end
      
      # Indicates that the location requires verification. Contains information about
      # the current verification actions performed on the location.
      class Verify
        include Google::Apis::Core::Hashable
      
        # Indicates whether a verification process has already started, and can be
        # completed by the location.
        # Corresponds to the JSON property `hasPendingVerification`
        # @return [Boolean]
        attr_accessor :has_pending_verification
        alias_method :has_pending_verification?, :has_pending_verification
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @has_pending_verification = args[:has_pending_verification] if args.key?(:has_pending_verification)
        end
      end
      
      # Request message for Verifications.VerifyLocation.
      class VerifyLocationRequest
        include Google::Apis::Core::Hashable
      
        # Additional data for service business verification.
        # Corresponds to the JSON property `context`
        # @return [Google::Apis::MybusinessverificationsV1::ServiceBusinessContext]
        attr_accessor :context
      
        # Optional. The input for EMAIL method. Email address where the PIN should be
        # sent to. An email address is accepted only if it is one of the addresses
        # provided by FetchVerificationOptions. If the EmailVerificationData has
        # is_user_name_editable set to true, the client may specify a different user
        # name (local-part) but must match the domain name.
        # Corresponds to the JSON property `emailAddress`
        # @return [String]
        attr_accessor :email_address
      
        # Optional. The BCP 47 language code representing the language that is to be
        # used for the verification process.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Optional. The input for ADDRESS method. Contact name the mail should be sent
        # to.
        # Corresponds to the JSON property `mailerContact`
        # @return [String]
        attr_accessor :mailer_contact
      
        # Required. Verification method.
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # Optional. The input for PHONE_CALL/SMS method The phone number that should be
        # called or be sent SMS to. It must be one of the phone numbers in the eligible
        # options.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # Token generated by a vetted [partner](https://support.google.com/business/
        # answer/7674102).
        # Corresponds to the JSON property `token`
        # @return [Google::Apis::MybusinessverificationsV1::VerificationToken]
        attr_accessor :token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context = args[:context] if args.key?(:context)
          @email_address = args[:email_address] if args.key?(:email_address)
          @language_code = args[:language_code] if args.key?(:language_code)
          @mailer_contact = args[:mailer_contact] if args.key?(:mailer_contact)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @token = args[:token] if args.key?(:token)
        end
      end
      
      # Response message for Verifications.VerifyLocation.
      class VerifyLocationResponse
        include Google::Apis::Core::Hashable
      
        # A verification represents a verification attempt on a location.
        # Corresponds to the JSON property `verification`
        # @return [Google::Apis::MybusinessverificationsV1::Verification]
        attr_accessor :verification
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @verification = args[:verification] if args.key?(:verification)
        end
      end
      
      # Response message for VoiceOfMerchant.GetVoiceOfMerchantState.
      class VoiceOfMerchantState
        include Google::Apis::Core::Hashable
      
        # Indicates that the location fails to comply with our [guidelines](https://
        # support.google.com/business/answer/3038177).
        # Corresponds to the JSON property `complyWithGuidelines`
        # @return [Google::Apis::MybusinessverificationsV1::ComplyWithGuidelines]
        attr_accessor :comply_with_guidelines
      
        # Indicates whether the location has the authority (ownership) over the business
        # on Google. If true, another location cannot take over and become the dominant
        # listing on Maps. However, edits will not become live unless Voice of Merchant
        # is gained (i.e. has_voice_of_merchant is true).
        # Corresponds to the JSON property `hasBusinessAuthority`
        # @return [Boolean]
        attr_accessor :has_business_authority
        alias_method :has_business_authority?, :has_business_authority
      
        # Indicates whether the location is in good standing and has control over the
        # business on Google. Any edits made to the location will propagate to Maps
        # after passing the review phase.
        # Corresponds to the JSON property `hasVoiceOfMerchant`
        # @return [Boolean]
        attr_accessor :has_voice_of_merchant
        alias_method :has_voice_of_merchant?, :has_voice_of_merchant
      
        # Indicates that the location duplicates another location that is in good
        # standing.
        # Corresponds to the JSON property `resolveOwnershipConflict`
        # @return [Google::Apis::MybusinessverificationsV1::ResolveOwnershipConflict]
        attr_accessor :resolve_ownership_conflict
      
        # Indicates that the location requires verification. Contains information about
        # the current verification actions performed on the location.
        # Corresponds to the JSON property `verify`
        # @return [Google::Apis::MybusinessverificationsV1::Verify]
        attr_accessor :verify
      
        # Indicates that the location will gain voice of merchant after passing review.
        # Corresponds to the JSON property `waitForVoiceOfMerchant`
        # @return [Google::Apis::MybusinessverificationsV1::WaitForVoiceOfMerchant]
        attr_accessor :wait_for_voice_of_merchant
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @comply_with_guidelines = args[:comply_with_guidelines] if args.key?(:comply_with_guidelines)
          @has_business_authority = args[:has_business_authority] if args.key?(:has_business_authority)
          @has_voice_of_merchant = args[:has_voice_of_merchant] if args.key?(:has_voice_of_merchant)
          @resolve_ownership_conflict = args[:resolve_ownership_conflict] if args.key?(:resolve_ownership_conflict)
          @verify = args[:verify] if args.key?(:verify)
          @wait_for_voice_of_merchant = args[:wait_for_voice_of_merchant] if args.key?(:wait_for_voice_of_merchant)
        end
      end
      
      # Indicates that the location will gain voice of merchant after passing review.
      class WaitForVoiceOfMerchant
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
    end
  end
end
