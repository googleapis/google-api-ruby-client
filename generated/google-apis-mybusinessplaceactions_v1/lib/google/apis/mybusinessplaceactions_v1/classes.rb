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
    module MybusinessplaceactionsV1
      
      # Day level availability.
      class AvailableDay
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `fulfillmentDate`
        # @return [Google::Apis::MybusinessplaceactionsV1::Date]
        attr_accessor :fulfillment_date
      
        # Unix timestamp. The last time till when, a user could place an order to be
        # received by `fulfillment_date`. In other words, after last_ordering_time,
        # fulfillment_date will no longer be shown as available.
        # Corresponds to the JSON property `lastOrderingTime`
        # @return [String]
        attr_accessor :last_ordering_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fulfillment_date = args[:fulfillment_date] if args.key?(:fulfillment_date)
          @last_ordering_time = args[:last_ordering_time] if args.key?(:last_ordering_time)
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
      
      # Fee details for the fulfillment method associated with the action.
      class FeeDetails
        include Google::Apis::Core::Hashable
      
        # The minimum fee required for the fulfillment method.
        # Corresponds to the JSON property `baseFee`
        # @return [Google::Apis::MybusinessplaceactionsV1::MinimumFee]
        attr_accessor :base_fee
      
        # The fixed fee required for the fulfillment method.
        # Corresponds to the JSON property `fixedFee`
        # @return [Google::Apis::MybusinessplaceactionsV1::FixedFee]
        attr_accessor :fixed_fee
      
        # No fee required for the fulfillment method associated with the action.
        # Corresponds to the JSON property `noFee`
        # @return [Google::Apis::MybusinessplaceactionsV1::NoFee]
        attr_accessor :no_fee
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base_fee = args[:base_fee] if args.key?(:base_fee)
          @fixed_fee = args[:fixed_fee] if args.key?(:fixed_fee)
          @no_fee = args[:no_fee] if args.key?(:no_fee)
        end
      end
      
      # The fixed fee required for the fulfillment method.
      class FixedFee
        include Google::Apis::Core::Hashable
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `amount`
        # @return [Google::Apis::MybusinessplaceactionsV1::Money]
        attr_accessor :amount
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amount = args[:amount] if args.key?(:amount)
        end
      end
      
      # The fulfillment option for an order online action.
      class FulfillmentOption
        include Google::Apis::Core::Hashable
      
        # A list of days on which there is availability for this fulfillment method (
        # preferably at least 2).
        # Corresponds to the JSON property `availableDay`
        # @return [Array<Google::Apis::MybusinessplaceactionsV1::AvailableDay>]
        attr_accessor :available_day
      
        # Fee details for the fulfillment method associated with the action.
        # Corresponds to the JSON property `feeDetails`
        # @return [Google::Apis::MybusinessplaceactionsV1::FeeDetails]
        attr_accessor :fee_details
      
        # Fulfillment type
        # Corresponds to the JSON property `fulfillmentType`
        # @return [String]
        attr_accessor :fulfillment_type
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `minimumOrder`
        # @return [Google::Apis::MybusinessplaceactionsV1::Money]
        attr_accessor :minimum_order
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @available_day = args[:available_day] if args.key?(:available_day)
          @fee_details = args[:fee_details] if args.key?(:fee_details)
          @fulfillment_type = args[:fulfillment_type] if args.key?(:fulfillment_type)
          @minimum_order = args[:minimum_order] if args.key?(:minimum_order)
        end
      end
      
      # Response message for PlaceActions.ListPlaceActionLinks.
      class ListPlaceActionLinksResponse
        include Google::Apis::Core::Hashable
      
        # If there are more place action links than the requested page size, then this
        # field is populated with a token to fetch the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The returned list of place action links.
        # Corresponds to the JSON property `placeActionLinks`
        # @return [Array<Google::Apis::MybusinessplaceactionsV1::PlaceActionLink>]
        attr_accessor :place_action_links
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @place_action_links = args[:place_action_links] if args.key?(:place_action_links)
        end
      end
      
      # Response message for PlaceActions.ListPlaceActionTypeMetadata.
      class ListPlaceActionTypeMetadataResponse
        include Google::Apis::Core::Hashable
      
        # If the number of action types exceeded the requested page size, this field
        # will be populated with a token to fetch the next page on a subsequent call to `
        # placeActionTypeMetadata.list`. If there are no more results, this field will
        # not be present in the response.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A collection of metadata for the available place action types.
        # Corresponds to the JSON property `placeActionTypeMetadata`
        # @return [Array<Google::Apis::MybusinessplaceactionsV1::PlaceActionTypeMetadata>]
        attr_accessor :place_action_type_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @place_action_type_metadata = args[:place_action_type_metadata] if args.key?(:place_action_type_metadata)
        end
      end
      
      # The minimum fee required for the fulfillment method.
      class MinimumFee
        include Google::Apis::Core::Hashable
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `baseFeeAmount`
        # @return [Google::Apis::MybusinessplaceactionsV1::Money]
        attr_accessor :base_fee_amount
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base_fee_amount = args[:base_fee_amount] if args.key?(:base_fee_amount)
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
      
      # No fee required for the fulfillment method associated with the action.
      class NoFee
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Client version of the metadata for an order online action.
      class OrderOnlineMetadata
        include Google::Apis::Core::Hashable
      
        # Available fulfillment options for an order online action.
        # Corresponds to the JSON property `fulfillmentOption`
        # @return [Array<Google::Apis::MybusinessplaceactionsV1::FulfillmentOption>]
        attr_accessor :fulfillment_option
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fulfillment_option = args[:fulfillment_option] if args.key?(:fulfillment_option)
        end
      end
      
      # Represents a place action link and its attributes.
      class PlaceActionLink
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the place action link was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Indicates whether this link can be edited by the client.
        # Corresponds to the JSON property `isEditable`
        # @return [Boolean]
        attr_accessor :is_editable
        alias_method :is_editable?, :is_editable
      
        # Optional. Whether this link is preferred by the merchant. Only one link can be
        # marked as preferred per place action type at a location. If a future request
        # marks a different link as preferred for the same place action type, then the
        # current preferred link (if any exists) will lose its preference.
        # Corresponds to the JSON property `isPreferred`
        # @return [Boolean]
        attr_accessor :is_preferred
        alias_method :is_preferred?, :is_preferred
      
        # Optional. The resource name, in the format `locations/`location_id`/
        # placeActionLinks/`place_action_link_id``. The name field will only be
        # considered in UpdatePlaceActionLink and DeletePlaceActionLink requests for
        # updating and deleting links respectively. However, it will be ignored in
        # CreatePlaceActionLink request, where `place_action_link_id` will be assigned
        # by the server on successful creation of a new link and returned as part of the
        # response.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Client version of the metadata for an order online action.
        # Corresponds to the JSON property `orderOnlineMetadata`
        # @return [Google::Apis::MybusinessplaceactionsV1::OrderOnlineMetadata]
        attr_accessor :order_online_metadata
      
        # Required. The type of place action that can be performed using this link.
        # Corresponds to the JSON property `placeActionType`
        # @return [String]
        attr_accessor :place_action_type
      
        # Output only. Specifies the provider type.
        # Corresponds to the JSON property `providerType`
        # @return [String]
        attr_accessor :provider_type
      
        # Output only. The time when the place action link was last modified.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Required. The link uri. The same uri can be reused for different action types
        # across different locations. However, only one place action link is allowed for
        # each unique combination of (uri, place action type, location).
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @is_editable = args[:is_editable] if args.key?(:is_editable)
          @is_preferred = args[:is_preferred] if args.key?(:is_preferred)
          @name = args[:name] if args.key?(:name)
          @order_online_metadata = args[:order_online_metadata] if args.key?(:order_online_metadata)
          @place_action_type = args[:place_action_type] if args.key?(:place_action_type)
          @provider_type = args[:provider_type] if args.key?(:provider_type)
          @update_time = args[:update_time] if args.key?(:update_time)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Metadata for supported place action types.
      class PlaceActionTypeMetadata
        include Google::Apis::Core::Hashable
      
        # The localized display name for the attribute, if available; otherwise, the
        # English display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The place action type.
        # Corresponds to the JSON property `placeActionType`
        # @return [String]
        attr_accessor :place_action_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @place_action_type = args[:place_action_type] if args.key?(:place_action_type)
        end
      end
    end
  end
end
