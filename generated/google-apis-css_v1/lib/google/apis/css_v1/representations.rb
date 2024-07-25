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
    module CssV1
      
      class Account
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountLabel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Attributes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Certification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CssProduct
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CssProductInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CssProductStatus
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
      
      class ItemLevelIssue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAccountLabelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListChildAccountsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCssProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Price
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
      
      class ProductWeight
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateAccountLabelsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Account
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_type, as: 'accountType'
          collection :automatic_label_ids, as: 'automaticLabelIds'
          property :display_name, as: 'displayName'
          property :full_name, as: 'fullName'
          property :homepage_uri, as: 'homepageUri'
          collection :label_ids, as: 'labelIds'
          property :name, as: 'name'
          property :parent, as: 'parent'
        end
      end
      
      class AccountLabel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, :numeric_string => true, as: 'accountId'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :label_id, :numeric_string => true, as: 'labelId'
          property :label_type, as: 'labelType'
          property :name, as: 'name'
        end
      end
      
      class Attributes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_image_links, as: 'additionalImageLinks'
          property :adult, as: 'adult'
          property :age_group, as: 'ageGroup'
          property :brand, as: 'brand'
          collection :certifications, as: 'certifications', class: Google::Apis::CssV1::Certification, decorator: Google::Apis::CssV1::Certification::Representation
      
          property :color, as: 'color'
          property :cpp_ads_redirect, as: 'cppAdsRedirect'
          property :cpp_link, as: 'cppLink'
          property :cpp_mobile_link, as: 'cppMobileLink'
          property :custom_label0, as: 'customLabel0'
          property :custom_label1, as: 'customLabel1'
          property :custom_label2, as: 'customLabel2'
          property :custom_label3, as: 'customLabel3'
          property :custom_label4, as: 'customLabel4'
          property :description, as: 'description'
          collection :excluded_destinations, as: 'excludedDestinations'
          property :expiration_date, as: 'expirationDate'
          property :gender, as: 'gender'
          property :google_product_category, as: 'googleProductCategory'
          property :gtin, as: 'gtin'
          property :headline_offer_condition, as: 'headlineOfferCondition'
          property :headline_offer_link, as: 'headlineOfferLink'
          property :headline_offer_mobile_link, as: 'headlineOfferMobileLink'
          property :headline_offer_price, as: 'headlineOfferPrice', class: Google::Apis::CssV1::Price, decorator: Google::Apis::CssV1::Price::Representation
      
          property :headline_offer_shipping_price, as: 'headlineOfferShippingPrice', class: Google::Apis::CssV1::Price, decorator: Google::Apis::CssV1::Price::Representation
      
          property :high_price, as: 'highPrice', class: Google::Apis::CssV1::Price, decorator: Google::Apis::CssV1::Price::Representation
      
          property :image_link, as: 'imageLink'
          collection :included_destinations, as: 'includedDestinations'
          property :is_bundle, as: 'isBundle'
          property :item_group_id, as: 'itemGroupId'
          property :low_price, as: 'lowPrice', class: Google::Apis::CssV1::Price, decorator: Google::Apis::CssV1::Price::Representation
      
          property :material, as: 'material'
          property :mpn, as: 'mpn'
          property :multipack, :numeric_string => true, as: 'multipack'
          property :number_of_offers, :numeric_string => true, as: 'numberOfOffers'
          property :pattern, as: 'pattern'
          property :pause, as: 'pause'
          collection :product_details, as: 'productDetails', class: Google::Apis::CssV1::ProductDetail, decorator: Google::Apis::CssV1::ProductDetail::Representation
      
          property :product_height, as: 'productHeight', class: Google::Apis::CssV1::ProductDimension, decorator: Google::Apis::CssV1::ProductDimension::Representation
      
          collection :product_highlights, as: 'productHighlights'
          property :product_length, as: 'productLength', class: Google::Apis::CssV1::ProductDimension, decorator: Google::Apis::CssV1::ProductDimension::Representation
      
          collection :product_types, as: 'productTypes'
          property :product_weight, as: 'productWeight', class: Google::Apis::CssV1::ProductWeight, decorator: Google::Apis::CssV1::ProductWeight::Representation
      
          property :product_width, as: 'productWidth', class: Google::Apis::CssV1::ProductDimension, decorator: Google::Apis::CssV1::ProductDimension::Representation
      
          property :size, as: 'size'
          property :size_system, as: 'sizeSystem'
          collection :size_types, as: 'sizeTypes'
          property :title, as: 'title'
        end
      end
      
      class Certification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authority, as: 'authority'
          property :code, as: 'code'
          property :name, as: 'name'
        end
      end
      
      class CssProduct
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attributes, as: 'attributes', class: Google::Apis::CssV1::Attributes, decorator: Google::Apis::CssV1::Attributes::Representation
      
          property :content_language, as: 'contentLanguage'
          property :css_product_status, as: 'cssProductStatus', class: Google::Apis::CssV1::CssProductStatus, decorator: Google::Apis::CssV1::CssProductStatus::Representation
      
          collection :custom_attributes, as: 'customAttributes', class: Google::Apis::CssV1::CustomAttribute, decorator: Google::Apis::CssV1::CustomAttribute::Representation
      
          property :feed_label, as: 'feedLabel'
          property :name, as: 'name'
          property :raw_provided_id, as: 'rawProvidedId'
        end
      end
      
      class CssProductInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attributes, as: 'attributes', class: Google::Apis::CssV1::Attributes, decorator: Google::Apis::CssV1::Attributes::Representation
      
          property :content_language, as: 'contentLanguage'
          collection :custom_attributes, as: 'customAttributes', class: Google::Apis::CssV1::CustomAttribute, decorator: Google::Apis::CssV1::CustomAttribute::Representation
      
          property :feed_label, as: 'feedLabel'
          property :final_name, as: 'finalName'
          property :freshness_time, as: 'freshnessTime'
          property :name, as: 'name'
          property :raw_provided_id, as: 'rawProvidedId'
        end
      end
      
      class CssProductStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_date, as: 'creationDate'
          collection :destination_statuses, as: 'destinationStatuses', class: Google::Apis::CssV1::DestinationStatus, decorator: Google::Apis::CssV1::DestinationStatus::Representation
      
          property :google_expiration_date, as: 'googleExpirationDate'
          collection :item_level_issues, as: 'itemLevelIssues', class: Google::Apis::CssV1::ItemLevelIssue, decorator: Google::Apis::CssV1::ItemLevelIssue::Representation
      
          property :last_update_date, as: 'lastUpdateDate'
        end
      end
      
      class CustomAttribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :group_values, as: 'groupValues', class: Google::Apis::CssV1::CustomAttribute, decorator: Google::Apis::CssV1::CustomAttribute::Representation
      
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class DestinationStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :approved_countries, as: 'approvedCountries'
          property :destination, as: 'destination'
          collection :disapproved_countries, as: 'disapprovedCountries'
          collection :pending_countries, as: 'pendingCountries'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ItemLevelIssue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :applicable_countries, as: 'applicableCountries'
          property :attribute, as: 'attribute'
          property :code, as: 'code'
          property :description, as: 'description'
          property :destination, as: 'destination'
          property :detail, as: 'detail'
          property :documentation, as: 'documentation'
          property :resolution, as: 'resolution'
          property :servability, as: 'servability'
        end
      end
      
      class ListAccountLabelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :account_labels, as: 'accountLabels', class: Google::Apis::CssV1::AccountLabel, decorator: Google::Apis::CssV1::AccountLabel::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListChildAccountsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accounts, as: 'accounts', class: Google::Apis::CssV1::Account, decorator: Google::Apis::CssV1::Account::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListCssProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :css_products, as: 'cssProducts', class: Google::Apis::CssV1::CssProduct, decorator: Google::Apis::CssV1::CssProduct::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Price
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount_micros, :numeric_string => true, as: 'amountMicros'
          property :currency_code, as: 'currencyCode'
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
      
      class ProductWeight
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :unit, as: 'unit'
          property :value, as: 'value'
        end
      end
      
      class UpdateAccountLabelsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :label_ids, as: 'labelIds'
          property :parent, as: 'parent'
        end
      end
    end
  end
end
