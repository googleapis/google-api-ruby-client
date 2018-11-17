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
    module MybusinessV4
      
      # Request message for MyBusiness.AcceptInvitation.
      class AcceptInvitationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # An account is a container for your business's locations. If you are the only
      # user who manages locations for your business, you can use your personal
      # Google Account. To share management of locations with multiple users,
      # [create a business account]
      # (https://support.google.com/business/answer/6085339?hl=en&ref_topic=6085325).
      class Account
        include Google::Apis::Core::Hashable
      
        # The name of the account. <aside class="note"><b>Note:</b> For an account
        # with AccountType `PERSONAL`,
        # this is the first and last name of the user account.</aside>
        # Corresponds to the JSON property `accountName`
        # @return [String]
        attr_accessor :account_name
      
        # Account reference number if provisioned.
        # Corresponds to the JSON property `accountNumber`
        # @return [String]
        attr_accessor :account_number
      
        # The resource name, in the format `accounts/`account_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Additional Info stored for an organization.
        # Corresponds to the JSON property `organizationInfo`
        # @return [Google::Apis::MybusinessV4::OrganizationInfo]
        attr_accessor :organization_info
      
        # Output only. Specifies the PermissionLevel the caller has for this account.
        # Corresponds to the JSON property `permissionLevel`
        # @return [String]
        attr_accessor :permission_level
      
        # Profile photo for the account. This is populated only for the personal
        # account.
        # Corresponds to the JSON property `profilePhotoUrl`
        # @return [String]
        attr_accessor :profile_photo_url
      
        # Output only. Specifies the AccountRole
        # the caller has for this account.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # Indicates status of the account, such as whether the account
        # has been verified by Google.
        # Corresponds to the JSON property `state`
        # @return [Google::Apis::MybusinessV4::AccountState]
        attr_accessor :state
      
        # Output only. Specifies the AccountType
        # of this account.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_name = args[:account_name] if args.key?(:account_name)
          @account_number = args[:account_number] if args.key?(:account_number)
          @name = args[:name] if args.key?(:name)
          @organization_info = args[:organization_info] if args.key?(:organization_info)
          @permission_level = args[:permission_level] if args.key?(:permission_level)
          @profile_photo_url = args[:profile_photo_url] if args.key?(:profile_photo_url)
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
        # connected to Google Maps, and have Google+ pages created, without requiring
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
      
      # Input for ADDRESS verification.
      class AddressInput
        include Google::Apis::Core::Hashable
      
        # Contact name the mail should be sent to.
        # Corresponds to the JSON property `mailerContactName`
        # @return [String]
        attr_accessor :mailer_contact_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mailer_contact_name = args[:mailer_contact_name] if args.key?(:mailer_contact_name)
        end
      end
      
      # Display data for verifications through postcard.
      class AddressVerificationData
        include Google::Apis::Core::Hashable
      
        # Represents a postal address, e.g. for postal delivery or payments addresses.
        # Given a postal address, a postal service can deliver items to a premise, P.O.
        # Box or similar.
        # It is not intended to model geographical locations (roads, towns,
        # mountains).
        # In typical usage an address would be created via user input or from importing
        # existing data, depending on the type of process.
        # Advice on address input / editing:
        # - Use an i18n-ready address widget such as
        # https://github.com/googlei18n/libaddressinput)
        # - Users should not be presented with UI elements for input or editing of
        # fields outside countries where that field is used.
        # For more guidance on how to use this schema, please see:
        # https://support.google.com/business/answer/6397478
        # Corresponds to the JSON property `address`
        # @return [Google::Apis::MybusinessV4::PostalAddress]
        attr_accessor :address
      
        # Merchant's business name.
        # Corresponds to the JSON property `businessName`
        # @return [String]
        attr_accessor :business_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @business_name = args[:business_name] if args.key?(:business_name)
        end
      end
      
      # An administrator of an Account or a
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
      
        # Output only. Indicates whether this admin has a pending invitation for the
        # specified resource.
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
      
      # Request message for MyBusiness.AssociateLocationRequest.
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
      
      # A location attribute. Attributes provide additional information about a
      # location. The attributes that can be set on a location may vary based on
      # the properties of that location (for example, category). Available attributes
      # are
      # determined by Google and may be added and removed without API changes.
      class Attribute
        include Google::Apis::Core::Hashable
      
        # The ID of the attribute. Attribute IDs are provided by Google.
        # Corresponds to the JSON property `attributeId`
        # @return [String]
        attr_accessor :attribute_id
      
        # Values for an attribute with a `value_type` of REPEATED_ENUM. This consists
        # of two lists of value IDs: those that are set (true) and those that are unset
        # (false). Values absent are considered unknown. At least one value must be
        # specified.
        # Corresponds to the JSON property `repeatedEnumValue`
        # @return [Google::Apis::MybusinessV4::RepeatedEnumAttributeValue]
        attr_accessor :repeated_enum_value
      
        # When the attribute value type is URL, this field contains the value(s) for
        # this attribute, and the other values fields must be empty.
        # Corresponds to the JSON property `urlValues`
        # @return [Array<Google::Apis::MybusinessV4::UrlAttributeValue>]
        attr_accessor :url_values
      
        # Output only. The type of value that this attribute contains. This should be
        # used to determine how to interpret the value.
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        # The values for this attribute. The type of the values supplied must match
        # that expected for that attribute; see [AttributeValueType](/my-business/
        # reference/rest/v4/AttributeValueType). This is a
        # repeated field where multiple attribute values may be provided.
        # Attribute types only support one value.
        # Corresponds to the JSON property `values`
        # @return [Array<Object>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_id = args[:attribute_id] if args.key?(:attribute_id)
          @repeated_enum_value = args[:repeated_enum_value] if args.key?(:repeated_enum_value)
          @url_values = args[:url_values] if args.key?(:url_values)
          @value_type = args[:value_type] if args.key?(:value_type)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Metadata for an attribute. Contains display information for the attribute,
      # including a localized name and a heading for grouping related attributes
      # together.
      class AttributeMetadata
        include Google::Apis::Core::Hashable
      
        # The ID of the attribute.
        # Corresponds to the JSON property `attributeId`
        # @return [String]
        attr_accessor :attribute_id
      
        # The localized display name for the attribute, if available; otherwise,
        # the English display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The localized display name of the group that contains this attribute, if
        # available; otherwise, the English group name. Related attributes are
        # collected into a group and should be displayed together under the heading
        # given here.
        # Corresponds to the JSON property `groupDisplayName`
        # @return [String]
        attr_accessor :group_display_name
      
        # If true, the attribute is deprecated and should no longer be used. If
        # deprecated, updating this attribute will not result in an error, but updates
        # will not be saved. At some point after being deprecated, the attribute will
        # be removed entirely and it will become an error.
        # Corresponds to the JSON property `isDeprecated`
        # @return [Boolean]
        attr_accessor :is_deprecated
        alias_method :is_deprecated?, :is_deprecated
      
        # If true, the attribute supports multiple values. If false, only a single
        # value should be provided.
        # Corresponds to the JSON property `isRepeatable`
        # @return [Boolean]
        attr_accessor :is_repeatable
        alias_method :is_repeatable?, :is_repeatable
      
        # For some types of attributes (for example, enums), a list of supported values
        # and
        # corresponding display names for those values is provided.
        # Corresponds to the JSON property `valueMetadata`
        # @return [Array<Google::Apis::MybusinessV4::AttributeValueMetadata>]
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
          @is_deprecated = args[:is_deprecated] if args.key?(:is_deprecated)
          @is_repeatable = args[:is_repeatable] if args.key?(:is_repeatable)
          @value_metadata = args[:value_metadata] if args.key?(:value_metadata)
          @value_type = args[:value_type] if args.key?(:value_type)
        end
      end
      
      # Metadata for supported attribute values.
      class AttributeValueMetadata
        include Google::Apis::Core::Hashable
      
        # The display name for this value, localized where available; otherwise, in
        # English. The value display name is intended to be used in context with
        # the attribute display name.
        # For example, for a "WiFi" enum attribute, this could contain "Paid" to
        # represent paid Wi-Fi.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The attribute value.
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
      
      # Attribution information for customer media items, such as the contributor's
      # name and profile picture.
      class Attribution
        include Google::Apis::Core::Hashable
      
        # The user name to attribute the media item to.
        # Corresponds to the JSON property `profileName`
        # @return [String]
        attr_accessor :profile_name
      
        # URL of the attributed user's profile photo thumbnail.
        # Corresponds to the JSON property `profilePhotoUrl`
        # @return [String]
        attr_accessor :profile_photo_url
      
        # The URL of the attributed user's Google Maps profile page.
        # Corresponds to the JSON property `profileUrl`
        # @return [String]
        attr_accessor :profile_url
      
        # The URL of the takedown page, where the media item can be reported if it
        # is inappropriate.
        # Corresponds to the JSON property `takedownUrl`
        # @return [String]
        attr_accessor :takedown_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @profile_name = args[:profile_name] if args.key?(:profile_name)
          @profile_photo_url = args[:profile_photo_url] if args.key?(:profile_photo_url)
          @profile_url = args[:profile_url] if args.key?(:profile_url)
          @takedown_url = args[:takedown_url] if args.key?(:takedown_url)
        end
      end
      
      # A request for basic metric insights.
      class BasicMetricsRequest
        include Google::Apis::Core::Hashable
      
        # A collection of metrics to return values for including the options for
        # how the data should be returned.
        # Corresponds to the JSON property `metricRequests`
        # @return [Array<Google::Apis::MybusinessV4::MetricRequest>]
        attr_accessor :metric_requests
      
        # A range of time. Data will be pulled over the range as a half-open inverval
        # (that is, [start_time, end_time)).
        # Corresponds to the JSON property `timeRange`
        # @return [Google::Apis::MybusinessV4::TimeRange]
        attr_accessor :time_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metric_requests = args[:metric_requests] if args.key?(:metric_requests)
          @time_range = args[:time_range] if args.key?(:time_range)
        end
      end
      
      # Request message for MyBusiness.BatchGetLocations.
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
      
      # Response message for MyBusiness.BatchGetLocations.
      class BatchGetLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A collection of locations.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::MybusinessV4::Location>]
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
        # @return [Array<Google::Apis::MybusinessV4::TimePeriod>]
        attr_accessor :periods
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @periods = args[:periods] if args.key?(:periods)
        end
      end
      
      # An action that is performed when the user clicks through the post
      class CallToAction
        include Google::Apis::Core::Hashable
      
        # The type of action that will be performed.
        # Corresponds to the JSON property `actionType`
        # @return [String]
        attr_accessor :action_type
      
        # The URL the user will be directed to upon clicking. This field should be
        # left unset for Call CTA.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_type = args[:action_type] if args.key?(:action_type)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # A category describing what this business is (not what it does). For a list of
      # valid category IDs, and the mappings to their human-readable names, see
      # [categories.list](/my-business/reference/rest/v4/categories/list).
      class Category
        include Google::Apis::Core::Hashable
      
        # A stable ID (provided by Google) for this category.
        # The `category_id` must be specified when modifying the category (when
        # creating or updating a location).
        # Corresponds to the JSON property `categoryId`
        # @return [String]
        attr_accessor :category_id
      
        # Output only. The human-readable name of the category. This is set when
        # reading the location. When modifying the location, `category_id` must be
        # set.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category_id = args[:category_id] if args.key?(:category_id)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # A chain is a brand that your business's locations can be affiliated with.
      class Chain
        include Google::Apis::Core::Hashable
      
        # Names of the chain.
        # Corresponds to the JSON property `chainNames`
        # @return [Array<Google::Apis::MybusinessV4::ChainName>]
        attr_accessor :chain_names
      
        # Number of locations that are part of this chain.
        # Corresponds to the JSON property `locationCount`
        # @return [Fixnum]
        attr_accessor :location_count
      
        # The chain's resource name, in the format `chains/`chain_place_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Websites of the chain.
        # Corresponds to the JSON property `websites`
        # @return [Array<Google::Apis::MybusinessV4::ChainUrl>]
        attr_accessor :websites
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chain_names = args[:chain_names] if args.key?(:chain_names)
          @location_count = args[:location_count] if args.key?(:location_count)
          @name = args[:name] if args.key?(:name)
          @websites = args[:websites] if args.key?(:websites)
        end
      end
      
      # Name to be used when displaying the chain.
      class ChainName
        include Google::Apis::Core::Hashable
      
        # The display name for this chain.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The BCP 47 code of language of the name.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @language_code = args[:language_code] if args.key?(:language_code)
        end
      end
      
      # Url to be used when displaying the chain.
      class ChainUrl
        include Google::Apis::Core::Hashable
      
        # The url for this chain.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Request message for MyBusiness.ClearLocationAssociationRequest.
      class ClearLocationAssociationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for Verifications.CompleteVerificationAction.
      class CompleteVerificationRequest
        include Google::Apis::Core::Hashable
      
        # PIN code received by the merchant to complete the verification.
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
        # @return [Google::Apis::MybusinessV4::Verification]
        attr_accessor :verification
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @verification = args[:verification] if args.key?(:verification)
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
      
        # Month of year. Must be from 1 to 12, or 0 if specifying a date without a
        # month.
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
      
      # Request message for MyBusiness.DeclineInvitation.
      class DeclineInvitationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A value for a single metric with a given time dimension.
      class DimensionalMetricValue
        include Google::Apis::Core::Hashable
      
        # The option that requested this dimensional value.
        # Corresponds to the JSON property `metricOption`
        # @return [String]
        attr_accessor :metric_option
      
        # The dimension for which data is divided over.
        # Corresponds to the JSON property `timeDimension`
        # @return [Google::Apis::MybusinessV4::TimeDimension]
        attr_accessor :time_dimension
      
        # The value. If no value is set, then the requested data is missing.
        # Corresponds to the JSON property `value`
        # @return [Fixnum]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metric_option = args[:metric_option] if args.key?(:metric_option)
          @time_dimension = args[:time_dimension] if args.key?(:time_dimension)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Dimensions of the media item.
      class Dimensions
        include Google::Apis::Core::Hashable
      
        # Height of the media item, in pixels.
        # Corresponds to the JSON property `heightPixels`
        # @return [Fixnum]
        attr_accessor :height_pixels
      
        # Width of the media item, in pixels.
        # Corresponds to the JSON property `widthPixels`
        # @return [Fixnum]
        attr_accessor :width_pixels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @height_pixels = args[:height_pixels] if args.key?(:height_pixels)
          @width_pixels = args[:width_pixels] if args.key?(:width_pixels)
        end
      end
      
      # A request for driving direction insights.
      class DrivingDirectionMetricsRequest
        include Google::Apis::Core::Hashable
      
        # The BCP 47 code for the language. If a language code is not provided,
        # it defaults to English.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # The number of days to aggregate data for. Results returned will
        # be available data over the last number of requested days.
        # Valid values are 7, 30, and 90.
        # Corresponds to the JSON property `numDays`
        # @return [String]
        attr_accessor :num_days
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_code = args[:language_code] if args.key?(:language_code)
          @num_days = args[:num_days] if args.key?(:num_days)
        end
      end
      
      # Information about the location that this location duplicates.
      class Duplicate
        include Google::Apis::Core::Hashable
      
        # Indicates whether the user has access to the location it duplicates.
        # Corresponds to the JSON property `access`
        # @return [String]
        attr_accessor :access
      
        # The resource name of the location that this duplicates. Only populated
        # if the authenticated user has access rights to that location and that
        # location is not deleted.
        # Corresponds to the JSON property `locationName`
        # @return [String]
        attr_accessor :location_name
      
        # The place ID of the location that this duplicates.
        # Corresponds to the JSON property `placeId`
        # @return [String]
        attr_accessor :place_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access = args[:access] if args.key?(:access)
          @location_name = args[:location_name] if args.key?(:location_name)
          @place_id = args[:place_id] if args.key?(:place_id)
        end
      end
      
      # Input for EMAIL verification.
      class EmailInput
        include Google::Apis::Core::Hashable
      
        # Email address where the PIN should be sent to.
        # An email address is accepted only if it is one of the addresses provided
        # by FetchVerificationOptions. If the EmailVerificationData has
        # is_user_name_editable set to true, the client may specify a different
        # user name (local-part) but must match the domain name.
        # Corresponds to the JSON property `emailAddress`
        # @return [String]
        attr_accessor :email_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email_address = args[:email_address] if args.key?(:email_address)
        end
      end
      
      # Display data for verifications through email.
      class EmailVerificationData
        include Google::Apis::Core::Hashable
      
        # Domain name in the email address. e.g. "gmail.com" in foo@gmail.com
        # Corresponds to the JSON property `domainName`
        # @return [String]
        attr_accessor :domain_name
      
        # Whether client is allowed to provide a different user name.
        # Corresponds to the JSON property `isUserNameEditable`
        # @return [Boolean]
        attr_accessor :is_user_name_editable
        alias_method :is_user_name_editable?, :is_user_name_editable
      
        # User name in the email address. e.g. "foo" in foo@gmail.com
        # Corresponds to the JSON property `userName`
        # @return [String]
        attr_accessor :user_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain_name = args[:domain_name] if args.key?(:domain_name)
          @is_user_name_editable = args[:is_user_name_editable] if args.key?(:is_user_name_editable)
          @user_name = args[:user_name] if args.key?(:user_name)
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
      
      # Request message for Verifications.FetchVerificationOptions.
      class FetchVerificationOptionsRequest
        include Google::Apis::Core::Hashable
      
        # The BCP 47 language code representing the language that is to be used for
        # the verification process. Available options vary by language.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_code = args[:language_code] if args.key?(:language_code)
        end
      end
      
      # Response message for Verifications.FetchVerificationOptions.
      class FetchVerificationOptionsResponse
        include Google::Apis::Core::Hashable
      
        # The available verification options.
        # Corresponds to the JSON property `options`
        # @return [Array<Google::Apis::MybusinessV4::VerificationOption>]
        attr_accessor :options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @options = args[:options] if args.key?(:options)
        end
      end
      
      # Request message for MyBusiness.FindMatchingLocations.
      class FindMatchingLocationsRequest
        include Google::Apis::Core::Hashable
      
        # The preferred language for the matching location (in BCP-47 format).
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
      
      # Response message for MyBusiness.FindMatchingLocations.
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
        # @return [Array<Google::Apis::MybusinessV4::MatchedLocation>]
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
      
      # Request message for MyBusiness.GenerateAccountNumber.
      class GenerateAccountNumberRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Represents a Location that is present on
      # Google. This can be a location that has been claimed by the user, someone
      # else, or could be unclaimed.
      class GoogleLocation
        include Google::Apis::Core::Hashable
      
        # A location.
        # See the [help center article]
        # (https://support.google.com/business/answer/3038177) for a detailed
        # description of these fields, or the [category
        # endpoint](/my-business/reference/rest/v4/categories) for a list of valid
        # business categories.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::MybusinessV4::Location]
        attr_accessor :location
      
        # Resource name of this GoogleLocation, in the format
        # `googleLocation/`googleLocationId``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A URL that will redirect the user to the request admin rights UI.
        # This field is only present if the location has already been claimed by
        # any user, including the current user.
        # Corresponds to the JSON property `requestAdminRightsUrl`
        # @return [String]
        attr_accessor :request_admin_rights_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @request_admin_rights_url = args[:request_admin_rights_url] if args.key?(:request_admin_rights_url)
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
        # endpoint](/my-business/reference/rest/v4/categories) for a list of valid
        # business categories.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::MybusinessV4::Location]
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
      
      # Output only. Represents a pending invitation.
      class Invitation
        include Google::Apis::Core::Hashable
      
        # The resource name for the invitation.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The invited role on the account.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # An account is a container for your business's locations. If you are the only
        # user who manages locations for your business, you can use your personal
        # Google Account. To share management of locations with multiple users,
        # [create a business account]
        # (https://support.google.com/business/answer/6085339?hl=en&ref_topic=6085325).
        # Corresponds to the JSON property `targetAccount`
        # @return [Google::Apis::MybusinessV4::Account]
        attr_accessor :target_account
      
        # Represents a target location for a pending invitation.
        # Corresponds to the JSON property `targetLocation`
        # @return [Google::Apis::MybusinessV4::TargetLocation]
        attr_accessor :target_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @role = args[:role] if args.key?(:role)
          @target_account = args[:target_account] if args.key?(:target_account)
          @target_location = args[:target_location] if args.key?(:target_location)
        end
      end
      
      # A single list item. Each variation of an item in the price list should
      # have its own Item with its own price data.
      class Item
        include Google::Apis::Core::Hashable
      
        # Required. ID for the item. Price list, section, and item IDs cannot be
        # duplicated within this Location.
        # Corresponds to the JSON property `itemId`
        # @return [String]
        attr_accessor :item_id
      
        # Required. Language-tagged labels for the item. We recommend that
        # item names be 140 characters or less, and descriptions 250 characters
        # or less. At least one set of labels is required.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::MybusinessV4::Label>]
        attr_accessor :labels
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::MybusinessV4::Money]
        attr_accessor :price
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @item_id = args[:item_id] if args.key?(:item_id)
          @labels = args[:labels] if args.key?(:labels)
          @price = args[:price] if args.key?(:price)
        end
      end
      
      # Label to be used when displaying the price list, section, or item.
      class Label
        include Google::Apis::Core::Hashable
      
        # Optional. Description of the price list, section, or item.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. Display name for the price list, section, or item.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. The BCP-47 language code that these strings apply for.
        # Only one set of labels may be set per language.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @language_code = args[:language_code] if args.key?(:language_code)
        end
      end
      
      # An object representing a latitude/longitude pair. This is expressed as a pair
      # of doubles representing degrees latitude and degrees longitude. Unless
      # specified otherwise, this must conform to the
      # <a href="http://www.unoosa.org/pdf/icg/2012/template/WGS_84.pdf">WGS84
      # standard</a>. Values must be within normalized ranges.
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
      
      # Response message for MyBusiness.ListAccountAdmins.
      class ListAccountAdminsResponse
        include Google::Apis::Core::Hashable
      
        # A collection of Admin instances.
        # Corresponds to the JSON property `admins`
        # @return [Array<Google::Apis::MybusinessV4::Admin>]
        attr_accessor :admins
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admins = args[:admins] if args.key?(:admins)
        end
      end
      
      # Response message for MyBusiness.ListAccounts.
      class ListAccountsResponse
        include Google::Apis::Core::Hashable
      
        # A collection of accounts to which the user has access. The personal
        # account of the user doing the query will always be the first item of the
        # result, unless it is filtered out.
        # Corresponds to the JSON property `accounts`
        # @return [Array<Google::Apis::MybusinessV4::Account>]
        attr_accessor :accounts
      
        # If the number of accounts exceeds the requested page size, this field is
        # populated with a token to fetch the next page of accounts on a
        # subsequent call to `accounts.list`. If there are no more accounts, this
        # field is not present in the response.
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
      
      # Response message for MyBusiness.ListAttributeMetadata.
      class ListAttributeMetadataResponse
        include Google::Apis::Core::Hashable
      
        # A collection of attribute metadata for the available attributes.
        # Corresponds to the JSON property `attributes`
        # @return [Array<Google::Apis::MybusinessV4::AttributeMetadata>]
        attr_accessor :attributes
      
        # If the number of attributes exceeded the requested page size, this field
        # will be populated with a token to fetch the next page of attributes on a
        # subsequent call to `attributes.list`. If there are no more attributes, this
        # field will not be present in the response.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListBusinessCategoriesResponse
        include Google::Apis::Core::Hashable
      
        # The categories.
        # Corresponds to the JSON property `categories`
        # @return [Array<Google::Apis::MybusinessV4::Category>]
        attr_accessor :categories
      
        # If the number of categories exceeded the requested page size, this field
        # will be populated with a token to fetch the next page of categories
        # on a subsequent call to `ListBusinessCategories`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The total number of categories for the request parameters.
        # Corresponds to the JSON property `totalCategoryCount`
        # @return [Fixnum]
        attr_accessor :total_category_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @categories = args[:categories] if args.key?(:categories)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @total_category_count = args[:total_category_count] if args.key?(:total_category_count)
        end
      end
      
      # Response message for MyBusiness.ListCustomerMediaItems.
      class ListCustomerMediaItemsResponse
        include Google::Apis::Core::Hashable
      
        # The returned list of media items.
        # Corresponds to the JSON property `mediaItems`
        # @return [Array<Google::Apis::MybusinessV4::MediaItem>]
        attr_accessor :media_items
      
        # If there are more media items than the requested page size, then this field
        # is populated with a token to fetch the next page of media items on a
        # subsequent call to ListCustomerMediaItems.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The total number of media items for this location, irrespective of
        # pagination. This number is approximate, particularly when there are
        # multiple pages of results.
        # Corresponds to the JSON property `totalMediaItemCount`
        # @return [Fixnum]
        attr_accessor :total_media_item_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @media_items = args[:media_items] if args.key?(:media_items)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @total_media_item_count = args[:total_media_item_count] if args.key?(:total_media_item_count)
        end
      end
      
      # Response message for MyBusiness.ListInvitations.
      class ListInvitationsResponse
        include Google::Apis::Core::Hashable
      
        # A collection of location invitations that are pending for the account. The
        # number of invitations listed here cannot exceed 1000.
        # Corresponds to the JSON property `invitations`
        # @return [Array<Google::Apis::MybusinessV4::Invitation>]
        attr_accessor :invitations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @invitations = args[:invitations] if args.key?(:invitations)
        end
      end
      
      # Response message for ListLocalPosts
      class ListLocalPostsResponse
        include Google::Apis::Core::Hashable
      
        # The returned list of local posts.
        # Corresponds to the JSON property `localPosts`
        # @return [Array<Google::Apis::MybusinessV4::LocalPost>]
        attr_accessor :local_posts
      
        # If there are more local posts than the requested page size, then this field
        # is populated with a token to fetch the next page of local posts on a
        # subsequent call to `ListLocalPosts`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @local_posts = args[:local_posts] if args.key?(:local_posts)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for MyBusiness.ListLocationAdmins.
      class ListLocationAdminsResponse
        include Google::Apis::Core::Hashable
      
        # A collection of Admin instances.
        # Corresponds to the JSON property `admins`
        # @return [Array<Google::Apis::MybusinessV4::Admin>]
        attr_accessor :admins
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admins = args[:admins] if args.key?(:admins)
        end
      end
      
      # Response message for MyBusiness.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # The locations.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::MybusinessV4::Location>]
        attr_accessor :locations
      
        # If the number of locations exceeded the requested page size, this field
        # is populated with a token to fetch the next page of locations on a
        # subsequent call to `ListLocations`. If there are no more locations, this
        # field is not present in the response.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The approximate number of Locations in the list irrespective of pagination.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # Response message for MyBusiness.ListMediaItems.
      class ListMediaItemsResponse
        include Google::Apis::Core::Hashable
      
        # The returned list of media items.
        # Corresponds to the JSON property `mediaItems`
        # @return [Array<Google::Apis::MybusinessV4::MediaItem>]
        attr_accessor :media_items
      
        # If there are more media items than the requested page size, then this field
        # is populated with a token to fetch the next page of media items on a
        # subsequent call to ListMediaItems.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The total number of media items for this location, irrespective of
        # pagination.
        # Corresponds to the JSON property `totalMediaItemCount`
        # @return [Fixnum]
        attr_accessor :total_media_item_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @media_items = args[:media_items] if args.key?(:media_items)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @total_media_item_count = args[:total_media_item_count] if args.key?(:total_media_item_count)
        end
      end
      
      # Response message for MyBusiness.ListReviews.
      class ListReviewsResponse
        include Google::Apis::Core::Hashable
      
        # The average star rating of all reviews for this location
        # on a scale of 1 to 5, where 5 is the highest rating.
        # Corresponds to the JSON property `averageRating`
        # @return [Float]
        attr_accessor :average_rating
      
        # If the number of reviews exceeded the requested page size, this field
        # is populated with a token to fetch the next page of reviews on a
        # subsequent call to ListReviews. If there are no more reviews, this
        # field is not present in the response.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The reviews.
        # Corresponds to the JSON property `reviews`
        # @return [Array<Google::Apis::MybusinessV4::Review>]
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
        # @return [Array<Google::Apis::MybusinessV4::Verification>]
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
      
      # Represents a local post for a location.
      class LocalPost
        include Google::Apis::Core::Hashable
      
        # An action that is performed when the user clicks through the post
        # Corresponds to the JSON property `callToAction`
        # @return [Google::Apis::MybusinessV4::CallToAction]
        attr_accessor :call_to_action
      
        # Output only. Time of the creation of the post.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # All the information pertaining to an event featured in a local post.
        # Corresponds to the JSON property `event`
        # @return [Google::Apis::MybusinessV4::LocalPostEvent]
        attr_accessor :event
      
        # The language of the local post.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # The media associated with the post.
        # Corresponds to the JSON property `media`
        # @return [Array<Google::Apis::MybusinessV4::MediaItem>]
        attr_accessor :media
      
        # Output only. Google identifier for this local post in the form:
        # `accounts/`account_id`/locations/`location_id`/localPosts/`local_post_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Specific fields for offer posts.
        # Corresponds to the JSON property `offer`
        # @return [Google::Apis::MybusinessV4::LocalPostOffer]
        attr_accessor :offer
      
        # Specific fields for product posts.
        # Corresponds to the JSON property `product`
        # @return [Google::Apis::MybusinessV4::LocalPostProduct]
        attr_accessor :product
      
        # Output only. The link to the local post in Google search. This link can
        # be used to share the post via social media, email, text, etc.
        # Corresponds to the JSON property `searchUrl`
        # @return [String]
        attr_accessor :search_url
      
        # Output only. The state of the post, indicating what part of its lifecycle
        # it is in.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Description/body of the local post.
        # Corresponds to the JSON property `summary`
        # @return [String]
        attr_accessor :summary
      
        # Required.
        # The topic type of the post: standard, event, offer, or product.
        # Corresponds to the JSON property `topicType`
        # @return [String]
        attr_accessor :topic_type
      
        # Output only. Time of the last modification of the post made by the user.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @call_to_action = args[:call_to_action] if args.key?(:call_to_action)
          @create_time = args[:create_time] if args.key?(:create_time)
          @event = args[:event] if args.key?(:event)
          @language_code = args[:language_code] if args.key?(:language_code)
          @media = args[:media] if args.key?(:media)
          @name = args[:name] if args.key?(:name)
          @offer = args[:offer] if args.key?(:offer)
          @product = args[:product] if args.key?(:product)
          @search_url = args[:search_url] if args.key?(:search_url)
          @state = args[:state] if args.key?(:state)
          @summary = args[:summary] if args.key?(:summary)
          @topic_type = args[:topic_type] if args.key?(:topic_type)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # All the information pertaining to an event featured in a local post.
      class LocalPostEvent
        include Google::Apis::Core::Hashable
      
        # An interval of time, inclusive. It must contain all fields to be valid.
        # Corresponds to the JSON property `schedule`
        # @return [Google::Apis::MybusinessV4::TimeInterval]
        attr_accessor :schedule
      
        # Name of the event.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @schedule = args[:schedule] if args.key?(:schedule)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # All the metrics requested for a Local Post.
      class LocalPostMetrics
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `localPostName`
        # @return [String]
        attr_accessor :local_post_name
      
        # A list of values for the requested metrics.
        # Corresponds to the JSON property `metricValues`
        # @return [Array<Google::Apis::MybusinessV4::MetricValue>]
        attr_accessor :metric_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @local_post_name = args[:local_post_name] if args.key?(:local_post_name)
          @metric_values = args[:metric_values] if args.key?(:metric_values)
        end
      end
      
      # Specific fields for offer posts.
      class LocalPostOffer
        include Google::Apis::Core::Hashable
      
        # Optional. Offer code that is usable in store or online.
        # Corresponds to the JSON property `couponCode`
        # @return [String]
        attr_accessor :coupon_code
      
        # Optional. Online link to redeem offer.
        # Corresponds to the JSON property `redeemOnlineUrl`
        # @return [String]
        attr_accessor :redeem_online_url
      
        # Optional. Offer terms and conditions.
        # Corresponds to the JSON property `termsConditions`
        # @return [String]
        attr_accessor :terms_conditions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @coupon_code = args[:coupon_code] if args.key?(:coupon_code)
          @redeem_online_url = args[:redeem_online_url] if args.key?(:redeem_online_url)
          @terms_conditions = args[:terms_conditions] if args.key?(:terms_conditions)
        end
      end
      
      # Specific fields for product posts.
      class LocalPostProduct
        include Google::Apis::Core::Hashable
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `lowerPrice`
        # @return [Google::Apis::MybusinessV4::Money]
        attr_accessor :lower_price
      
        # Name of the product.
        # Corresponds to the JSON property `productName`
        # @return [String]
        attr_accessor :product_name
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `upperPrice`
        # @return [Google::Apis::MybusinessV4::Money]
        attr_accessor :upper_price
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lower_price = args[:lower_price] if args.key?(:lower_price)
          @product_name = args[:product_name] if args.key?(:product_name)
          @upper_price = args[:upper_price] if args.key?(:upper_price)
        end
      end
      
      # A location.
      # See the [help center article]
      # (https://support.google.com/business/answer/3038177) for a detailed
      # description of these fields, or the [category
      # endpoint](/my-business/reference/rest/v4/categories) for a list of valid
      # business categories.
      class Location
        include Google::Apis::Core::Hashable
      
        # Additional information that is surfaced in AdWords.
        # Corresponds to the JSON property `adWordsLocationExtensions`
        # @return [Google::Apis::MybusinessV4::AdWordsLocationExtensions]
        attr_accessor :ad_words_location_extensions
      
        # Additional categories to describe your business.
        # Categories help your customers find accurate, specific results for services
        # they're interested in. To keep your business information accurate
        # and live, make sure that you use as few categories as possible to describe
        # your overall core business.
        # Choose categories that are as specific as possible, but representative of
        # your main business.
        # Corresponds to the JSON property `additionalCategories`
        # @return [Array<Google::Apis::MybusinessV4::Category>]
        attr_accessor :additional_categories
      
        # Up to two phone numbers (mobile or landline, no fax) at which your business
        # can be called, in addition to your primary phone number.
        # Corresponds to the JSON property `additionalPhones`
        # @return [Array<String>]
        attr_accessor :additional_phones
      
        # Represents a postal address, e.g. for postal delivery or payments addresses.
        # Given a postal address, a postal service can deliver items to a premise, P.O.
        # Box or similar.
        # It is not intended to model geographical locations (roads, towns,
        # mountains).
        # In typical usage an address would be created via user input or from importing
        # existing data, depending on the type of process.
        # Advice on address input / editing:
        # - Use an i18n-ready address widget such as
        # https://github.com/googlei18n/libaddressinput)
        # - Users should not be presented with UI elements for input or editing of
        # fields outside countries where that field is used.
        # For more guidance on how to use this schema, please see:
        # https://support.google.com/business/answer/6397478
        # Corresponds to the JSON property `address`
        # @return [Google::Apis::MybusinessV4::PostalAddress]
        attr_accessor :address
      
        # Attributes for this location.
        # Corresponds to the JSON property `attributes`
        # @return [Array<Google::Apis::MybusinessV4::Attribute>]
        attr_accessor :attributes
      
        # A collection of free-form strings to allow you to tag your business. These
        # labels are NOT user facing; only you can see them.
        # Limited to 255 characters (per label).
        # Corresponds to the JSON property `labels`
        # @return [Array<String>]
        attr_accessor :labels
      
        # The language of the location. Set during creation and not updateable.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # An object representing a latitude/longitude pair. This is expressed as a pair
        # of doubles representing degrees latitude and degrees longitude. Unless
        # specified otherwise, this must conform to the
        # <a href="http://www.unoosa.org/pdf/icg/2012/template/WGS_84.pdf">WGS84
        # standard</a>. Values must be within normalized ranges.
        # Corresponds to the JSON property `latlng`
        # @return [Google::Apis::MybusinessV4::LatLng]
        attr_accessor :latlng
      
        # Alternate/surrogate key references for a location.
        # Corresponds to the JSON property `locationKey`
        # @return [Google::Apis::MybusinessV4::LocationKey]
        attr_accessor :location_key
      
        # Location name should reflect your business's real-world name, as used
        # consistently on your storefront, website, and stationery, and as known to
        # customers.
        # Any additional information, when relevant, can be included in other
        # fields of the resource (for example, `Address`, `Categories`).
        # Don't add unnecessary information to your name (for example, prefer
        # "Google" over "Google Inc. - Mountain View Corporate Headquarters"). Don't
        # include marketing taglines, store codes, special characters, hours or
        # closed/open status, phone numbers, website URLs, service/product
        # information, location/address or directions, or containment information
        # (for example, "Chase ATM in Duane Reade").
        # Corresponds to the JSON property `locationName`
        # @return [String]
        attr_accessor :location_name
      
        # Contains a set of booleans that reflect the state of a Location.
        # Corresponds to the JSON property `locationState`
        # @return [Google::Apis::MybusinessV4::LocationState]
        attr_accessor :location_state
      
        # Additional non-user-editable information about the location.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::MybusinessV4::Metadata]
        attr_accessor :metadata
      
        # Google identifier for this location in the form:
        # `accounts/`account_id`/locations/`location_id``
        # In the context of matches, this field will not be populated.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Information related to the opening state of the business.
        # Corresponds to the JSON property `openInfo`
        # @return [Google::Apis::MybusinessV4::OpenInfo]
        attr_accessor :open_info
      
        # Price list information for this location.
        # Corresponds to the JSON property `priceLists`
        # @return [Array<Google::Apis::MybusinessV4::PriceList>]
        attr_accessor :price_lists
      
        # A category describing what this business is (not what it does). For a list of
        # valid category IDs, and the mappings to their human-readable names, see
        # [categories.list](/my-business/reference/rest/v4/categories/list).
        # Corresponds to the JSON property `primaryCategory`
        # @return [Google::Apis::MybusinessV4::Category]
        attr_accessor :primary_category
      
        # A phone number that connects to your individual business location
        # as directly as possible. Use a local phone number instead of a central,
        # call center helpline number whenever possible.
        # Corresponds to the JSON property `primaryPhone`
        # @return [String]
        attr_accessor :primary_phone
      
        # All information pertaining to the location's profile.
        # Corresponds to the JSON property `profile`
        # @return [Google::Apis::MybusinessV4::Profile]
        attr_accessor :profile
      
        # Represents the time periods that this location is open for business.
        # Holds a collection of TimePeriod
        # instances.
        # Corresponds to the JSON property `regularHours`
        # @return [Google::Apis::MybusinessV4::BusinessHours]
        attr_accessor :regular_hours
      
        # Information of all parent and children locations related to this one.
        # Corresponds to the JSON property `relationshipData`
        # @return [Google::Apis::MybusinessV4::RelationshipData]
        attr_accessor :relationship_data
      
        # Service area businesses provide their service at the customer's location (for
        # example, a locksmith or plumber).
        # Corresponds to the JSON property `serviceArea`
        # @return [Google::Apis::MybusinessV4::ServiceAreaBusiness]
        attr_accessor :service_area
      
        # Represents a set of time periods when a location's operational hours differ
        # from its normal business hours.
        # Corresponds to the JSON property `specialHours`
        # @return [Google::Apis::MybusinessV4::SpecialHours]
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
          @language_code = args[:language_code] if args.key?(:language_code)
          @latlng = args[:latlng] if args.key?(:latlng)
          @location_key = args[:location_key] if args.key?(:location_key)
          @location_name = args[:location_name] if args.key?(:location_name)
          @location_state = args[:location_state] if args.key?(:location_state)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @open_info = args[:open_info] if args.key?(:open_info)
          @price_lists = args[:price_lists] if args.key?(:price_lists)
          @primary_category = args[:primary_category] if args.key?(:primary_category)
          @primary_phone = args[:primary_phone] if args.key?(:primary_phone)
          @profile = args[:profile] if args.key?(:profile)
          @regular_hours = args[:regular_hours] if args.key?(:regular_hours)
          @relationship_data = args[:relationship_data] if args.key?(:relationship_data)
          @service_area = args[:service_area] if args.key?(:service_area)
          @special_hours = args[:special_hours] if args.key?(:special_hours)
          @store_code = args[:store_code] if args.key?(:store_code)
          @website_url = args[:website_url] if args.key?(:website_url)
        end
      end
      
      # How the media item is associated with its location.
      class LocationAssociation
        include Google::Apis::Core::Hashable
      
        # The category that this location photo belongs to.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # The ID of a price list item that this location photo is associated
        # with.
        # Corresponds to the JSON property `priceListItemId`
        # @return [String]
        attr_accessor :price_list_item_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
          @price_list_item_id = args[:price_list_item_id] if args.key?(:price_list_item_id)
        end
      end
      
      # A location indexed with the regions that people usually come from.
      # This is captured by counting how many driving-direction requests to
      # this location are from each region.
      class LocationDrivingDirectionMetrics
        include Google::Apis::Core::Hashable
      
        # The location resource name this metric value belongs to.
        # Corresponds to the JSON property `locationName`
        # @return [String]
        attr_accessor :location_name
      
        # Time zone (IANA timezone IDs, for example, 'Europe/London') of the location.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        # Driving-direction requests by source region. By convention, these
        # are sorted by count with at most 10 results.
        # Corresponds to the JSON property `topDirectionSources`
        # @return [Array<Google::Apis::MybusinessV4::TopDirectionSources>]
        attr_accessor :top_direction_sources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location_name = args[:location_name] if args.key?(:location_name)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @top_direction_sources = args[:top_direction_sources] if args.key?(:top_direction_sources)
        end
      end
      
      # Alternate/surrogate key references for a location.
      class LocationKey
        include Google::Apis::Core::Hashable
      
        # Output only. A value of true indicates that an unset place ID is
        # deliberate, which is different from no association being made yet.
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
        # The additional `explicit_no_place_id` bool qualifies whether an unset
        # place ID is deliberate or not.
        # Corresponds to the JSON property `placeId`
        # @return [String]
        attr_accessor :place_id
      
        # Output only. If this location has a Google+ page associated with it, this
        # is populated with the Google+ page ID for this location.
        # Corresponds to the JSON property `plusPageId`
        # @return [String]
        attr_accessor :plus_page_id
      
        # Output only. The `request_id` used to create this location. May be empty if
        # this location was created outside of the GMB API or Google My Business
        # Locations.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @explicit_no_place_id = args[:explicit_no_place_id] if args.key?(:explicit_no_place_id)
          @place_id = args[:place_id] if args.key?(:place_id)
          @plus_page_id = args[:plus_page_id] if args.key?(:plus_page_id)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # A series of Metrics and BreakdownMetrics associated with a Location over
      # some time range.
      class LocationMetrics
        include Google::Apis::Core::Hashable
      
        # The location resource name these values belong to.
        # Corresponds to the JSON property `locationName`
        # @return [String]
        attr_accessor :location_name
      
        # A list of values for the requested metrics.
        # Corresponds to the JSON property `metricValues`
        # @return [Array<Google::Apis::MybusinessV4::MetricValue>]
        attr_accessor :metric_values
      
        # IANA timezone for the location.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location_name = args[:location_name] if args.key?(:location_name)
          @metric_values = args[:metric_values] if args.key?(:metric_values)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # Contains a set of booleans that reflect the state of a Location.
      class LocationState
        include Google::Apis::Core::Hashable
      
        # Output only. Indicates whether the location can be deleted using the Google
        # My Business API.
        # Corresponds to the JSON property `canDelete`
        # @return [Boolean]
        attr_accessor :can_delete
        alias_method :can_delete?, :can_delete
      
        # Output only. Indicates whether the location can be updated.
        # Corresponds to the JSON property `canUpdate`
        # @return [Boolean]
        attr_accessor :can_update
        alias_method :can_update?, :can_update
      
        # Output only. Indicates whether the location has pending verification
        # requests.
        # Corresponds to the JSON property `hasPendingVerification`
        # @return [Boolean]
        attr_accessor :has_pending_verification
        alias_method :has_pending_verification?, :has_pending_verification
      
        # Output only. Indicates whether the location is disabled.
        # Corresponds to the JSON property `isDisabled`
        # @return [Boolean]
        attr_accessor :is_disabled
        alias_method :is_disabled?, :is_disabled
      
        # Output only. Indicates whether the location is disconnected from a place on
        # Google Maps.
        # Corresponds to the JSON property `isDisconnected`
        # @return [Boolean]
        attr_accessor :is_disconnected
        alias_method :is_disconnected?, :is_disconnected
      
        # Output only. Indicates whether the location is a duplicate of another
        # location. For more information, see
        # [metadata.duplicate](/my-business/reference/rest/v4/accounts.locations#
        # Duplicate).
        # Corresponds to the JSON property `isDuplicate`
        # @return [Boolean]
        attr_accessor :is_duplicate
        alias_method :is_duplicate?, :is_duplicate
      
        # Output only. Indicates whether the place ID associated with this location
        # has updates.
        # Corresponds to the JSON property `isGoogleUpdated`
        # @return [Boolean]
        attr_accessor :is_google_updated
        alias_method :is_google_updated?, :is_google_updated
      
        # Output only. Indicates whether
        # [accounts.locations.localPosts](/my-business/reference/rest/v4/accounts.
        # locations.localPosts)
        # is disabled for this location.
        # Corresponds to the JSON property `isLocalPostApiDisabled`
        # @return [Boolean]
        attr_accessor :is_local_post_api_disabled
        alias_method :is_local_post_api_disabled?, :is_local_post_api_disabled
      
        # Output only. Indicates whether the review of the location is pending.
        # Corresponds to the JSON property `isPendingReview`
        # @return [Boolean]
        attr_accessor :is_pending_review
        alias_method :is_pending_review?, :is_pending_review
      
        # Output only. Indicates whether the location is published.
        # Corresponds to the JSON property `isPublished`
        # @return [Boolean]
        attr_accessor :is_published
        alias_method :is_published?, :is_published
      
        # Output only. Indicates whether the location is suspended.
        # Suspended locations are not visible to end users in Google products.
        # If you believe this was a mistake, see the [help center article]
        # (https://support.google.com/business/answer/4569145).
        # Corresponds to the JSON property `isSuspended`
        # @return [Boolean]
        attr_accessor :is_suspended
        alias_method :is_suspended?, :is_suspended
      
        # Output only. Indicates whether the location is verified.
        # Corresponds to the JSON property `isVerified`
        # @return [Boolean]
        attr_accessor :is_verified
        alias_method :is_verified?, :is_verified
      
        # Output only. Indicates whether the location requires reverification.
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
          @has_pending_verification = args[:has_pending_verification] if args.key?(:has_pending_verification)
          @is_disabled = args[:is_disabled] if args.key?(:is_disabled)
          @is_disconnected = args[:is_disconnected] if args.key?(:is_disconnected)
          @is_duplicate = args[:is_duplicate] if args.key?(:is_duplicate)
          @is_google_updated = args[:is_google_updated] if args.key?(:is_google_updated)
          @is_local_post_api_disabled = args[:is_local_post_api_disabled] if args.key?(:is_local_post_api_disabled)
          @is_pending_review = args[:is_pending_review] if args.key?(:is_pending_review)
          @is_published = args[:is_published] if args.key?(:is_published)
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
        # endpoint](/my-business/reference/rest/v4/categories) for a list of valid
        # business categories.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::MybusinessV4::Location]
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
      
      # Insights and statistics for the media item.
      class MediaInsights
        include Google::Apis::Core::Hashable
      
        # Output only. The number of times the media item has been viewed.
        # Corresponds to the JSON property `viewCount`
        # @return [Fixnum]
        attr_accessor :view_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @view_count = args[:view_count] if args.key?(:view_count)
        end
      end
      
      # A single media item.
      class MediaItem
        include Google::Apis::Core::Hashable
      
        # Attribution information for customer media items, such as the contributor's
        # name and profile picture.
        # Corresponds to the JSON property `attribution`
        # @return [Google::Apis::MybusinessV4::Attribution]
        attr_accessor :attribution
      
        # Output only. Creation time of this media item.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Reference to the photo binary data of a `MediaItem` uploaded through the My
        # Business API.
        # Create a data ref using StartUploadMediaItemData, and use this ref
        # when uploading bytes to [UpdateMedia] and subsequently calling
        # CreateMediaItem.
        # Corresponds to the JSON property `dataRef`
        # @return [Google::Apis::MybusinessV4::MediaItemDataRef]
        attr_accessor :data_ref
      
        # Dimensions of the media item.
        # Corresponds to the JSON property `dimensions`
        # @return [Google::Apis::MybusinessV4::Dimensions]
        attr_accessor :dimensions
      
        # Output only. Google-hosted URL for this media item. This URL is not static
        # since it may change over time. For video this will be a preview image with
        # an overlaid play icon.
        # Corresponds to the JSON property `googleUrl`
        # @return [String]
        attr_accessor :google_url
      
        # Insights and statistics for the media item.
        # Corresponds to the JSON property `insights`
        # @return [Google::Apis::MybusinessV4::MediaInsights]
        attr_accessor :insights
      
        # How the media item is associated with its location.
        # Corresponds to the JSON property `locationAssociation`
        # @return [Google::Apis::MybusinessV4::LocationAssociation]
        attr_accessor :location_association
      
        # The format of this media item. Must be set when the media item is created,
        # and is read-only on all other requests. Cannot be updated.
        # Corresponds to the JSON property `mediaFormat`
        # @return [String]
        attr_accessor :media_format
      
        # The resource name for this media item.
        # `accounts/`account_id`/locations/`location_id`/media/`media_key``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A publicly accessible URL where the media item can be retrieved
        # from.
        # When creating one of this or data_ref must be set to specify the
        # source of the media item.
        # If `source_url` was used when creating a media item, it will be populated
        # with that source URL when the media item is retrieved.
        # This field cannot be updated.
        # Corresponds to the JSON property `sourceUrl`
        # @return [String]
        attr_accessor :source_url
      
        # Output only. Where provided, the URL of a thumbnail image for this media
        # item.
        # Corresponds to the JSON property `thumbnailUrl`
        # @return [String]
        attr_accessor :thumbnail_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribution = args[:attribution] if args.key?(:attribution)
          @create_time = args[:create_time] if args.key?(:create_time)
          @data_ref = args[:data_ref] if args.key?(:data_ref)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @google_url = args[:google_url] if args.key?(:google_url)
          @insights = args[:insights] if args.key?(:insights)
          @location_association = args[:location_association] if args.key?(:location_association)
          @media_format = args[:media_format] if args.key?(:media_format)
          @name = args[:name] if args.key?(:name)
          @source_url = args[:source_url] if args.key?(:source_url)
          @thumbnail_url = args[:thumbnail_url] if args.key?(:thumbnail_url)
        end
      end
      
      # Reference to the photo binary data of a `MediaItem` uploaded through the My
      # Business API.
      # Create a data ref using StartUploadMediaItemData, and use this ref
      # when uploading bytes to [UpdateMedia] and subsequently calling
      # CreateMediaItem.
      class MediaItemDataRef
        include Google::Apis::Core::Hashable
      
        # The unique ID for this media item's binary data.
        # Used to upload the photo data with [UpdateMedia] and when
        # creating a new media item from those bytes with CreateMediaItem.
        # Example of uploading bytes:
        # `curl -X POST -T`path_to_file`
        # "http://mybusiness.googleapis.com/upload/v1/media/`resource_name`?upload_type=
        # media"`
        # For CreateMediaItem
        # calls, set this as the `MediaItem` `data_ref`.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # Additional non-user-editable information about the location.
      class Metadata
        include Google::Apis::Core::Hashable
      
        # Information about the location that this location duplicates.
        # Corresponds to the JSON property `duplicate`
        # @return [Google::Apis::MybusinessV4::Duplicate]
        attr_accessor :duplicate
      
        # A link to the location on Maps.
        # Corresponds to the JSON property `mapsUrl`
        # @return [String]
        attr_accessor :maps_url
      
        # A link to the page on Google Search where a customer can leave a review
        # for the location.
        # Corresponds to the JSON property `newReviewUrl`
        # @return [String]
        attr_accessor :new_review_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duplicate = args[:duplicate] if args.key?(:duplicate)
          @maps_url = args[:maps_url] if args.key?(:maps_url)
          @new_review_url = args[:new_review_url] if args.key?(:new_review_url)
        end
      end
      
      # A request to return values for one metric and the options for how those
      # values should be returned.
      class MetricRequest
        include Google::Apis::Core::Hashable
      
        # The requested metric.
        # Corresponds to the JSON property `metric`
        # @return [String]
        attr_accessor :metric
      
        # How the values should appear when returned.
        # Corresponds to the JSON property `options`
        # @return [Array<String>]
        attr_accessor :options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metric = args[:metric] if args.key?(:metric)
          @options = args[:options] if args.key?(:options)
        end
      end
      
      # A value for a single Metric from a starting time.
      class MetricValue
        include Google::Apis::Core::Hashable
      
        # Dimensional values for this metric.
        # Corresponds to the JSON property `dimensionalValues`
        # @return [Array<Google::Apis::MybusinessV4::DimensionalMetricValue>]
        attr_accessor :dimensional_values
      
        # The metric for which the value applies.
        # Corresponds to the JSON property `metric`
        # @return [String]
        attr_accessor :metric
      
        # A value for a single metric with a given time dimension.
        # Corresponds to the JSON property `totalValue`
        # @return [Google::Apis::MybusinessV4::DimensionalMetricValue]
        attr_accessor :total_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimensional_values = args[:dimensional_values] if args.key?(:dimensional_values)
          @metric = args[:metric] if args.key?(:metric)
          @total_value = args[:total_value] if args.key?(:total_value)
        end
      end
      
      # Represents an amount of money with its currency type.
      class Money
        include Google::Apis::Core::Hashable
      
        # The 3-letter currency code defined in ISO 4217.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Number of nano (10^-9) units of the amount.
        # The value must be between -999,999,999 and +999,999,999 inclusive.
        # If `units` is positive, `nanos` must be positive or zero.
        # If `units` is zero, `nanos` can be positive, zero, or negative.
        # If `units` is negative, `nanos` must be negative or zero.
        # For example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # The whole units of the amount.
        # For example if `currencyCode` is `"USD"`, then 1 unit is one US dollar.
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
      
      # A Google Cloud Pub/Sub topic where notifications can be published when a
      # location is updated or has a new review. There will be only one notification
      # settings resource per-account.
      class Notifications
        include Google::Apis::Core::Hashable
      
        # Output only. The notifications resource name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The types of notifications that will be sent to the Cloud Pub/Sub topic.
        # At least one must be specified. To stop receiving notifications entirely,
        # use DeleteNotifications.
        # Corresponds to the JSON property `notificationTypes`
        # @return [Array<String>]
        attr_accessor :notification_types
      
        # The Google Cloud Pub/Sub topic that will receive notifications when
        # locations managed by this account are updated. If unset, no notifications
        # will be posted.
        # The account mybusiness-api-pubsub@system.gserviceaccount.com must have at
        # least Publish permissions on the Cloud Pub/Sub topic.
        # Corresponds to the JSON property `topicName`
        # @return [String]
        attr_accessor :topic_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @notification_types = args[:notification_types] if args.key?(:notification_types)
          @topic_name = args[:topic_name] if args.key?(:topic_name)
        end
      end
      
      # Information related to the opening state of the business.
      class OpenInfo
        include Google::Apis::Core::Hashable
      
        # Output only. Indicates whether this business is eligible for re-open.
        # Corresponds to the JSON property `canReopen`
        # @return [Boolean]
        attr_accessor :can_reopen
        alias_method :can_reopen?, :can_reopen
      
        # Represents a whole calendar date, e.g. date of birth. The time of day and
        # time zone are either specified elsewhere or are not significant. The date
        # is relative to the Proleptic Gregorian Calendar. The day may be 0 to
        # represent a year and month where the day is not significant, e.g. credit card
        # expiration date. The year may be 0 to represent a month and day independent
        # of year, e.g. anniversary date. Related types are google.type.TimeOfDay
        # and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `openingDate`
        # @return [Google::Apis::MybusinessV4::Date]
        attr_accessor :opening_date
      
        # Indicates whether or not the Location is currently open for business.
        # All locations are open by default, unless updated to be closed.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @can_reopen = args[:can_reopen] if args.key?(:can_reopen)
          @opening_date = args[:opening_date] if args.key?(:opening_date)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Additional Info stored for an organization.
      class OrganizationInfo
        include Google::Apis::Core::Hashable
      
        # The contact number for the organization.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # Represents a postal address, e.g. for postal delivery or payments addresses.
        # Given a postal address, a postal service can deliver items to a premise, P.O.
        # Box or similar.
        # It is not intended to model geographical locations (roads, towns,
        # mountains).
        # In typical usage an address would be created via user input or from importing
        # existing data, depending on the type of process.
        # Advice on address input / editing:
        # - Use an i18n-ready address widget such as
        # https://github.com/googlei18n/libaddressinput)
        # - Users should not be presented with UI elements for input or editing of
        # fields outside countries where that field is used.
        # For more guidance on how to use this schema, please see:
        # https://support.google.com/business/answer/6397478
        # Corresponds to the JSON property `postalAddress`
        # @return [Google::Apis::MybusinessV4::PostalAddress]
        attr_accessor :postal_address
      
        # The registered domain for the account.
        # Corresponds to the JSON property `registeredDomain`
        # @return [String]
        attr_accessor :registered_domain
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @postal_address = args[:postal_address] if args.key?(:postal_address)
          @registered_domain = args[:registered_domain] if args.key?(:registered_domain)
        end
      end
      
      # Input for PHONE_CALL/SMS verification.
      class PhoneInput
        include Google::Apis::Core::Hashable
      
        # The phone number that should be called or be sent SMS to. It must be one of
        # the phone numbers in the eligible options.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
        end
      end
      
      # Display Data for verifications through phone, e.g. phone call, sms.
      class PhoneVerificationData
        include Google::Apis::Core::Hashable
      
        # Phone number that the PIN will be sent to.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
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
        # @return [Array<Google::Apis::MybusinessV4::PlaceInfo>]
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
        # Corresponds to the JSON property `latlng`
        # @return [Google::Apis::MybusinessV4::LatLng]
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
      
      # Represents a postal address, e.g. for postal delivery or payments addresses.
      # Given a postal address, a postal service can deliver items to a premise, P.O.
      # Box or similar.
      # It is not intended to model geographical locations (roads, towns,
      # mountains).
      # In typical usage an address would be created via user input or from importing
      # existing data, depending on the type of process.
      # Advice on address input / editing:
      # - Use an i18n-ready address widget such as
      # https://github.com/googlei18n/libaddressinput)
      # - Users should not be presented with UI elements for input or editing of
      # fields outside countries where that field is used.
      # For more guidance on how to use this schema, please see:
      # https://support.google.com/business/answer/6397478
      class PostalAddress
        include Google::Apis::Core::Hashable
      
        # Unstructured address lines describing the lower levels of an address.
        # Because values in address_lines do not have type information and may
        # sometimes contain multiple values in a single field (e.g.
        # "Austin, TX"), it is important that the line order is clear. The order of
        # address lines should be "envelope order" for the country/region of the
        # address. In places where this can vary (e.g. Japan), address_language is
        # used to make it explicit (e.g. "ja" for large-to-small ordering and
        # "ja-Latn" or "en" for small-to-large). This way, the most specific line of
        # an address can be selected based on the language.
        # The minimum permitted structural representation of an address consists
        # of a region_code with all remaining information placed in the
        # address_lines. It would be possible to format such an address very
        # approximately without geocoding, but no semantic reasoning could be
        # made about any of the address components until it was at least
        # partially resolved.
        # Creating an address only containing a region_code and address_lines, and
        # then geocoding is the recommended way to handle completely unstructured
        # addresses (as opposed to guessing which parts of the address should be
        # localities or administrative areas).
        # Corresponds to the JSON property `addressLines`
        # @return [Array<String>]
        attr_accessor :address_lines
      
        # Optional. Highest administrative subdivision which is used for postal
        # addresses of a country or region.
        # For example, this can be a state, a province, an oblast, or a prefecture.
        # Specifically, for Spain this is the province and not the autonomous
        # community (e.g. "Barcelona" and not "Catalonia").
        # Many countries don't use an administrative area in postal addresses. E.g.
        # in Switzerland this should be left unpopulated.
        # Corresponds to the JSON property `administrativeArea`
        # @return [String]
        attr_accessor :administrative_area
      
        # Optional. BCP-47 language code of the contents of this address (if
        # known). This is often the UI language of the input form or is expected
        # to match one of the languages used in the address' country/region, or their
        # transliterated equivalents.
        # This can affect formatting in certain countries, but is not critical
        # to the correctness of the data and will never affect any validation or
        # other non-formatting related operations.
        # If this value is not known, it should be omitted (rather than specifying a
        # possibly incorrect default).
        # Examples: "zh-Hant", "ja", "ja-Latn", "en".
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Optional. Generally refers to the city/town portion of the address.
        # Examples: US city, IT comune, UK post town.
        # In regions of the world where localities are not well defined or do not fit
        # into this structure well, leave locality empty and use address_lines.
        # Corresponds to the JSON property `locality`
        # @return [String]
        attr_accessor :locality
      
        # Optional. The name of the organization at the address.
        # Corresponds to the JSON property `organization`
        # @return [String]
        attr_accessor :organization
      
        # Optional. Postal code of the address. Not all countries use or require
        # postal codes to be present, but where they are used, they may trigger
        # additional validation with other parts of the address (e.g. state/zip
        # validation in the U.S.A.).
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # Optional. The recipient at the address.
        # This field may, under certain circumstances, contain multiline information.
        # For example, it might contain "care of" information.
        # Corresponds to the JSON property `recipients`
        # @return [Array<String>]
        attr_accessor :recipients
      
        # Required. CLDR region code of the country/region of the address. This
        # is never inferred and it is up to the user to ensure the value is
        # correct. See http://cldr.unicode.org/ and
        # http://www.unicode.org/cldr/charts/30/supplemental/territory_information.html
        # for details. Example: "CH" for Switzerland.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # The schema revision of the `PostalAddress`. This must be set to 0, which is
        # the latest revision.
        # All new revisions **must** be backward compatible with old revisions.
        # Corresponds to the JSON property `revision`
        # @return [Fixnum]
        attr_accessor :revision
      
        # Optional. Additional, country-specific, sorting code. This is not used
        # in most regions. Where it is used, the value is either a string like
        # "CEDEX", optionally followed by a number (e.g. "CEDEX 7"), or just a number
        # alone, representing the "sector code" (Jamaica), "delivery area indicator"
        # (Malawi) or "post office indicator" (e.g. Côte d'Ivoire).
        # Corresponds to the JSON property `sortingCode`
        # @return [String]
        attr_accessor :sorting_code
      
        # Optional. Sublocality of the address.
        # For example, this can be neighborhoods, boroughs, districts.
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
      
      # A list of item price information. Price lists are structured as one or more
      # price lists, each containing one or more sections with one or more items.
      # For example, food price lists may represent breakfast/lunch/dinner menus,
      # with sections for burgers/steak/seafood.
      class PriceList
        include Google::Apis::Core::Hashable
      
        # Required. Language-tagged labels for the price list.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::MybusinessV4::Label>]
        attr_accessor :labels
      
        # Required. ID for the price list. Price list, section, and item IDs cannot
        # be duplicated within this Location.
        # Corresponds to the JSON property `priceListId`
        # @return [String]
        attr_accessor :price_list_id
      
        # Required. Sections for this price list. Each price list must contain at
        # least one section.
        # Corresponds to the JSON property `sections`
        # @return [Array<Google::Apis::MybusinessV4::Section>]
        attr_accessor :sections
      
        # Optional source URL of where the price list was retrieved from. For
        # example, this could be the URL of the page that was automatically scraped
        # to populate the menu information.
        # Corresponds to the JSON property `sourceUrl`
        # @return [String]
        attr_accessor :source_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @labels = args[:labels] if args.key?(:labels)
          @price_list_id = args[:price_list_id] if args.key?(:price_list_id)
          @sections = args[:sections] if args.key?(:sections)
          @source_url = args[:source_url] if args.key?(:source_url)
        end
      end
      
      # All information pertaining to the location's profile.
      class Profile
        include Google::Apis::Core::Hashable
      
        # Description of the location in your own voice, not editable by anyone else.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
        end
      end
      
      # A region with its associated request count.
      class RegionCount
        include Google::Apis::Core::Hashable
      
        # Number of driving-direction requests from this region.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Human-readable label for the region.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # An object representing a latitude/longitude pair. This is expressed as a pair
        # of doubles representing degrees latitude and degrees longitude. Unless
        # specified otherwise, this must conform to the
        # <a href="http://www.unoosa.org/pdf/icg/2012/template/WGS_84.pdf">WGS84
        # standard</a>. Values must be within normalized ranges.
        # Corresponds to the JSON property `latlng`
        # @return [Google::Apis::MybusinessV4::LatLng]
        attr_accessor :latlng
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @label = args[:label] if args.key?(:label)
          @latlng = args[:latlng] if args.key?(:latlng)
        end
      end
      
      # Information of all parent and children locations related to this one.
      class RelationshipData
        include Google::Apis::Core::Hashable
      
        # The resource name of the Chain that this location is member of.
        # How to find Chain ID
        # Corresponds to the JSON property `parentChain`
        # @return [String]
        attr_accessor :parent_chain
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parent_chain = args[:parent_chain] if args.key?(:parent_chain)
        end
      end
      
      # Values for an attribute with a `value_type` of REPEATED_ENUM. This consists
      # of two lists of value IDs: those that are set (true) and those that are unset
      # (false). Values absent are considered unknown. At least one value must be
      # specified.
      class RepeatedEnumAttributeValue
        include Google::Apis::Core::Hashable
      
        # Enum values that are set.
        # Corresponds to the JSON property `setValues`
        # @return [Array<String>]
        attr_accessor :set_values
      
        # Enum values that are unset.
        # Corresponds to the JSON property `unsetValues`
        # @return [Array<String>]
        attr_accessor :unset_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @set_values = args[:set_values] if args.key?(:set_values)
          @unset_values = args[:unset_values] if args.key?(:unset_values)
        end
      end
      
      # Request message for Insights.ReportLocalPostInsights
      class ReportLocalPostInsightsRequest
        include Google::Apis::Core::Hashable
      
        # A request for basic metric insights.
        # Corresponds to the JSON property `basicRequest`
        # @return [Google::Apis::MybusinessV4::BasicMetricsRequest]
        attr_accessor :basic_request
      
        # Required. The list of posts for which to fetch insights data. All posts
        # have to belong to the location whose name is specified in the `name` field.
        # Corresponds to the JSON property `localPostNames`
        # @return [Array<String>]
        attr_accessor :local_post_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_request = args[:basic_request] if args.key?(:basic_request)
          @local_post_names = args[:local_post_names] if args.key?(:local_post_names)
        end
      end
      
      # Response message for Insights.ReportLocalPostInsights
      class ReportLocalPostInsightsResponse
        include Google::Apis::Core::Hashable
      
        # One entry per requested post corresponding to this location.
        # Corresponds to the JSON property `localPostMetrics`
        # @return [Array<Google::Apis::MybusinessV4::LocalPostMetrics>]
        attr_accessor :local_post_metrics
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Time zone (IANA timezone IDs, eg, 'Europe/London') of the location.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @local_post_metrics = args[:local_post_metrics] if args.key?(:local_post_metrics)
          @name = args[:name] if args.key?(:name)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # Request message for Insights.ReportLocationInsights.
      class ReportLocationInsightsRequest
        include Google::Apis::Core::Hashable
      
        # A request for basic metric insights.
        # Corresponds to the JSON property `basicRequest`
        # @return [Google::Apis::MybusinessV4::BasicMetricsRequest]
        attr_accessor :basic_request
      
        # A request for driving direction insights.
        # Corresponds to the JSON property `drivingDirectionsRequest`
        # @return [Google::Apis::MybusinessV4::DrivingDirectionMetricsRequest]
        attr_accessor :driving_directions_request
      
        # A collection of locations to fetch insights for, specified by their names.
        # Corresponds to the JSON property `locationNames`
        # @return [Array<String>]
        attr_accessor :location_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_request = args[:basic_request] if args.key?(:basic_request)
          @driving_directions_request = args[:driving_directions_request] if args.key?(:driving_directions_request)
          @location_names = args[:location_names] if args.key?(:location_names)
        end
      end
      
      # Response message for `Insights.ReportLocationInsights`.
      class ReportLocationInsightsResponse
        include Google::Apis::Core::Hashable
      
        # A collection of values for driving direction-related metrics.
        # Corresponds to the JSON property `locationDrivingDirectionMetrics`
        # @return [Array<Google::Apis::MybusinessV4::LocationDrivingDirectionMetrics>]
        attr_accessor :location_driving_direction_metrics
      
        # A collection of metric values by location.
        # Corresponds to the JSON property `locationMetrics`
        # @return [Array<Google::Apis::MybusinessV4::LocationMetrics>]
        attr_accessor :location_metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location_driving_direction_metrics = args[:location_driving_direction_metrics] if args.key?(:location_driving_direction_metrics)
          @location_metrics = args[:location_metrics] if args.key?(:location_metrics)
        end
      end
      
      # Output only. Represents a review for a location.
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
      
        # The resource name. For Review it is of the form
        # `accounts/`account_id`/locations/`location_id`/reviews/`review_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The encrypted unique identifier.
        # Corresponds to the JSON property `reviewId`
        # @return [String]
        attr_accessor :review_id
      
        # Represents the location owner/manager's reply to a review.
        # Corresponds to the JSON property `reviewReply`
        # @return [Google::Apis::MybusinessV4::ReviewReply]
        attr_accessor :review_reply
      
        # Represents the author of the review.
        # Corresponds to the JSON property `reviewer`
        # @return [Google::Apis::MybusinessV4::Reviewer]
        attr_accessor :reviewer
      
        # The star rating of the review.
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
          @name = args[:name] if args.key?(:name)
          @review_id = args[:review_id] if args.key?(:review_id)
          @review_reply = args[:review_reply] if args.key?(:review_reply)
          @reviewer = args[:reviewer] if args.key?(:reviewer)
          @star_rating = args[:star_rating] if args.key?(:star_rating)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Represents the location owner/manager's reply to a review.
      class ReviewReply
        include Google::Apis::Core::Hashable
      
        # The body of the reply as plain text with markups.
        # The maximum length is 4096 bytes.
        # Corresponds to the JSON property `comment`
        # @return [String]
        attr_accessor :comment
      
        # Output only. The timestamp for when the reply was last modified.
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
      
      # Represents the author of the review.
      class Reviewer
        include Google::Apis::Core::Hashable
      
        # The name of the reviewer.
        # Only populated with the reviewer's real name if `is_anonymous` is false.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Indicates whether the reviewer has opted to remain anonymous.
        # Corresponds to the JSON property `isAnonymous`
        # @return [Boolean]
        attr_accessor :is_anonymous
        alias_method :is_anonymous?, :is_anonymous
      
        # The profile photo link of the reviewer.
        # Only populated if `is_anonymous` is false.
        # Corresponds to the JSON property `profilePhotoUrl`
        # @return [String]
        attr_accessor :profile_photo_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @is_anonymous = args[:is_anonymous] if args.key?(:is_anonymous)
          @profile_photo_url = args[:profile_photo_url] if args.key?(:profile_photo_url)
        end
      end
      
      # Response message for MyBusiness.SearchChains.
      class SearchChainsResponse
        include Google::Apis::Core::Hashable
      
        # Chains that match the queried chain_display_name in SearchChainsRequest.
        # If there are no matches, this field will be empty.
        # Results are listed in order of relevance.
        # Corresponds to the JSON property `chains`
        # @return [Array<Google::Apis::MybusinessV4::Chain>]
        attr_accessor :chains
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chains = args[:chains] if args.key?(:chains)
        end
      end
      
      # Request message for GoogleLocations.SearchGoogleLocations.
      class SearchGoogleLocationsRequest
        include Google::Apis::Core::Hashable
      
        # A location.
        # See the [help center article]
        # (https://support.google.com/business/answer/3038177) for a detailed
        # description of these fields, or the [category
        # endpoint](/my-business/reference/rest/v4/categories) for a list of valid
        # business categories.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::MybusinessV4::Location]
        attr_accessor :location
      
        # Text query to search for. The search results from a query string will be
        # less accurate than if providing an exact location, but can provide more
        # inexact matches.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # The number of matches to return. The default value is 3, with a maximum
        # of 10. Note that latency may increase if more are requested. There is no
        # pagination.
        # Corresponds to the JSON property `resultCount`
        # @return [Fixnum]
        attr_accessor :result_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
          @query = args[:query] if args.key?(:query)
          @result_count = args[:result_count] if args.key?(:result_count)
        end
      end
      
      # Response message for GoogleLocations.SearchGoogleLocations.
      class SearchGoogleLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A collection of GoogleLocations that are potential matches to the specified
        # request, listed in order from most to least accuracy.
        # Corresponds to the JSON property `googleLocations`
        # @return [Array<Google::Apis::MybusinessV4::GoogleLocation>]
        attr_accessor :google_locations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @google_locations = args[:google_locations] if args.key?(:google_locations)
        end
      end
      
      # A section of the price list containing one or more items.
      class Section
        include Google::Apis::Core::Hashable
      
        # Items that are contained within this section of the price list.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::MybusinessV4::Item>]
        attr_accessor :items
      
        # Required. Language-tagged labels for the section. We recommend that
        # section names and descriptions be 140 characters or less. At least one
        # set of labels is required.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::MybusinessV4::Label>]
        attr_accessor :labels
      
        # Required. ID for the section. Price list, section, and item IDs cannot be
        # duplicated within this Location.
        # Corresponds to the JSON property `sectionId`
        # @return [String]
        attr_accessor :section_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @labels = args[:labels] if args.key?(:labels)
          @section_id = args[:section_id] if args.key?(:section_id)
        end
      end
      
      # Service area businesses provide their service at the customer's location (for
      # example, a locksmith or plumber).
      class ServiceAreaBusiness
        include Google::Apis::Core::Hashable
      
        # Indicates the type of the service area
        # business.
        # Corresponds to the JSON property `businessType`
        # @return [String]
        attr_accessor :business_type
      
        # Defines the union of areas represented by a set of places.
        # Corresponds to the JSON property `places`
        # @return [Google::Apis::MybusinessV4::Places]
        attr_accessor :places
      
        # A radius around a particular point (latitude/longitude).
        # Corresponds to the JSON property `radius`
        # @return [Google::Apis::MybusinessV4::PointRadius]
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
      # The following inputs are not valid:
      # start_date=2015-11-23, open_time=13:00, close_time=11:59
      # start_date=2015-11-23, end_date=2015-11-24, open_time=13:00, close_time=12:
      # 00
      # start_date=2015-11-23, end_date=2015-11-25, open_time=08:00, close_time=18:
      # 00
      class SpecialHourPeriod
        include Google::Apis::Core::Hashable
      
        # The wall time on `end_date` when a location closes, expressed in
        # 24hr ISO 8601 extended format. (hh:mm) Valid values are 00:00-24:00,
        # where 24:00 represents midnight at the end of the specified day field.
        # Must be specified if `is_closed` is false.
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
        # @return [Google::Apis::MybusinessV4::Date]
        attr_accessor :end_date
      
        # If true, `end_date`, `open_time`, and `close_time` are ignored,
        # and the date specified in `start_date` is treated as the location being
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
        # @return [Google::Apis::MybusinessV4::Date]
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
        # @return [Array<Google::Apis::MybusinessV4::SpecialHourPeriod>]
        attr_accessor :special_hour_periods
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @special_hour_periods = args[:special_hour_periods] if args.key?(:special_hour_periods)
        end
      end
      
      # Request message for MyBusiness.StartUploadMediaItemData.
      class StartUploadMediaItemDataRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Represents a target location for a pending invitation.
      class TargetLocation
        include Google::Apis::Core::Hashable
      
        # The address of the location to which the user is invited.
        # Corresponds to the JSON property `locationAddress`
        # @return [String]
        attr_accessor :location_address
      
        # The name of the location to which the user is invited.
        # Corresponds to the JSON property `locationName`
        # @return [String]
        attr_accessor :location_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location_address = args[:location_address] if args.key?(:location_address)
          @location_name = args[:location_name] if args.key?(:location_name)
        end
      end
      
      # The dimension for which data is divided over.
      class TimeDimension
        include Google::Apis::Core::Hashable
      
        # The day of the week ("MONDAY" to "SUNDAY") this value corresponds to.
        # Set for BREAKDOWN_DAY_OF_WEEK option.
        # Corresponds to the JSON property `dayOfWeek`
        # @return [String]
        attr_accessor :day_of_week
      
        # Represents a time of day. The date and time zone are either not significant
        # or are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `timeOfDay`
        # @return [Google::Apis::MybusinessV4::TimeOfDay]
        attr_accessor :time_of_day
      
        # A range of time. Data will be pulled over the range as a half-open inverval
        # (that is, [start_time, end_time)).
        # Corresponds to the JSON property `timeRange`
        # @return [Google::Apis::MybusinessV4::TimeRange]
        attr_accessor :time_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day_of_week = args[:day_of_week] if args.key?(:day_of_week)
          @time_of_day = args[:time_of_day] if args.key?(:time_of_day)
          @time_range = args[:time_range] if args.key?(:time_range)
        end
      end
      
      # An interval of time, inclusive. It must contain all fields to be valid.
      class TimeInterval
        include Google::Apis::Core::Hashable
      
        # Represents a whole calendar date, e.g. date of birth. The time of day and
        # time zone are either specified elsewhere or are not significant. The date
        # is relative to the Proleptic Gregorian Calendar. The day may be 0 to
        # represent a year and month where the day is not significant, e.g. credit card
        # expiration date. The year may be 0 to represent a month and day independent
        # of year, e.g. anniversary date. Related types are google.type.TimeOfDay
        # and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `endDate`
        # @return [Google::Apis::MybusinessV4::Date]
        attr_accessor :end_date
      
        # Represents a time of day. The date and time zone are either not significant
        # or are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `endTime`
        # @return [Google::Apis::MybusinessV4::TimeOfDay]
        attr_accessor :end_time
      
        # Represents a whole calendar date, e.g. date of birth. The time of day and
        # time zone are either specified elsewhere or are not significant. The date
        # is relative to the Proleptic Gregorian Calendar. The day may be 0 to
        # represent a year and month where the day is not significant, e.g. credit card
        # expiration date. The year may be 0 to represent a month and day independent
        # of year, e.g. anniversary date. Related types are google.type.TimeOfDay
        # and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `startDate`
        # @return [Google::Apis::MybusinessV4::Date]
        attr_accessor :start_date
      
        # Represents a time of day. The date and time zone are either not significant
        # or are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `startTime`
        # @return [Google::Apis::MybusinessV4::TimeOfDay]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_date = args[:end_date] if args.key?(:end_date)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_date = args[:start_date] if args.key?(:start_date)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Represents a time of day. The date and time zone are either not significant
      # or are specified elsewhere. An API may choose to allow leap seconds. Related
      # types are google.type.Date and `google.protobuf.Timestamp`.
      class TimeOfDay
        include Google::Apis::Core::Hashable
      
        # Hours of day in 24 hour format. Should be from 0 to 23. An API may choose
        # to allow the value "24:00:00" for scenarios like business closing time.
        # Corresponds to the JSON property `hours`
        # @return [Fixnum]
        attr_accessor :hours
      
        # Minutes of hour of day. Must be from 0 to 59.
        # Corresponds to the JSON property `minutes`
        # @return [Fixnum]
        attr_accessor :minutes
      
        # Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # Seconds of minutes of the time. Must normally be from 0 to 59. An API may
        # allow the value 60 if it allows leap-seconds.
        # Corresponds to the JSON property `seconds`
        # @return [Fixnum]
        attr_accessor :seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hours = args[:hours] if args.key?(:hours)
          @minutes = args[:minutes] if args.key?(:minutes)
          @nanos = args[:nanos] if args.key?(:nanos)
          @seconds = args[:seconds] if args.key?(:seconds)
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
      
      # A range of time. Data will be pulled over the range as a half-open inverval
      # (that is, [start_time, end_time)).
      class TimeRange
        include Google::Apis::Core::Hashable
      
        # Epoch timestamp for the end of the range (exclusive).
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Epoch timestamp for the start of the range (inclusive).
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
      
      # Top regions where driving-direction requests originated from.
      class TopDirectionSources
        include Google::Apis::Core::Hashable
      
        # The number of days data is aggregated over.
        # Corresponds to the JSON property `dayCount`
        # @return [Fixnum]
        attr_accessor :day_count
      
        # Regions sorted in descending order by count.
        # Corresponds to the JSON property `regionCounts`
        # @return [Array<Google::Apis::MybusinessV4::RegionCount>]
        attr_accessor :region_counts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day_count = args[:day_count] if args.key?(:day_count)
          @region_counts = args[:region_counts] if args.key?(:region_counts)
        end
      end
      
      # Request message for MyBusiness.TransferLocation.
      class TransferLocationRequest
        include Google::Apis::Core::Hashable
      
        # Name of the account resource to transfer the location to (for example,
        # "accounts/8675309").
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
      
      # Values for an attribute with a `value_type` of URL.
      class UrlAttributeValue
        include Google::Apis::Core::Hashable
      
        # The URL.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # A verification represents a verification attempt on a location.
      class Verification
        include Google::Apis::Core::Hashable
      
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
        # @return [Google::Apis::MybusinessV4::AddressVerificationData]
        attr_accessor :address_data
      
        # Display data for verifications through email.
        # Corresponds to the JSON property `emailData`
        # @return [Google::Apis::MybusinessV4::EmailVerificationData]
        attr_accessor :email_data
      
        # Display Data for verifications through phone, e.g. phone call, sms.
        # Corresponds to the JSON property `phoneData`
        # @return [Google::Apis::MybusinessV4::PhoneVerificationData]
        attr_accessor :phone_data
      
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
          @email_data = args[:email_data] if args.key?(:email_data)
          @phone_data = args[:phone_data] if args.key?(:phone_data)
          @verification_method = args[:verification_method] if args.key?(:verification_method)
        end
      end
      
      # Request message for MyBusiness.VerifyLocation.
      class VerifyLocationRequest
        include Google::Apis::Core::Hashable
      
        # Input for ADDRESS verification.
        # Corresponds to the JSON property `addressInput`
        # @return [Google::Apis::MybusinessV4::AddressInput]
        attr_accessor :address_input
      
        # Input for EMAIL verification.
        # Corresponds to the JSON property `emailInput`
        # @return [Google::Apis::MybusinessV4::EmailInput]
        attr_accessor :email_input
      
        # The BCP 47 language code representing the language that is to be used for
        # the verification process.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Verification method.
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # Input for PHONE_CALL/SMS verification.
        # Corresponds to the JSON property `phoneInput`
        # @return [Google::Apis::MybusinessV4::PhoneInput]
        attr_accessor :phone_input
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address_input = args[:address_input] if args.key?(:address_input)
          @email_input = args[:email_input] if args.key?(:email_input)
          @language_code = args[:language_code] if args.key?(:language_code)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @phone_input = args[:phone_input] if args.key?(:phone_input)
        end
      end
      
      # Response message for Verifications.VerifyLocation.
      class VerifyLocationResponse
        include Google::Apis::Core::Hashable
      
        # A verification represents a verification attempt on a location.
        # Corresponds to the JSON property `verification`
        # @return [Google::Apis::MybusinessV4::Verification]
        attr_accessor :verification
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @verification = args[:verification] if args.key?(:verification)
        end
      end
    end
  end
end
