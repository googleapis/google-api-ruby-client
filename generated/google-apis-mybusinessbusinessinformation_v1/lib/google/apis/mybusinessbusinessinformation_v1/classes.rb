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
    module MybusinessbusinessinformationV1
      
      # Additional information that is surfaced in AdWords.
      class AdWordsLocationExtensions
        include Google::Apis::Core::Hashable
      
        # Required. An alternate phone number to display on AdWords location extensions
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
      
      # A location attribute. Attributes provide additional information about a
      # location. The attributes that can be set on a location may vary based on the
      # properties of that location (for example, category). Available attributes are
      # determined by Google and may be added and removed without API changes.
      class Attribute
        include Google::Apis::Core::Hashable
      
        # Required. The resource name for this attribute.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Values for an attribute with a `value_type` of REPEATED_ENUM. This consists of
        # two lists of value IDs: those that are set (true) and those that are unset (
        # false). Values absent are considered unknown. At least one value must be
        # specified.
        # Corresponds to the JSON property `repeatedEnumValue`
        # @return [Google::Apis::MybusinessbusinessinformationV1::RepeatedEnumAttributeValue]
        attr_accessor :repeated_enum_value
      
        # When the attribute value type is URL, this field contains the value(s) for
        # this attribute, and the other values fields must be empty.
        # Corresponds to the JSON property `uriValues`
        # @return [Array<Google::Apis::MybusinessbusinessinformationV1::UriAttributeValue>]
        attr_accessor :uri_values
      
        # Output only. The type of value that this attribute contains. This should be
        # used to determine how to interpret the value.
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        # The values for this attribute. The type of the values supplied must match that
        # expected for that attribute. This is a repeated field where multiple attribute
        # values may be provided. Attribute types only support one value.
        # Corresponds to the JSON property `values`
        # @return [Array<Object>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @repeated_enum_value = args[:repeated_enum_value] if args.key?(:repeated_enum_value)
          @uri_values = args[:uri_values] if args.key?(:uri_values)
          @value_type = args[:value_type] if args.key?(:value_type)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Metadata for an attribute. Contains display information for the attribute,
      # including a localized name and a heading for grouping related attributes
      # together.
      class AttributeMetadata
        include Google::Apis::Core::Hashable
      
        # If true, the attribute is deprecated and should no longer be used. If
        # deprecated, updating this attribute will not result in an error, but updates
        # will not be saved. At some point after being deprecated, the attribute will be
        # removed entirely and it will become an error.
        # Corresponds to the JSON property `deprecated`
        # @return [Boolean]
        attr_accessor :deprecated
        alias_method :deprecated?, :deprecated
      
        # The localized display name for the attribute, if available; otherwise, the
        # English display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The localized display name of the group that contains this attribute, if
        # available; otherwise, the English group name. Related attributes are collected
        # into a group and should be displayed together under the heading given here.
        # Corresponds to the JSON property `groupDisplayName`
        # @return [String]
        attr_accessor :group_display_name
      
        # The unique identifier for the attribute.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # If true, the attribute supports multiple values. If false, only a single value
        # should be provided.
        # Corresponds to the JSON property `repeatable`
        # @return [Boolean]
        attr_accessor :repeatable
        alias_method :repeatable?, :repeatable
      
        # For some types of attributes (for example, enums), a list of supported values
        # and corresponding display names for those values is provided.
        # Corresponds to the JSON property `valueMetadata`
        # @return [Array<Google::Apis::MybusinessbusinessinformationV1::AttributeValueMetadata>]
        attr_accessor :value_metadata
      
        # The value type for the attribute. Values set and retrieved should be expected
        # to be of this type.
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deprecated = args[:deprecated] if args.key?(:deprecated)
          @display_name = args[:display_name] if args.key?(:display_name)
          @group_display_name = args[:group_display_name] if args.key?(:group_display_name)
          @parent = args[:parent] if args.key?(:parent)
          @repeatable = args[:repeatable] if args.key?(:repeatable)
          @value_metadata = args[:value_metadata] if args.key?(:value_metadata)
          @value_type = args[:value_type] if args.key?(:value_type)
        end
      end
      
      # Metadata for supported attribute values.
      class AttributeValueMetadata
        include Google::Apis::Core::Hashable
      
        # The display name for this value, localized where available; otherwise, in
        # English. The value display name is intended to be used in context with the
        # attribute display name. For example, for a "WiFi" enum attribute, this could
        # contain "Paid" to represent paid Wi-Fi.
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
      
      # A container for all the attributes for a given location.
      class Attributes
        include Google::Apis::Core::Hashable
      
        # A collection of attributes that need to be updated.
        # Corresponds to the JSON property `attributes`
        # @return [Array<Google::Apis::MybusinessbusinessinformationV1::Attribute>]
        attr_accessor :attributes
      
        # Required. Google identifier for this location in the form of `locations/`
        # location_id`/attributes`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Response message for BusinessCategories.BatchGetBusinessCategories.
      class BatchGetCategoriesResponse
        include Google::Apis::Core::Hashable
      
        # Categories that match the GConcept ids provided in the request. They will not
        # come in the same order as category ids in the request.
        # Corresponds to the JSON property `categories`
        # @return [Array<Google::Apis::MybusinessbusinessinformationV1::Category>]
        attr_accessor :categories
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @categories = args[:categories] if args.key?(:categories)
        end
      end
      
      # Represents the time periods that this location is open for business. Holds a
      # collection of TimePeriod instances.
      class BusinessHours
        include Google::Apis::Core::Hashable
      
        # Required. A collection of times that this location is open for business. Each
        # period represents a range of hours when the location is open during the week.
        # Corresponds to the JSON property `periods`
        # @return [Array<Google::Apis::MybusinessbusinessinformationV1::TimePeriod>]
        attr_accessor :periods
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @periods = args[:periods] if args.key?(:periods)
        end
      end
      
      # A collection of categories that describes the business. During updates, both
      # fields must be set. Clients are prohibited from individually updating the
      # primary or additional categories using the update mask.
      class Categories
        include Google::Apis::Core::Hashable
      
        # Optional. Additional categories to describe your business. Categories help
        # your customers find accurate, specific results for services they're interested
        # in. To keep your business information accurate and live, make sure that you
        # use as few categories as possible to describe your overall core business.
        # Choose categories that are as specific as possible, but representative of your
        # main business.
        # Corresponds to the JSON property `additionalCategories`
        # @return [Array<Google::Apis::MybusinessbusinessinformationV1::Category>]
        attr_accessor :additional_categories
      
        # A category describing what this business is (not what it does). For a list of
        # valid category IDs, and the mappings to their human-readable names, see `
        # categories.list`.
        # Corresponds to the JSON property `primaryCategory`
        # @return [Google::Apis::MybusinessbusinessinformationV1::Category]
        attr_accessor :primary_category
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_categories = args[:additional_categories] if args.key?(:additional_categories)
          @primary_category = args[:primary_category] if args.key?(:primary_category)
        end
      end
      
      # A category describing what this business is (not what it does). For a list of
      # valid category IDs, and the mappings to their human-readable names, see `
      # categories.list`.
      class Category
        include Google::Apis::Core::Hashable
      
        # Output only. The human-readable name of the category. This is set when reading
        # the location. When modifying the location, `category_id` must be set.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. More hours types that are available for this business category.
        # Corresponds to the JSON property `moreHoursTypes`
        # @return [Array<Google::Apis::MybusinessbusinessinformationV1::MoreHoursType>]
        attr_accessor :more_hours_types
      
        # Required. A stable ID (provided by Google) for this category. The value must
        # be specified when modifying the category (when creating or updating a location)
        # .
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. A list of all the service types that are available for this
        # business category.
        # Corresponds to the JSON property `serviceTypes`
        # @return [Array<Google::Apis::MybusinessbusinessinformationV1::ServiceType>]
        attr_accessor :service_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @more_hours_types = args[:more_hours_types] if args.key?(:more_hours_types)
          @name = args[:name] if args.key?(:name)
          @service_types = args[:service_types] if args.key?(:service_types)
        end
      end
      
      # A chain is a brand that your business's locations can be affiliated with.
      class Chain
        include Google::Apis::Core::Hashable
      
        # Names of the chain.
        # Corresponds to the JSON property `chainNames`
        # @return [Array<Google::Apis::MybusinessbusinessinformationV1::ChainName>]
        attr_accessor :chain_names
      
        # Number of locations that are part of this chain.
        # Corresponds to the JSON property `locationCount`
        # @return [Fixnum]
        attr_accessor :location_count
      
        # Required. The chain's resource name, in the format `chains/`chain_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Websites of the chain.
        # Corresponds to the JSON property `websites`
        # @return [Array<Google::Apis::MybusinessbusinessinformationV1::ChainUri>]
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
      class ChainUri
        include Google::Apis::Core::Hashable
      
        # The uri for this chain.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri = args[:uri] if args.key?(:uri)
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
      
      # Represents a free-form service offered by the merchant. These are services
      # that are not exposed as part of our structure service data. The merchant
      # manually enters the names for of such services via a geomerchant surface.
      class FreeFormServiceItem
        include Google::Apis::Core::Hashable
      
        # Required. This field represents the category name (i.e. the category's stable
        # ID). The `category` and `service_type_id` should match the possible
        # combinations provided in the `Category` message.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # Label to be used when displaying the price list, section, or item.
        # Corresponds to the JSON property `label`
        # @return [Google::Apis::MybusinessbusinessinformationV1::Label]
        attr_accessor :label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
          @label = args[:label] if args.key?(:label)
        end
      end
      
      # Represents a Location that is present on Google. This can be a location that
      # has been claimed by the user, someone else, or could be unclaimed.
      class GoogleLocation
        include Google::Apis::Core::Hashable
      
        # A location. See the [help center article] (https://support.google.com/business/
        # answer/3038177) for a detailed description of these fields, or the [category
        # endpoint](/my-business/reference/rest/v4/categories) for a list of valid
        # business categories.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::MybusinessbusinessinformationV1::Location]
        attr_accessor :location
      
        # Resource name of this GoogleLocation, in the format `googleLocations/`
        # googleLocationId``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A URL that will redirect the user to the request admin rights UI. This field
        # is only present if the location has already been claimed by any user,
        # including the current user.
        # Corresponds to the JSON property `requestAdminRightsUri`
        # @return [String]
        attr_accessor :request_admin_rights_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @request_admin_rights_uri = args[:request_admin_rights_uri] if args.key?(:request_admin_rights_uri)
        end
      end
      
      # Represents a location that was modified by Google.
      class GoogleUpdatedLocation
        include Google::Apis::Core::Hashable
      
        # The fields that Google updated.
        # Corresponds to the JSON property `diffMask`
        # @return [String]
        attr_accessor :diff_mask
      
        # A location. See the [help center article] (https://support.google.com/business/
        # answer/3038177) for a detailed description of these fields, or the [category
        # endpoint](/my-business/reference/rest/v4/categories) for a list of valid
        # business categories.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::MybusinessbusinessinformationV1::Location]
        attr_accessor :location
      
        # The fields that have pending edits that haven't yet been pushed to Maps and
        # Search.
        # Corresponds to the JSON property `pendingMask`
        # @return [String]
        attr_accessor :pending_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @diff_mask = args[:diff_mask] if args.key?(:diff_mask)
          @location = args[:location] if args.key?(:location)
          @pending_mask = args[:pending_mask] if args.key?(:pending_mask)
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
      
        # Optional. The BCP-47 language code that these strings apply for. Only one set
        # of labels may be set per language.
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
      
      # Response for AttributesService.ListAttributeMetadata.
      class ListAttributeMetadataResponse
        include Google::Apis::Core::Hashable
      
        # A collection of attribute metadata for the available attributes.
        # Corresponds to the JSON property `attributeMetadata`
        # @return [Array<Google::Apis::MybusinessbusinessinformationV1::AttributeMetadata>]
        attr_accessor :attribute_metadata
      
        # If the number of attributes exceeded the requested page size, this field will
        # be populated with a token to fetch the next page of attributes on a subsequent
        # call to `attributes.list`. If there are no more attributes, this field will
        # not be present in the response.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_metadata = args[:attribute_metadata] if args.key?(:attribute_metadata)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for BusinessCategories.ListCategories.
      class ListCategoriesResponse
        include Google::Apis::Core::Hashable
      
        # The matching categories based on the requested parameters.
        # Corresponds to the JSON property `categories`
        # @return [Array<Google::Apis::MybusinessbusinessinformationV1::Category>]
        attr_accessor :categories
      
        # If the number of categories exceeded the requested page size, this field will
        # be populated with a token to fetch the next page of categories on a subsequent
        # call to `ListCategories`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @categories = args[:categories] if args.key?(:categories)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # The locations.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::MybusinessbusinessinformationV1::Location>]
        attr_accessor :locations
      
        # If the number of locations exceeded the requested page size, this field is
        # populated with a token to fetch the next page of locations on a subsequent
        # call to `ListLocations`. If there are no more locations, this field is not
        # present in the response.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The approximate number of Locations in the list irrespective of pagination.
        # This field will only be returned if `filter` is used as a query parameter.
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
      
      # A location. See the [help center article] (https://support.google.com/business/
      # answer/3038177) for a detailed description of these fields, or the [category
      # endpoint](/my-business/reference/rest/v4/categories) for a list of valid
      # business categories.
      class Location
        include Google::Apis::Core::Hashable
      
        # Additional information that is surfaced in AdWords.
        # Corresponds to the JSON property `adWordsLocationExtensions`
        # @return [Google::Apis::MybusinessbusinessinformationV1::AdWordsLocationExtensions]
        attr_accessor :ad_words_location_extensions
      
        # A collection of categories that describes the business. During updates, both
        # fields must be set. Clients are prohibited from individually updating the
        # primary or additional categories using the update mask.
        # Corresponds to the JSON property `categories`
        # @return [Google::Apis::MybusinessbusinessinformationV1::Categories]
        attr_accessor :categories
      
        # Optional. A collection of free-form strings to allow you to tag your business.
        # These labels are NOT user facing; only you can see them. Must be between 1-255
        # characters per label.
        # Corresponds to the JSON property `labels`
        # @return [Array<String>]
        attr_accessor :labels
      
        # Immutable. The language of the location. Set during creation and not
        # updateable.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this object must conform to the WGS84 standard. Values
        # must be within normalized ranges.
        # Corresponds to the JSON property `latlng`
        # @return [Google::Apis::MybusinessbusinessinformationV1::LatLng]
        attr_accessor :latlng
      
        # Additional non-user-editable information about the location.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::MybusinessbusinessinformationV1::Metadata]
        attr_accessor :metadata
      
        # Optional. More hours for a business's different departments or specific
        # customers.
        # Corresponds to the JSON property `moreHours`
        # @return [Array<Google::Apis::MybusinessbusinessinformationV1::MoreHours>]
        attr_accessor :more_hours
      
        # Google identifier for this location in the form: `locations/`location_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Information related to the opening state of the business.
        # Corresponds to the JSON property `openInfo`
        # @return [Google::Apis::MybusinessbusinessinformationV1::OpenInfo]
        attr_accessor :open_info
      
        # A collection of phone numbers for the business. During updates, both fields
        # must be set. Clients may not update just the primary or additional phone
        # numbers using the update mask. International phone format is preferred, such
        # as "+1 415 555 0132", see more in (https://developers.google.com/style/phone-
        # numbers#international-phone-numbers).
        # Corresponds to the JSON property `phoneNumbers`
        # @return [Google::Apis::MybusinessbusinessinformationV1::PhoneNumbers]
        attr_accessor :phone_numbers
      
        # All information pertaining to the location's profile.
        # Corresponds to the JSON property `profile`
        # @return [Google::Apis::MybusinessbusinessinformationV1::Profile]
        attr_accessor :profile
      
        # Represents the time periods that this location is open for business. Holds a
        # collection of TimePeriod instances.
        # Corresponds to the JSON property `regularHours`
        # @return [Google::Apis::MybusinessbusinessinformationV1::BusinessHours]
        attr_accessor :regular_hours
      
        # Information of all parent and children locations related to this one.
        # Corresponds to the JSON property `relationshipData`
        # @return [Google::Apis::MybusinessbusinessinformationV1::RelationshipData]
        attr_accessor :relationship_data
      
        # Service area businesses provide their service at the customer's location (for
        # example, a locksmith or plumber).
        # Corresponds to the JSON property `serviceArea`
        # @return [Google::Apis::MybusinessbusinessinformationV1::ServiceAreaBusiness]
        attr_accessor :service_area
      
        # Optional. List of services supported by merchants. A service can be haircut,
        # install water heater, etc. Duplicated service items will be removed
        # automatically.
        # Corresponds to the JSON property `serviceItems`
        # @return [Array<Google::Apis::MybusinessbusinessinformationV1::ServiceItem>]
        attr_accessor :service_items
      
        # Represents a set of time periods when a location's operational hours differ
        # from its normal business hours.
        # Corresponds to the JSON property `specialHours`
        # @return [Google::Apis::MybusinessbusinessinformationV1::SpecialHours]
        attr_accessor :special_hours
      
        # Optional. External identifier for this location, which must be unique within a
        # given account. This is a means of associating the location with your own
        # records.
        # Corresponds to the JSON property `storeCode`
        # @return [String]
        attr_accessor :store_code
      
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
        # Corresponds to the JSON property `storefrontAddress`
        # @return [Google::Apis::MybusinessbusinessinformationV1::PostalAddress]
        attr_accessor :storefront_address
      
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
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
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
          @ad_words_location_extensions = args[:ad_words_location_extensions] if args.key?(:ad_words_location_extensions)
          @categories = args[:categories] if args.key?(:categories)
          @labels = args[:labels] if args.key?(:labels)
          @language_code = args[:language_code] if args.key?(:language_code)
          @latlng = args[:latlng] if args.key?(:latlng)
          @metadata = args[:metadata] if args.key?(:metadata)
          @more_hours = args[:more_hours] if args.key?(:more_hours)
          @name = args[:name] if args.key?(:name)
          @open_info = args[:open_info] if args.key?(:open_info)
          @phone_numbers = args[:phone_numbers] if args.key?(:phone_numbers)
          @profile = args[:profile] if args.key?(:profile)
          @regular_hours = args[:regular_hours] if args.key?(:regular_hours)
          @relationship_data = args[:relationship_data] if args.key?(:relationship_data)
          @service_area = args[:service_area] if args.key?(:service_area)
          @service_items = args[:service_items] if args.key?(:service_items)
          @special_hours = args[:special_hours] if args.key?(:special_hours)
          @store_code = args[:store_code] if args.key?(:store_code)
          @storefront_address = args[:storefront_address] if args.key?(:storefront_address)
          @title = args[:title] if args.key?(:title)
          @website_uri = args[:website_uri] if args.key?(:website_uri)
        end
      end
      
      # Additional non-user-editable information about the location.
      class Metadata
        include Google::Apis::Core::Hashable
      
        # Output only. Indicates whether the location can be deleted using the API.
        # Corresponds to the JSON property `canDelete`
        # @return [Boolean]
        attr_accessor :can_delete
        alias_method :can_delete?, :can_delete
      
        # Output only. Indicates if the listing is eligible for business calls.
        # Corresponds to the JSON property `canHaveBusinessCalls`
        # @return [Boolean]
        attr_accessor :can_have_business_calls
        alias_method :can_have_business_calls?, :can_have_business_calls
      
        # Output only. Indicates if the listing is eligible for food menu.
        # Corresponds to the JSON property `canHaveFoodMenus`
        # @return [Boolean]
        attr_accessor :can_have_food_menus
        alias_method :can_have_food_menus?, :can_have_food_menus
      
        # Output only. Indicates if the listing can modify the service list.
        # Corresponds to the JSON property `canModifyServiceList`
        # @return [Boolean]
        attr_accessor :can_modify_service_list
        alias_method :can_modify_service_list?, :can_modify_service_list
      
        # Output only. Indicates whether the location can operate on Health data.
        # Corresponds to the JSON property `canOperateHealthData`
        # @return [Boolean]
        attr_accessor :can_operate_health_data
        alias_method :can_operate_health_data?, :can_operate_health_data
      
        # Output only. Indicates if the listing can manage local posts.
        # Corresponds to the JSON property `canOperateLocalPost`
        # @return [Boolean]
        attr_accessor :can_operate_local_post
        alias_method :can_operate_local_post?, :can_operate_local_post
      
        # Output only. Indicates whether the location can operate on Lodging data.
        # Corresponds to the JSON property `canOperateLodgingData`
        # @return [Boolean]
        attr_accessor :can_operate_lodging_data
        alias_method :can_operate_lodging_data?, :can_operate_lodging_data
      
        # Output only. The location resource that this location duplicates.
        # Corresponds to the JSON property `duplicateLocation`
        # @return [String]
        attr_accessor :duplicate_location
      
        # Output only. Indicates whether the place ID associated with this location has
        # updates that need to be updated or rejected by the client. If this boolean is
        # set, you should call the `getGoogleUpdated` method to lookup information that'
        # s needs to be verified.
        # Corresponds to the JSON property `hasGoogleUpdated`
        # @return [Boolean]
        attr_accessor :has_google_updated
        alias_method :has_google_updated?, :has_google_updated
      
        # Output only. Indicates whether any of this Location's properties are in the
        # edit pending state.
        # Corresponds to the JSON property `hasPendingEdits`
        # @return [Boolean]
        attr_accessor :has_pending_edits
        alias_method :has_pending_edits?, :has_pending_edits
      
        # Output only. Indicates if the listing has Voice of Merchant. If this boolean
        # is false, you should call the locations.getVoiceOfMerchantState API to get
        # details as to why they do not have Voice of Merchant.
        # Corresponds to the JSON property `hasVoiceOfMerchant`
        # @return [Boolean]
        attr_accessor :has_voice_of_merchant
        alias_method :has_voice_of_merchant?, :has_voice_of_merchant
      
        # Output only. A link to the location on Maps.
        # Corresponds to the JSON property `mapsUri`
        # @return [String]
        attr_accessor :maps_uri
      
        # Output only. A link to the page on Google Search where a customer can leave a
        # review for the location.
        # Corresponds to the JSON property `newReviewUri`
        # @return [String]
        attr_accessor :new_review_uri
      
        # Output only. If this locationappears on Google Maps, this field is populated
        # with the place ID for the location. This ID can be used in various Places APIs.
        # This field can be set during Create calls, but not for Update.
        # Corresponds to the JSON property `placeId`
        # @return [String]
        attr_accessor :place_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @can_delete = args[:can_delete] if args.key?(:can_delete)
          @can_have_business_calls = args[:can_have_business_calls] if args.key?(:can_have_business_calls)
          @can_have_food_menus = args[:can_have_food_menus] if args.key?(:can_have_food_menus)
          @can_modify_service_list = args[:can_modify_service_list] if args.key?(:can_modify_service_list)
          @can_operate_health_data = args[:can_operate_health_data] if args.key?(:can_operate_health_data)
          @can_operate_local_post = args[:can_operate_local_post] if args.key?(:can_operate_local_post)
          @can_operate_lodging_data = args[:can_operate_lodging_data] if args.key?(:can_operate_lodging_data)
          @duplicate_location = args[:duplicate_location] if args.key?(:duplicate_location)
          @has_google_updated = args[:has_google_updated] if args.key?(:has_google_updated)
          @has_pending_edits = args[:has_pending_edits] if args.key?(:has_pending_edits)
          @has_voice_of_merchant = args[:has_voice_of_merchant] if args.key?(:has_voice_of_merchant)
          @maps_uri = args[:maps_uri] if args.key?(:maps_uri)
          @new_review_uri = args[:new_review_uri] if args.key?(:new_review_uri)
          @place_id = args[:place_id] if args.key?(:place_id)
        end
      end
      
      # Represents an amount of money with its currency type.
      class Money
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
      
      # The time periods during which a location is open for certain types of business.
      class MoreHours
        include Google::Apis::Core::Hashable
      
        # Required. Type of hours. Clients should call `#link businessCategories:
        # BatchGet` to get supported hours types for categories of their locations.
        # Corresponds to the JSON property `hoursTypeId`
        # @return [String]
        attr_accessor :hours_type_id
      
        # Required. A collection of times that this location is open. Each period
        # represents a range of hours when the location is open during the week.
        # Corresponds to the JSON property `periods`
        # @return [Array<Google::Apis::MybusinessbusinessinformationV1::TimePeriod>]
        attr_accessor :periods
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hours_type_id = args[:hours_type_id] if args.key?(:hours_type_id)
          @periods = args[:periods] if args.key?(:periods)
        end
      end
      
      # More hours types that a business can offers, in addition to its regular hours.
      class MoreHoursType
        include Google::Apis::Core::Hashable
      
        # Output only. The human-readable English display name for the hours type.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. A stable ID provided by Google for this hours type.
        # Corresponds to the JSON property `hoursTypeId`
        # @return [String]
        attr_accessor :hours_type_id
      
        # Output only. The human-readable localized display name for the hours type.
        # Corresponds to the JSON property `localizedDisplayName`
        # @return [String]
        attr_accessor :localized_display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @hours_type_id = args[:hours_type_id] if args.key?(:hours_type_id)
          @localized_display_name = args[:localized_display_name] if args.key?(:localized_display_name)
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
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `openingDate`
        # @return [Google::Apis::MybusinessbusinessinformationV1::Date]
        attr_accessor :opening_date
      
        # Required. Indicates whether or not the Location is currently open for business.
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
      
      # A collection of phone numbers for the business. During updates, both fields
      # must be set. Clients may not update just the primary or additional phone
      # numbers using the update mask. International phone format is preferred, such
      # as "+1 415 555 0132", see more in (https://developers.google.com/style/phone-
      # numbers#international-phone-numbers).
      class PhoneNumbers
        include Google::Apis::Core::Hashable
      
        # Optional. Up to two phone numbers (mobile or landline, no fax) at which your
        # business can be called, in addition to your primary phone number.
        # Corresponds to the JSON property `additionalPhones`
        # @return [Array<String>]
        attr_accessor :additional_phones
      
        # Required. A phone number that connects to your individual business location as
        # directly as possible. Use a local phone number instead of a central, call
        # center helpline number whenever possible.
        # Corresponds to the JSON property `primaryPhone`
        # @return [String]
        attr_accessor :primary_phone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_phones = args[:additional_phones] if args.key?(:additional_phones)
          @primary_phone = args[:primary_phone] if args.key?(:primary_phone)
        end
      end
      
      # Defines an area that's represented by a place ID.
      class PlaceInfo
        include Google::Apis::Core::Hashable
      
        # Required. The ID of the place. Must correspond to a region. (https://
        # developers.google.com/places/web-service/supported_types#table3)
        # Corresponds to the JSON property `placeId`
        # @return [String]
        attr_accessor :place_id
      
        # Required. The localized name of the place. For example, `Scottsdale, AZ`.
        # Corresponds to the JSON property `placeName`
        # @return [String]
        attr_accessor :place_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @place_id = args[:place_id] if args.key?(:place_id)
          @place_name = args[:place_name] if args.key?(:place_name)
        end
      end
      
      # Defines the union of areas represented by a set of places.
      class Places
        include Google::Apis::Core::Hashable
      
        # The areas represented by place IDs. Limited to a maximum of 20 places.
        # Corresponds to the JSON property `placeInfos`
        # @return [Array<Google::Apis::MybusinessbusinessinformationV1::PlaceInfo>]
        attr_accessor :place_infos
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @place_infos = args[:place_infos] if args.key?(:place_infos)
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
      
      # All information pertaining to the location's profile.
      class Profile
        include Google::Apis::Core::Hashable
      
        # Required. Description of the location in your own voice, not editable by
        # anyone else.
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
      
      # Information of all parent and children locations related to this one.
      class RelationshipData
        include Google::Apis::Core::Hashable
      
        # The list of children locations that this location has relations with.
        # Corresponds to the JSON property `childrenLocations`
        # @return [Array<Google::Apis::MybusinessbusinessinformationV1::RelevantLocation>]
        attr_accessor :children_locations
      
        # The resource name of the Chain that this location is member of. How to find
        # Chain ID
        # Corresponds to the JSON property `parentChain`
        # @return [String]
        attr_accessor :parent_chain
      
        # Information about another location that is related to current one. The
        # relation can be any one of DEPARTMENT_OF or INDEPENDENT_ESTABLISHMENT_OF, and
        # the location specified here can be on either side (parent/child) of the
        # location.
        # Corresponds to the JSON property `parentLocation`
        # @return [Google::Apis::MybusinessbusinessinformationV1::RelevantLocation]
        attr_accessor :parent_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @children_locations = args[:children_locations] if args.key?(:children_locations)
          @parent_chain = args[:parent_chain] if args.key?(:parent_chain)
          @parent_location = args[:parent_location] if args.key?(:parent_location)
        end
      end
      
      # Information about another location that is related to current one. The
      # relation can be any one of DEPARTMENT_OF or INDEPENDENT_ESTABLISHMENT_OF, and
      # the location specified here can be on either side (parent/child) of the
      # location.
      class RelevantLocation
        include Google::Apis::Core::Hashable
      
        # Required. Specify the location that is on the other side of the relation by
        # its placeID.
        # Corresponds to the JSON property `placeId`
        # @return [String]
        attr_accessor :place_id
      
        # Required. The type of the relationship.
        # Corresponds to the JSON property `relationType`
        # @return [String]
        attr_accessor :relation_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @place_id = args[:place_id] if args.key?(:place_id)
          @relation_type = args[:relation_type] if args.key?(:relation_type)
        end
      end
      
      # Values for an attribute with a `value_type` of REPEATED_ENUM. This consists of
      # two lists of value IDs: those that are set (true) and those that are unset (
      # false). Values absent are considered unknown. At least one value must be
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
      
      # Response message for Locations.SearchChains.
      class SearchChainsResponse
        include Google::Apis::Core::Hashable
      
        # Chains that match the queried chain_display_name in SearchChainsRequest. If
        # there are no matches, this field will be empty. Results are listed in order of
        # relevance.
        # Corresponds to the JSON property `chains`
        # @return [Array<Google::Apis::MybusinessbusinessinformationV1::Chain>]
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
      
        # A location. See the [help center article] (https://support.google.com/business/
        # answer/3038177) for a detailed description of these fields, or the [category
        # endpoint](/my-business/reference/rest/v4/categories) for a list of valid
        # business categories.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::MybusinessbusinessinformationV1::Location]
        attr_accessor :location
      
        # The number of matches to return. The default value is 3, with a maximum of 10.
        # Note that latency may increase if more are requested. There is no pagination.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Text query to search for. The search results from a query string will be less
        # accurate than if providing an exact location, but can provide more inexact
        # matches.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
          @page_size = args[:page_size] if args.key?(:page_size)
          @query = args[:query] if args.key?(:query)
        end
      end
      
      # Response message for GoogleLocations.SearchGoogleLocations.
      class SearchGoogleLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A collection of GoogleLocations that are potential matches to the specified
        # request, listed in order from most to least accuracy.
        # Corresponds to the JSON property `googleLocations`
        # @return [Array<Google::Apis::MybusinessbusinessinformationV1::GoogleLocation>]
        attr_accessor :google_locations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @google_locations = args[:google_locations] if args.key?(:google_locations)
        end
      end
      
      # Service area businesses provide their service at the customer's location (for
      # example, a locksmith or plumber).
      class ServiceAreaBusiness
        include Google::Apis::Core::Hashable
      
        # Required. Indicates the type of the service area business.
        # Corresponds to the JSON property `businessType`
        # @return [String]
        attr_accessor :business_type
      
        # Defines the union of areas represented by a set of places.
        # Corresponds to the JSON property `places`
        # @return [Google::Apis::MybusinessbusinessinformationV1::Places]
        attr_accessor :places
      
        # Immutable. CLDR region code of the country/region that this service area
        # business is based in. See http://cldr.unicode.org/ and http://www.unicode.org/
        # cldr/charts/30/supplemental/territory_information.html for details. Example: "
        # CH" for Switzerland. This field is required for CUSTOMER_LOCATION_ONLY
        # businesses, and is ignored otherwise. The region specified here can be
        # different from regions for the areas that this business serves (e.g. service
        # area businesses that provide services in regions other than the one that they
        # are based in). If this location requires verification after creation, the
        # address provided for verification purposes *must* be located within this
        # region, and the business owner or their authorized representative *must* be
        # able to receive postal mail at the provided verification address.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @business_type = args[:business_type] if args.key?(:business_type)
          @places = args[:places] if args.key?(:places)
          @region_code = args[:region_code] if args.key?(:region_code)
        end
      end
      
      # A message that describes a single service item. It is used to describe the
      # type of service that the merchant provides. For example, haircut can be a
      # service.
      class ServiceItem
        include Google::Apis::Core::Hashable
      
        # Represents a free-form service offered by the merchant. These are services
        # that are not exposed as part of our structure service data. The merchant
        # manually enters the names for of such services via a geomerchant surface.
        # Corresponds to the JSON property `freeFormServiceItem`
        # @return [Google::Apis::MybusinessbusinessinformationV1::FreeFormServiceItem]
        attr_accessor :free_form_service_item
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::MybusinessbusinessinformationV1::Money]
        attr_accessor :price
      
        # Represents a structured service offered by the merchant. For eg:
        # toilet_installation.
        # Corresponds to the JSON property `structuredServiceItem`
        # @return [Google::Apis::MybusinessbusinessinformationV1::StructuredServiceItem]
        attr_accessor :structured_service_item
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @free_form_service_item = args[:free_form_service_item] if args.key?(:free_form_service_item)
          @price = args[:price] if args.key?(:price)
          @structured_service_item = args[:structured_service_item] if args.key?(:structured_service_item)
        end
      end
      
      # A message describing a service type that the business offers.
      class ServiceType
        include Google::Apis::Core::Hashable
      
        # Output only. The human-readable display name for the service type.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. A stable ID (provided by Google) for this service type.
        # Corresponds to the JSON property `serviceTypeId`
        # @return [String]
        attr_accessor :service_type_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @service_type_id = args[:service_type_id] if args.key?(:service_type_id)
        end
      end
      
      # Represents a single time period when a location's operational hours differ
      # from its normal business hours. A special hour period must represent a range
      # of less than 24 hours. The `open_time` and `start_date` must predate the `
      # close_time` and `end_date`. The `close_time` and `end_date` can extend to 11:
      # 59 a.m. on the day after the specified `start_date`. For example, the
      # following inputs are valid: start_date=2015-11-23, open_time=08:00, close_time=
      # 18:00 start_date=2015-11-23, end_date=2015-11-23, open_time=08:00, close_time=
      # 18:00 start_date=2015-11-23, end_date=2015-11-24, open_time=13:00, close_time=
      # 11:59 The following inputs are not valid: start_date=2015-11-23, open_time=13:
      # 00, close_time=11:59 start_date=2015-11-23, end_date=2015-11-24, open_time=13:
      # 00, close_time=12:00 start_date=2015-11-23, end_date=2015-11-25, open_time=08:
      # 00, close_time=18:00
      class SpecialHourPeriod
        include Google::Apis::Core::Hashable
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `closeTime`
        # @return [Google::Apis::MybusinessbusinessinformationV1::TimeOfDay]
        attr_accessor :close_time
      
        # Optional. If true, `end_date`, `open_time`, and `close_time` are ignored, and
        # the date specified in `start_date` is treated as the location being closed for
        # the entire day.
        # Corresponds to the JSON property `closed`
        # @return [Boolean]
        attr_accessor :closed
        alias_method :closed?, :closed
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `endDate`
        # @return [Google::Apis::MybusinessbusinessinformationV1::Date]
        attr_accessor :end_date
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `openTime`
        # @return [Google::Apis::MybusinessbusinessinformationV1::TimeOfDay]
        attr_accessor :open_time
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `startDate`
        # @return [Google::Apis::MybusinessbusinessinformationV1::Date]
        attr_accessor :start_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @close_time = args[:close_time] if args.key?(:close_time)
          @closed = args[:closed] if args.key?(:closed)
          @end_date = args[:end_date] if args.key?(:end_date)
          @open_time = args[:open_time] if args.key?(:open_time)
          @start_date = args[:start_date] if args.key?(:start_date)
        end
      end
      
      # Represents a set of time periods when a location's operational hours differ
      # from its normal business hours.
      class SpecialHours
        include Google::Apis::Core::Hashable
      
        # Required. A list of exceptions to the business's regular hours.
        # Corresponds to the JSON property `specialHourPeriods`
        # @return [Array<Google::Apis::MybusinessbusinessinformationV1::SpecialHourPeriod>]
        attr_accessor :special_hour_periods
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @special_hour_periods = args[:special_hour_periods] if args.key?(:special_hour_periods)
        end
      end
      
      # Represents a structured service offered by the merchant. For eg:
      # toilet_installation.
      class StructuredServiceItem
        include Google::Apis::Core::Hashable
      
        # Optional. Description of structured service item. The character limit is 300.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The `service_type_id` field is a Google provided unique ID that can
        # be found in `ServiceType`. This information is provided by `BatchGetCategories`
        # rpc service.
        # Corresponds to the JSON property `serviceTypeId`
        # @return [String]
        attr_accessor :service_type_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @service_type_id = args[:service_type_id] if args.key?(:service_type_id)
        end
      end
      
      # Represents a time of day. The date and time zone are either not significant or
      # are specified elsewhere. An API may choose to allow leap seconds. Related
      # types are google.type.Date and `google.protobuf.Timestamp`.
      class TimeOfDay
        include Google::Apis::Core::Hashable
      
        # Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to
        # allow the value "24:00:00" for scenarios like business closing time.
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
      
      # Represents a span of time that the business is open, starting on the specified
      # open day/time and closing on the specified close day/time. The closing time
      # must occur after the opening time, for example later in the same day, or on a
      # subsequent day.
      class TimePeriod
        include Google::Apis::Core::Hashable
      
        # Required. Indicates the day of the week this period ends on.
        # Corresponds to the JSON property `closeDay`
        # @return [String]
        attr_accessor :close_day
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `closeTime`
        # @return [Google::Apis::MybusinessbusinessinformationV1::TimeOfDay]
        attr_accessor :close_time
      
        # Required. Indicates the day of the week this period starts on.
        # Corresponds to the JSON property `openDay`
        # @return [String]
        attr_accessor :open_day
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `openTime`
        # @return [Google::Apis::MybusinessbusinessinformationV1::TimeOfDay]
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
      
      # Values for an attribute with a `value_type` of URL.
      class UriAttributeValue
        include Google::Apis::Core::Hashable
      
        # Required. The proposed URI value for this attribute.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
    end
  end
end
