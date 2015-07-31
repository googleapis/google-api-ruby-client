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
      
      class AccountShippingCarrierRate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountShippingCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountShippingLocationGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountShippingPostalCodeRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountShippingRateTable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountShippingRateTableCell
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountShippingShippingService
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountShippingShippingServiceCalculationMethod
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountShippingShippingServiceCostRule
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
      
      class AccountTaxTaxRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountUser
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountsAuthInfoResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class BatchAccountsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountsBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class BatchAccountsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountsBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListAccountsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class BatchAccountShippingRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountShippingBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class BatchAccountShippingResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountShippingBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListAccountShippingResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class BatchAccountStatusesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountStatusesBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class BatchAccountStatusesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountStatusesBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListAccountStatusesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class BatchAccountTaxRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountTaxBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class BatchAccountTaxResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AccountTaxBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListAccountTaxResponse
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
      
      class BatchDatafeedsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DatafeedsBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class BatchDatafeedsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DatafeedsBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListDatafeedsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class BatchDatafeedStatusesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DatafeedStatusesBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class BatchDatafeedStatusesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DatafeedStatusesBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListDatafeedStatusesResponse
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
      
      class BatchInventoryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class InventoryBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class BatchInventoryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class InventoryBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class SetInventoryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class SetInventoryResponse
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
      
      class BatchProductsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ProductsBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class BatchProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ProductsBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class BatchProductStatusesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ProductStatusesBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class BatchProductStatusesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ProductStatusesBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListProductStatusesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Weight
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Account
        # @private
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
      
      class AccountAdwordsLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :adwords_id, as: 'adwordsId'
          property :status, as: 'status'
        end
      end
      
      class AccountIdentifier
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregator_id, as: 'aggregatorId'
          property :merchant_id, as: 'merchantId'
        end
      end
      
      class AccountShipping
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          collection :carrier_rates, as: 'carrierRates', class: Google::Apis::ContentV2::AccountShippingCarrierRate, decorator: Google::Apis::ContentV2::AccountShippingCarrierRate::Representation
      
          property :kind, as: 'kind'
          collection :location_groups, as: 'locationGroups', class: Google::Apis::ContentV2::AccountShippingLocationGroup, decorator: Google::Apis::ContentV2::AccountShippingLocationGroup::Representation
      
          collection :rate_tables, as: 'rateTables', class: Google::Apis::ContentV2::AccountShippingRateTable, decorator: Google::Apis::ContentV2::AccountShippingRateTable::Representation
      
          collection :services, as: 'services', class: Google::Apis::ContentV2::AccountShippingShippingService, decorator: Google::Apis::ContentV2::AccountShippingShippingService::Representation
      
        end
      end
      
      class AccountShippingCarrierRate
        # @private
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
      
      class AccountShippingCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delivery_location_group, as: 'deliveryLocationGroup'
          property :delivery_location_id, as: 'deliveryLocationId'
          property :delivery_postal_code, as: 'deliveryPostalCode'
          property :delivery_postal_code_range, as: 'deliveryPostalCodeRange', class: Google::Apis::ContentV2::AccountShippingPostalCodeRange, decorator: Google::Apis::ContentV2::AccountShippingPostalCodeRange::Representation
      
          property :price_max, as: 'priceMax', class: Google::Apis::ContentV2::Price, decorator: Google::Apis::ContentV2::Price::Representation
      
          property :shipping_label, as: 'shippingLabel'
          property :weight_max, as: 'weightMax', class: Google::Apis::ContentV2::Weight, decorator: Google::Apis::ContentV2::Weight::Representation
      
        end
      end
      
      class AccountShippingLocationGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :country, as: 'country'
          collection :location_ids, as: 'locationIds'
          property :name, as: 'name'
          collection :postal_code_ranges, as: 'postalCodeRanges', class: Google::Apis::ContentV2::AccountShippingPostalCodeRange, decorator: Google::Apis::ContentV2::AccountShippingPostalCodeRange::Representation
      
          collection :postal_codes, as: 'postalCodes'
        end
      end
      
      class AccountShippingPostalCodeRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end, as: 'end'
          property :start, as: 'start'
        end
      end
      
      class AccountShippingRateTable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :content, as: 'content', class: Google::Apis::ContentV2::AccountShippingRateTableCell, decorator: Google::Apis::ContentV2::AccountShippingRateTableCell::Representation
      
          property :name, as: 'name'
          property :sale_country, as: 'saleCountry'
        end
      end
      
      class AccountShippingRateTableCell
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::ContentV2::AccountShippingCondition, decorator: Google::Apis::ContentV2::AccountShippingCondition::Representation
      
          property :rate, as: 'rate', class: Google::Apis::ContentV2::Price, decorator: Google::Apis::ContentV2::Price::Representation
      
        end
      end
      
      class AccountShippingShippingService
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active, as: 'active'
          property :calculation_method, as: 'calculationMethod', class: Google::Apis::ContentV2::AccountShippingShippingServiceCalculationMethod, decorator: Google::Apis::ContentV2::AccountShippingShippingServiceCalculationMethod::Representation
      
          property :cost_rule_tree, as: 'costRuleTree', class: Google::Apis::ContentV2::AccountShippingShippingServiceCostRule, decorator: Google::Apis::ContentV2::AccountShippingShippingServiceCostRule::Representation
      
          property :name, as: 'name'
          property :sale_country, as: 'saleCountry'
        end
      end
      
      class AccountShippingShippingServiceCalculationMethod
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :carrier_rate, as: 'carrierRate'
          property :excluded, as: 'excluded'
          property :flat_rate, as: 'flatRate', class: Google::Apis::ContentV2::Price, decorator: Google::Apis::ContentV2::Price::Representation
      
          property :percentage_rate, as: 'percentageRate'
          property :rate_table, as: 'rateTable'
        end
      end
      
      class AccountShippingShippingServiceCostRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :calculation_method, as: 'calculationMethod', class: Google::Apis::ContentV2::AccountShippingShippingServiceCalculationMethod, decorator: Google::Apis::ContentV2::AccountShippingShippingServiceCalculationMethod::Representation
      
          collection :children, as: 'children', class: Google::Apis::ContentV2::AccountShippingShippingServiceCostRule, decorator: Google::Apis::ContentV2::AccountShippingShippingServiceCostRule::Representation
      
          property :condition, as: 'condition', class: Google::Apis::ContentV2::AccountShippingCondition, decorator: Google::Apis::ContentV2::AccountShippingCondition::Representation
      
        end
      end
      
      class AccountStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          collection :data_quality_issues, as: 'dataQualityIssues', class: Google::Apis::ContentV2::AccountStatusDataQualityIssue, decorator: Google::Apis::ContentV2::AccountStatusDataQualityIssue::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class AccountStatusDataQualityIssue
        # @private
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
      
      class AccountStatusExampleItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :item_id, as: 'itemId'
          property :link, as: 'link'
          property :submitted_value, as: 'submittedValue'
          property :title, as: 'title'
          property :value_on_landing_page, as: 'valueOnLandingPage'
        end
      end
      
      class AccountTax
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :kind, as: 'kind'
          collection :rules, as: 'rules', class: Google::Apis::ContentV2::AccountTaxTaxRule, decorator: Google::Apis::ContentV2::AccountTaxTaxRule::Representation
      
        end
      end
      
      class AccountTaxTaxRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :country, as: 'country'
          property :location_id, as: 'locationId'
          property :rate_percent, as: 'ratePercent'
          property :shipping_taxed, as: 'shippingTaxed'
          property :use_global_rate, as: 'useGlobalRate'
        end
      end
      
      class AccountUser
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admin, as: 'admin'
          property :email_address, as: 'emailAddress'
        end
      end
      
      class AccountsAuthInfoResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :account_identifiers, as: 'accountIdentifiers', class: Google::Apis::ContentV2::AccountIdentifier, decorator: Google::Apis::ContentV2::AccountIdentifier::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class BatchAccountsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2::AccountsBatchRequestEntry, decorator: Google::Apis::ContentV2::AccountsBatchRequestEntry::Representation
      
        end
      end
      
      class AccountsBatchRequestEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, as: 'account', class: Google::Apis::ContentV2::Account, decorator: Google::Apis::ContentV2::Account::Representation
      
          property :account_id, as: 'accountId'
          property :batch_id, as: 'batchId'
          property :merchant_id, as: 'merchantId'
          property :request_method, as: 'method'
        end
      end
      
      class BatchAccountsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2::AccountsBatchResponseEntry, decorator: Google::Apis::ContentV2::AccountsBatchResponseEntry::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class AccountsBatchResponseEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, as: 'account', class: Google::Apis::ContentV2::Account, decorator: Google::Apis::ContentV2::Account::Representation
      
          property :batch_id, as: 'batchId'
          property :errors, as: 'errors', class: Google::Apis::ContentV2::Errors, decorator: Google::Apis::ContentV2::Errors::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class ListAccountsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::ContentV2::Account, decorator: Google::Apis::ContentV2::Account::Representation
      
        end
      end
      
      class BatchAccountShippingRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2::AccountShippingBatchRequestEntry, decorator: Google::Apis::ContentV2::AccountShippingBatchRequestEntry::Representation
      
        end
      end
      
      class AccountShippingBatchRequestEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :account_shipping, as: 'accountShipping', class: Google::Apis::ContentV2::AccountShipping, decorator: Google::Apis::ContentV2::AccountShipping::Representation
      
          property :batch_id, as: 'batchId'
          property :merchant_id, as: 'merchantId'
          property :request_method, as: 'method'
        end
      end
      
      class BatchAccountShippingResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2::AccountShippingBatchResponseEntry, decorator: Google::Apis::ContentV2::AccountShippingBatchResponseEntry::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class AccountShippingBatchResponseEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_shipping, as: 'accountShipping', class: Google::Apis::ContentV2::AccountShipping, decorator: Google::Apis::ContentV2::AccountShipping::Representation
      
          property :batch_id, as: 'batchId'
          property :errors, as: 'errors', class: Google::Apis::ContentV2::Errors, decorator: Google::Apis::ContentV2::Errors::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class ListAccountShippingResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::ContentV2::AccountShipping, decorator: Google::Apis::ContentV2::AccountShipping::Representation
      
        end
      end
      
      class BatchAccountStatusesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2::AccountStatusesBatchRequestEntry, decorator: Google::Apis::ContentV2::AccountStatusesBatchRequestEntry::Representation
      
        end
      end
      
      class AccountStatusesBatchRequestEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :batch_id, as: 'batchId'
          property :merchant_id, as: 'merchantId'
          property :request_method, as: 'method'
        end
      end
      
      class BatchAccountStatusesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2::AccountStatusesBatchResponseEntry, decorator: Google::Apis::ContentV2::AccountStatusesBatchResponseEntry::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class AccountStatusesBatchResponseEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_status, as: 'accountStatus', class: Google::Apis::ContentV2::AccountStatus, decorator: Google::Apis::ContentV2::AccountStatus::Representation
      
          property :batch_id, as: 'batchId'
          property :errors, as: 'errors', class: Google::Apis::ContentV2::Errors, decorator: Google::Apis::ContentV2::Errors::Representation
      
        end
      end
      
      class ListAccountStatusesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::ContentV2::AccountStatus, decorator: Google::Apis::ContentV2::AccountStatus::Representation
      
        end
      end
      
      class BatchAccountTaxRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2::AccountTaxBatchRequestEntry, decorator: Google::Apis::ContentV2::AccountTaxBatchRequestEntry::Representation
      
        end
      end
      
      class AccountTaxBatchRequestEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :account_tax, as: 'accountTax', class: Google::Apis::ContentV2::AccountTax, decorator: Google::Apis::ContentV2::AccountTax::Representation
      
          property :batch_id, as: 'batchId'
          property :merchant_id, as: 'merchantId'
          property :request_method, as: 'method'
        end
      end
      
      class BatchAccountTaxResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2::AccountTaxBatchResponseEntry, decorator: Google::Apis::ContentV2::AccountTaxBatchResponseEntry::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class AccountTaxBatchResponseEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_tax, as: 'accountTax', class: Google::Apis::ContentV2::AccountTax, decorator: Google::Apis::ContentV2::AccountTax::Representation
      
          property :batch_id, as: 'batchId'
          property :errors, as: 'errors', class: Google::Apis::ContentV2::Errors, decorator: Google::Apis::ContentV2::Errors::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class ListAccountTaxResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::ContentV2::AccountTax, decorator: Google::Apis::ContentV2::AccountTax::Representation
      
        end
      end
      
      class Datafeed
        # @private
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
      
      class DatafeedFetchSchedule
        # @private
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
      
      class DatafeedFormat
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_delimiter, as: 'columnDelimiter'
          property :file_encoding, as: 'fileEncoding'
          property :quoting_mode, as: 'quotingMode'
        end
      end
      
      class DatafeedStatus
        # @private
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
      
      class DatafeedStatusError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :count, as: 'count'
          collection :examples, as: 'examples', class: Google::Apis::ContentV2::DatafeedStatusExample, decorator: Google::Apis::ContentV2::DatafeedStatusExample::Representation
      
          property :message, as: 'message'
        end
      end
      
      class DatafeedStatusExample
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :item_id, as: 'itemId'
          property :line_number, as: 'lineNumber'
          property :value, as: 'value'
        end
      end
      
      class BatchDatafeedsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2::DatafeedsBatchRequestEntry, decorator: Google::Apis::ContentV2::DatafeedsBatchRequestEntry::Representation
      
        end
      end
      
      class DatafeedsBatchRequestEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :datafeed, as: 'datafeed', class: Google::Apis::ContentV2::Datafeed, decorator: Google::Apis::ContentV2::Datafeed::Representation
      
          property :datafeed_id, as: 'datafeedId'
          property :merchant_id, as: 'merchantId'
          property :request_method, as: 'method'
        end
      end
      
      class BatchDatafeedsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2::DatafeedsBatchResponseEntry, decorator: Google::Apis::ContentV2::DatafeedsBatchResponseEntry::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class DatafeedsBatchResponseEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :datafeed, as: 'datafeed', class: Google::Apis::ContentV2::Datafeed, decorator: Google::Apis::ContentV2::Datafeed::Representation
      
          property :errors, as: 'errors', class: Google::Apis::ContentV2::Errors, decorator: Google::Apis::ContentV2::Errors::Representation
      
        end
      end
      
      class ListDatafeedsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::ContentV2::Datafeed, decorator: Google::Apis::ContentV2::Datafeed::Representation
      
        end
      end
      
      class BatchDatafeedStatusesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2::DatafeedStatusesBatchRequestEntry, decorator: Google::Apis::ContentV2::DatafeedStatusesBatchRequestEntry::Representation
      
        end
      end
      
      class DatafeedStatusesBatchRequestEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :datafeed_id, as: 'datafeedId'
          property :merchant_id, as: 'merchantId'
          property :request_method, as: 'method'
        end
      end
      
      class BatchDatafeedStatusesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2::DatafeedStatusesBatchResponseEntry, decorator: Google::Apis::ContentV2::DatafeedStatusesBatchResponseEntry::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class DatafeedStatusesBatchResponseEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :datafeed_status, as: 'datafeedStatus', class: Google::Apis::ContentV2::DatafeedStatus, decorator: Google::Apis::ContentV2::DatafeedStatus::Representation
      
          property :errors, as: 'errors', class: Google::Apis::ContentV2::Errors, decorator: Google::Apis::ContentV2::Errors::Representation
      
        end
      end
      
      class ListDatafeedStatusesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::ContentV2::DatafeedStatus, decorator: Google::Apis::ContentV2::DatafeedStatus::Representation
      
        end
      end
      
      class Error
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain, as: 'domain'
          property :message, as: 'message'
          property :reason, as: 'reason'
        end
      end
      
      class Errors
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :errors, as: 'errors', class: Google::Apis::ContentV2::Error, decorator: Google::Apis::ContentV2::Error::Representation
      
          property :message, as: 'message'
        end
      end
      
      class Inventory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :availability, as: 'availability'
          property :kind, as: 'kind'
          property :price, as: 'price', class: Google::Apis::ContentV2::Price, decorator: Google::Apis::ContentV2::Price::Representation
      
          property :quantity, as: 'quantity'
          property :sale_price, as: 'salePrice', class: Google::Apis::ContentV2::Price, decorator: Google::Apis::ContentV2::Price::Representation
      
          property :sale_price_effective_date, as: 'salePriceEffectiveDate'
          property :sell_on_google_quantity, as: 'sellOnGoogleQuantity'
        end
      end
      
      class BatchInventoryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2::InventoryBatchRequestEntry, decorator: Google::Apis::ContentV2::InventoryBatchRequestEntry::Representation
      
        end
      end
      
      class InventoryBatchRequestEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :inventory, as: 'inventory', class: Google::Apis::ContentV2::Inventory, decorator: Google::Apis::ContentV2::Inventory::Representation
      
          property :merchant_id, as: 'merchantId'
          property :product_id, as: 'productId'
          property :store_code, as: 'storeCode'
        end
      end
      
      class BatchInventoryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2::InventoryBatchResponseEntry, decorator: Google::Apis::ContentV2::InventoryBatchResponseEntry::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class InventoryBatchResponseEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :errors, as: 'errors', class: Google::Apis::ContentV2::Errors, decorator: Google::Apis::ContentV2::Errors::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class SetInventoryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :availability, as: 'availability'
          property :price, as: 'price', class: Google::Apis::ContentV2::Price, decorator: Google::Apis::ContentV2::Price::Representation
      
          property :quantity, as: 'quantity'
          property :sale_price, as: 'salePrice', class: Google::Apis::ContentV2::Price, decorator: Google::Apis::ContentV2::Price::Representation
      
          property :sale_price_effective_date, as: 'salePriceEffectiveDate'
          property :sell_on_google_quantity, as: 'sellOnGoogleQuantity'
        end
      end
      
      class SetInventoryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
        end
      end
      
      class LoyaltyPoints
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :points_value, as: 'pointsValue'
          property :ratio, as: 'ratio'
        end
      end
      
      class Price
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency, as: 'currency'
          property :value, as: 'value'
        end
      end
      
      class Product
        # @private
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
      
      class ProductAspect
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aspect_name, as: 'aspectName'
          property :destination_name, as: 'destinationName'
          property :intention, as: 'intention'
        end
      end
      
      class ProductCustomAttribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :type, as: 'type'
          property :unit, as: 'unit'
          property :value, as: 'value'
        end
      end
      
      class ProductCustomGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attributes, as: 'attributes', class: Google::Apis::ContentV2::ProductCustomAttribute, decorator: Google::Apis::ContentV2::ProductCustomAttribute::Representation
      
          property :name, as: 'name'
        end
      end
      
      class ProductDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_name, as: 'destinationName'
          property :intention, as: 'intention'
        end
      end
      
      class ProductInstallment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount, as: 'amount', class: Google::Apis::ContentV2::Price, decorator: Google::Apis::ContentV2::Price::Representation
      
          property :months, as: 'months'
        end
      end
      
      class ProductShipping
        # @private
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
      
      class ProductShippingDimension
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :unit, as: 'unit'
          property :value, as: 'value'
        end
      end
      
      class ProductShippingWeight
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :unit, as: 'unit'
          property :value, as: 'value'
        end
      end
      
      class ProductStatus
        # @private
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
      
      class ProductStatusDataQualityIssue
        # @private
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
      
      class ProductStatusDestinationStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :approval_status, as: 'approvalStatus'
          property :destination, as: 'destination'
          property :intention, as: 'intention'
        end
      end
      
      class ProductTax
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :country, as: 'country'
          property :location_id, as: 'locationId'
          property :postal_code, as: 'postalCode'
          property :rate, as: 'rate'
          property :region, as: 'region'
          property :tax_ship, as: 'taxShip'
        end
      end
      
      class ProductUnitPricingBaseMeasure
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :unit, as: 'unit'
          property :value, as: 'value'
        end
      end
      
      class ProductUnitPricingMeasure
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :unit, as: 'unit'
          property :value, as: 'value'
        end
      end
      
      class BatchProductsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2::ProductsBatchRequestEntry, decorator: Google::Apis::ContentV2::ProductsBatchRequestEntry::Representation
      
        end
      end
      
      class ProductsBatchRequestEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :merchant_id, as: 'merchantId'
          property :request_method, as: 'method'
          property :product, as: 'product', class: Google::Apis::ContentV2::Product, decorator: Google::Apis::ContentV2::Product::Representation
      
          property :product_id, as: 'productId'
        end
      end
      
      class BatchProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2::ProductsBatchResponseEntry, decorator: Google::Apis::ContentV2::ProductsBatchResponseEntry::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class ProductsBatchResponseEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :errors, as: 'errors', class: Google::Apis::ContentV2::Errors, decorator: Google::Apis::ContentV2::Errors::Representation
      
          property :kind, as: 'kind'
          property :product, as: 'product', class: Google::Apis::ContentV2::Product, decorator: Google::Apis::ContentV2::Product::Representation
      
        end
      end
      
      class ListProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::ContentV2::Product, decorator: Google::Apis::ContentV2::Product::Representation
      
        end
      end
      
      class BatchProductStatusesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2::ProductStatusesBatchRequestEntry, decorator: Google::Apis::ContentV2::ProductStatusesBatchRequestEntry::Representation
      
        end
      end
      
      class ProductStatusesBatchRequestEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :merchant_id, as: 'merchantId'
          property :request_method, as: 'method'
          property :product_id, as: 'productId'
        end
      end
      
      class BatchProductStatusesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::ContentV2::ProductStatusesBatchResponseEntry, decorator: Google::Apis::ContentV2::ProductStatusesBatchResponseEntry::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class ProductStatusesBatchResponseEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :errors, as: 'errors', class: Google::Apis::ContentV2::Errors, decorator: Google::Apis::ContentV2::Errors::Representation
      
          property :kind, as: 'kind'
          property :product_status, as: 'productStatus', class: Google::Apis::ContentV2::ProductStatus, decorator: Google::Apis::ContentV2::ProductStatus::Representation
      
        end
      end
      
      class ListProductStatusesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::ContentV2::ProductStatus, decorator: Google::Apis::ContentV2::ProductStatus::Representation
      
        end
      end
      
      class Weight
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :unit, as: 'unit'
          property :value, as: 'value'
        end
      end
    end
  end
end
