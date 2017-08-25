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
    module CloudbillingV1
      
      # Represents the aggregation level and interval for pricing of a single SKU.
      class AggregationInfo
        include Google::Apis::Core::Hashable
      
        # The number of intervals to aggregate over.
        # Example: If aggregation_level is "DAILY" and aggregation_count is 14,
        # aggregation will be over 14 days.
        # Corresponds to the JSON property `aggregationCount`
        # @return [Fixnum]
        attr_accessor :aggregation_count
      
        # 
        # Corresponds to the JSON property `aggregationInterval`
        # @return [String]
        attr_accessor :aggregation_interval
      
        # 
        # Corresponds to the JSON property `aggregationLevel`
        # @return [String]
        attr_accessor :aggregation_level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregation_count = args[:aggregation_count] if args.key?(:aggregation_count)
          @aggregation_interval = args[:aggregation_interval] if args.key?(:aggregation_interval)
          @aggregation_level = args[:aggregation_level] if args.key?(:aggregation_level)
        end
      end
      
      # A billing account in [Google Cloud
      # Console](https://console.cloud.google.com/). You can assign a billing account
      # to one or more projects.
      class BillingAccount
        include Google::Apis::Core::Hashable
      
        # The display name given to the billing account, such as `My Billing
        # Account`. This name is displayed in the Google Cloud Console.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The resource name of the billing account. The resource name has the form
        # `billingAccounts/`billing_account_id``. For example,
        # `billingAccounts/012345-567890-ABCDEF` would be the resource name for
        # billing account `012345-567890-ABCDEF`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # True if the billing account is open, and will therefore be charged for any
        # usage on associated projects. False if the billing account is closed, and
        # therefore projects associated with it will be unable to use paid services.
        # Corresponds to the JSON property `open`
        # @return [Boolean]
        attr_accessor :open
        alias_method :open?, :open
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @open = args[:open] if args.key?(:open)
        end
      end
      
      # Represents the category hierarchy of a SKU.
      class Category
        include Google::Apis::Core::Hashable
      
        # The type of product the SKU refers to.
        # Example: "Compute", "Storage", "Network", "ApplicationServices" etc.
        # Corresponds to the JSON property `resourceFamily`
        # @return [String]
        attr_accessor :resource_family
      
        # A group classification for related SKUs.
        # Example: "RAM", "GPU", "Prediction", "Ops", "GoogleEgress" etc.
        # Corresponds to the JSON property `resourceGroup`
        # @return [String]
        attr_accessor :resource_group
      
        # The display name of the service this SKU belongs to.
        # Corresponds to the JSON property `serviceDisplayName`
        # @return [String]
        attr_accessor :service_display_name
      
        # Represents how the SKU is consumed.
        # Example: "OnDemand", "Preemptible", "Commit1Mo", "Commit1Yr" etc.
        # Corresponds to the JSON property `usageType`
        # @return [String]
        attr_accessor :usage_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_family = args[:resource_family] if args.key?(:resource_family)
          @resource_group = args[:resource_group] if args.key?(:resource_group)
          @service_display_name = args[:service_display_name] if args.key?(:service_display_name)
          @usage_type = args[:usage_type] if args.key?(:usage_type)
        end
      end
      
      # Response message for `ListBillingAccounts`.
      class ListBillingAccountsResponse
        include Google::Apis::Core::Hashable
      
        # A list of billing accounts.
        # Corresponds to the JSON property `billingAccounts`
        # @return [Array<Google::Apis::CloudbillingV1::BillingAccount>]
        attr_accessor :billing_accounts
      
        # A token to retrieve the next page of results. To retrieve the next page,
        # call `ListBillingAccounts` again with the `page_token` field set to this
        # value. This field is empty if there are no more results to retrieve.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_accounts = args[:billing_accounts] if args.key?(:billing_accounts)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Request message for `ListProjectBillingInfoResponse`.
      class ListProjectBillingInfoResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results. To retrieve the next page,
        # call `ListProjectBillingInfo` again with the `page_token` field set to this
        # value. This field is empty if there are no more results to retrieve.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of `ProjectBillingInfo` resources representing the projects
        # associated with the billing account.
        # Corresponds to the JSON property `projectBillingInfo`
        # @return [Array<Google::Apis::CloudbillingV1::ProjectBillingInfo>]
        attr_accessor :project_billing_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @project_billing_info = args[:project_billing_info] if args.key?(:project_billing_info)
        end
      end
      
      # Response message for `ListServices`.
      class ListServicesResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results. To retrieve the next page,
        # call `ListServices` again with the `page_token` field set to this
        # value. This field is empty if there are no more results to retrieve.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of services.
        # Corresponds to the JSON property `services`
        # @return [Array<Google::Apis::CloudbillingV1::Service>]
        attr_accessor :services
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @services = args[:services] if args.key?(:services)
        end
      end
      
      # Response message for `ListSkus`.
      class ListSkusResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results. To retrieve the next page,
        # call `ListSkus` again with the `page_token` field set to this
        # value. This field is empty if there are no more results to retrieve.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of public SKUs of the given service.
        # Corresponds to the JSON property `skus`
        # @return [Array<Google::Apis::CloudbillingV1::Sku>]
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
      
      # Expresses a mathematical pricing formula. For Example:-
      # `usage_unit: GBy`
      # `tiered_rates:`
      # `[start_usage_amount: 20, unit_price: $10]`
      # `[start_usage_amount: 100, unit_price: $5]`
      # The above expresses a pricing formula where the first 20GB is free, the
      # next 80GB is priced at $10 per GB followed by $5 per GB for additional
      # usage.
      class PricingExpression
        include Google::Apis::Core::Hashable
      
        # The base unit for the SKU which is the unit used in usage exports.
        # Example: "By"
        # Corresponds to the JSON property `baseUnit`
        # @return [String]
        attr_accessor :base_unit
      
        # Conversion factor for converting from price per usage_unit to price per
        # base_unit, and start_usage_amount to start_usage_amount in base_unit.
        # unit_price / base_unit_conversion_factor = price per base_unit.
        # start_usage_amount * base_unit_conversion_factor = start_usage_amount in
        # base_unit.
        # Corresponds to the JSON property `baseUnitConversionFactor`
        # @return [Float]
        attr_accessor :base_unit_conversion_factor
      
        # The base unit in human readable form.
        # Example: "byte".
        # Corresponds to the JSON property `baseUnitDescription`
        # @return [String]
        attr_accessor :base_unit_description
      
        # The recommended quantity of units for displaying pricing info. When
        # displaying pricing info it is recommended to display:
        # (unit_price * display_quantity) per display_quantity usage_unit.
        # This field does not affect the pricing formula and is for display purposes
        # only.
        # Example: If the unit_price is "0.0001 USD", the usage_unit is "GB" and
        # the display_quantity is "1000" then the recommended way of displaying the
        # pricing info is "0.10 USD per 1000 GB"
        # Corresponds to the JSON property `displayQuantity`
        # @return [Float]
        attr_accessor :display_quantity
      
        # The list of tiered rates for this pricing. The total cost is computed by
        # applying each of the tiered rates on usage. This repeated list is sorted
        # by ascending order of start_usage_amount.
        # Corresponds to the JSON property `tieredRates`
        # @return [Array<Google::Apis::CloudbillingV1::TierRate>]
        attr_accessor :tiered_rates
      
        # The short hand for unit of usage this pricing is specified in.
        # Example: usage_unit of "GiBy" means that usage is specified in "Gibi Byte".
        # Corresponds to the JSON property `usageUnit`
        # @return [String]
        attr_accessor :usage_unit
      
        # The unit of usage in human readable form.
        # Example: "gibi byte".
        # Corresponds to the JSON property `usageUnitDescription`
        # @return [String]
        attr_accessor :usage_unit_description
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base_unit = args[:base_unit] if args.key?(:base_unit)
          @base_unit_conversion_factor = args[:base_unit_conversion_factor] if args.key?(:base_unit_conversion_factor)
          @base_unit_description = args[:base_unit_description] if args.key?(:base_unit_description)
          @display_quantity = args[:display_quantity] if args.key?(:display_quantity)
          @tiered_rates = args[:tiered_rates] if args.key?(:tiered_rates)
          @usage_unit = args[:usage_unit] if args.key?(:usage_unit)
          @usage_unit_description = args[:usage_unit_description] if args.key?(:usage_unit_description)
        end
      end
      
      # Represents the pricing information for a SKU at a single point of time.
      class PricingInfo
        include Google::Apis::Core::Hashable
      
        # Represents the aggregation level and interval for pricing of a single SKU.
        # Corresponds to the JSON property `aggregationInfo`
        # @return [Google::Apis::CloudbillingV1::AggregationInfo]
        attr_accessor :aggregation_info
      
        # Conversion rate for currency conversion, from USD to the currency specified
        # in the request. If the currency is not specified this defaults to 1.0.
        # Example: USD * currency_conversion_rate = JPY
        # Corresponds to the JSON property `currencyConversionRate`
        # @return [Float]
        attr_accessor :currency_conversion_rate
      
        # The timestamp from which this pricing was effective.
        # Corresponds to the JSON property `effectiveTime`
        # @return [String]
        attr_accessor :effective_time
      
        # Expresses a mathematical pricing formula. For Example:-
        # `usage_unit: GBy`
        # `tiered_rates:`
        # `[start_usage_amount: 20, unit_price: $10]`
        # `[start_usage_amount: 100, unit_price: $5]`
        # The above expresses a pricing formula where the first 20GB is free, the
        # next 80GB is priced at $10 per GB followed by $5 per GB for additional
        # usage.
        # Corresponds to the JSON property `pricingExpression`
        # @return [Google::Apis::CloudbillingV1::PricingExpression]
        attr_accessor :pricing_expression
      
        # An optional human readable summary of the pricing information, has a
        # maximum length of 256 characters.
        # Corresponds to the JSON property `summary`
        # @return [String]
        attr_accessor :summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregation_info = args[:aggregation_info] if args.key?(:aggregation_info)
          @currency_conversion_rate = args[:currency_conversion_rate] if args.key?(:currency_conversion_rate)
          @effective_time = args[:effective_time] if args.key?(:effective_time)
          @pricing_expression = args[:pricing_expression] if args.key?(:pricing_expression)
          @summary = args[:summary] if args.key?(:summary)
        end
      end
      
      # Encapsulation of billing information for a Cloud Console project. A project
      # has at most one associated billing account at a time (but a billing account
      # can be assigned to multiple projects).
      class ProjectBillingInfo
        include Google::Apis::Core::Hashable
      
        # The resource name of the billing account associated with the project, if
        # any. For example, `billingAccounts/012345-567890-ABCDEF`.
        # Corresponds to the JSON property `billingAccountName`
        # @return [String]
        attr_accessor :billing_account_name
      
        # True if the project is associated with an open billing account, to which
        # usage on the project is charged. False if the project is associated with a
        # closed billing account, or no billing account at all, and therefore cannot
        # use paid services. This field is read-only.
        # Corresponds to the JSON property `billingEnabled`
        # @return [Boolean]
        attr_accessor :billing_enabled
        alias_method :billing_enabled?, :billing_enabled
      
        # The resource name for the `ProjectBillingInfo`; has the form
        # `projects/`project_id`/billingInfo`. For example, the resource name for the
        # billing information for project `tokyo-rain-123` would be
        # `projects/tokyo-rain-123/billingInfo`. This field is read-only.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The ID of the project that this `ProjectBillingInfo` represents, such as
        # `tokyo-rain-123`. This is a convenience field so that you don't need to
        # parse the `name` field to obtain a project ID. This field is read-only.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_account_name = args[:billing_account_name] if args.key?(:billing_account_name)
          @billing_enabled = args[:billing_enabled] if args.key?(:billing_enabled)
          @name = args[:name] if args.key?(:name)
          @project_id = args[:project_id] if args.key?(:project_id)
        end
      end
      
      # Encapsulates a single service in Google Cloud Platform.
      class Service
        include Google::Apis::Core::Hashable
      
        # A human readable display name for this service.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The resource name for the service.
        # Example: "services/DA34-426B-A397"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The identifier for the service.
        # Example: "DA34-426B-A397"
        # Corresponds to the JSON property `serviceId`
        # @return [String]
        attr_accessor :service_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @service_id = args[:service_id] if args.key?(:service_id)
        end
      end
      
      # Encapsulates a single SKU in Google Cloud Platform
      class Sku
        include Google::Apis::Core::Hashable
      
        # Represents the category hierarchy of a SKU.
        # Corresponds to the JSON property `category`
        # @return [Google::Apis::CloudbillingV1::Category]
        attr_accessor :category
      
        # A human readable description of the SKU, has a maximum length of 256
        # characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The resource name for the SKU.
        # Example: "services/DA34-426B-A397/skus/AA95-CD31-42FE"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A timeline of pricing info for this SKU in chronological order.
        # Corresponds to the JSON property `pricingInfo`
        # @return [Array<Google::Apis::CloudbillingV1::PricingInfo>]
        attr_accessor :pricing_info
      
        # Identifies the service provider.
        # This is 'Google' for first party services in Google Cloud Platform.
        # Corresponds to the JSON property `serviceProviderName`
        # @return [String]
        attr_accessor :service_provider_name
      
        # List of service regions this SKU is offered at.
        # Example: "asia-east1"
        # Service regions can be found at https://cloud.google.com/about/locations/
        # Corresponds to the JSON property `serviceRegions`
        # @return [Array<String>]
        attr_accessor :service_regions
      
        # The identifier for the SKU.
        # Example: "AA95-CD31-42FE"
        # Corresponds to the JSON property `skuId`
        # @return [String]
        attr_accessor :sku_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @pricing_info = args[:pricing_info] if args.key?(:pricing_info)
          @service_provider_name = args[:service_provider_name] if args.key?(:service_provider_name)
          @service_regions = args[:service_regions] if args.key?(:service_regions)
          @sku_id = args[:sku_id] if args.key?(:sku_id)
        end
      end
      
      # The price rate indicating starting usage and its corresponding price.
      class TierRate
        include Google::Apis::Core::Hashable
      
        # Usage is priced at this rate only after this amount.
        # Example: start_usage_amount of 10 indicates that the usage will be priced
        # at the unit_price after the first 10 usage_units.
        # Corresponds to the JSON property `startUsageAmount`
        # @return [Float]
        attr_accessor :start_usage_amount
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `unitPrice`
        # @return [Google::Apis::CloudbillingV1::Money]
        attr_accessor :unit_price
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @start_usage_amount = args[:start_usage_amount] if args.key?(:start_usage_amount)
          @unit_price = args[:unit_price] if args.key?(:unit_price)
        end
      end
    end
  end
end
