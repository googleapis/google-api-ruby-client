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
    module MarketingplatformadminV1alpha
      
      # A resource message representing the link between a Google Analytics account
      # and a Google Marketing Platform organization.
      class AnalyticsAccountLink
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. The resource name of the AnalyticsAdmin API account. The
        # account ID will be used as the ID of this AnalyticsAccountLink resource, which
        # will become the final component of the resource name. Format: analyticsadmin.
        # googleapis.com/accounts/`account_id`
        # Corresponds to the JSON property `analyticsAccount`
        # @return [String]
        attr_accessor :analytics_account
      
        # Output only. The human-readable name for the Analytics account.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The verification state of the link between the Analytics account
        # and the parent organization.
        # Corresponds to the JSON property `linkVerificationState`
        # @return [String]
        attr_accessor :link_verification_state
      
        # Identifier. Resource name of this AnalyticsAccountLink. Note the resource ID
        # is the same as the ID of the Analtyics account. Format: organizations/`org_id`/
        # analyticsAccountLinks/`analytics_account_link_id` Example: "organizations/xyz/
        # analyticsAccountLinks/1234"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analytics_account = args[:analytics_account] if args.key?(:analytics_account)
          @display_name = args[:display_name] if args.key?(:display_name)
          @link_verification_state = args[:link_verification_state] if args.key?(:link_verification_state)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Contains the bill amount.
      class BillInfo
        include Google::Apis::Core::Hashable
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `baseFee`
        # @return [Google::Apis::MarketingplatformadminV1alpha::Money]
        attr_accessor :base_fee
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `eventFee`
        # @return [Google::Apis::MarketingplatformadminV1alpha::Money]
        attr_accessor :event_fee
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `priceProtectionCredit`
        # @return [Google::Apis::MarketingplatformadminV1alpha::Money]
        attr_accessor :price_protection_credit
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `total`
        # @return [Google::Apis::MarketingplatformadminV1alpha::Money]
        attr_accessor :total
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base_fee = args[:base_fee] if args.key?(:base_fee)
          @event_fee = args[:event_fee] if args.key?(:event_fee)
          @price_protection_credit = args[:price_protection_credit] if args.key?(:price_protection_credit)
          @total = args[:total] if args.key?(:total)
        end
      end
      
      # Contains the client data.
      class ClientData
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
        # @return [Google::Apis::MarketingplatformadminV1alpha::Date]
        attr_accessor :end_date
      
        # A resource message representing a Google Marketing Platform organization.
        # Corresponds to the JSON property `organization`
        # @return [Google::Apis::MarketingplatformadminV1alpha::Organization]
        attr_accessor :organization
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `startDate`
        # @return [Google::Apis::MarketingplatformadminV1alpha::Date]
        attr_accessor :start_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_date = args[:end_date] if args.key?(:end_date)
          @organization = args[:organization] if args.key?(:organization)
          @start_date = args[:start_date] if args.key?(:start_date)
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
      
      # Request message for FindSalesPartnerManagedClients RPC.
      class FindSalesPartnerManagedClientsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. If set, only active and just ended clients will be returned.
        # Corresponds to the JSON property `isActive`
        # @return [Boolean]
        attr_accessor :is_active
        alias_method :is_active?, :is_active
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @is_active = args[:is_active] if args.key?(:is_active)
        end
      end
      
      # Response message for FindSalesPartnerManagedClients RPC.
      class FindSalesPartnerManagedClientsResponse
        include Google::Apis::Core::Hashable
      
        # The clients managed by the sales org.
        # Corresponds to the JSON property `clientData`
        # @return [Array<Google::Apis::MarketingplatformadminV1alpha::ClientData>]
        attr_accessor :client_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_data = args[:client_data] if args.key?(:client_data)
        end
      end
      
      # Response message for ListAnalyticsAccountLinks RPC.
      class ListAnalyticsAccountLinksResponse
        include Google::Apis::Core::Hashable
      
        # Analytics account links in this organization.
        # Corresponds to the JSON property `analyticsAccountLinks`
        # @return [Array<Google::Apis::MarketingplatformadminV1alpha::AnalyticsAccountLink>]
        attr_accessor :analytics_account_links
      
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
          @analytics_account_links = args[:analytics_account_links] if args.key?(:analytics_account_links)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListOrganizations RPC.
      class ListOrganizationsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The Organization resource that the user has access to, which includes the org
        # id and display name.
        # Corresponds to the JSON property `organizations`
        # @return [Array<Google::Apis::MarketingplatformadminV1alpha::Organization>]
        attr_accessor :organizations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @organizations = args[:organizations] if args.key?(:organizations)
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
      
      # A resource message representing a Google Marketing Platform organization.
      class Organization
        include Google::Apis::Core::Hashable
      
        # The human-readable name for the organization.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Identifier. The resource name of the GMP organization. Format: organizations/`
        # org_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Contains the count of events received by the property, along with metadata
      # that influences the volume of `billable` events.
      class PropertyUsage
        include Google::Apis::Core::Hashable
      
        # The ID of the property's parent account.
        # Corresponds to the JSON property `accountId`
        # @return [Fixnum]
        attr_accessor :account_id
      
        # The number of events for which the property is billed in the requested month.
        # Corresponds to the JSON property `billableEventCount`
        # @return [Fixnum]
        attr_accessor :billable_event_count
      
        # The display name of the property.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The name of the Google Analytics Admin API property resource. Format:
        # analyticsadmin.googleapis.com/properties/`property_id`
        # Corresponds to the JSON property `property`
        # @return [String]
        attr_accessor :property
      
        # The subtype of the analytics property. This affects the billable event count.
        # Corresponds to the JSON property `propertyType`
        # @return [String]
        attr_accessor :property_type
      
        # The service level of the property.
        # Corresponds to the JSON property `serviceLevel`
        # @return [String]
        attr_accessor :service_level
      
        # Total event count that the property received during the requested month.
        # Corresponds to the JSON property `totalEventCount`
        # @return [Fixnum]
        attr_accessor :total_event_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @billable_event_count = args[:billable_event_count] if args.key?(:billable_event_count)
          @display_name = args[:display_name] if args.key?(:display_name)
          @property = args[:property] if args.key?(:property)
          @property_type = args[:property_type] if args.key?(:property_type)
          @service_level = args[:service_level] if args.key?(:service_level)
          @total_event_count = args[:total_event_count] if args.key?(:total_event_count)
        end
      end
      
      # Request message for ReportPropertyUsage RPC.
      class ReportPropertyUsageRequest
        include Google::Apis::Core::Hashable
      
        # Required. The target month to list property usages. Format: YYYY-MM. For
        # example, "2025-05"
        # Corresponds to the JSON property `month`
        # @return [String]
        attr_accessor :month
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @month = args[:month] if args.key?(:month)
        end
      end
      
      # Response message for ReportPropertyUsage RPC.
      class ReportPropertyUsageResponse
        include Google::Apis::Core::Hashable
      
        # Contains the bill amount.
        # Corresponds to the JSON property `billInfo`
        # @return [Google::Apis::MarketingplatformadminV1alpha::BillInfo]
        attr_accessor :bill_info
      
        # Usage data for all properties in the specified organization and month.
        # Corresponds to the JSON property `propertyUsages`
        # @return [Array<Google::Apis::MarketingplatformadminV1alpha::PropertyUsage>]
        attr_accessor :property_usages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bill_info = args[:bill_info] if args.key?(:bill_info)
          @property_usages = args[:property_usages] if args.key?(:property_usages)
        end
      end
      
      # Request message for SetPropertyServiceLevel RPC.
      class SetPropertyServiceLevelRequest
        include Google::Apis::Core::Hashable
      
        # Required. The Analytics property to change the ServiceLevel setting. This
        # field is the name of the Google Analytics Admin API property resource. Format:
        # analyticsadmin.googleapis.com/properties/`property_id`
        # Corresponds to the JSON property `analyticsProperty`
        # @return [String]
        attr_accessor :analytics_property
      
        # Required. The service level to set for this property.
        # Corresponds to the JSON property `serviceLevel`
        # @return [String]
        attr_accessor :service_level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analytics_property = args[:analytics_property] if args.key?(:analytics_property)
          @service_level = args[:service_level] if args.key?(:service_level)
        end
      end
      
      # Response message for SetPropertyServiceLevel RPC.
      class SetPropertyServiceLevelResponse
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
