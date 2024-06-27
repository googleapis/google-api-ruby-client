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
    module MerchantapiPromotionsV1beta
      
      class Attributes
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
      
      class InsertPromotionRequest
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
      
      class ListPromotionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Price
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductChange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductStatusChangeMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Promotion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PromotionStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Attributes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :brand_exclusion, as: 'brandExclusion'
          collection :brand_inclusion, as: 'brandInclusion'
          property :coupon_value_type, as: 'couponValueType'
          property :free_gift_description, as: 'freeGiftDescription'
          property :free_gift_item_id, as: 'freeGiftItemId'
          property :free_gift_value, as: 'freeGiftValue', class: Google::Apis::MerchantapiPromotionsV1beta::Price, decorator: Google::Apis::MerchantapiPromotionsV1beta::Price::Representation
      
          property :generic_redemption_code, as: 'genericRedemptionCode'
          property :get_this_quantity_discounted, :numeric_string => true, as: 'getThisQuantityDiscounted'
          collection :item_group_id_exclusion, as: 'itemGroupIdExclusion'
          collection :item_group_id_inclusion, as: 'itemGroupIdInclusion'
          collection :item_id_exclusion, as: 'itemIdExclusion'
          collection :item_id_inclusion, as: 'itemIdInclusion'
          property :limit_quantity, :numeric_string => true, as: 'limitQuantity'
          property :limit_value, as: 'limitValue', class: Google::Apis::MerchantapiPromotionsV1beta::Price, decorator: Google::Apis::MerchantapiPromotionsV1beta::Price::Representation
      
          property :long_title, as: 'longTitle'
          property :minimum_purchase_amount, as: 'minimumPurchaseAmount', class: Google::Apis::MerchantapiPromotionsV1beta::Price, decorator: Google::Apis::MerchantapiPromotionsV1beta::Price::Representation
      
          property :minimum_purchase_quantity, :numeric_string => true, as: 'minimumPurchaseQuantity'
          property :money_off_amount, as: 'moneyOffAmount', class: Google::Apis::MerchantapiPromotionsV1beta::Price, decorator: Google::Apis::MerchantapiPromotionsV1beta::Price::Representation
      
          property :offer_type, as: 'offerType'
          property :percent_off, :numeric_string => true, as: 'percentOff'
          property :product_applicability, as: 'productApplicability'
          collection :product_type_exclusion, as: 'productTypeExclusion'
          collection :product_type_inclusion, as: 'productTypeInclusion'
          collection :promotion_destinations, as: 'promotionDestinations'
          property :promotion_display_time_period, as: 'promotionDisplayTimePeriod', class: Google::Apis::MerchantapiPromotionsV1beta::Interval, decorator: Google::Apis::MerchantapiPromotionsV1beta::Interval::Representation
      
          property :promotion_effective_time_period, as: 'promotionEffectiveTimePeriod', class: Google::Apis::MerchantapiPromotionsV1beta::Interval, decorator: Google::Apis::MerchantapiPromotionsV1beta::Interval::Representation
      
          property :promotion_url, as: 'promotionUrl'
          property :store_applicability, as: 'storeApplicability'
          collection :store_codes_exclusion, as: 'storeCodesExclusion'
          collection :store_codes_inclusion, as: 'storeCodesInclusion'
        end
      end
      
      class CustomAttribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :group_values, as: 'groupValues', class: Google::Apis::MerchantapiPromotionsV1beta::CustomAttribute, decorator: Google::Apis::MerchantapiPromotionsV1beta::CustomAttribute::Representation
      
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class DestinationStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reporting_context, as: 'reportingContext'
          property :status, as: 'status'
        end
      end
      
      class InsertPromotionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_source, as: 'dataSource'
          property :promotion, as: 'promotion', class: Google::Apis::MerchantapiPromotionsV1beta::Promotion, decorator: Google::Apis::MerchantapiPromotionsV1beta::Promotion::Representation
      
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
      
      class ListPromotionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :promotions, as: 'promotions', class: Google::Apis::MerchantapiPromotionsV1beta::Promotion, decorator: Google::Apis::MerchantapiPromotionsV1beta::Promotion::Representation
      
        end
      end
      
      class Price
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount_micros, :numeric_string => true, as: 'amountMicros'
          property :currency_code, as: 'currencyCode'
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
      
      class ProductStatusChangeMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, as: 'account'
          property :attribute, as: 'attribute'
          collection :changes, as: 'changes', class: Google::Apis::MerchantapiPromotionsV1beta::ProductChange, decorator: Google::Apis::MerchantapiPromotionsV1beta::ProductChange::Representation
      
          property :managing_account, as: 'managingAccount'
          property :resource, as: 'resource'
          property :resource_id, as: 'resourceId'
          property :resource_type, as: 'resourceType'
        end
      end
      
      class Promotion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attributes, as: 'attributes', class: Google::Apis::MerchantapiPromotionsV1beta::Attributes, decorator: Google::Apis::MerchantapiPromotionsV1beta::Attributes::Representation
      
          property :content_language, as: 'contentLanguage'
          collection :custom_attributes, as: 'customAttributes', class: Google::Apis::MerchantapiPromotionsV1beta::CustomAttribute, decorator: Google::Apis::MerchantapiPromotionsV1beta::CustomAttribute::Representation
      
          property :data_source, as: 'dataSource'
          property :name, as: 'name'
          property :promotion_id, as: 'promotionId'
          property :promotion_status, as: 'promotionStatus', class: Google::Apis::MerchantapiPromotionsV1beta::PromotionStatus, decorator: Google::Apis::MerchantapiPromotionsV1beta::PromotionStatus::Representation
      
          collection :redemption_channel, as: 'redemptionChannel'
          property :target_country, as: 'targetCountry'
          property :version_number, :numeric_string => true, as: 'versionNumber'
        end
      end
      
      class PromotionStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_date, as: 'creationDate'
          collection :destination_statuses, as: 'destinationStatuses', class: Google::Apis::MerchantapiPromotionsV1beta::DestinationStatus, decorator: Google::Apis::MerchantapiPromotionsV1beta::DestinationStatus::Representation
      
          collection :item_level_issues, as: 'itemLevelIssues', class: Google::Apis::MerchantapiPromotionsV1beta::ItemLevelIssue, decorator: Google::Apis::MerchantapiPromotionsV1beta::ItemLevelIssue::Representation
      
          property :last_update_date, as: 'lastUpdateDate'
        end
      end
    end
  end
end
