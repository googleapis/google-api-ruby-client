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
    module MerchantapiProductsV1beta
      
      class Attributes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Certification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudExportAdditionalProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomAttribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DestinationStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FreeShippingThreshold
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Installment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Interval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ItemLevelIssue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoyaltyPoints
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoyaltyProgram
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Price
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Product
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductChange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductDimension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductStatusChangeMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductStructuredDescription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductStructuredTitle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductWeight
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Shipping
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShippingDimension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShippingWeight
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubscriptionCost
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Tax
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UnitPricingBaseMeasure
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UnitPricingMeasure
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Attributes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_image_links, as: 'additionalImageLinks'
          property :ads_grouping, as: 'adsGrouping'
          collection :ads_labels, as: 'adsLabels'
          property :ads_redirect, as: 'adsRedirect'
          property :adult, as: 'adult'
          property :age_group, as: 'ageGroup'
          property :auto_pricing_min_price, as: 'autoPricingMinPrice', class: Google::Apis::MerchantapiProductsV1beta::Price, decorator: Google::Apis::MerchantapiProductsV1beta::Price::Representation
      
          property :availability, as: 'availability'
          property :availability_date, as: 'availabilityDate'
          property :brand, as: 'brand'
          property :canonical_link, as: 'canonicalLink'
          collection :certifications, as: 'certifications', class: Google::Apis::MerchantapiProductsV1beta::Certification, decorator: Google::Apis::MerchantapiProductsV1beta::Certification::Representation
      
          collection :cloud_export_additional_properties, as: 'cloudExportAdditionalProperties', class: Google::Apis::MerchantapiProductsV1beta::CloudExportAdditionalProperties, decorator: Google::Apis::MerchantapiProductsV1beta::CloudExportAdditionalProperties::Representation
      
          property :color, as: 'color'
          property :condition, as: 'condition'
          property :cost_of_goods_sold, as: 'costOfGoodsSold', class: Google::Apis::MerchantapiProductsV1beta::Price, decorator: Google::Apis::MerchantapiProductsV1beta::Price::Representation
      
          property :custom_label0, as: 'customLabel0'
          property :custom_label1, as: 'customLabel1'
          property :custom_label2, as: 'customLabel2'
          property :custom_label3, as: 'customLabel3'
          property :custom_label4, as: 'customLabel4'
          property :description, as: 'description'
          property :disclosure_date, as: 'disclosureDate'
          property :display_ads_id, as: 'displayAdsId'
          property :display_ads_link, as: 'displayAdsLink'
          collection :display_ads_similar_ids, as: 'displayAdsSimilarIds'
          property :display_ads_title, as: 'displayAdsTitle'
          property :display_ads_value, as: 'displayAdsValue'
          property :energy_efficiency_class, as: 'energyEfficiencyClass'
          collection :excluded_destinations, as: 'excludedDestinations'
          property :expiration_date, as: 'expirationDate'
          property :external_seller_id, as: 'externalSellerId'
          collection :free_shipping_threshold, as: 'freeShippingThreshold', class: Google::Apis::MerchantapiProductsV1beta::FreeShippingThreshold, decorator: Google::Apis::MerchantapiProductsV1beta::FreeShippingThreshold::Representation
      
          property :gender, as: 'gender'
          property :google_product_category, as: 'googleProductCategory'
          property :gtin, as: 'gtin'
          property :identifier_exists, as: 'identifierExists'
          property :image_link, as: 'imageLink'
          collection :included_destinations, as: 'includedDestinations'
          property :installment, as: 'installment', class: Google::Apis::MerchantapiProductsV1beta::Installment, decorator: Google::Apis::MerchantapiProductsV1beta::Installment::Representation
      
          property :is_bundle, as: 'isBundle'
          property :item_group_id, as: 'itemGroupId'
          collection :lifestyle_image_links, as: 'lifestyleImageLinks'
          property :link, as: 'link'
          property :link_template, as: 'linkTemplate'
          property :loyalty_points, as: 'loyaltyPoints', class: Google::Apis::MerchantapiProductsV1beta::LoyaltyPoints, decorator: Google::Apis::MerchantapiProductsV1beta::LoyaltyPoints::Representation
      
          collection :loyalty_programs, as: 'loyaltyPrograms', class: Google::Apis::MerchantapiProductsV1beta::LoyaltyProgram, decorator: Google::Apis::MerchantapiProductsV1beta::LoyaltyProgram::Representation
      
          property :material, as: 'material'
          property :max_energy_efficiency_class, as: 'maxEnergyEfficiencyClass'
          property :max_handling_time, :numeric_string => true, as: 'maxHandlingTime'
          property :min_energy_efficiency_class, as: 'minEnergyEfficiencyClass'
          property :min_handling_time, :numeric_string => true, as: 'minHandlingTime'
          property :mobile_link, as: 'mobileLink'
          property :mobile_link_template, as: 'mobileLinkTemplate'
          property :mpn, as: 'mpn'
          property :multipack, :numeric_string => true, as: 'multipack'
          property :pattern, as: 'pattern'
          property :pause, as: 'pause'
          property :pickup_method, as: 'pickupMethod'
          property :pickup_sla, as: 'pickupSla'
          property :price, as: 'price', class: Google::Apis::MerchantapiProductsV1beta::Price, decorator: Google::Apis::MerchantapiProductsV1beta::Price::Representation
      
          collection :product_details, as: 'productDetails', class: Google::Apis::MerchantapiProductsV1beta::ProductDetail, decorator: Google::Apis::MerchantapiProductsV1beta::ProductDetail::Representation
      
          property :product_height, as: 'productHeight', class: Google::Apis::MerchantapiProductsV1beta::ProductDimension, decorator: Google::Apis::MerchantapiProductsV1beta::ProductDimension::Representation
      
          collection :product_highlights, as: 'productHighlights'
          property :product_length, as: 'productLength', class: Google::Apis::MerchantapiProductsV1beta::ProductDimension, decorator: Google::Apis::MerchantapiProductsV1beta::ProductDimension::Representation
      
          collection :product_types, as: 'productTypes'
          property :product_weight, as: 'productWeight', class: Google::Apis::MerchantapiProductsV1beta::ProductWeight, decorator: Google::Apis::MerchantapiProductsV1beta::ProductWeight::Representation
      
          property :product_width, as: 'productWidth', class: Google::Apis::MerchantapiProductsV1beta::ProductDimension, decorator: Google::Apis::MerchantapiProductsV1beta::ProductDimension::Representation
      
          collection :promotion_ids, as: 'promotionIds'
          property :sale_price, as: 'salePrice', class: Google::Apis::MerchantapiProductsV1beta::Price, decorator: Google::Apis::MerchantapiProductsV1beta::Price::Representation
      
          property :sale_price_effective_date, as: 'salePriceEffectiveDate', class: Google::Apis::MerchantapiProductsV1beta::Interval, decorator: Google::Apis::MerchantapiProductsV1beta::Interval::Representation
      
          property :sell_on_google_quantity, :numeric_string => true, as: 'sellOnGoogleQuantity'
          collection :shipping, as: 'shipping', class: Google::Apis::MerchantapiProductsV1beta::Shipping, decorator: Google::Apis::MerchantapiProductsV1beta::Shipping::Representation
      
          property :shipping_height, as: 'shippingHeight', class: Google::Apis::MerchantapiProductsV1beta::ShippingDimension, decorator: Google::Apis::MerchantapiProductsV1beta::ShippingDimension::Representation
      
          property :shipping_label, as: 'shippingLabel'
          property :shipping_length, as: 'shippingLength', class: Google::Apis::MerchantapiProductsV1beta::ShippingDimension, decorator: Google::Apis::MerchantapiProductsV1beta::ShippingDimension::Representation
      
          property :shipping_weight, as: 'shippingWeight', class: Google::Apis::MerchantapiProductsV1beta::ShippingWeight, decorator: Google::Apis::MerchantapiProductsV1beta::ShippingWeight::Representation
      
          property :shipping_width, as: 'shippingWidth', class: Google::Apis::MerchantapiProductsV1beta::ShippingDimension, decorator: Google::Apis::MerchantapiProductsV1beta::ShippingDimension::Representation
      
          collection :shopping_ads_excluded_countries, as: 'shoppingAdsExcludedCountries'
          property :size, as: 'size'
          property :size_system, as: 'sizeSystem'
          collection :size_types, as: 'sizeTypes'
          property :structured_description, as: 'structuredDescription', class: Google::Apis::MerchantapiProductsV1beta::ProductStructuredDescription, decorator: Google::Apis::MerchantapiProductsV1beta::ProductStructuredDescription::Representation
      
          property :structured_title, as: 'structuredTitle', class: Google::Apis::MerchantapiProductsV1beta::ProductStructuredTitle, decorator: Google::Apis::MerchantapiProductsV1beta::ProductStructuredTitle::Representation
      
          property :subscription_cost, as: 'subscriptionCost', class: Google::Apis::MerchantapiProductsV1beta::SubscriptionCost, decorator: Google::Apis::MerchantapiProductsV1beta::SubscriptionCost::Representation
      
          property :tax_category, as: 'taxCategory'
          collection :taxes, as: 'taxes', class: Google::Apis::MerchantapiProductsV1beta::Tax, decorator: Google::Apis::MerchantapiProductsV1beta::Tax::Representation
      
          property :title, as: 'title'
          property :transit_time_label, as: 'transitTimeLabel'
          property :unit_pricing_base_measure, as: 'unitPricingBaseMeasure', class: Google::Apis::MerchantapiProductsV1beta::UnitPricingBaseMeasure, decorator: Google::Apis::MerchantapiProductsV1beta::UnitPricingBaseMeasure::Representation
      
          property :unit_pricing_measure, as: 'unitPricingMeasure', class: Google::Apis::MerchantapiProductsV1beta::UnitPricingMeasure, decorator: Google::Apis::MerchantapiProductsV1beta::UnitPricingMeasure::Representation
      
          property :virtual_model_link, as: 'virtualModelLink'
        end
      end
      
      class Certification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :certification_authority, as: 'certificationAuthority'
          property :certification_code, as: 'certificationCode'
          property :certification_name, as: 'certificationName'
          property :certification_value, as: 'certificationValue'
        end
      end
      
      class CloudExportAdditionalProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bool_value, as: 'boolValue'
          collection :float_value, as: 'floatValue'
          collection :int_value, as: 'intValue'
          property :max_value, as: 'maxValue'
          property :min_value, as: 'minValue'
          property :property_name, as: 'propertyName'
          collection :text_value, as: 'textValue'
          property :unit_code, as: 'unitCode'
        end
      end
      
      class CustomAttribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :group_values, as: 'groupValues', class: Google::Apis::MerchantapiProductsV1beta::CustomAttribute, decorator: Google::Apis::MerchantapiProductsV1beta::CustomAttribute::Representation
      
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class DestinationStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :approved_countries, as: 'approvedCountries'
          collection :disapproved_countries, as: 'disapprovedCountries'
          collection :pending_countries, as: 'pendingCountries'
          property :reporting_context, as: 'reportingContext'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FreeShippingThreshold
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :country, as: 'country'
          property :price_threshold, as: 'priceThreshold', class: Google::Apis::MerchantapiProductsV1beta::Price, decorator: Google::Apis::MerchantapiProductsV1beta::Price::Representation
      
        end
      end
      
      class Installment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount, as: 'amount', class: Google::Apis::MerchantapiProductsV1beta::Price, decorator: Google::Apis::MerchantapiProductsV1beta::Price::Representation
      
          property :credit_type, as: 'creditType'
          property :downpayment, as: 'downpayment', class: Google::Apis::MerchantapiProductsV1beta::Price, decorator: Google::Apis::MerchantapiProductsV1beta::Price::Representation
      
          property :months, :numeric_string => true, as: 'months'
        end
      end
      
      class Interval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class ItemLevelIssue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :applicable_countries, as: 'applicableCountries'
          property :attribute, as: 'attribute'
          property :code, as: 'code'
          property :description, as: 'description'
          property :detail, as: 'detail'
          property :documentation, as: 'documentation'
          property :reporting_context, as: 'reportingContext'
          property :resolution, as: 'resolution'
          property :severity, as: 'severity'
        end
      end
      
      class ListProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :products, as: 'products', class: Google::Apis::MerchantapiProductsV1beta::Product, decorator: Google::Apis::MerchantapiProductsV1beta::Product::Representation
      
        end
      end
      
      class LoyaltyPoints
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :points_value, :numeric_string => true, as: 'pointsValue'
          property :ratio, as: 'ratio'
        end
      end
      
      class LoyaltyProgram
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cashback_for_future_use, as: 'cashbackForFutureUse', class: Google::Apis::MerchantapiProductsV1beta::Price, decorator: Google::Apis::MerchantapiProductsV1beta::Price::Representation
      
          property :loyalty_points, :numeric_string => true, as: 'loyaltyPoints'
          property :price, as: 'price', class: Google::Apis::MerchantapiProductsV1beta::Price, decorator: Google::Apis::MerchantapiProductsV1beta::Price::Representation
      
          property :program_label, as: 'programLabel'
          property :tier_label, as: 'tierLabel'
        end
      end
      
      class Price
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount_micros, :numeric_string => true, as: 'amountMicros'
          property :currency_code, as: 'currencyCode'
        end
      end
      
      class Product
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attributes, as: 'attributes', class: Google::Apis::MerchantapiProductsV1beta::Attributes, decorator: Google::Apis::MerchantapiProductsV1beta::Attributes::Representation
      
          property :channel, as: 'channel'
          property :content_language, as: 'contentLanguage'
          collection :custom_attributes, as: 'customAttributes', class: Google::Apis::MerchantapiProductsV1beta::CustomAttribute, decorator: Google::Apis::MerchantapiProductsV1beta::CustomAttribute::Representation
      
          property :data_source, as: 'dataSource'
          property :feed_label, as: 'feedLabel'
          property :name, as: 'name'
          property :offer_id, as: 'offerId'
          property :product_status, as: 'productStatus', class: Google::Apis::MerchantapiProductsV1beta::ProductStatus, decorator: Google::Apis::MerchantapiProductsV1beta::ProductStatus::Representation
      
          property :version_number, :numeric_string => true, as: 'versionNumber'
        end
      end
      
      class ProductChange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_value, as: 'newValue'
          property :old_value, as: 'oldValue'
          property :region_code, as: 'regionCode'
          property :reporting_context, as: 'reportingContext'
        end
      end
      
      class ProductDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_name, as: 'attributeName'
          property :attribute_value, as: 'attributeValue'
          property :section_name, as: 'sectionName'
        end
      end
      
      class ProductDimension
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :unit, as: 'unit'
          property :value, as: 'value'
        end
      end
      
      class ProductInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attributes, as: 'attributes', class: Google::Apis::MerchantapiProductsV1beta::Attributes, decorator: Google::Apis::MerchantapiProductsV1beta::Attributes::Representation
      
          property :channel, as: 'channel'
          property :content_language, as: 'contentLanguage'
          collection :custom_attributes, as: 'customAttributes', class: Google::Apis::MerchantapiProductsV1beta::CustomAttribute, decorator: Google::Apis::MerchantapiProductsV1beta::CustomAttribute::Representation
      
          property :feed_label, as: 'feedLabel'
          property :name, as: 'name'
          property :offer_id, as: 'offerId'
          property :product, as: 'product'
          property :version_number, :numeric_string => true, as: 'versionNumber'
        end
      end
      
      class ProductStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_date, as: 'creationDate'
          collection :destination_statuses, as: 'destinationStatuses', class: Google::Apis::MerchantapiProductsV1beta::DestinationStatus, decorator: Google::Apis::MerchantapiProductsV1beta::DestinationStatus::Representation
      
          property :google_expiration_date, as: 'googleExpirationDate'
          collection :item_level_issues, as: 'itemLevelIssues', class: Google::Apis::MerchantapiProductsV1beta::ItemLevelIssue, decorator: Google::Apis::MerchantapiProductsV1beta::ItemLevelIssue::Representation
      
          property :last_update_date, as: 'lastUpdateDate'
        end
      end
      
      class ProductStatusChangeMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, as: 'account'
          property :attribute, as: 'attribute'
          collection :changes, as: 'changes', class: Google::Apis::MerchantapiProductsV1beta::ProductChange, decorator: Google::Apis::MerchantapiProductsV1beta::ProductChange::Representation
      
          property :managing_account, as: 'managingAccount'
          property :resource, as: 'resource'
          property :resource_id, as: 'resourceId'
          property :resource_type, as: 'resourceType'
        end
      end
      
      class ProductStructuredDescription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :digital_source_type, as: 'digitalSourceType'
        end
      end
      
      class ProductStructuredTitle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :digital_source_type, as: 'digitalSourceType'
        end
      end
      
      class ProductWeight
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :unit, as: 'unit'
          property :value, as: 'value'
        end
      end
      
      class Shipping
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :country, as: 'country'
          property :location_group_name, as: 'locationGroupName'
          property :location_id, :numeric_string => true, as: 'locationId'
          property :max_handling_time, :numeric_string => true, as: 'maxHandlingTime'
          property :max_transit_time, :numeric_string => true, as: 'maxTransitTime'
          property :min_handling_time, :numeric_string => true, as: 'minHandlingTime'
          property :min_transit_time, :numeric_string => true, as: 'minTransitTime'
          property :postal_code, as: 'postalCode'
          property :price, as: 'price', class: Google::Apis::MerchantapiProductsV1beta::Price, decorator: Google::Apis::MerchantapiProductsV1beta::Price::Representation
      
          property :region, as: 'region'
          property :service, as: 'service'
        end
      end
      
      class ShippingDimension
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :unit, as: 'unit'
          property :value, as: 'value'
        end
      end
      
      class ShippingWeight
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :unit, as: 'unit'
          property :value, as: 'value'
        end
      end
      
      class SubscriptionCost
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount, as: 'amount', class: Google::Apis::MerchantapiProductsV1beta::Price, decorator: Google::Apis::MerchantapiProductsV1beta::Price::Representation
      
          property :period, as: 'period'
          property :period_length, :numeric_string => true, as: 'periodLength'
        end
      end
      
      class Tax
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :country, as: 'country'
          property :location_id, :numeric_string => true, as: 'locationId'
          property :postal_code, as: 'postalCode'
          property :rate, as: 'rate'
          property :region, as: 'region'
          property :tax_ship, as: 'taxShip'
        end
      end
      
      class UnitPricingBaseMeasure
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :unit, as: 'unit'
          property :value, :numeric_string => true, as: 'value'
        end
      end
      
      class UnitPricingMeasure
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :unit, as: 'unit'
          property :value, as: 'value'
        end
      end
    end
  end
end
