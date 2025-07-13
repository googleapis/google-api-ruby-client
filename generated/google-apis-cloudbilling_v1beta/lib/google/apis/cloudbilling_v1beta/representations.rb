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
    module CloudbillingV1beta
      
      class Decimal
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBillingaccountpricesV1betaAggregationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBillingaccountpricesV1betaDefaultPrice
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBillingaccountpricesV1betaFixedDiscount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBillingaccountpricesV1betaFixedPrice
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBillingaccountpricesV1betaFloatingDiscount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBillingaccountpricesV1betaListBillingAccountPricesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBillingaccountpricesV1betaListPriceAsCeiling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBillingaccountpricesV1betaMergedPrice
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBillingaccountpricesV1betaMigratedPrice
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBillingaccountpricesV1betaPriceReason
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBillingaccountpricesV1betaRate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBillingaccountpricesV1betaRateTier
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBillingaccountpricesV1betaUnitInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBillingaccountservicesV1betaBillingAccountService
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBillingaccountservicesV1betaListBillingAccountServicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBillingaccountskugroupsV1betaListBillingAccountSkuGroupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyGlobal
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyMultiRegional
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegional
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBillingaccountskugroupskusV1betaListBillingAccountSkuGroupSkusResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBillingaccountskugroupskusV1betaProductTaxonomy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBillingaccountskugroupskusV1betaTaxonomyCategory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBillingaccountskusV1betaBillingAccountSku
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyGlobal
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyMultiRegional
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegional
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBillingaccountskusV1betaListBillingAccountSkusResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBillingaccountskusV1betaProductTaxonomy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingBillingaccountskusV1betaTaxonomyCategory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingPricesV1betaAggregationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingPricesV1betaListPricesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingPricesV1betaPrice
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingPricesV1betaRate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingPricesV1betaRateTier
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingPricesV1betaUnitInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingSkugroupsV1betaListSkuGroupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingSkugroupsV1betaSkuGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingSkugroupskusV1betaGeoTaxonomy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyGlobal
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyMultiRegional
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegional
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingSkugroupskusV1betaListSkuGroupSkusResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingSkugroupskusV1betaProductTaxonomy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingSkugroupskusV1betaSkuGroupSku
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBillingSkugroupskusV1betaTaxonomyCategory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Money
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Decimal
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudBillingBillingaccountpricesV1betaAggregationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :interval, as: 'interval'
          property :level, as: 'level'
        end
      end
      
      class GoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency_code, as: 'currencyCode'
          property :name, as: 'name'
          property :price_reason, as: 'priceReason', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaPriceReason, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaPriceReason::Representation
      
          property :rate, as: 'rate', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaRate, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaRate::Representation
      
          property :value_type, as: 'valueType'
        end
      end
      
      class GoogleCloudBillingBillingaccountpricesV1betaDefaultPrice
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudBillingBillingaccountpricesV1betaFixedDiscount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :discount_percent, as: 'discountPercent', class: Google::Apis::CloudbillingV1beta::Decimal, decorator: Google::Apis::CloudbillingV1beta::Decimal::Representation
      
          property :discount_scope_type, as: 'discountScopeType'
          property :fix_time, as: 'fixTime'
          property :sku_group, as: 'skuGroup'
        end
      end
      
      class GoogleCloudBillingBillingaccountpricesV1betaFixedPrice
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudBillingBillingaccountpricesV1betaFloatingDiscount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :discount_percent, as: 'discountPercent', class: Google::Apis::CloudbillingV1beta::Decimal, decorator: Google::Apis::CloudbillingV1beta::Decimal::Representation
      
          property :discount_scope_type, as: 'discountScopeType'
          property :sku_group, as: 'skuGroup'
        end
      end
      
      class GoogleCloudBillingBillingaccountpricesV1betaListBillingAccountPricesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :billing_account_prices, as: 'billingAccountPrices', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudBillingBillingaccountpricesV1betaListPriceAsCeiling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudBillingBillingaccountpricesV1betaMergedPrice
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudBillingBillingaccountpricesV1betaMigratedPrice
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source_sku, as: 'sourceSku'
        end
      end
      
      class GoogleCloudBillingBillingaccountpricesV1betaPriceReason
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_price, as: 'defaultPrice', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaDefaultPrice, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaDefaultPrice::Representation
      
          property :fixed_discount, as: 'fixedDiscount', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaFixedDiscount, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaFixedDiscount::Representation
      
          property :fixed_price, as: 'fixedPrice', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaFixedPrice, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaFixedPrice::Representation
      
          property :floating_discount, as: 'floatingDiscount', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaFloatingDiscount, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaFloatingDiscount::Representation
      
          property :list_price_as_ceiling, as: 'listPriceAsCeiling', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaListPriceAsCeiling, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaListPriceAsCeiling::Representation
      
          property :merged_price, as: 'mergedPrice', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaMergedPrice, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaMergedPrice::Representation
      
          property :migrated_price, as: 'migratedPrice', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaMigratedPrice, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaMigratedPrice::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudBillingBillingaccountpricesV1betaRate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregation_info, as: 'aggregationInfo', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaAggregationInfo, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaAggregationInfo::Representation
      
          collection :tiers, as: 'tiers', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaRateTier, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaRateTier::Representation
      
          property :unit_info, as: 'unitInfo', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaUnitInfo, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaUnitInfo::Representation
      
        end
      end
      
      class GoogleCloudBillingBillingaccountpricesV1betaRateTier
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contract_price, as: 'contractPrice', class: Google::Apis::CloudbillingV1beta::Money, decorator: Google::Apis::CloudbillingV1beta::Money::Representation
      
          property :effective_discount_percent, as: 'effectiveDiscountPercent', class: Google::Apis::CloudbillingV1beta::Decimal, decorator: Google::Apis::CloudbillingV1beta::Decimal::Representation
      
          property :list_price, as: 'listPrice', class: Google::Apis::CloudbillingV1beta::Money, decorator: Google::Apis::CloudbillingV1beta::Money::Representation
      
          property :start_amount, as: 'startAmount', class: Google::Apis::CloudbillingV1beta::Decimal, decorator: Google::Apis::CloudbillingV1beta::Decimal::Representation
      
        end
      end
      
      class GoogleCloudBillingBillingaccountpricesV1betaUnitInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :unit, as: 'unit'
          property :unit_description, as: 'unitDescription'
          property :unit_quantity, as: 'unitQuantity', class: Google::Apis::CloudbillingV1beta::Decimal, decorator: Google::Apis::CloudbillingV1beta::Decimal::Representation
      
        end
      end
      
      class GoogleCloudBillingBillingaccountservicesV1betaBillingAccountService
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :service_id, as: 'serviceId'
        end
      end
      
      class GoogleCloudBillingBillingaccountservicesV1betaListBillingAccountServicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :billing_account_services, as: 'billingAccountServices', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountservicesV1betaBillingAccountService, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountservicesV1betaBillingAccountService::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudBillingBillingaccountskugroupsV1betaListBillingAccountSkuGroupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :billing_account_sku_groups, as: 'billingAccountSkuGroups', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :billing_account_service, as: 'billingAccountService'
          property :display_name, as: 'displayName'
          property :geo_taxonomy, as: 'geoTaxonomy', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomy, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomy::Representation
      
          property :name, as: 'name'
          property :product_taxonomy, as: 'productTaxonomy', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaProductTaxonomy, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaProductTaxonomy::Representation
      
          property :sku_id, as: 'skuId'
        end
      end
      
      class GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :global_metadata, as: 'globalMetadata', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyGlobal, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyGlobal::Representation
      
          property :multi_regional_metadata, as: 'multiRegionalMetadata', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyMultiRegional, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyMultiRegional::Representation
      
          property :regional_metadata, as: 'regionalMetadata', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegional, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegional::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyGlobal
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyMultiRegional
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :regions, as: 'regions', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion::Representation
      
        end
      end
      
      class GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :region, as: 'region'
        end
      end
      
      class GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegional
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :region, as: 'region', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion::Representation
      
        end
      end
      
      class GoogleCloudBillingBillingaccountskugroupskusV1betaListBillingAccountSkuGroupSkusResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :billing_account_sku_group_skus, as: 'billingAccountSkuGroupSkus', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudBillingBillingaccountskugroupskusV1betaProductTaxonomy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :taxonomy_categories, as: 'taxonomyCategories', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaTaxonomyCategory, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaTaxonomyCategory::Representation
      
        end
      end
      
      class GoogleCloudBillingBillingaccountskugroupskusV1betaTaxonomyCategory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category, as: 'category'
        end
      end
      
      class GoogleCloudBillingBillingaccountskusV1betaBillingAccountSku
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :billing_account_service, as: 'billingAccountService'
          property :display_name, as: 'displayName'
          property :geo_taxonomy, as: 'geoTaxonomy', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomy, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomy::Representation
      
          property :name, as: 'name'
          property :product_taxonomy, as: 'productTaxonomy', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaProductTaxonomy, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaProductTaxonomy::Representation
      
          property :sku_id, as: 'skuId'
        end
      end
      
      class GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :global_metadata, as: 'globalMetadata', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyGlobal, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyGlobal::Representation
      
          property :multi_regional_metadata, as: 'multiRegionalMetadata', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyMultiRegional, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyMultiRegional::Representation
      
          property :regional_metadata, as: 'regionalMetadata', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegional, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegional::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyGlobal
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyMultiRegional
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :regions, as: 'regions', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion::Representation
      
        end
      end
      
      class GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :region, as: 'region'
        end
      end
      
      class GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegional
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :region, as: 'region', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion::Representation
      
        end
      end
      
      class GoogleCloudBillingBillingaccountskusV1betaListBillingAccountSkusResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :billing_account_skus, as: 'billingAccountSkus', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaBillingAccountSku, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaBillingAccountSku::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudBillingBillingaccountskusV1betaProductTaxonomy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :taxonomy_categories, as: 'taxonomyCategories', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaTaxonomyCategory, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaTaxonomyCategory::Representation
      
        end
      end
      
      class GoogleCloudBillingBillingaccountskusV1betaTaxonomyCategory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category, as: 'category'
        end
      end
      
      class GoogleCloudBillingPricesV1betaAggregationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :interval, as: 'interval'
          property :level, as: 'level'
        end
      end
      
      class GoogleCloudBillingPricesV1betaListPricesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :prices, as: 'prices', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingPricesV1betaPrice, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingPricesV1betaPrice::Representation
      
        end
      end
      
      class GoogleCloudBillingPricesV1betaPrice
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency_code, as: 'currencyCode'
          property :name, as: 'name'
          property :rate, as: 'rate', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingPricesV1betaRate, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingPricesV1betaRate::Representation
      
          property :value_type, as: 'valueType'
        end
      end
      
      class GoogleCloudBillingPricesV1betaRate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregation_info, as: 'aggregationInfo', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingPricesV1betaAggregationInfo, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingPricesV1betaAggregationInfo::Representation
      
          collection :tiers, as: 'tiers', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingPricesV1betaRateTier, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingPricesV1betaRateTier::Representation
      
          property :unit_info, as: 'unitInfo', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingPricesV1betaUnitInfo, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingPricesV1betaUnitInfo::Representation
      
        end
      end
      
      class GoogleCloudBillingPricesV1betaRateTier
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :list_price, as: 'listPrice', class: Google::Apis::CloudbillingV1beta::Money, decorator: Google::Apis::CloudbillingV1beta::Money::Representation
      
          property :start_amount, as: 'startAmount', class: Google::Apis::CloudbillingV1beta::Decimal, decorator: Google::Apis::CloudbillingV1beta::Decimal::Representation
      
        end
      end
      
      class GoogleCloudBillingPricesV1betaUnitInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :unit, as: 'unit'
          property :unit_description, as: 'unitDescription'
          property :unit_quantity, as: 'unitQuantity', class: Google::Apis::CloudbillingV1beta::Decimal, decorator: Google::Apis::CloudbillingV1beta::Decimal::Representation
      
        end
      end
      
      class GoogleCloudBillingSkugroupsV1betaListSkuGroupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :sku_groups, as: 'skuGroups', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupsV1betaSkuGroup, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupsV1betaSkuGroup::Representation
      
        end
      end
      
      class GoogleCloudBillingSkugroupsV1betaSkuGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudBillingSkugroupskusV1betaGeoTaxonomy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :global_metadata, as: 'globalMetadata', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyGlobal, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyGlobal::Representation
      
          property :multi_regional_metadata, as: 'multiRegionalMetadata', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyMultiRegional, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyMultiRegional::Representation
      
          property :regional_metadata, as: 'regionalMetadata', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegional, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegional::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyGlobal
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyMultiRegional
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :regions, as: 'regions', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion::Representation
      
        end
      end
      
      class GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :region, as: 'region'
        end
      end
      
      class GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegional
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :region, as: 'region', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion::Representation
      
        end
      end
      
      class GoogleCloudBillingSkugroupskusV1betaListSkuGroupSkusResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :sku_group_skus, as: 'skuGroupSkus', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaSkuGroupSku, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaSkuGroupSku::Representation
      
        end
      end
      
      class GoogleCloudBillingSkugroupskusV1betaProductTaxonomy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :taxonomy_categories, as: 'taxonomyCategories', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaTaxonomyCategory, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaTaxonomyCategory::Representation
      
        end
      end
      
      class GoogleCloudBillingSkugroupskusV1betaSkuGroupSku
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :geo_taxonomy, as: 'geoTaxonomy', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaGeoTaxonomy, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaGeoTaxonomy::Representation
      
          property :name, as: 'name'
          property :product_taxonomy, as: 'productTaxonomy', class: Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaProductTaxonomy, decorator: Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaProductTaxonomy::Representation
      
          property :service, as: 'service'
          property :sku_id, as: 'skuId'
        end
      end
      
      class GoogleCloudBillingSkugroupskusV1betaTaxonomyCategory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category, as: 'category'
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
    end
  end
end
