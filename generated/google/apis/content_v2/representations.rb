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
    module ContentV2
      
      class Account
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountAdwordsLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountIdentifier
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountShipping
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CarrierRate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Condition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class LocationGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PostalCodeRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class RateTable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class RateTableCell
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ShippingService
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ShippingServiceCalculationMethod
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ShippingServiceCostRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountStatusDataQualityIssue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountStatusExampleItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountTax
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class TaxRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountUser
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AuthInfoResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CustomBatchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CustomBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CustomBatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CustomBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountshippingCustomBatchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountshippingCustomBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountshippingCustomBatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountshippingCustomBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountshippingListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountstatusesCustomBatchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountstatusesCustomBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountstatusesCustomBatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountstatusesCustomBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountstatusesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccounttaxCustomBatchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccounttaxCustomBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccounttaxCustomBatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccounttaxCustomBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccounttaxListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Datafeed
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DatafeedFetchSchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DatafeedFormat
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DatafeedStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DatafeedStatusError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DatafeedStatusExample
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DatafeedsCustomBatchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DatafeedsCustomBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DatafeedsCustomBatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DatafeedsCustomBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DatafeedsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DatafeedstatusesCustomBatchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DatafeedstatusesCustomBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DatafeedstatusesCustomBatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DatafeedstatusesCustomBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DatafeedstatusesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Error
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Errors
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Inventory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class InventoryCustomBatchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class InventoryCustomBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class InventoryCustomBatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class InventoryCustomBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class SetRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class SetResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class LoyaltyPoints
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Price
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Product
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ProductAspect
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ProductCustomAttribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ProductCustomGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ProductDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ProductInstallment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ProductShipping
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ProductShippingDimension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ProductShippingWeight
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ProductStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ProductStatusDataQualityIssue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ProductStatusDestinationStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ProductTax
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ProductUnitPricingBaseMeasure
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ProductUnitPricingMeasure
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ProductsCustomBatchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ProductsCustomBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ProductsCustomBatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ProductsCustomBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ProductsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ProductstatusesCustomBatchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ProductstatusesCustomBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ProductstatusesCustomBatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ProductstatusesCustomBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ProductstatusesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Weight
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      # @private
      class Account
        class Representation < Google::Apis::Core::JsonRepresentation
          property :adult_content, as: 'adultContent'
          collection :adwords_links, as: 'adwordsLinks', class: Google::Apis::ContentV2::AccountAdwordsLink, decorator: Google::Apis::ContentV2::AccountAdwordsLink::Representation
      
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :reviews_url, as: 'reviewsUrl'
          property :seller_id, as: 'sellerId'
          collection :users, as: 'users', class: Google::Apis::ContentV2::AccountUser, decorator: Google::Apis::ContentV2::AccountUser::Representation
      
          property :website_url, as: 'websiteUrl'
        end
      end
      
      # @private
      class AccountAdwordsLink
        class Representation < Google::Apis::Core::JsonRepresentation
          property :adwords_id, as: 'adwordsId'
          property :status, as: 'status'
        end
      end
      
      # @private
      class AccountIdentifier
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregator_id, as: 'aggregatorId'
          property :merchant_id, as: 'merchantId'
        end
      end
      
      # @private
      class AccountShipping
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          collection :carrier_rates, as: 'carrierRates', class: Google::Apis::ContentV2::CarrierRate, decorator: Google::Apis::ContentV2::CarrierRate::Representation
      
          property :kind, as: 'kind'
          collection :location_groups, as: 'locationGroups', class: Google::Apis::ContentV2::LocationGroup, decorator: Google::Apis::ContentV2::LocationGroup::Representation
      
          collection :rate_tables, as: 'rateTables', class: Google::Apis::ContentV2::RateTable, decorator: Google::Apis::ContentV2::RateTable::Representation
      
          collection :services, as: 'services', class: Google::Apis::ContentV2::ShippingService, decorator: Google::Apis::ContentV2::ShippingService::Representation
      
        end
      end
      
      # @private
      class CarrierRate
        class Representation < Google::Apis::Core::JsonRepresentation
          property :carrier, as: 'carrier'
          property :carrier_service, as: 'carrierService'
          property :modifier_flat_rate, as: 'modifierFlatRate', class: Google::Apis::ContentV2::Price, decorator: Google::Apis::ContentV2::Price::Representation
      
          property :modifier_percent, as: 'modifierPercent'
          property :name, as: 'name'
          property :sale_country, as: 'saleCountry'
          property :shipping_origin, as: 'shippingOrigin'
        end
      end
      
      # @private
      class Condition
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delivery_location_group, as: 'deliveryLocationGroup'
          property :delivery_location_id, as: 'deliveryLocationId'
          property :delivery_postal_code, as: 'deliveryPostalCode'
          property :delivery_postal_code_range, as: 'deliveryPostalCodeRange', class: Google::Apis::ContentV2::PostalCodeRange, decorator: Google::Apis::ContentV2::PostalCodeRange::Representation
      
          property :price_max, as: 'priceMax', class: Google::Apis::ContentV2::Price, decorator: Google::Apis::ContentV2::Price::Representation
      
          property :shipping_label, as: 'shippingLabel'
          property :weight_max, as: 'weightMax', class: Google::Apis::ContentV2::Weight, decorator: Google::Apis::ContentV2::Weight::Representation
      
        end
      end
      
      # @private
      class LocationGroup
        class Representation < Google::Apis::Core::JsonRepresentation
          property :country, as: 'country'
          collection :location_ids, as: 'locationIds'
          property :name, as: 'name'
          collection :postal_code_ranges, as: 'postalCodeRanges', class: Google::Apis::ContentV2::PostalCodeRange, decorator: Google::Apis::ContentV2::PostalCodeRange::Representation
      
          collection :postal_codes, as: 'postalCodes'
        end
      end
      
      # @private
      class PostalCodeRange
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end, as: 'end'
          property :start, as: 'start'
        end
      end
      
      # @private
      class RateTable
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :content, as: 'content', class: Google::Apis::ContentV2::RateTableCell, decorator: Google::Apis::ContentV2::RateTableCell::Representation
      
          property :name, as: 'name'
          property :sale_country, as: 'saleCountry'
        end
      end
      
      # @private
      class RateTableCell
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::ContentV2::Condition, decorator: Google::Apis::ContentV2::Condition::Representation
      
          property :rate, as: 'rate', class: Google::Apis::ContentV2::Price, decorator: Google::Apis::ContentV2::Price::Representation
      
        end
      end
      
      # @private
      class ShippingService
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active, as: 'active'
          property :calculation_method, as: 'calculationMethod', class: Google::Apis::ContentV2::ShippingServiceCalculationMethod, decorator: Google::Apis::ContentV2::ShippingServiceCalculationMethod::Representation
      
          property :cost_rule_tree, as: 'costRuleTree', class: Google::Apis::ContentV2::ShippingServiceCostRule, decorator: Google::Apis::ContentV2::ShippingServiceCostRule::Representation
      
          property :name, as: 'name'
          property :sale_country, as: 'saleCountry'
        end
      end
      
      # @private
      class ShippingServiceCalculationMethod
        class Representation < Google::Apis::Core::JsonRepresentation
          property :carrier_rate, as: 'carrierRate'
          property :excluded, as: 'excluded'
          property :flat_rate, as: 'flatRate', class: Google::Apis::ContentV2::Price, decorator: Google::Apis::ContentV2::Price::Representation
      
          property :percentage_rate, as: 'percentageRate'
          property :rate_table, as: 'rateTable'
        end
      end
      
      # @private
      class ShippingServiceCostRule
        class Representation < Google::Apis::Core::JsonRepresentation
          property :calculation_method, as: 'calculationMethod', class: Google::Apis::ContentV2::ShippingServiceCalculationMethod, decorator: Google::Apis::ContentV2::ShippingServiceCalculationMethod::Representation
      
          collection :children, as: 'children', class: Google::Apis::ContentV2::ShippingServiceCostRule, decorator: Google::Apis::ContentV2::ShippingServiceCostRule::Representation
      
          property :condition, as: 'condition', class: Google::Apis::ContentV2::Condition, decorator: Google::Apis::ContentV2::Condition::Representation
      
        end
      end
      
      # @private
      class AccountStatus
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          collection :data_quality_issues, as: 'dataQualityIssues', class: Google::Apis::ContentV2::AccountStatusDataQualityIssue, decorator: Google::Apis::ContentV2::AccountStatusDataQualityIssue::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class AccountStatusDataQualityIssue
        class Representation < Google::Apis::Core::JsonRepresentation
          property :country, as: 'country'
          property :displayed_value, as: 'displayedValue'
          collection :example_items, as: 'exampleItems', class: Google::Apis::ContentV2::AccountStatusExampleItem, decorator: Google::Apis::ContentV2::AccountStatusExampleItem::Representation
      
          property :id, as: 'id'
          property :last_checked, as: 'lastChecked'
          property :num_items, as: 'numItems'
          property :severity, as: 'severity'
          property :submitted_value, as: 'submittedValue'
        end
      end
      
      # @private
      class AccountStatusExampleItem
        class Representation < Google::Apis::Core::JsonRepresentation
          property :item_id, as: 'itemId'
          property :link, as: 'link'
          property :submitted_value, as: 'submittedValue'
          property :title, as: 'title'
          property :value_on_landing_page, as: 'valueOnLandingPage'
        end
      end
      
      # @private
      class AccountTax
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :kind, as: 'kind'
          collection :rules, as: 'rules', class: Google::Apis::ContentV2::TaxRule, decorator: Google::Apis::ContentV2::TaxRule::Representation
      
        end
      end
      
      # @private
      class TaxRule
        class Representation < Google::Apis::Core::JsonRepresentation
          property :country, as: 'country'
          property :location_id, as: 'locationId'
          property :rate_percent, as: 'ratePercent'
          property :shipping_taxed, as: 'shippingTaxed'
          property :use_global_rate, as: 'useGlobalRate'
        end
      end
      
      # @private
      class AccountUser
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admin, as: 'admin'
          property :email_address, as: 'emailAddress'
        end
      end
      
      # @private
      class AuthInfoResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :account_identifiers, as: 'accountIdentifiers', class: Google::Apis::ContentV2::AccountIdentifier, decorator: Google::Apis::ContentV2::AccountIdentifier::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class CustomBatchRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2::CustomBatchRequestEntry, decorator: Google::Apis::ContentV2::CustomBatchRequestEntry::Representation
      
        end
      end
      
      # @private
      class CustomBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, as: 'account', class: Google::Apis::ContentV2::Account, decorator: Google::Apis::ContentV2::Account::Representation
      
          property :account_id, as: 'accountId'
          property :batch_id, as: 'batchId'
          property :merchant_id, as: 'merchantId'
          property :method_prop, as: 'method'
        end
      end
      
      # @private
      class CustomBatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2::CustomBatchResponseEntry, decorator: Google::Apis::ContentV2::CustomBatchResponseEntry::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class CustomBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, as: 'account', class: Google::Apis::ContentV2::Account, decorator: Google::Apis::ContentV2::Account::Representation
      
          property :batch_id, as: 'batchId'
          property :errors, as: 'errors', class: Google::Apis::ContentV2::Errors, decorator: Google::Apis::ContentV2::Errors::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class ListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::ContentV2::Account, decorator: Google::Apis::ContentV2::Account::Representation
      
        end
      end
      
      # @private
      class AccountshippingCustomBatchRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2::AccountshippingCustomBatchRequestEntry, decorator: Google::Apis::ContentV2::AccountshippingCustomBatchRequestEntry::Representation
      
        end
      end
      
      # @private
      class AccountshippingCustomBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :account_shipping, as: 'accountShipping', class: Google::Apis::ContentV2::AccountShipping, decorator: Google::Apis::ContentV2::AccountShipping::Representation
      
          property :batch_id, as: 'batchId'
          property :merchant_id, as: 'merchantId'
          property :method_prop, as: 'method'
        end
      end
      
      # @private
      class AccountshippingCustomBatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2::AccountshippingCustomBatchResponseEntry, decorator: Google::Apis::ContentV2::AccountshippingCustomBatchResponseEntry::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class AccountshippingCustomBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_shipping, as: 'accountShipping', class: Google::Apis::ContentV2::AccountShipping, decorator: Google::Apis::ContentV2::AccountShipping::Representation
      
          property :batch_id, as: 'batchId'
          property :errors, as: 'errors', class: Google::Apis::ContentV2::Errors, decorator: Google::Apis::ContentV2::Errors::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class AccountshippingListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::ContentV2::AccountShipping, decorator: Google::Apis::ContentV2::AccountShipping::Representation
      
        end
      end
      
      # @private
      class AccountstatusesCustomBatchRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2::AccountstatusesCustomBatchRequestEntry, decorator: Google::Apis::ContentV2::AccountstatusesCustomBatchRequestEntry::Representation
      
        end
      end
      
      # @private
      class AccountstatusesCustomBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :batch_id, as: 'batchId'
          property :merchant_id, as: 'merchantId'
          property :method_prop, as: 'method'
        end
      end
      
      # @private
      class AccountstatusesCustomBatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2::AccountstatusesCustomBatchResponseEntry, decorator: Google::Apis::ContentV2::AccountstatusesCustomBatchResponseEntry::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class AccountstatusesCustomBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_status, as: 'accountStatus', class: Google::Apis::ContentV2::AccountStatus, decorator: Google::Apis::ContentV2::AccountStatus::Representation
      
          property :batch_id, as: 'batchId'
          property :errors, as: 'errors', class: Google::Apis::ContentV2::Errors, decorator: Google::Apis::ContentV2::Errors::Representation
      
        end
      end
      
      # @private
      class AccountstatusesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::ContentV2::AccountStatus, decorator: Google::Apis::ContentV2::AccountStatus::Representation
      
        end
      end
      
      # @private
      class AccounttaxCustomBatchRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2::AccounttaxCustomBatchRequestEntry, decorator: Google::Apis::ContentV2::AccounttaxCustomBatchRequestEntry::Representation
      
        end
      end
      
      # @private
      class AccounttaxCustomBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :account_tax, as: 'accountTax', class: Google::Apis::ContentV2::AccountTax, decorator: Google::Apis::ContentV2::AccountTax::Representation
      
          property :batch_id, as: 'batchId'
          property :merchant_id, as: 'merchantId'
          property :method_prop, as: 'method'
        end
      end
      
      # @private
      class AccounttaxCustomBatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2::AccounttaxCustomBatchResponseEntry, decorator: Google::Apis::ContentV2::AccounttaxCustomBatchResponseEntry::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class AccounttaxCustomBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_tax, as: 'accountTax', class: Google::Apis::ContentV2::AccountTax, decorator: Google::Apis::ContentV2::AccountTax::Representation
      
          property :batch_id, as: 'batchId'
          property :errors, as: 'errors', class: Google::Apis::ContentV2::Errors, decorator: Google::Apis::ContentV2::Errors::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class AccounttaxListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::ContentV2::AccountTax, decorator: Google::Apis::ContentV2::AccountTax::Representation
      
        end
      end
      
      # @private
      class Datafeed
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_language, as: 'attributeLanguage'
          property :content_language, as: 'contentLanguage'
          property :content_type, as: 'contentType'
          property :fetch_schedule, as: 'fetchSchedule', class: Google::Apis::ContentV2::DatafeedFetchSchedule, decorator: Google::Apis::ContentV2::DatafeedFetchSchedule::Representation
      
          property :file_name, as: 'fileName'
          property :format, as: 'format', class: Google::Apis::ContentV2::DatafeedFormat, decorator: Google::Apis::ContentV2::DatafeedFormat::Representation
      
          property :id, as: 'id'
          collection :intended_destinations, as: 'intendedDestinations'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :target_country, as: 'targetCountry'
        end
      end
      
      # @private
      class DatafeedFetchSchedule
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day_of_month, as: 'dayOfMonth'
          property :fetch_url, as: 'fetchUrl'
          property :hour, as: 'hour'
          property :password, as: 'password'
          property :time_zone, as: 'timeZone'
          property :username, as: 'username'
          property :weekday, as: 'weekday'
        end
      end
      
      # @private
      class DatafeedFormat
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_delimiter, as: 'columnDelimiter'
          property :file_encoding, as: 'fileEncoding'
          property :quoting_mode, as: 'quotingMode'
        end
      end
      
      # @private
      class DatafeedStatus
        class Representation < Google::Apis::Core::JsonRepresentation
          property :datafeed_id, as: 'datafeedId'
          collection :errors, as: 'errors', class: Google::Apis::ContentV2::DatafeedStatusError, decorator: Google::Apis::ContentV2::DatafeedStatusError::Representation
      
          property :items_total, as: 'itemsTotal'
          property :items_valid, as: 'itemsValid'
          property :kind, as: 'kind'
          property :last_upload_date, as: 'lastUploadDate'
          property :processing_status, as: 'processingStatus'
          collection :warnings, as: 'warnings', class: Google::Apis::ContentV2::DatafeedStatusError, decorator: Google::Apis::ContentV2::DatafeedStatusError::Representation
      
        end
      end
      
      # @private
      class DatafeedStatusError
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :count, as: 'count'
          collection :examples, as: 'examples', class: Google::Apis::ContentV2::DatafeedStatusExample, decorator: Google::Apis::ContentV2::DatafeedStatusExample::Representation
      
          property :message, as: 'message'
        end
      end
      
      # @private
      class DatafeedStatusExample
        class Representation < Google::Apis::Core::JsonRepresentation
          property :item_id, as: 'itemId'
          property :line_number, as: 'lineNumber'
          property :value, as: 'value'
        end
      end
      
      # @private
      class DatafeedsCustomBatchRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2::DatafeedsCustomBatchRequestEntry, decorator: Google::Apis::ContentV2::DatafeedsCustomBatchRequestEntry::Representation
      
        end
      end
      
      # @private
      class DatafeedsCustomBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :datafeed, as: 'datafeed', class: Google::Apis::ContentV2::Datafeed, decorator: Google::Apis::ContentV2::Datafeed::Representation
      
          property :datafeed_id, as: 'datafeedId'
          property :merchant_id, as: 'merchantId'
          property :method_prop, as: 'method'
        end
      end
      
      # @private
      class DatafeedsCustomBatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2::DatafeedsCustomBatchResponseEntry, decorator: Google::Apis::ContentV2::DatafeedsCustomBatchResponseEntry::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class DatafeedsCustomBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :datafeed, as: 'datafeed', class: Google::Apis::ContentV2::Datafeed, decorator: Google::Apis::ContentV2::Datafeed::Representation
      
          property :errors, as: 'errors', class: Google::Apis::ContentV2::Errors, decorator: Google::Apis::ContentV2::Errors::Representation
      
        end
      end
      
      # @private
      class DatafeedsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::ContentV2::Datafeed, decorator: Google::Apis::ContentV2::Datafeed::Representation
      
        end
      end
      
      # @private
      class DatafeedstatusesCustomBatchRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2::DatafeedstatusesCustomBatchRequestEntry, decorator: Google::Apis::ContentV2::DatafeedstatusesCustomBatchRequestEntry::Representation
      
        end
      end
      
      # @private
      class DatafeedstatusesCustomBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :datafeed_id, as: 'datafeedId'
          property :merchant_id, as: 'merchantId'
          property :method_prop, as: 'method'
        end
      end
      
      # @private
      class DatafeedstatusesCustomBatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2::DatafeedstatusesCustomBatchResponseEntry, decorator: Google::Apis::ContentV2::DatafeedstatusesCustomBatchResponseEntry::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class DatafeedstatusesCustomBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :datafeed_status, as: 'datafeedStatus', class: Google::Apis::ContentV2::DatafeedStatus, decorator: Google::Apis::ContentV2::DatafeedStatus::Representation
      
          property :errors, as: 'errors', class: Google::Apis::ContentV2::Errors, decorator: Google::Apis::ContentV2::Errors::Representation
      
        end
      end
      
      # @private
      class DatafeedstatusesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::ContentV2::DatafeedStatus, decorator: Google::Apis::ContentV2::DatafeedStatus::Representation
      
        end
      end
      
      # @private
      class Error
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain, as: 'domain'
          property :message, as: 'message'
          property :reason, as: 'reason'
        end
      end
      
      # @private
      class Errors
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :errors, as: 'errors', class: Google::Apis::ContentV2::Error, decorator: Google::Apis::ContentV2::Error::Representation
      
          property :message, as: 'message'
        end
      end
      
      # @private
      class Inventory
        class Representation < Google::Apis::Core::JsonRepresentation
          property :availability, as: 'availability'
          property :kind, as: 'kind'
          property :price, as: 'price', class: Google::Apis::ContentV2::Price, decorator: Google::Apis::ContentV2::Price::Representation
      
          property :quantity, as: 'quantity'
          property :sale_price, as: 'salePrice', class: Google::Apis::ContentV2::Price, decorator: Google::Apis::ContentV2::Price::Representation
      
          property :sale_price_effective_date, as: 'salePriceEffectiveDate'
        end
      end
      
      # @private
      class InventoryCustomBatchRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2::InventoryCustomBatchRequestEntry, decorator: Google::Apis::ContentV2::InventoryCustomBatchRequestEntry::Representation
      
        end
      end
      
      # @private
      class InventoryCustomBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :inventory, as: 'inventory', class: Google::Apis::ContentV2::Inventory, decorator: Google::Apis::ContentV2::Inventory::Representation
      
          property :merchant_id, as: 'merchantId'
          property :product_id, as: 'productId'
          property :store_code, as: 'storeCode'
        end
      end
      
      # @private
      class InventoryCustomBatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2::InventoryCustomBatchResponseEntry, decorator: Google::Apis::ContentV2::InventoryCustomBatchResponseEntry::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class InventoryCustomBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :errors, as: 'errors', class: Google::Apis::ContentV2::Errors, decorator: Google::Apis::ContentV2::Errors::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class SetRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          property :availability, as: 'availability'
          property :price, as: 'price', class: Google::Apis::ContentV2::Price, decorator: Google::Apis::ContentV2::Price::Representation
      
          property :quantity, as: 'quantity'
          property :sale_price, as: 'salePrice', class: Google::Apis::ContentV2::Price, decorator: Google::Apis::ContentV2::Price::Representation
      
          property :sale_price_effective_date, as: 'salePriceEffectiveDate'
        end
      end
      
      # @private
      class SetResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class LoyaltyPoints
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :points_value, as: 'pointsValue'
          property :ratio, as: 'ratio'
        end
      end
      
      # @private
      class Price
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency, as: 'currency'
          property :value, as: 'value'
        end
      end
      
      # @private
      class Product
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_image_links, as: 'additionalImageLinks'
          property :adult, as: 'adult'
          property :adwords_grouping, as: 'adwordsGrouping'
          collection :adwords_labels, as: 'adwordsLabels'
          property :adwords_redirect, as: 'adwordsRedirect'
          property :age_group, as: 'ageGroup'
          collection :aspects, as: 'aspects', class: Google::Apis::ContentV2::ProductAspect, decorator: Google::Apis::ContentV2::ProductAspect::Representation
      
          property :availability, as: 'availability'
          property :availability_date, as: 'availabilityDate'
          property :brand, as: 'brand'
          property :channel, as: 'channel'
          property :color, as: 'color'
          property :condition, as: 'condition'
          property :content_language, as: 'contentLanguage'
          collection :custom_attributes, as: 'customAttributes', class: Google::Apis::ContentV2::ProductCustomAttribute, decorator: Google::Apis::ContentV2::ProductCustomAttribute::Representation
      
          collection :custom_groups, as: 'customGroups', class: Google::Apis::ContentV2::ProductCustomGroup, decorator: Google::Apis::ContentV2::ProductCustomGroup::Representation
      
          property :custom_label0, as: 'customLabel0'
          property :custom_label1, as: 'customLabel1'
          property :custom_label2, as: 'customLabel2'
          property :custom_label3, as: 'customLabel3'
          property :custom_label4, as: 'customLabel4'
          property :description, as: 'description'
          collection :destinations, as: 'destinations', class: Google::Apis::ContentV2::ProductDestination, decorator: Google::Apis::ContentV2::ProductDestination::Representation
      
          property :display_ads_id, as: 'displayAdsId'
          property :display_ads_link, as: 'displayAdsLink'
          collection :display_ads_similar_ids, as: 'displayAdsSimilarIds'
          property :display_ads_title, as: 'displayAdsTitle'
          property :display_ads_value, as: 'displayAdsValue'
          property :energy_efficiency_class, as: 'energyEfficiencyClass'
          property :expiration_date, as: 'expirationDate'
          property :gender, as: 'gender'
          property :google_product_category, as: 'googleProductCategory'
          property :gtin, as: 'gtin'
          property :id, as: 'id'
          property :identifier_exists, as: 'identifierExists'
          property :image_link, as: 'imageLink'
          property :installment, as: 'installment', class: Google::Apis::ContentV2::ProductInstallment, decorator: Google::Apis::ContentV2::ProductInstallment::Representation
      
          property :is_bundle, as: 'isBundle'
          property :item_group_id, as: 'itemGroupId'
          property :kind, as: 'kind'
          property :link, as: 'link'
          property :loyalty_points, as: 'loyaltyPoints', class: Google::Apis::ContentV2::LoyaltyPoints, decorator: Google::Apis::ContentV2::LoyaltyPoints::Representation
      
          property :material, as: 'material'
          property :mobile_link, as: 'mobileLink'
          property :mpn, as: 'mpn'
          property :multipack, as: 'multipack'
          property :offer_id, as: 'offerId'
          property :online_only, as: 'onlineOnly'
          property :pattern, as: 'pattern'
          property :price, as: 'price', class: Google::Apis::ContentV2::Price, decorator: Google::Apis::ContentV2::Price::Representation
      
          property :product_type, as: 'productType'
          property :sale_price, as: 'salePrice', class: Google::Apis::ContentV2::Price, decorator: Google::Apis::ContentV2::Price::Representation
      
          property :sale_price_effective_date, as: 'salePriceEffectiveDate'
          collection :shipping, as: 'shipping', class: Google::Apis::ContentV2::ProductShipping, decorator: Google::Apis::ContentV2::ProductShipping::Representation
      
          property :shipping_height, as: 'shippingHeight', class: Google::Apis::ContentV2::ProductShippingDimension, decorator: Google::Apis::ContentV2::ProductShippingDimension::Representation
      
          property :shipping_label, as: 'shippingLabel'
          property :shipping_length, as: 'shippingLength', class: Google::Apis::ContentV2::ProductShippingDimension, decorator: Google::Apis::ContentV2::ProductShippingDimension::Representation
      
          property :shipping_weight, as: 'shippingWeight', class: Google::Apis::ContentV2::ProductShippingWeight, decorator: Google::Apis::ContentV2::ProductShippingWeight::Representation
      
          property :shipping_width, as: 'shippingWidth', class: Google::Apis::ContentV2::ProductShippingDimension, decorator: Google::Apis::ContentV2::ProductShippingDimension::Representation
      
          property :size_system, as: 'sizeSystem'
          property :size_type, as: 'sizeType'
          collection :sizes, as: 'sizes'
          property :target_country, as: 'targetCountry'
          collection :taxes, as: 'taxes', class: Google::Apis::ContentV2::ProductTax, decorator: Google::Apis::ContentV2::ProductTax::Representation
      
          property :title, as: 'title'
          property :unit_pricing_base_measure, as: 'unitPricingBaseMeasure', class: Google::Apis::ContentV2::ProductUnitPricingBaseMeasure, decorator: Google::Apis::ContentV2::ProductUnitPricingBaseMeasure::Representation
      
          property :unit_pricing_measure, as: 'unitPricingMeasure', class: Google::Apis::ContentV2::ProductUnitPricingMeasure, decorator: Google::Apis::ContentV2::ProductUnitPricingMeasure::Representation
      
          collection :validated_destinations, as: 'validatedDestinations'
          collection :warnings, as: 'warnings', class: Google::Apis::ContentV2::Error, decorator: Google::Apis::ContentV2::Error::Representation
      
        end
      end
      
      # @private
      class ProductAspect
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aspect_name, as: 'aspectName'
          property :destination_name, as: 'destinationName'
          property :intention, as: 'intention'
        end
      end
      
      # @private
      class ProductCustomAttribute
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :type, as: 'type'
          property :unit, as: 'unit'
          property :value, as: 'value'
        end
      end
      
      # @private
      class ProductCustomGroup
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attributes, as: 'attributes', class: Google::Apis::ContentV2::ProductCustomAttribute, decorator: Google::Apis::ContentV2::ProductCustomAttribute::Representation
      
          property :name, as: 'name'
        end
      end
      
      # @private
      class ProductDestination
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_name, as: 'destinationName'
          property :intention, as: 'intention'
        end
      end
      
      # @private
      class ProductInstallment
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount, as: 'amount', class: Google::Apis::ContentV2::Price, decorator: Google::Apis::ContentV2::Price::Representation
      
          property :months, as: 'months'
        end
      end
      
      # @private
      class ProductShipping
        class Representation < Google::Apis::Core::JsonRepresentation
          property :country, as: 'country'
          property :location_group_name, as: 'locationGroupName'
          property :location_id, as: 'locationId'
          property :postal_code, as: 'postalCode'
          property :price, as: 'price', class: Google::Apis::ContentV2::Price, decorator: Google::Apis::ContentV2::Price::Representation
      
          property :region, as: 'region'
          property :service, as: 'service'
        end
      end
      
      # @private
      class ProductShippingDimension
        class Representation < Google::Apis::Core::JsonRepresentation
          property :unit, as: 'unit'
          property :value, as: 'value'
        end
      end
      
      # @private
      class ProductShippingWeight
        class Representation < Google::Apis::Core::JsonRepresentation
          property :unit, as: 'unit'
          property :value, as: 'value'
        end
      end
      
      # @private
      class ProductStatus
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_date, as: 'creationDate'
          collection :data_quality_issues, as: 'dataQualityIssues', class: Google::Apis::ContentV2::ProductStatusDataQualityIssue, decorator: Google::Apis::ContentV2::ProductStatusDataQualityIssue::Representation
      
          collection :destination_statuses, as: 'destinationStatuses', class: Google::Apis::ContentV2::ProductStatusDestinationStatus, decorator: Google::Apis::ContentV2::ProductStatusDestinationStatus::Representation
      
          property :google_expiration_date, as: 'googleExpirationDate'
          property :kind, as: 'kind'
          property :last_update_date, as: 'lastUpdateDate'
          property :link, as: 'link'
          property :product_id, as: 'productId'
          property :title, as: 'title'
        end
      end
      
      # @private
      class ProductStatusDataQualityIssue
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detail, as: 'detail'
          property :fetch_status, as: 'fetchStatus'
          property :id, as: 'id'
          property :location, as: 'location'
          property :severity, as: 'severity'
          property :timestamp, as: 'timestamp'
          property :value_on_landing_page, as: 'valueOnLandingPage'
          property :value_provided, as: 'valueProvided'
        end
      end
      
      # @private
      class ProductStatusDestinationStatus
        class Representation < Google::Apis::Core::JsonRepresentation
          property :approval_status, as: 'approvalStatus'
          property :destination, as: 'destination'
          property :intention, as: 'intention'
        end
      end
      
      # @private
      class ProductTax
        class Representation < Google::Apis::Core::JsonRepresentation
          property :country, as: 'country'
          property :location_id, as: 'locationId'
          property :postal_code, as: 'postalCode'
          property :rate, as: 'rate'
          property :region, as: 'region'
          property :tax_ship, as: 'taxShip'
        end
      end
      
      # @private
      class ProductUnitPricingBaseMeasure
        class Representation < Google::Apis::Core::JsonRepresentation
          property :unit, as: 'unit'
          property :value, as: 'value'
        end
      end
      
      # @private
      class ProductUnitPricingMeasure
        class Representation < Google::Apis::Core::JsonRepresentation
          property :unit, as: 'unit'
          property :value, as: 'value'
        end
      end
      
      # @private
      class ProductsCustomBatchRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2::ProductsCustomBatchRequestEntry, decorator: Google::Apis::ContentV2::ProductsCustomBatchRequestEntry::Representation
      
        end
      end
      
      # @private
      class ProductsCustomBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :merchant_id, as: 'merchantId'
          property :method_prop, as: 'method'
          property :product, as: 'product', class: Google::Apis::ContentV2::Product, decorator: Google::Apis::ContentV2::Product::Representation
      
          property :product_id, as: 'productId'
        end
      end
      
      # @private
      class ProductsCustomBatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2::ProductsCustomBatchResponseEntry, decorator: Google::Apis::ContentV2::ProductsCustomBatchResponseEntry::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class ProductsCustomBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :errors, as: 'errors', class: Google::Apis::ContentV2::Errors, decorator: Google::Apis::ContentV2::Errors::Representation
      
          property :kind, as: 'kind'
          property :product, as: 'product', class: Google::Apis::ContentV2::Product, decorator: Google::Apis::ContentV2::Product::Representation
      
        end
      end
      
      # @private
      class ProductsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::ContentV2::Product, decorator: Google::Apis::ContentV2::Product::Representation
      
        end
      end
      
      # @private
      class ProductstatusesCustomBatchRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2::ProductstatusesCustomBatchRequestEntry, decorator: Google::Apis::ContentV2::ProductstatusesCustomBatchRequestEntry::Representation
      
        end
      end
      
      # @private
      class ProductstatusesCustomBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :merchant_id, as: 'merchantId'
          property :method_prop, as: 'method'
          property :product_id, as: 'productId'
        end
      end
      
      # @private
      class ProductstatusesCustomBatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2::ProductstatusesCustomBatchResponseEntry, decorator: Google::Apis::ContentV2::ProductstatusesCustomBatchResponseEntry::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class ProductstatusesCustomBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :errors, as: 'errors', class: Google::Apis::ContentV2::Errors, decorator: Google::Apis::ContentV2::Errors::Representation
      
          property :kind, as: 'kind'
          property :product_status, as: 'productStatus', class: Google::Apis::ContentV2::ProductStatus, decorator: Google::Apis::ContentV2::ProductStatus::Representation
      
        end
      end
      
      # @private
      class ProductstatusesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::ContentV2::ProductStatus, decorator: Google::Apis::ContentV2::ProductStatus::Representation
      
        end
      end
      
      # @private
      class Weight
        class Representation < Google::Apis::Core::JsonRepresentation
          property :unit, as: 'unit'
          property :value, as: 'value'
        end
      end
    end
  end
end
