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
    module AdsenseplatformV1alpha
      
      # Representation of an Account.
      class Account
        include Google::Apis::Core::Hashable
      
        # Output only. Creation time of the account.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. An opaque token that uniquely identifies the account among all the
        # platform's accounts. This string may contain at most 64 non-whitespace ASCII
        # characters, but otherwise has no predefined structure. However, it is expected
        # to be a platform-specific identifier for the user creating the account, so
        # that only a single account can be created for any given user. This field must
        # not contain any information that is recognizable as personally identifiable
        # information. e.g. it should not be an email address or login name. Once an
        # account has been created, a second attempt to create an account using the same
        # creation_request_id will result in an ALREADY_EXISTS error.
        # Corresponds to the JSON property `creationRequestId`
        # @return [String]
        attr_accessor :creation_request_id
      
        # Display name of this account.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Resource name of the account. Format: platforms/pub-[0-9]+/
        # accounts/pub-[0-9]+
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Input only. CLDR region code of the country/region of the address.
        # Set this to country code of the child account if known, otherwise to your own
        # country code.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # Output only. Approval state of the account.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/
        # time-zones).
        # Corresponds to the JSON property `timeZone`
        # @return [Google::Apis::AdsenseplatformV1alpha::TimeZone]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @creation_request_id = args[:creation_request_id] if args.key?(:creation_request_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @region_code = args[:region_code] if args.key?(:region_code)
          @state = args[:state] if args.key?(:state)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # Address data.
      class Address
        include Google::Apis::Core::Hashable
      
        # First line of address. Max length 64 bytes or 30 characters.
        # Corresponds to the JSON property `address1`
        # @return [String]
        attr_accessor :address1
      
        # Second line of address. Max length 64 bytes or 30 characters.
        # Corresponds to the JSON property `address2`
        # @return [String]
        attr_accessor :address2
      
        # City. Max length 60 bytes or 30 characters.
        # Corresponds to the JSON property `city`
        # @return [String]
        attr_accessor :city
      
        # Name of the company. Max length 255 bytes or 34 characters.
        # Corresponds to the JSON property `company`
        # @return [String]
        attr_accessor :company
      
        # Contact name of the company. Max length 128 bytes or 34 characters.
        # Corresponds to the JSON property `contact`
        # @return [String]
        attr_accessor :contact
      
        # Fax number with international code (i.e. +441234567890).
        # Corresponds to the JSON property `fax`
        # @return [String]
        attr_accessor :fax
      
        # Phone number with international code (i.e. +441234567890).
        # Corresponds to the JSON property `phone`
        # @return [String]
        attr_accessor :phone
      
        # Country/Region code. The region is specified as a CLDR region code (e.g. "US",
        # "FR").
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # State. Max length 60 bytes or 30 characters.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Zip/post code. Max length 10 bytes or 10 characters.
        # Corresponds to the JSON property `zip`
        # @return [String]
        attr_accessor :zip
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address1 = args[:address1] if args.key?(:address1)
          @address2 = args[:address2] if args.key?(:address2)
          @city = args[:city] if args.key?(:city)
          @company = args[:company] if args.key?(:company)
          @contact = args[:contact] if args.key?(:contact)
          @fax = args[:fax] if args.key?(:fax)
          @phone = args[:phone] if args.key?(:phone)
          @region_code = args[:region_code] if args.key?(:region_code)
          @state = args[:state] if args.key?(:state)
          @zip = args[:zip] if args.key?(:zip)
        end
      end
      
      # Request definition for the account close rpc.
      class CloseAccountRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response definition for the account close rpc.
      class CloseAccountResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A representation of a decimal value, such as 2.5. Clients may convert values
      # into language-native decimal formats, such as Java's [BigDecimal](https://docs.
      # oracle.com/en/java/javase/11/docs/api/java.base/java/math/BigDecimal.html) or
      # Python's [decimal.Decimal](https://docs.python.org/3/library/decimal.html).
      class Decimal
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
      
      # A platform sub-account event to record spam signals.
      class Event
        include Google::Apis::Core::Hashable
      
        # Private information for partner recorded events (PII).
        # Corresponds to the JSON property `eventInfo`
        # @return [Google::Apis::AdsenseplatformV1alpha::EventInfo]
        attr_accessor :event_info
      
        # Required. Event timestamp.
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # Required. Event type.
        # Corresponds to the JSON property `eventType`
        # @return [String]
        attr_accessor :event_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_info = args[:event_info] if args.key?(:event_info)
          @event_time = args[:event_time] if args.key?(:event_time)
          @event_type = args[:event_type] if args.key?(:event_type)
        end
      end
      
      # Private information for partner recorded events (PII).
      class EventInfo
        include Google::Apis::Core::Hashable
      
        # Address data.
        # Corresponds to the JSON property `billingAddress`
        # @return [Google::Apis::AdsenseplatformV1alpha::Address]
        attr_accessor :billing_address
      
        # Required. The email address that is associated with the publisher when
        # performing the event.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_address = args[:billing_address] if args.key?(:billing_address)
          @email = args[:email] if args.key?(:email)
        end
      end
      
      # Response definition for the list accounts rpc.
      class ListAccountsResponse
        include Google::Apis::Core::Hashable
      
        # The Accounts returned in the list response. Represented by a partial view of
        # the Account resource, populating `name` and `creation_request_id`.
        # Corresponds to the JSON property `accounts`
        # @return [Array<Google::Apis::AdsenseplatformV1alpha::Account>]
        attr_accessor :accounts
      
        # Continuation token used to page through accounts. To retrieve the next page of
        # the results, set the next request's "page_token" value to this.
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
      
      # Response definition for the list platform child sites rpc.
      class ListPlatformChildSitesResponse
        include Google::Apis::Core::Hashable
      
        # Continuation token used to page through platforms. To retrieve the next page
        # of the results, set the next request's "page_token" value to this.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The platform child sites returned in this list response.
        # Corresponds to the JSON property `platformChildSites`
        # @return [Array<Google::Apis::AdsenseplatformV1alpha::PlatformChildSite>]
        attr_accessor :platform_child_sites
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @platform_child_sites = args[:platform_child_sites] if args.key?(:platform_child_sites)
        end
      end
      
      # Response definition for the platform groups list rpc.
      class ListPlatformGroupsResponse
        include Google::Apis::Core::Hashable
      
        # Continuation token used to page through platforms. To retrieve the next page
        # of the results, set the next request's "page_token" value to this.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The platform groups returned in this list response.
        # Corresponds to the JSON property `platformGroups`
        # @return [Array<Google::Apis::AdsenseplatformV1alpha::PlatformGroup>]
        attr_accessor :platform_groups
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @platform_groups = args[:platform_groups] if args.key?(:platform_groups)
        end
      end
      
      # Response definition for the platform list rpc.
      class ListPlatformsResponse
        include Google::Apis::Core::Hashable
      
        # Continuation token used to page through platforms. To retrieve the next page
        # of the results, set the next request's "page_token" value to this.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The platforms returned in this list response.
        # Corresponds to the JSON property `platforms`
        # @return [Array<Google::Apis::AdsenseplatformV1alpha::Platform>]
        attr_accessor :platforms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @platforms = args[:platforms] if args.key?(:platforms)
        end
      end
      
      # Response definition for the site list rpc.
      class ListSitesResponse
        include Google::Apis::Core::Hashable
      
        # Continuation token used to page through sites. To retrieve the next page of
        # the results, set the next request's "page_token" value to this.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The sites returned in this list response.
        # Corresponds to the JSON property `sites`
        # @return [Array<Google::Apis::AdsenseplatformV1alpha::Site>]
        attr_accessor :sites
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @sites = args[:sites] if args.key?(:sites)
        end
      end
      
      # Response definition for the lookup account rpc.
      class LookupAccountResponse
        include Google::Apis::Core::Hashable
      
        # The name of the Account Format: platforms/`platform`/accounts/`account_id`
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
      
      # Representation of a Transparent Platform.
      class Platform
        include Google::Apis::Core::Hashable
      
        # Default platform group for the platform.
        # Corresponds to the JSON property `defaultPlatformGroup`
        # @return [String]
        attr_accessor :default_platform_group
      
        # Output only. Description of the platform.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Identifier. Resource name of a platform. Format: accounts/`account`/platforms/`
        # platform`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_platform_group = args[:default_platform_group] if args.key?(:default_platform_group)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Representation of a Transparent Platform Child Site.
      class PlatformChildSite
        include Google::Apis::Core::Hashable
      
        # Output only. Domain URL of the Platform Child Site. Part of the
        # PlatformChildSite name.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # Identifier. Format: accounts/`account`/platforms/`platform`/childAccounts/`
        # child`/sites/`platformChildSite`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Resource name of the Platform Group of the Platform Child Site.
        # Corresponds to the JSON property `platformGroup`
        # @return [String]
        attr_accessor :platform_group
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain = args[:domain] if args.key?(:domain)
          @name = args[:name] if args.key?(:name)
          @platform_group = args[:platform_group] if args.key?(:platform_group)
        end
      end
      
      # Representation of a Transparent Platform Group.
      class PlatformGroup
        include Google::Apis::Core::Hashable
      
        # Output only. Description of the PlatformGroup.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Identifier. Format: accounts/`account`/platforms/`platform`/groups/`
        # platform_group`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A representation of a decimal value, such as 2.5. Clients may convert values
        # into language-native decimal formats, such as Java's [BigDecimal](https://docs.
        # oracle.com/en/java/javase/11/docs/api/java.base/java/math/BigDecimal.html) or
        # Python's [decimal.Decimal](https://docs.python.org/3/library/decimal.html).
        # Corresponds to the JSON property `revshareMillipercent`
        # @return [Google::Apis::AdsenseplatformV1alpha::Decimal]
        attr_accessor :revshare_millipercent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @revshare_millipercent = args[:revshare_millipercent] if args.key?(:revshare_millipercent)
        end
      end
      
      # Response definition for the site request review rpc.
      class RequestSiteReviewResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Representation of a Site.
      class Site
        include Google::Apis::Core::Hashable
      
        # Domain/sub-domain of the site. Must be a valid domain complying with [RFC 1035]
        # (https://www.ietf.org/rfc/rfc1035.txt) and formatted as punycode [RFC 3492](
        # https://www.ietf.org/rfc/rfc3492.txt) in case the domain contains unicode
        # characters.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # Output only. Resource name of a site. Format: platforms/`platform`/accounts/`
        # account`/sites/`site`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. State of a site.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain = args[:domain] if args.key?(:domain)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
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
    end
  end
end
