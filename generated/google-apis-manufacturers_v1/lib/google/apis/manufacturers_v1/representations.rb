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
    module ManufacturersV1
      
      class Attributes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Capacity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Certification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Count
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
      
      class FeatureDescription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FloatUnit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Grocery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Image
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Issue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListProductCertificationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Nutrition
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
      
      class ProductCertification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VoluntaryNutritionFact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Attributes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_image_link, as: 'additionalImageLink', class: Google::Apis::ManufacturersV1::Image, decorator: Google::Apis::ManufacturersV1::Image::Representation
      
          property :age_group, as: 'ageGroup'
          property :brand, as: 'brand'
          property :capacity, as: 'capacity', class: Google::Apis::ManufacturersV1::Capacity, decorator: Google::Apis::ManufacturersV1::Capacity::Representation
      
          property :color, as: 'color'
          property :count, as: 'count', class: Google::Apis::ManufacturersV1::Count, decorator: Google::Apis::ManufacturersV1::Count::Representation
      
          property :description, as: 'description'
          property :disclosure_date, as: 'disclosureDate'
          collection :excluded_destination, as: 'excludedDestination'
          collection :feature_description, as: 'featureDescription', class: Google::Apis::ManufacturersV1::FeatureDescription, decorator: Google::Apis::ManufacturersV1::FeatureDescription::Representation
      
          property :flavor, as: 'flavor'
          property :format, as: 'format'
          property :gender, as: 'gender'
          property :grocery, as: 'grocery', class: Google::Apis::ManufacturersV1::Grocery, decorator: Google::Apis::ManufacturersV1::Grocery::Representation
      
          collection :gtin, as: 'gtin'
          property :image_link, as: 'imageLink', class: Google::Apis::ManufacturersV1::Image, decorator: Google::Apis::ManufacturersV1::Image::Representation
      
          collection :included_destination, as: 'includedDestination'
          property :item_group_id, as: 'itemGroupId'
          property :material, as: 'material'
          property :mpn, as: 'mpn'
          property :nutrition, as: 'nutrition', class: Google::Apis::ManufacturersV1::Nutrition, decorator: Google::Apis::ManufacturersV1::Nutrition::Representation
      
          property :pattern, as: 'pattern'
          collection :product_detail, as: 'productDetail', class: Google::Apis::ManufacturersV1::ProductDetail, decorator: Google::Apis::ManufacturersV1::ProductDetail::Representation
      
          collection :product_highlight, as: 'productHighlight'
          property :product_line, as: 'productLine'
          property :product_name, as: 'productName'
          property :product_page_url, as: 'productPageUrl'
          collection :product_type, as: 'productType'
          property :release_date, as: 'releaseDate'
          collection :rich_product_content, as: 'richProductContent'
          property :scent, as: 'scent'
          property :size, as: 'size'
          property :size_system, as: 'sizeSystem'
          collection :size_type, as: 'sizeType'
          property :suggested_retail_price, as: 'suggestedRetailPrice', class: Google::Apis::ManufacturersV1::Price, decorator: Google::Apis::ManufacturersV1::Price::Representation
      
          property :target_client_id, as: 'targetClientId'
          property :theme, as: 'theme'
          property :title, as: 'title'
          collection :video_link, as: 'videoLink'
        end
      end
      
      class Capacity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :unit, as: 'unit'
          property :value, :numeric_string => true, as: 'value'
        end
      end
      
      class Certification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authority, as: 'authority'
          property :link, as: 'link'
          property :logo, as: 'logo'
          property :name, as: 'name'
          property :valid_until, as: 'validUntil'
          property :value, as: 'value'
        end
      end
      
      class Count
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :unit, as: 'unit'
          property :value, :numeric_string => true, as: 'value'
        end
      end
      
      class DestinationStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination, as: 'destination'
          property :status, as: 'status'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FeatureDescription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :headline, as: 'headline'
          property :image, as: 'image', class: Google::Apis::ManufacturersV1::Image, decorator: Google::Apis::ManufacturersV1::Image::Representation
      
          property :text, as: 'text'
        end
      end
      
      class FloatUnit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount, as: 'amount'
          property :unit, as: 'unit'
        end
      end
      
      class Grocery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active_ingredients, as: 'activeIngredients'
          property :alcohol_by_volume, as: 'alcoholByVolume'
          property :allergens, as: 'allergens'
          collection :derived_nutrition_claim, as: 'derivedNutritionClaim'
          property :directions, as: 'directions'
          property :indications, as: 'indications'
          property :ingredients, as: 'ingredients'
          collection :nutrition_claim, as: 'nutritionClaim'
          property :storage_instructions, as: 'storageInstructions'
        end
      end
      
      class Image
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_url, as: 'imageUrl'
          property :status, as: 'status'
          property :type, as: 'type'
        end
      end
      
      class Issue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute, as: 'attribute'
          property :description, as: 'description'
          property :destination, as: 'destination'
          property :resolution, as: 'resolution'
          property :severity, as: 'severity'
          property :timestamp, as: 'timestamp'
          property :title, as: 'title'
          property :type, as: 'type'
        end
      end
      
      class ListProductCertificationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :product_certifications, as: 'productCertifications', class: Google::Apis::ManufacturersV1::ProductCertification, decorator: Google::Apis::ManufacturersV1::ProductCertification::Representation
      
        end
      end
      
      class ListProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :products, as: 'products', class: Google::Apis::ManufacturersV1::Product, decorator: Google::Apis::ManufacturersV1::Product::Representation
      
        end
      end
      
      class Nutrition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :added_sugars, as: 'addedSugars', class: Google::Apis::ManufacturersV1::FloatUnit, decorator: Google::Apis::ManufacturersV1::FloatUnit::Representation
      
          property :added_sugars_daily_percentage, as: 'addedSugarsDailyPercentage'
          property :calcium, as: 'calcium', class: Google::Apis::ManufacturersV1::FloatUnit, decorator: Google::Apis::ManufacturersV1::FloatUnit::Representation
      
          property :calcium_daily_percentage, as: 'calciumDailyPercentage'
          property :cholesterol, as: 'cholesterol', class: Google::Apis::ManufacturersV1::FloatUnit, decorator: Google::Apis::ManufacturersV1::FloatUnit::Representation
      
          property :cholesterol_daily_percentage, as: 'cholesterolDailyPercentage'
          property :dietary_fiber, as: 'dietaryFiber', class: Google::Apis::ManufacturersV1::FloatUnit, decorator: Google::Apis::ManufacturersV1::FloatUnit::Representation
      
          property :dietary_fiber_daily_percentage, as: 'dietaryFiberDailyPercentage'
          property :energy, as: 'energy', class: Google::Apis::ManufacturersV1::FloatUnit, decorator: Google::Apis::ManufacturersV1::FloatUnit::Representation
      
          property :energy_from_fat, as: 'energyFromFat', class: Google::Apis::ManufacturersV1::FloatUnit, decorator: Google::Apis::ManufacturersV1::FloatUnit::Representation
      
          property :folate_daily_percentage, as: 'folateDailyPercentage'
          property :folate_folic_acid, as: 'folateFolicAcid', class: Google::Apis::ManufacturersV1::FloatUnit, decorator: Google::Apis::ManufacturersV1::FloatUnit::Representation
      
          property :folate_mcg_dfe, as: 'folateMcgDfe'
          property :iron, as: 'iron', class: Google::Apis::ManufacturersV1::FloatUnit, decorator: Google::Apis::ManufacturersV1::FloatUnit::Representation
      
          property :iron_daily_percentage, as: 'ironDailyPercentage'
          property :monounsaturated_fat, as: 'monounsaturatedFat', class: Google::Apis::ManufacturersV1::FloatUnit, decorator: Google::Apis::ManufacturersV1::FloatUnit::Representation
      
          property :nutrition_fact_measure, as: 'nutritionFactMeasure'
          property :polyols, as: 'polyols', class: Google::Apis::ManufacturersV1::FloatUnit, decorator: Google::Apis::ManufacturersV1::FloatUnit::Representation
      
          property :polyunsaturated_fat, as: 'polyunsaturatedFat', class: Google::Apis::ManufacturersV1::FloatUnit, decorator: Google::Apis::ManufacturersV1::FloatUnit::Representation
      
          property :potassium, as: 'potassium', class: Google::Apis::ManufacturersV1::FloatUnit, decorator: Google::Apis::ManufacturersV1::FloatUnit::Representation
      
          property :potassium_daily_percentage, as: 'potassiumDailyPercentage'
          property :prepared_size_description, as: 'preparedSizeDescription'
          property :protein, as: 'protein', class: Google::Apis::ManufacturersV1::FloatUnit, decorator: Google::Apis::ManufacturersV1::FloatUnit::Representation
      
          property :protein_daily_percentage, as: 'proteinDailyPercentage'
          property :saturated_fat, as: 'saturatedFat', class: Google::Apis::ManufacturersV1::FloatUnit, decorator: Google::Apis::ManufacturersV1::FloatUnit::Representation
      
          property :saturated_fat_daily_percentage, as: 'saturatedFatDailyPercentage'
          property :serving_size_description, as: 'servingSizeDescription'
          property :serving_size_measure, as: 'servingSizeMeasure', class: Google::Apis::ManufacturersV1::FloatUnit, decorator: Google::Apis::ManufacturersV1::FloatUnit::Representation
      
          property :servings_per_container, as: 'servingsPerContainer'
          property :sodium, as: 'sodium', class: Google::Apis::ManufacturersV1::FloatUnit, decorator: Google::Apis::ManufacturersV1::FloatUnit::Representation
      
          property :sodium_daily_percentage, as: 'sodiumDailyPercentage'
          property :starch, as: 'starch', class: Google::Apis::ManufacturersV1::FloatUnit, decorator: Google::Apis::ManufacturersV1::FloatUnit::Representation
      
          property :total_carbohydrate, as: 'totalCarbohydrate', class: Google::Apis::ManufacturersV1::FloatUnit, decorator: Google::Apis::ManufacturersV1::FloatUnit::Representation
      
          property :total_carbohydrate_daily_percentage, as: 'totalCarbohydrateDailyPercentage'
          property :total_fat, as: 'totalFat', class: Google::Apis::ManufacturersV1::FloatUnit, decorator: Google::Apis::ManufacturersV1::FloatUnit::Representation
      
          property :total_fat_daily_percentage, as: 'totalFatDailyPercentage'
          property :total_sugars, as: 'totalSugars', class: Google::Apis::ManufacturersV1::FloatUnit, decorator: Google::Apis::ManufacturersV1::FloatUnit::Representation
      
          property :total_sugars_daily_percentage, as: 'totalSugarsDailyPercentage'
          property :trans_fat, as: 'transFat', class: Google::Apis::ManufacturersV1::FloatUnit, decorator: Google::Apis::ManufacturersV1::FloatUnit::Representation
      
          property :trans_fat_daily_percentage, as: 'transFatDailyPercentage'
          property :vitamin_d, as: 'vitaminD', class: Google::Apis::ManufacturersV1::FloatUnit, decorator: Google::Apis::ManufacturersV1::FloatUnit::Representation
      
          property :vitamin_d_daily_percentage, as: 'vitaminDDailyPercentage'
          collection :voluntary_nutrition_fact, as: 'voluntaryNutritionFact', class: Google::Apis::ManufacturersV1::VoluntaryNutritionFact, decorator: Google::Apis::ManufacturersV1::VoluntaryNutritionFact::Representation
      
        end
      end
      
      class Price
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount, as: 'amount'
          property :currency, as: 'currency'
        end
      end
      
      class Product
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attributes, as: 'attributes', class: Google::Apis::ManufacturersV1::Attributes, decorator: Google::Apis::ManufacturersV1::Attributes::Representation
      
          property :content_language, as: 'contentLanguage'
          collection :destination_statuses, as: 'destinationStatuses', class: Google::Apis::ManufacturersV1::DestinationStatus, decorator: Google::Apis::ManufacturersV1::DestinationStatus::Representation
      
          collection :issues, as: 'issues', class: Google::Apis::ManufacturersV1::Issue, decorator: Google::Apis::ManufacturersV1::Issue::Representation
      
          property :name, as: 'name'
          property :parent, as: 'parent'
          property :product_id, as: 'productId'
          property :target_country, as: 'targetCountry'
        end
      end
      
      class ProductCertification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :brand, as: 'brand'
          collection :certification, as: 'certification', class: Google::Apis::ManufacturersV1::Certification, decorator: Google::Apis::ManufacturersV1::Certification::Representation
      
          collection :country_code, as: 'countryCode'
          collection :destination_statuses, as: 'destinationStatuses', class: Google::Apis::ManufacturersV1::DestinationStatus, decorator: Google::Apis::ManufacturersV1::DestinationStatus::Representation
      
          collection :issues, as: 'issues', class: Google::Apis::ManufacturersV1::Issue, decorator: Google::Apis::ManufacturersV1::Issue::Representation
      
          collection :mpn, as: 'mpn'
          property :name, as: 'name'
          collection :product_code, as: 'productCode'
          collection :product_type, as: 'productType'
          property :title, as: 'title'
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
      
      class VoluntaryNutritionFact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :daily_percentage, as: 'dailyPercentage'
          property :name, as: 'name'
          property :value, as: 'value', class: Google::Apis::ManufacturersV1::FloatUnit, decorator: Google::Apis::ManufacturersV1::FloatUnit::Representation
      
        end
      end
    end
  end
end
