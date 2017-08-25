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
      
      class AggregationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BillingAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Category
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBillingAccountsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListProjectBillingInfoResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListServicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSkusResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Money
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PricingExpression
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PricingInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProjectBillingInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Service
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Sku
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TierRate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregation_count, as: 'aggregationCount'
          property :aggregation_interval, as: 'aggregationInterval'
          property :aggregation_level, as: 'aggregationLevel'
        end
      end
      
      class BillingAccount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :open, as: 'open'
        end
      end
      
      class Category
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_family, as: 'resourceFamily'
          property :resource_group, as: 'resourceGroup'
          property :service_display_name, as: 'serviceDisplayName'
          property :usage_type, as: 'usageType'
        end
      end
      
      class ListBillingAccountsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :billing_accounts, as: 'billingAccounts', class: Google::Apis::CloudbillingV1::BillingAccount, decorator: Google::Apis::CloudbillingV1::BillingAccount::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListProjectBillingInfoResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :project_billing_info, as: 'projectBillingInfo', class: Google::Apis::CloudbillingV1::ProjectBillingInfo, decorator: Google::Apis::CloudbillingV1::ProjectBillingInfo::Representation
      
        end
      end
      
      class ListServicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :services, as: 'services', class: Google::Apis::CloudbillingV1::Service, decorator: Google::Apis::CloudbillingV1::Service::Representation
      
        end
      end
      
      class ListSkusResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :skus, as: 'skus', class: Google::Apis::CloudbillingV1::Sku, decorator: Google::Apis::CloudbillingV1::Sku::Representation
      
        end
      end
      
      class Money
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency_code, as: 'currencyCode'
          property :nanos, as: 'nanos'
          property :units, :numeric_string => true, as: 'units'
        end
      end
      
      class PricingExpression
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_unit, as: 'baseUnit'
          property :base_unit_conversion_factor, as: 'baseUnitConversionFactor'
          property :base_unit_description, as: 'baseUnitDescription'
          property :display_quantity, as: 'displayQuantity'
          collection :tiered_rates, as: 'tieredRates', class: Google::Apis::CloudbillingV1::TierRate, decorator: Google::Apis::CloudbillingV1::TierRate::Representation
      
          property :usage_unit, as: 'usageUnit'
          property :usage_unit_description, as: 'usageUnitDescription'
        end
      end
      
      class PricingInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregation_info, as: 'aggregationInfo', class: Google::Apis::CloudbillingV1::AggregationInfo, decorator: Google::Apis::CloudbillingV1::AggregationInfo::Representation
      
          property :currency_conversion_rate, as: 'currencyConversionRate'
          property :effective_time, as: 'effectiveTime'
          property :pricing_expression, as: 'pricingExpression', class: Google::Apis::CloudbillingV1::PricingExpression, decorator: Google::Apis::CloudbillingV1::PricingExpression::Representation
      
          property :summary, as: 'summary'
        end
      end
      
      class ProjectBillingInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :billing_account_name, as: 'billingAccountName'
          property :billing_enabled, as: 'billingEnabled'
          property :name, as: 'name'
          property :project_id, as: 'projectId'
        end
      end
      
      class Service
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :service_id, as: 'serviceId'
        end
      end
      
      class Sku
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category, as: 'category', class: Google::Apis::CloudbillingV1::Category, decorator: Google::Apis::CloudbillingV1::Category::Representation
      
          property :description, as: 'description'
          property :name, as: 'name'
          collection :pricing_info, as: 'pricingInfo', class: Google::Apis::CloudbillingV1::PricingInfo, decorator: Google::Apis::CloudbillingV1::PricingInfo::Representation
      
          property :service_provider_name, as: 'serviceProviderName'
          collection :service_regions, as: 'serviceRegions'
          property :sku_id, as: 'skuId'
        end
      end
      
      class TierRate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :start_usage_amount, as: 'startUsageAmount'
          property :unit_price, as: 'unitPrice', class: Google::Apis::CloudbillingV1::Money, decorator: Google::Apis::CloudbillingV1::Money::Representation
      
        end
      end
    end
  end
end
