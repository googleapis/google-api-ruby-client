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
    module MybusinessV3
      
      # An account is a container for your business's locations. If you are the only
      # user who manages locations for your business, you can use your personal
      # Google Account. To share management of locations with multiple users,
      # [create a business account]
      # (https://support.google.com/business/answer/6085339?hl=en&ref_topic=6085325).
      class Account
        include Google::Apis::Core::Hashable
      
        # The name of the account. Note: For an account with AccountType `PERSONAL`,
        # this is the first
        # and last name of the user account.
        # Corresponds to the JSON property `accountName`
        # @return [String]
        attr_accessor :account_name
      
        # The resource name, in the format `accounts/`account_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Specifies the AccountRole
        # the caller has for this account.
        # @OutputOnly
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # Indicates status of the account, such as whether the account
        # has been verified by Google.
        # Corresponds to the JSON property `state`
        # @return [Google::Apis::MybusinessV3::AccountState]
        attr_accessor :state
      
        # Specifies the AccountType
        # of this account.
        # @OutputOnly
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_name = args[:account_name] if args.key?(:account_name)
          @name = args[:name] if args.key?(:name)
          @role = args[:role] if args.key?(:role)
          @state = args[:state] if args.key?(:state)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Indicates status of the account, such as whether the account
      # has been verified by Google.
      class AccountState
        include Google::Apis::Core::Hashable
      
        # If verified, future locations that are created are automatically
        # be connected to maps, and have Google+ pages created, without requiring
        # moderation.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Additional information that is surfaced in AdWords.
      class AdWordsLocationExtensions
        include Google::Apis::Core::Hashable
      
        # An alternate phone number to display on AdWords location extensions
        # instead of the location's primary phone number.
        # Corresponds to the JSON property `adPhone`
        # @return [String]
        attr_accessor :ad_phone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_phone = args[:ad_phone] if args.key?(:ad_phone)
        end
      end
      
      # Represents the physical location of the business.
      # Example addresses:
      # address_lines: "1600 Amphitheatre Parkway"
      # locality: Mountain View
      # administrative_area: CA
      # country: US
      # postal_code: 94043
      # address_lines: "A-205, Natasha Apartments", "2, Inner Ring Road"
      # sub_locality: Domlur
      # locality: Bangalore
      # administrative_area: Karnataka
      # country: IN
      # postal_code: 560071
      class Address
        include Google::Apis::Core::Hashable
      
        # The precise address information for the business below the sub-locality
        # level. For most countries, the first line should include a street number
        # and street name. Suite numbers, floors, building numbers, etc., may also be
        # included. Imprecise information like cross-streets and nearby landmarks
        # should only be included in regions where the official street address does
        # not accurately pinpoint the business's location. Maximum 80 characters.
        # Corresponds to the JSON property `addressLines`
        # @return [Array<String>]
        attr_accessor :address_lines
      
        # The state or province where the business is located. Using the common
        # abbreviation is generally preferred, such as CA for California or NSW
        # for New South Wales.
        # Not all countries require this field.  Use the address editor in the
        # product to determine whether it is appropriate for an address in a
        # particular country.
        # Also known as:
        # "area" (Hong Kong), "county" (Ireland, Taiwan, United Kingdom),
        # "department" (Colombia, Nicaragua), "district" (Indonesia),
        # "do/si" (South Korea), "emirate" (United Arab Emirates), "island,"
        # "oblast" (Russia, Ukraine), "parish," "prefecture" (Japan).
        # Examples:
        # California (United States), Ontario (Canada), Uttar Pradesh (India).
        # Maximum 80 characters.
        # Corresponds to the JSON property `administrativeArea`
        # @return [String]
        attr_accessor :administrative_area
      
        # The ISO 3166-1 alpha-2 country code where the business is located. Once
        # a location is created, the country cannot be changed.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # The city or town where the business is located.
        # Also known as:
        # "district" (Hong Kong, Turkey), "post town" (United Kingdom).
        # Examples:
        # Chicago (United States), Berlin (Germany), London (United Kingdom).
        # Maximum 80 characters.
        # Corresponds to the JSON property `locality`
        # @return [String]
        attr_accessor :locality
      
        # The postal code of the business. If the postal code begins with zero, make
        # sure that your formatting does not remove the zero as the first digit.
        # Also known as: "zip code" (United States), "PIN code" (India).
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # The suburb where the business is located. This is the division just smaller
        # than a locality (city). Previously referred to in Google My Business
        # Locations as "district". Maximum 80 characters.
        # Also known as: "district" (South Korea), "neighborhood" (Brazil, Mexico),
        # "village / township" (Malaysia).
        # Examples:
        # Manhattan (United States),
        # Centro (Mexico),
        # Songpa District (South Korea.)
        # Corresponds to the JSON property `subLocality`
        # @return [String]
        attr_accessor :sub_locality
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address_lines = args[:address_lines] if args.key?(:address_lines)
          @administrative_area = args[:administrative_area] if args.key?(:administrative_area)
          @country = args[:country] if args.key?(:country)
          @locality = args[:locality] if args.key?(:locality)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @sub_locality = args[:sub_locality] if args.key?(:sub_locality)
        end
      end
      
      # An administrator of an Account, or a
      # Location.
      class Admin
        include Google::Apis::Core::Hashable
      
        # The name of the admin. When making the initial invitation, this is the
        # invitee's email address. On `GET` calls, the user's email address is
        # returned if the invitation is still pending. Otherwise, it contains
        # the user's first and last names.
        # Corresponds to the JSON property `adminName`
        # @return [String]
        attr_accessor :admin_name
      
        # The resource name. For account admins, this is in the form:
        # `accounts/`account_id`/admins/`admin_id``
        # For location admins, this is in the form:
        # `accounts/`account_id`/locations/`location_id`/admins/`admin_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Indicates whether this admin has a pending invitation for the specified
        # resource.
        # @OutputOnly
        # Corresponds to the JSON property `pendingInvitation`
        # @return [Boolean]
        attr_accessor :pending_invitation
        alias_method :pending_invitation?, :pending_invitation
      
        # Specifies the AdminRole that this
        # admin uses with the specified Account
        # or Location resource.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admin_name = args[:admin_name] if args.key?(:admin_name)
          @name = args[:name] if args.key?(:name)
          @pending_invitation = args[:pending_invitation] if args.key?(:pending_invitation)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # Request message for MyBusiness.AssociateLocationRequest to associate a
      # location to a place or indicate no match.
      class AssociateLocationRequest
        include Google::Apis::Core::Hashable
      
        # The association to establish. If not set, it indicates no match.
        # Corresponds to the JSON property `placeId`
        # @return [String]
        attr_accessor :place_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @place_id = args[:place_id] if args.key?(:place_id)
        end
      end
      
      # A location attribute. Attributes provide additional, information about a
      # location. The attributes that can be set on a location may vary based on
      # the properties of that location (e.g. category). Available attributes are
      # determined by Google and may be added and removed without API changes.
      class Attribute
        include Google::Apis::Core::Hashable
      
        # The id of the attribute. Attribute ids are provided by Google.
        # Corresponds to the JSON property `attributeId`
        # @return [String]
        attr_accessor :attribute_id
      
        # The type of value that this attribute contains. This should be used to
        # determine how to interpret the value.
        # @OutputOnly
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        # The values for this attribute. The type of the values supplied must match
        # that expected for that attribute, see AttributeValueType. This is a
        # repeated field where multiple attribute values may be provided. Current
        # attribute types only support one value, but future types may support
        # multiple values.
        # Corresponds to the JSON property `values`
        # @return [Array<Object>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_id = args[:attribute_id] if args.key?(:attribute_id)
          @value_type = args[:value_type] if args.key?(:value_type)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Metadata for an attribute. Contains display information for the attribute,
      # including a localised name and a heading for grouping related attributes
      # together.
      class AttributeMetadata
        include Google::Apis::Core::Hashable
      
        # The id of the attribute.
        # Corresponds to the JSON property `attributeId`
        # @return [String]
        attr_accessor :attribute_id
      
        # The localised display name for the attribute, if available, otherwise
        # the English display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The localised display name of the group that contains this attribute, if
        # available, otherwise the English group name. Related attributes are
        # collected into group and should be displayed together under the heading
        # given here.
        # Corresponds to the JSON property `groupDisplayName`
        # @return [String]
        attr_accessor :group_display_name
      
        # If true, the attribute supports multiple values. If false only a single
        # value should be provided.
        # Corresponds to the JSON property `isRepeatable`
        # @return [Boolean]
        attr_accessor :is_repeatable
        alias_method :is_repeatable?, :is_repeatable
      
        # For some types of attributes (e.g. enums) a list of supported values and
        # corresponding display names for those values is provided.
        # Corresponds to the JSON property `valueMetadata`
        # @return [Array<Google::Apis::MybusinessV3::AttributeValueMetadata>]
        attr_accessor :value_metadata
      
        # The value type for the attribute. Values set and retrieved should be
        # expected to be of this type.
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_id = args[:attribute_id] if args.key?(:attribute_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @group_display_name = args[:group_display_name] if args.key?(:group_display_name)
          @is_repeatable = args[:is_repeatable] if args.key?(:is_repeatable)
          @value_metadata = args[:value_metadata] if args.key?(:value_metadata)
          @value_type = args[:value_type] if args.key?(:value_type)
        end
      end
      
      # Metadata for supported attribute values
      class AttributeValueMetadata
        include Google::Apis::Core::Hashable
      
        # The display name for this value, localised where available otherwise in
        # English.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The attribute value
        # Corresponds to the JSON property `value`
        # @return [Object]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class BatchGetLocationsRequest
        include Google::Apis::Core::Hashable
      
        # A collection of locations to fetch, specified by their names.
        # Corresponds to the JSON property `locationNames`
        # @return [Array<String>]
        attr_accessor :location_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location_names = args[:location_names] if args.key?(:location_names)
        end
      end
      
      # 
      class BatchGetLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A collection of locations.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::MybusinessV3::Location>]
        attr_accessor :locations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
        end
      end
      
      # Represents the time periods that this location is open for business.
      # Holds a collection of TimePeriod
      # instances.
      class BusinessHours
        include Google::Apis::Core::Hashable
      
        # A collection of times that this location is open for business. Each period
        # represents a range of hours when the location is open during the week.
        # Corresponds to the JSON property `periods`
        # @return [Array<Google::Apis::MybusinessV3::TimePeriod>]
        attr_accessor :periods
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @periods = args[:periods] if args.key?(:periods)
        end
      end
      
      # A category describing what this business is (not what it does). For a list of
      # valid category IDs, and the mappings to their human readable names, see
      # the [category list](/my-business/content/categories).
      class Category
        include Google::Apis::Core::Hashable
      
        # A stable ID (provided by Google) for this category. While it is possible
        # to populate only the `name` field in a category, setting the `category_id`
        # field is
        # preferred.
        # If both fields are populated, the `category_id` takes precedence, and
        # the supplied `name` field is ignored, and populated based on the
        # value of this field.
        # Corresponds to the JSON property `categoryId`
        # @return [String]
        attr_accessor :category_id
      
        # The human-readable name of the category.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category_id = args[:category_id] if args.key?(:category_id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Request message for MyBusiness.ClearLocationAssociationRequest to clear
      # the association between a location to its place ID.
      class ClearLocationAssociationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Represents a whole calendar date, e.g. date of birth. The time of day and
      # time zone are either specified elsewhere or are not significant. The date
      # is relative to the Proleptic Gregorian Calendar. The day may be 0 to
      # represent a year and month where the day is not significant, e.g. credit card
      # expiration date. The year may be 0 to represent a month and day independent
      # of year, e.g. anniversary date. Related types are google.type.TimeOfDay
      # and `google.protobuf.Timestamp`.
      class Date
        include Google::Apis::Core::Hashable
      
        # Day of month. Must be from 1 to 31 and valid for the year and month, or 0
        # if specifying a year/month where the day is not significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of year. Must be from 1 to 12.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of date. Must be from 1 to 9999, or 0 if specifying a date without
        # a year.
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
      
      # Information about the location that this location duplicates.
      class Duplicate
        include Google::Apis::Core::Hashable
      
        # The resource name of the location that this duplicates. Only populated
        # if the authenticated user has access rights to that location and that
        # location is not deleted.
        # Corresponds to the JSON property `locationName`
        # @return [String]
        attr_accessor :location_name
      
        # Indicates the ownership status between this location and the location
        # that it duplicates.
        # Corresponds to the JSON property `ownership`
        # @return [String]
        attr_accessor :ownership
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location_name = args[:location_name] if args.key?(:location_name)
          @ownership = args[:ownership] if args.key?(:ownership)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated
      # empty messages in your APIs. A typical example is to use it as the request
      # or the response type of an API method. For instance:
      # service Foo `
      # rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
      # `
      # The JSON representation for `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for MyBusiness.FindMatchingLocations.
      class FindMatchingLocationsRequest
        include Google::Apis::Core::Hashable
      
        # The preferred language for the matching location.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Indicates the duration of acceptable cache-age. If omitted, will always
        # return the cached data (if available). If the cache is older than the
        # provided duration, or if a cached value is not available, results will be
        # re-calculated and re-cached.
        # Corresponds to the JSON property `maxCacheDuration`
        # @return [String]
        attr_accessor :max_cache_duration
      
        # The number of matches to return. The default value is 3, with a maximum
        # of 10. Note that latency may increase if more are requested. There is no
        # pagination. This field is only respected if the cache needs to be updated.
        # Corresponds to the JSON property `numResults`
        # @return [Fixnum]
        attr_accessor :num_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_code = args[:language_code] if args.key?(:language_code)
          @max_cache_duration = args[:max_cache_duration] if args.key?(:max_cache_duration)
          @num_results = args[:num_results] if args.key?(:num_results)
        end
      end
      
      # Response message for MyBusiness.FindMatchingLocations
      class FindMatchingLocationsResponse
        include Google::Apis::Core::Hashable
      
        # When the matching algorithm was last executed for this location.
        # Corresponds to the JSON property `matchTime`
        # @return [String]
        attr_accessor :match_time
      
        # A collection of locations that are potential matches to the specified
        # location, listed in order from best to least match. If there is an exact
        # match, it will be in the first position.
        # Corresponds to the JSON property `matchedLocations`
        # @return [Array<Google::Apis::MybusinessV3::MatchedLocation>]
        attr_accessor :matched_locations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @match_time = args[:match_time] if args.key?(:match_time)
          @matched_locations = args[:matched_locations] if args.key?(:matched_locations)
        end
      end
      
      # Represents a location that was modified by Google.
      class GoogleUpdatedLocation
        include Google::Apis::Core::Hashable
      
        # The fields that Google updated.
        # Corresponds to the JSON property `diffMask`
        # @return [String]
        attr_accessor :diff_mask
      
        # A location.
        # See the [help center article]
        # (https://support.google.com/business/answer/3038177) for a detailed
        # description of these fields, or the [category
        # list](/my-business/content/categories] for a list of valid business
        # categories.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::MybusinessV3::Location]
        attr_accessor :location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @diff_mask = args[:diff_mask] if args.key?(:diff_mask)
          @location = args[:location] if args.key?(:location)
        end
      end
      
      # An object representing a latitude/longitude pair. This is expressed as a pair
      # of doubles representing degrees latitude and degrees longitude. Unless
      # specified otherwise, this must conform to the
      # <a href="http://www.unoosa.org/pdf/icg/2012/template/WGS_84.pdf">WGS84
      # standard</a>. Values must be within normalized ranges.
      # Example of normalization code in Python:
      # def NormalizeLongitude(longitude):
      # """Wraps decimal degrees longitude to [-180.0, 180.0]."""
      # q, r = divmod(longitude, 360.0)
      # if r > 180.0 or (r == 180.0 and q <= -1.0):
      # return r - 360.0
      # return r
      # def NormalizeLatLng(latitude, longitude):
      # """Wraps decimal degrees latitude and longitude to
      # [-90.0, 90.0] and [-180.0, 180.0], respectively."""
      # r = latitude % 360.0
      # if r <= 90.0:
      # return r, NormalizeLongitude(longitude)
      # elif r >= 270.0:
      # return r - 360, NormalizeLongitude(longitude)
      # else:
      # return 180 - r, NormalizeLongitude(longitude + 180.0)
      # assert 180.0 == NormalizeLongitude(180.0)
      # assert -180.0 == NormalizeLongitude(-180.0)
      # assert -179.0 == NormalizeLongitude(181.0)
      # assert (0.0, 0.0) == NormalizeLatLng(360.0, 0.0)
      # assert (0.0, 0.0) == NormalizeLatLng(-360.0, 0.0)
      # assert (85.0, 180.0) == NormalizeLatLng(95.0, 0.0)
      # assert (-85.0, -170.0) == NormalizeLatLng(-95.0, 10.0)
      # assert (90.0, 10.0) == NormalizeLatLng(90.0, 10.0)
      # assert (-90.0, -10.0) == NormalizeLatLng(-90.0, -10.0)
      # assert (0.0, -170.0) == NormalizeLatLng(-180.0, 10.0)
      # assert (0.0, -170.0) == NormalizeLatLng(180.0, 10.0)
      # assert (-90.0, 10.0) == NormalizeLatLng(270.0, 10.0)
      # assert (90.0, 10.0) == NormalizeLatLng(-270.0, 10.0)
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
      
      # 
      class ListAccountAdminsResponse
        include Google::Apis::Core::Hashable
      
        # A collection of Admin instances.
        # Corresponds to the JSON property `admins`
        # @return [Array<Google::Apis::MybusinessV3::Admin>]
        attr_accessor :admins
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admins = args[:admins] if args.key?(:admins)
        end
      end
      
      # 
      class ListAccountsResponse
        include Google::Apis::Core::Hashable
      
        # A collection of accounts to which the user has access.
        # Corresponds to the JSON property `accounts`
        # @return [Array<Google::Apis::MybusinessV3::Account>]
        attr_accessor :accounts
      
        # If the number of accounts exceeds the requested page size, this field is
        # populated with a token to fetch the next page of accounts on a
        # subsequent call to `accounts.list`. If there are no more accounts, this field
        # is not present in the response.
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
      
      # 
      class ListLocationAdminsResponse
        include Google::Apis::Core::Hashable
      
        # A collection of Admin instances.
        # Corresponds to the JSON property `admins`
        # @return [Array<Google::Apis::MybusinessV3::Admin>]
        attr_accessor :admins
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admins = args[:admins] if args.key?(:admins)
        end
      end
      
      # 
      class ListLocationAttributeMetadataResponse
        include Google::Apis::Core::Hashable
      
        # A collection of attribute metadata for the available attributes.
        # Corresponds to the JSON property `attributes`
        # @return [Array<Google::Apis::MybusinessV3::AttributeMetadata>]
        attr_accessor :attributes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
        end
      end
      
      # 
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # The locations
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::MybusinessV3::Location>]
        attr_accessor :locations
      
        # If the number of locations exceeded the requested page size, this field
        # is populated with a token to fetch the next page of locations on a
        # subsequent call to ListLocations. If there are no more locations, this
        # field is not be present in the response.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for MyBusiness.ListReviews.
      class ListReviewsResponse
        include Google::Apis::Core::Hashable
      
        # The average star rating of all reviews for this location
        # on a scale of 1 to 5.
        # Corresponds to the JSON property `averageRating`
        # @return [Float]
        attr_accessor :average_rating
      
        # If the number of reviews exceeded the requested page size, this field
        # is populated with a token to fetch the next page of reviews on a
        # subsequent call to ListReviews. If there are no more reviews, this
        # field is not be present in the response.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The reviews.
        # Corresponds to the JSON property `reviews`
        # @return [Array<Google::Apis::MybusinessV3::Review>]
        attr_accessor :reviews
      
        # The total number of reviews for this location.
        # Corresponds to the JSON property `totalReviewCount`
        # @return [Fixnum]
        attr_accessor :total_review_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @average_rating = args[:average_rating] if args.key?(:average_rating)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @reviews = args[:reviews] if args.key?(:reviews)
          @total_review_count = args[:total_review_count] if args.key?(:total_review_count)
        end
      end
      
      # A location.
      # See the [help center article]
      # (https://support.google.com/business/answer/3038177) for a detailed
      # description of these fields, or the [category
      # list](/my-business/content/categories] for a list of valid business
      # categories.
      class Location
        include Google::Apis::Core::Hashable
      
        # Additional information that is surfaced in AdWords.
        # Corresponds to the JSON property `adWordsLocationExtensions`
        # @return [Google::Apis::MybusinessV3::AdWordsLocationExtensions]
        attr_accessor :ad_words_location_extensions
      
        # Additional categories to describe your business.
        # Categories help your customers find accurate, specific results for services
        # they're interested in. In order to keep your business information accurate
        # and live, make sure that you use as few categories as possible to describe
        # your overall core business.
        # Choose categories that are as specific as possible, but representative of
        # your main business.
        # Corresponds to the JSON property `additionalCategories`
        # @return [Array<Google::Apis::MybusinessV3::Category>]
        attr_accessor :additional_categories
      
        # Up to two phone numbers (mobile or landline, no fax) at which your business
        # can be called, in addition to your primary phone number.
        # Corresponds to the JSON property `additionalPhones`
        # @return [Array<String>]
        attr_accessor :additional_phones
      
        # Represents the physical location of the business.
        # Example addresses:
        # address_lines: "1600 Amphitheatre Parkway"
        # locality: Mountain View
        # administrative_area: CA
        # country: US
        # postal_code: 94043
        # address_lines: "A-205, Natasha Apartments", "2, Inner Ring Road"
        # sub_locality: Domlur
        # locality: Bangalore
        # administrative_area: Karnataka
        # country: IN
        # postal_code: 560071
        # Corresponds to the JSON property `address`
        # @return [Google::Apis::MybusinessV3::Address]
        attr_accessor :address
      
        # Attributes for this location.
        # Corresponds to the JSON property `attributes`
        # @return [Array<Google::Apis::MybusinessV3::Attribute>]
        attr_accessor :attributes
      
        # A collection of free-form strings to allow you to tag your business. These
        # labels are NOT user facing, and are only be seen by you.
        # Limited to 255 characters (per label).
        # Corresponds to the JSON property `labels`
        # @return [Array<String>]
        attr_accessor :labels
      
        # An object representing a latitude/longitude pair. This is expressed as a pair
        # of doubles representing degrees latitude and degrees longitude. Unless
        # specified otherwise, this must conform to the
        # <a href="http://www.unoosa.org/pdf/icg/2012/template/WGS_84.pdf">WGS84
        # standard</a>. Values must be within normalized ranges.
        # Example of normalization code in Python:
        # def NormalizeLongitude(longitude):
        # """Wraps decimal degrees longitude to [-180.0, 180.0]."""
        # q, r = divmod(longitude, 360.0)
        # if r > 180.0 or (r == 180.0 and q <= -1.0):
        # return r - 360.0
        # return r
        # def NormalizeLatLng(latitude, longitude):
        # """Wraps decimal degrees latitude and longitude to
        # [-90.0, 90.0] and [-180.0, 180.0], respectively."""
        # r = latitude % 360.0
        # if r <= 90.0:
        # return r, NormalizeLongitude(longitude)
        # elif r >= 270.0:
        # return r - 360, NormalizeLongitude(longitude)
        # else:
        # return 180 - r, NormalizeLongitude(longitude + 180.0)
        # assert 180.0 == NormalizeLongitude(180.0)
        # assert -180.0 == NormalizeLongitude(-180.0)
        # assert -179.0 == NormalizeLongitude(181.0)
        # assert (0.0, 0.0) == NormalizeLatLng(360.0, 0.0)
        # assert (0.0, 0.0) == NormalizeLatLng(-360.0, 0.0)
        # assert (85.0, 180.0) == NormalizeLatLng(95.0, 0.0)
        # assert (-85.0, -170.0) == NormalizeLatLng(-95.0, 10.0)
        # assert (90.0, 10.0) == NormalizeLatLng(90.0, 10.0)
        # assert (-90.0, -10.0) == NormalizeLatLng(-90.0, -10.0)
        # assert (0.0, -170.0) == NormalizeLatLng(-180.0, 10.0)
        # assert (0.0, -170.0) == NormalizeLatLng(180.0, 10.0)
        # assert (-90.0, 10.0) == NormalizeLatLng(270.0, 10.0)
        # assert (90.0, 10.0) == NormalizeLatLng(-270.0, 10.0)
        # Corresponds to the JSON property `latlng`
        # @return [Google::Apis::MybusinessV3::LatLng]
        attr_accessor :latlng
      
        # Alternate / surrogate key references for a location.
        # Corresponds to the JSON property `locationKey`
        # @return [Google::Apis::MybusinessV3::LocationKey]
        attr_accessor :location_key
      
        # Location name should reflect your business's real-world name, as used
        # consistently on your storefront, website, and stationery, and as known to
        # customers.
        # Any additional information, when relevant, can be included in other
        # fields of the resource (for example, `Address`, `Categories`).
        # Do not add unnecessary information to your name (for example, prefer "Google"
        # over
        # "Google Inc. - Mountain View Corporate Headquarters").
        # It is NOT permitted to include marketing taglines, store codes, special
        # characters, hours or
        # closed/open status, phone numbers, website URLs, service/product
        # information, location/address or directions, or containment information
        # (for example, "Chase ATM in Duane Reade").
        # Corresponds to the JSON property `locationName`
        # @return [String]
        attr_accessor :location_name
      
        # Contains a set of booleans that reflect the state of a Location.
        # Corresponds to the JSON property `locationState`
        # @return [Google::Apis::MybusinessV3::LocationState]
        attr_accessor :location_state
      
        # Additional non-user-editable information about the location.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::MybusinessV3::Metadata]
        attr_accessor :metadata
      
        # Google identifier for this location in the form:
        # `accounts/`account_id`/locations/`location_id``
        # In the context of matches, this field will not be populated.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Indicates whether the location is currently open for business.
        # All locations are open by default, unless updated to be closed.
        # Corresponds to the JSON property `openInfo`
        # @return [Google::Apis::MybusinessV3::OpenInfo]
        attr_accessor :open_info
      
        # A collection of photos representing the business, categorized by photo type.
        # The URL for each photo should point to a publicly accessible image.
        # Photos should be supplied in either JPG or PNG format unless specified
        # otherwise. If the photo was added by using Google My Business Locations or
        # this API, the user-provided URL is used. If the photo was uploaded via the
        # Google My Business Photos App, the photo uses a generated URL hosted by
        # Google. Exceptions: `profile_photo_url` and `cover_photo_url` are always
        # under a Google domain.
        # With the exception of profile_photo_url and cover_photo_url, all photos
        # must measure a minimum of 250px on the short edge, with a file size of at
        # least 10240 bytes.
        # Corresponds to the JSON property `photos`
        # @return [Google::Apis::MybusinessV3::Photos]
        attr_accessor :photos
      
        # A category describing what this business is (not what it does). For a list of
        # valid category IDs, and the mappings to their human readable names, see
        # the [category list](/my-business/content/categories).
        # Corresponds to the JSON property `primaryCategory`
        # @return [Google::Apis::MybusinessV3::Category]
        attr_accessor :primary_category
      
        # A phone number that connects to your individual business location
        # as directly as possible. Use a local phone number instead of a central,
        # call center helpline number whenever possible.
        # Corresponds to the JSON property `primaryPhone`
        # @return [String]
        attr_accessor :primary_phone
      
        # Represents the time periods that this location is open for business.
        # Holds a collection of TimePeriod
        # instances.
        # Corresponds to the JSON property `regularHours`
        # @return [Google::Apis::MybusinessV3::BusinessHours]
        attr_accessor :regular_hours
      
        # Service area businesses provide their service at the customer's location (for
        # example a locksmith or plumber).
        # Corresponds to the JSON property `serviceArea`
        # @return [Google::Apis::MybusinessV3::ServiceAreaBusiness]
        attr_accessor :service_area
      
        # Represents a set of time periods when a location's operational hours differ
        # from its normal business hours.
        # Corresponds to the JSON property `specialHours`
        # @return [Google::Apis::MybusinessV3::SpecialHours]
        attr_accessor :special_hours
      
        # External identifier for this location, which must be unique inside a given
        # account. This is a means of associating the location with your own records.
        # Corresponds to the JSON property `storeCode`
        # @return [String]
        attr_accessor :store_code
      
        # A URL for this business. If possible, use a URL that represents this
        # individual business location instead of a generic website/URL that represents
        # all locations, or the brand.
        # Corresponds to the JSON property `websiteUrl`
        # @return [String]
        attr_accessor :website_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_words_location_extensions = args[:ad_words_location_extensions] if args.key?(:ad_words_location_extensions)
          @additional_categories = args[:additional_categories] if args.key?(:additional_categories)
          @additional_phones = args[:additional_phones] if args.key?(:additional_phones)
          @address = args[:address] if args.key?(:address)
          @attributes = args[:attributes] if args.key?(:attributes)
          @labels = args[:labels] if args.key?(:labels)
          @latlng = args[:latlng] if args.key?(:latlng)
          @location_key = args[:location_key] if args.key?(:location_key)
          @location_name = args[:location_name] if args.key?(:location_name)
          @location_state = args[:location_state] if args.key?(:location_state)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @open_info = args[:open_info] if args.key?(:open_info)
          @photos = args[:photos] if args.key?(:photos)
          @primary_category = args[:primary_category] if args.key?(:primary_category)
          @primary_phone = args[:primary_phone] if args.key?(:primary_phone)
          @regular_hours = args[:regular_hours] if args.key?(:regular_hours)
          @service_area = args[:service_area] if args.key?(:service_area)
          @special_hours = args[:special_hours] if args.key?(:special_hours)
          @store_code = args[:store_code] if args.key?(:store_code)
          @website_url = args[:website_url] if args.key?(:website_url)
        end
      end
      
      # Alternate / surrogate key references for a location.
      class LocationKey
        include Google::Apis::Core::Hashable
      
        # A value of true indicates that an unset place ID is deliberate,
        # which is different from no association being made yet.
        # @OutputOnly
        # Corresponds to the JSON property `explicitNoPlaceId`
        # @return [Boolean]
        attr_accessor :explicit_no_place_id
        alias_method :explicit_no_place_id?, :explicit_no_place_id
      
        # If this location has been verified and is connected to/appears on Google
        # Maps, this field is populated with the place ID for the location.
        # This ID can be used in various Places APIs.
        # If this location is unverified, this field may be populated if the location
        # has been associated with a place that appears on Google Maps.
        # This field can be set during Create calls, but not for Update.
        # The additional explicit_no_place_id bool qualifies whether an unset
        # place ID is deliberate or not.
        # Corresponds to the JSON property `placeId`
        # @return [String]
        attr_accessor :place_id
      
        # If this location has a Google+ page associated with it, this is
        # populated with the Google+ page ID for this location.
        # @OutputOnly
        # Corresponds to the JSON property `plusPageId`
        # @return [String]
        attr_accessor :plus_page_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @explicit_no_place_id = args[:explicit_no_place_id] if args.key?(:explicit_no_place_id)
          @place_id = args[:place_id] if args.key?(:place_id)
          @plus_page_id = args[:plus_page_id] if args.key?(:plus_page_id)
        end
      end
      
      # Contains a set of booleans that reflect the state of a Location.
      class LocationState
        include Google::Apis::Core::Hashable
      
        # Indicates whether the location can be deleted using the Google My Business
        # UI.
        # @OutputOnly
        # Corresponds to the JSON property `canDelete`
        # @return [Boolean]
        attr_accessor :can_delete
        alias_method :can_delete?, :can_delete
      
        # Indicates whether the location can be updated.
        # @OutputOnly
        # Corresponds to the JSON property `canUpdate`
        # @return [Boolean]
        attr_accessor :can_update
        alias_method :can_update?, :can_update
      
        # Indicates whether the location is a duplicate of another location.
        # See metadata.duplicate for more information.
        # @OutputOnly
        # Corresponds to the JSON property `isDuplicate`
        # @return [Boolean]
        attr_accessor :is_duplicate
        alias_method :is_duplicate?, :is_duplicate
      
        # Indicates whether the place ID associated with this location has updates.
        # @OutputOnly
        # Corresponds to the JSON property `isGoogleUpdated`
        # @return [Boolean]
        attr_accessor :is_google_updated
        alias_method :is_google_updated?, :is_google_updated
      
        # Indicates whether the location is suspended.
        # Suspended locations are not visible to end users in Google products.
        # If you believe this was a mistake, see the [help center article]
        # (https://support.google.com/business/answer/4569145).
        # @OutputOnly
        # Corresponds to the JSON property `isSuspended`
        # @return [Boolean]
        attr_accessor :is_suspended
        alias_method :is_suspended?, :is_suspended
      
        # Indicates whether the location is verified.
        # @OutputOnly
        # Corresponds to the JSON property `isVerified`
        # @return [Boolean]
        attr_accessor :is_verified
        alias_method :is_verified?, :is_verified
      
        # Indicates whether the location requires reverification.
        # @OutputOnly
        # Corresponds to the JSON property `needsReverification`
        # @return [Boolean]
        attr_accessor :needs_reverification
        alias_method :needs_reverification?, :needs_reverification
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @can_delete = args[:can_delete] if args.key?(:can_delete)
          @can_update = args[:can_update] if args.key?(:can_update)
          @is_duplicate = args[:is_duplicate] if args.key?(:is_duplicate)
          @is_google_updated = args[:is_google_updated] if args.key?(:is_google_updated)
          @is_suspended = args[:is_suspended] if args.key?(:is_suspended)
          @is_verified = args[:is_verified] if args.key?(:is_verified)
          @needs_reverification = args[:needs_reverification] if args.key?(:needs_reverification)
        end
      end
      
      # Represents a possible match to a location.
      class MatchedLocation
        include Google::Apis::Core::Hashable
      
        # Is this an exact match?
        # Corresponds to the JSON property `isExactMatch`
        # @return [Boolean]
        attr_accessor :is_exact_match
        alias_method :is_exact_match?, :is_exact_match
      
        # A location.
        # See the [help center article]
        # (https://support.google.com/business/answer/3038177) for a detailed
        # description of these fields, or the [category
        # list](/my-business/content/categories] for a list of valid business
        # categories.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::MybusinessV3::Location]
        attr_accessor :location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @is_exact_match = args[:is_exact_match] if args.key?(:is_exact_match)
          @location = args[:location] if args.key?(:location)
        end
      end
      
      # Additional non-user-editable information about the location.
      class Metadata
        include Google::Apis::Core::Hashable
      
        # Information about the location that this location duplicates.
        # Corresponds to the JSON property `duplicate`
        # @return [Google::Apis::MybusinessV3::Duplicate]
        attr_accessor :duplicate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duplicate = args[:duplicate] if args.key?(:duplicate)
        end
      end
      
      # Indicates whether the location is currently open for business.
      # All locations are open by default, unless updated to be closed.
      class OpenInfo
        include Google::Apis::Core::Hashable
      
        # Indicates the Location OpenForBusiness status.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # A collection of photos representing the business, categorized by photo type.
      # The URL for each photo should point to a publicly accessible image.
      # Photos should be supplied in either JPG or PNG format unless specified
      # otherwise. If the photo was added by using Google My Business Locations or
      # this API, the user-provided URL is used. If the photo was uploaded via the
      # Google My Business Photos App, the photo uses a generated URL hosted by
      # Google. Exceptions: `profile_photo_url` and `cover_photo_url` are always
      # under a Google domain.
      # With the exception of profile_photo_url and cover_photo_url, all photos
      # must measure a minimum of 250px on the short edge, with a file size of at
      # least 10240 bytes.
      class Photos
        include Google::Apis::Core::Hashable
      
        # Use the additional photos category for images that don't fit in any of the
        # other categories.
        # Corresponds to the JSON property `additionalPhotoUrls`
        # @return [Array<String>]
        attr_accessor :additional_photo_urls
      
        # Common area photos show customers the common areas of your business
        # location.
        # Corresponds to the JSON property `commonAreasPhotoUrls`
        # @return [Array<String>]
        attr_accessor :common_areas_photo_urls
      
        # The cover photo showcases the personality of your business.
        # Cover photos must have a 16:9 aspect ratio, with a minimum size of 480px
        # x 270px, and a maximum size of 2120px x 1192px.
        # Corresponds to the JSON property `coverPhotoUrl`
        # @return [String]
        attr_accessor :cover_photo_url
      
        # Exterior photos help customers to recognize your business as they approach
        # from different directions.
        # Corresponds to the JSON property `exteriorPhotoUrls`
        # @return [Array<String>]
        attr_accessor :exterior_photo_urls
      
        # Food and drink photos display the food and drink items served by your
        # business.
        # Corresponds to the JSON property `foodAndDrinkPhotoUrls`
        # @return [Array<String>]
        attr_accessor :food_and_drink_photo_urls
      
        # Interior photos show customers what your business location looks like
        # inside.
        # Corresponds to the JSON property `interiorPhotoUrls`
        # @return [Array<String>]
        attr_accessor :interior_photo_urls
      
        # The logo photo helps customers to recognize your brand. Upon upload, logo
        # images are fitted into a square (transparent vertical or horizontal lines
        # are added on two sides of the image if the original image is not square).
        # Corresponds to the JSON property `logoPhotoUrl`
        # @return [String]
        attr_accessor :logo_photo_url
      
        # Menu photos show customers what your food menu looks like.
        # Corresponds to the JSON property `menuPhotoUrls`
        # @return [Array<String>]
        attr_accessor :menu_photo_urls
      
        # At work photos show you and your employees serving your customers.
        # Corresponds to the JSON property `photosAtWorkUrls`
        # @return [Array<String>]
        attr_accessor :photos_at_work_urls
      
        # Indicate which photo should be shown first in Google Maps and Search.
        # Corresponds to the JSON property `preferredPhoto`
        # @return [String]
        attr_accessor :preferred_photo
      
        # Product photos showcase the products sold by your business.
        # Corresponds to the JSON property `productPhotoUrls`
        # @return [Array<String>]
        attr_accessor :product_photo_urls
      
        # The profile photo helps people recognize your business across Google.
        # Profile photos must be square, with a minimum size of 250px and a maximum
        # size of 500px. Allowed formats are JPG, PNG, and GIF.
        # Corresponds to the JSON property `profilePhotoUrl`
        # @return [String]
        attr_accessor :profile_photo_url
      
        # Room photos show customers the inside of your guest rooms.
        # Corresponds to the JSON property `roomsPhotoUrls`
        # @return [Array<String>]
        attr_accessor :rooms_photo_urls
      
        # Team photos show your management team and your employees.
        # Corresponds to the JSON property `teamPhotoUrls`
        # @return [Array<String>]
        attr_accessor :team_photo_urls
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_photo_urls = args[:additional_photo_urls] if args.key?(:additional_photo_urls)
          @common_areas_photo_urls = args[:common_areas_photo_urls] if args.key?(:common_areas_photo_urls)
          @cover_photo_url = args[:cover_photo_url] if args.key?(:cover_photo_url)
          @exterior_photo_urls = args[:exterior_photo_urls] if args.key?(:exterior_photo_urls)
          @food_and_drink_photo_urls = args[:food_and_drink_photo_urls] if args.key?(:food_and_drink_photo_urls)
          @interior_photo_urls = args[:interior_photo_urls] if args.key?(:interior_photo_urls)
          @logo_photo_url = args[:logo_photo_url] if args.key?(:logo_photo_url)
          @menu_photo_urls = args[:menu_photo_urls] if args.key?(:menu_photo_urls)
          @photos_at_work_urls = args[:photos_at_work_urls] if args.key?(:photos_at_work_urls)
          @preferred_photo = args[:preferred_photo] if args.key?(:preferred_photo)
          @product_photo_urls = args[:product_photo_urls] if args.key?(:product_photo_urls)
          @profile_photo_url = args[:profile_photo_url] if args.key?(:profile_photo_url)
          @rooms_photo_urls = args[:rooms_photo_urls] if args.key?(:rooms_photo_urls)
          @team_photo_urls = args[:team_photo_urls] if args.key?(:team_photo_urls)
        end
      end
      
      # Defines an area that's represented by a place ID.
      class PlaceInfo
        include Google::Apis::Core::Hashable
      
        # The localized name of the place. For example, `Scottsdale, AZ`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The ID of the place.
        # Corresponds to the JSON property `placeId`
        # @return [String]
        attr_accessor :place_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @place_id = args[:place_id] if args.key?(:place_id)
        end
      end
      
      # Defines the union of areas represented by a set of places.
      class Places
        include Google::Apis::Core::Hashable
      
        # The areas represented by place IDs.
        # Corresponds to the JSON property `placeInfos`
        # @return [Array<Google::Apis::MybusinessV3::PlaceInfo>]
        attr_accessor :place_infos
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @place_infos = args[:place_infos] if args.key?(:place_infos)
        end
      end
      
      # A radius around a particular point (latitude/longitude).
      class PointRadius
        include Google::Apis::Core::Hashable
      
        # An object representing a latitude/longitude pair. This is expressed as a pair
        # of doubles representing degrees latitude and degrees longitude. Unless
        # specified otherwise, this must conform to the
        # <a href="http://www.unoosa.org/pdf/icg/2012/template/WGS_84.pdf">WGS84
        # standard</a>. Values must be within normalized ranges.
        # Example of normalization code in Python:
        # def NormalizeLongitude(longitude):
        # """Wraps decimal degrees longitude to [-180.0, 180.0]."""
        # q, r = divmod(longitude, 360.0)
        # if r > 180.0 or (r == 180.0 and q <= -1.0):
        # return r - 360.0
        # return r
        # def NormalizeLatLng(latitude, longitude):
        # """Wraps decimal degrees latitude and longitude to
        # [-90.0, 90.0] and [-180.0, 180.0], respectively."""
        # r = latitude % 360.0
        # if r <= 90.0:
        # return r, NormalizeLongitude(longitude)
        # elif r >= 270.0:
        # return r - 360, NormalizeLongitude(longitude)
        # else:
        # return 180 - r, NormalizeLongitude(longitude + 180.0)
        # assert 180.0 == NormalizeLongitude(180.0)
        # assert -180.0 == NormalizeLongitude(-180.0)
        # assert -179.0 == NormalizeLongitude(181.0)
        # assert (0.0, 0.0) == NormalizeLatLng(360.0, 0.0)
        # assert (0.0, 0.0) == NormalizeLatLng(-360.0, 0.0)
        # assert (85.0, 180.0) == NormalizeLatLng(95.0, 0.0)
        # assert (-85.0, -170.0) == NormalizeLatLng(-95.0, 10.0)
        # assert (90.0, 10.0) == NormalizeLatLng(90.0, 10.0)
        # assert (-90.0, -10.0) == NormalizeLatLng(-90.0, -10.0)
        # assert (0.0, -170.0) == NormalizeLatLng(-180.0, 10.0)
        # assert (0.0, -170.0) == NormalizeLatLng(180.0, 10.0)
        # assert (-90.0, 10.0) == NormalizeLatLng(270.0, 10.0)
        # assert (90.0, 10.0) == NormalizeLatLng(-270.0, 10.0)
        # Corresponds to the JSON property `latlng`
        # @return [Google::Apis::MybusinessV3::LatLng]
        attr_accessor :latlng
      
        # The distance in kilometers of the area around the point.
        # Corresponds to the JSON property `radiusKm`
        # @return [Float]
        attr_accessor :radius_km
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @latlng = args[:latlng] if args.key?(:latlng)
          @radius_km = args[:radius_km] if args.key?(:radius_km)
        end
      end
      
      # Represents a review for a location.
      # @OutputOnly
      class Review
        include Google::Apis::Core::Hashable
      
        # The body of the review as plain text with markups.
        # Corresponds to the JSON property `comment`
        # @return [String]
        attr_accessor :comment
      
        # The timestamp for when the review was written.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The encrypted unique identifier.
        # Corresponds to the JSON property `reviewId`
        # @return [String]
        attr_accessor :review_id
      
        # Represents the location owner/manager's reply to a review
        # Corresponds to the JSON property `reviewReply`
        # @return [Google::Apis::MybusinessV3::ReviewReply]
        attr_accessor :review_reply
      
        # Represents the author of reviews.
        # Corresponds to the JSON property `reviewer`
        # @return [Google::Apis::MybusinessV3::Reviewer]
        attr_accessor :reviewer
      
        # Star rating of the review.
        # Corresponds to the JSON property `starRating`
        # @return [String]
        attr_accessor :star_rating
      
        # The timestamp for when the review was last modified.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @comment = args[:comment] if args.key?(:comment)
          @create_time = args[:create_time] if args.key?(:create_time)
          @review_id = args[:review_id] if args.key?(:review_id)
          @review_reply = args[:review_reply] if args.key?(:review_reply)
          @reviewer = args[:reviewer] if args.key?(:reviewer)
          @star_rating = args[:star_rating] if args.key?(:star_rating)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Represents the location owner/manager's reply to a review
      class ReviewReply
        include Google::Apis::Core::Hashable
      
        # The body of the review as plain text with markups.
        # The maximum length is 4096 bytes.
        # Corresponds to the JSON property `comment`
        # @return [String]
        attr_accessor :comment
      
        # The timestamp for when the review was last modified.
        # @OutputOnly
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @comment = args[:comment] if args.key?(:comment)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Represents the author of reviews.
      class Reviewer
        include Google::Apis::Core::Hashable
      
        # The name of the reviewer.
        # Only populated with the reviewer's real name if is_anonymous is false.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Indicates whether the reviewer has opted to remain anonymous.
        # Corresponds to the JSON property `isAnonymous`
        # @return [Boolean]
        attr_accessor :is_anonymous
        alias_method :is_anonymous?, :is_anonymous
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @is_anonymous = args[:is_anonymous] if args.key?(:is_anonymous)
        end
      end
      
      # Service area businesses provide their service at the customer's location (for
      # example a locksmith or plumber).
      class ServiceAreaBusiness
        include Google::Apis::Core::Hashable
      
        # Indicates the type of the service area
        # business.
        # Corresponds to the JSON property `businessType`
        # @return [String]
        attr_accessor :business_type
      
        # Defines the union of areas represented by a set of places.
        # Corresponds to the JSON property `places`
        # @return [Google::Apis::MybusinessV3::Places]
        attr_accessor :places
      
        # A radius around a particular point (latitude/longitude).
        # Corresponds to the JSON property `radius`
        # @return [Google::Apis::MybusinessV3::PointRadius]
        attr_accessor :radius
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @business_type = args[:business_type] if args.key?(:business_type)
          @places = args[:places] if args.key?(:places)
          @radius = args[:radius] if args.key?(:radius)
        end
      end
      
      # Represents a single time period when a location's operational hours differ
      # from its normal business hours.
      # A special hour period must represent a range of less than 24 hours.
      # The `open_time` and `start_date` must predate the `close_time` and `end_date`.
      # The `close_time` and `end_date` can extend to 11:59 a.m. on the day after
      # the specified `start_date`.
      # For example, the following inputs are valid:
      # start_date=2015-11-23, open_time=08:00, close_time=18:00
      # start_date=2015-11-23, end_date=2015-11-23, open_time=08:00, close_time=18:
      # 00
      # start_date=2015-11-23, end_date=2015-11-24, open_time=13:00, close_time=11:
      # 59
      # The following inputs are NOT valid:
      # start_date=2015-11-23, open_time=13:00, close_time=11:59
      # start_date=2015-11-23, end_date=2015-11-24, open_time=13:00, close_time=12:
      # 00
      # start_date=2015-11-23, end_date=2015-11-25, open_time=08:00, close_time=18:
      # 00
      class SpecialHourPeriod
        include Google::Apis::Core::Hashable
      
        # The wall time on end_date when a location closes, expressed in
        # 24hr ISO 8601 extended format. (hh:mm) Valid values are 00:00-24:00,
        # where 24:00 represents midnight at the end of the specified day field.
        # Must be specified if is_closed is false.
        # Corresponds to the JSON property `closeTime`
        # @return [String]
        attr_accessor :close_time
      
        # Represents a whole calendar date, e.g. date of birth. The time of day and
        # time zone are either specified elsewhere or are not significant. The date
        # is relative to the Proleptic Gregorian Calendar. The day may be 0 to
        # represent a year and month where the day is not significant, e.g. credit card
        # expiration date. The year may be 0 to represent a month and day independent
        # of year, e.g. anniversary date. Related types are google.type.TimeOfDay
        # and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `endDate`
        # @return [Google::Apis::MybusinessV3::Date]
        attr_accessor :end_date
      
        # If true, end_date, open_time, and close_time are ignored,
        # and the date specified in start_date is treated as the location being
        # closed for the entire day.
        # Corresponds to the JSON property `isClosed`
        # @return [Boolean]
        attr_accessor :is_closed
        alias_method :is_closed?, :is_closed
      
        # The wall time on `start_date` when a location opens, expressed in
        # 24hr ISO 8601 extended format. (hh:mm) Valid values are 00:00-24:00,
        # where 24:00 represents midnight at the end of the specified day field.
        # Must be specified if `is_closed` is false.
        # Corresponds to the JSON property `openTime`
        # @return [String]
        attr_accessor :open_time
      
        # Represents a whole calendar date, e.g. date of birth. The time of day and
        # time zone are either specified elsewhere or are not significant. The date
        # is relative to the Proleptic Gregorian Calendar. The day may be 0 to
        # represent a year and month where the day is not significant, e.g. credit card
        # expiration date. The year may be 0 to represent a month and day independent
        # of year, e.g. anniversary date. Related types are google.type.TimeOfDay
        # and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `startDate`
        # @return [Google::Apis::MybusinessV3::Date]
        attr_accessor :start_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @close_time = args[:close_time] if args.key?(:close_time)
          @end_date = args[:end_date] if args.key?(:end_date)
          @is_closed = args[:is_closed] if args.key?(:is_closed)
          @open_time = args[:open_time] if args.key?(:open_time)
          @start_date = args[:start_date] if args.key?(:start_date)
        end
      end
      
      # Represents a set of time periods when a location's operational hours differ
      # from its normal business hours.
      class SpecialHours
        include Google::Apis::Core::Hashable
      
        # A list of exceptions to the business's regular hours.
        # Corresponds to the JSON property `specialHourPeriods`
        # @return [Array<Google::Apis::MybusinessV3::SpecialHourPeriod>]
        attr_accessor :special_hour_periods
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @special_hour_periods = args[:special_hour_periods] if args.key?(:special_hour_periods)
        end
      end
      
      # Represents a span of time that the business is open, starting on the
      # specified open
      # day/time and closing on the specified close day/time.
      # The closing time must occur after the opening time, for example later in the
      # same day, or on a subsequent day.
      class TimePeriod
        include Google::Apis::Core::Hashable
      
        # Indicates the day of the week this period ends
        # on.
        # Corresponds to the JSON property `closeDay`
        # @return [String]
        attr_accessor :close_day
      
        # Time in 24hr ISO 8601 extended format (hh:mm). Valid values are
        # 00:00-24:00, where 24:00 represents midnight at the end of the specified day
        # field.
        # Corresponds to the JSON property `closeTime`
        # @return [String]
        attr_accessor :close_time
      
        # Indicates the day of the week this period starts
        # on.
        # Corresponds to the JSON property `openDay`
        # @return [String]
        attr_accessor :open_day
      
        # Time in 24hr ISO 8601 extended format (hh:mm). Valid values are 00:00-24:00,
        # where 24:00 represents midnight at the end of the specified day field.
        # Corresponds to the JSON property `openTime`
        # @return [String]
        attr_accessor :open_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @close_day = args[:close_day] if args.key?(:close_day)
          @close_time = args[:close_time] if args.key?(:close_time)
          @open_day = args[:open_day] if args.key?(:open_day)
          @open_time = args[:open_time] if args.key?(:open_time)
        end
      end
      
      # Request message for MyBusiness.TransferLocation to transfer a location from
      # its current account to another.
      class TransferLocationRequest
        include Google::Apis::Core::Hashable
      
        # Name of the account resource to transfer the location to (e.g.
        # "accounts/8675309")
        # Corresponds to the JSON property `toAccount`
        # @return [String]
        attr_accessor :to_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @to_account = args[:to_account] if args.key?(:to_account)
        end
      end
    end
  end
end
