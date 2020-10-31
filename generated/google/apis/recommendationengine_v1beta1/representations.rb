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
    module RecommendationengineV1beta1
      
      class GoogleApiHttpBody
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1alphaRejoinCatalogMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1alphaRejoinCatalogResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1alphaTuningMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1alphaTuningResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1BigQuerySource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1Catalog
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1CatalogInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1CatalogItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1EventDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1FeatureMap
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1FeatureMapFloatList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1FeatureMapStringList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1GcsSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1Image
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1ImportCatalogItemsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1ImportErrorsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1ImportMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1ImportUserEventsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1ImportUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1InputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1ListCatalogsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1ListUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1PredictRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1PredictResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1ProductCatalogItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1ProductDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1ProductEventDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1PurchaseTransaction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1PurgeUserEventsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1PurgeUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1RejoinUserEventsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1RejoinUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1UserEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1UserEventImportSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1UserEventInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommendationengineV1beta1UserInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleProtobufEmpty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRpcStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleApiHttpBody
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_type, as: 'contentType'
          property :data, :base64 => true, as: 'data'
          collection :extensions, as: 'extensions'
        end
      end
      
      class GoogleCloudRecommendationengineV1alphaRejoinCatalogMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRecommendationengineV1alphaRejoinCatalogResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rejoined_user_events_count, :numeric_string => true, as: 'rejoinedUserEventsCount'
        end
      end
      
      class GoogleCloudRecommendationengineV1alphaTuningMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :recommendation_model, as: 'recommendationModel'
        end
      end
      
      class GoogleCloudRecommendationengineV1alphaTuningResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1BigQuerySource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_schema, as: 'dataSchema'
          property :dataset_id, as: 'datasetId'
          property :gcs_staging_dir, as: 'gcsStagingDir'
          property :project_id, as: 'projectId'
          property :table_id, as: 'tableId'
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1Catalog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :catalog_item_level_config, as: 'catalogItemLevelConfig', class: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig, decorator: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig::Representation
      
          property :default_event_store_id, as: 'defaultEventStoreId'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1CatalogInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :catalog_items, as: 'catalogItems', class: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1CatalogItem, decorator: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1CatalogItem::Representation
      
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1CatalogItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :category_hierarchies, as: 'categoryHierarchies', class: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy, decorator: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy::Representation
      
          property :description, as: 'description'
          property :id, as: 'id'
          property :item_attributes, as: 'itemAttributes', class: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1FeatureMap, decorator: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1FeatureMap::Representation
      
          property :item_group_id, as: 'itemGroupId'
          property :language_code, as: 'languageCode'
          property :product_metadata, as: 'productMetadata', class: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ProductCatalogItem, decorator: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ProductCatalogItem::Representation
      
          collection :tags, as: 'tags'
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :categories, as: 'categories'
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event_item_level, as: 'eventItemLevel'
          property :predict_item_level, as: 'predictItemLevel'
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :prediction_api_key_registration, as: 'predictionApiKeyRegistration', class: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration, decorator: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration::Representation
      
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1EventDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event_attributes, as: 'eventAttributes', class: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1FeatureMap, decorator: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1FeatureMap::Representation
      
          collection :experiment_ids, as: 'experimentIds'
          property :page_view_id, as: 'pageViewId'
          property :recommendation_token, as: 'recommendationToken'
          property :referrer_uri, as: 'referrerUri'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1FeatureMap
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :categorical_features, as: 'categoricalFeatures', class: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1FeatureMapStringList, decorator: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1FeatureMapStringList::Representation
      
          hash :numerical_features, as: 'numericalFeatures', class: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1FeatureMapFloatList, decorator: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1FeatureMapFloatList::Representation
      
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1FeatureMapFloatList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :value, as: 'value'
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1FeatureMapStringList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :value, as: 'value'
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1GcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :input_uris, as: 'inputUris'
          property :json_schema, as: 'jsonSchema'
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1Image
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :height, as: 'height'
          property :uri, as: 'uri'
          property :width, as: 'width'
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ImportErrorsConfig, decorator: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ImportErrorsConfig::Representation
      
          property :input_config, as: 'inputConfig', class: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1InputConfig, decorator: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1InputConfig::Representation
      
          property :request_id, as: 'requestId'
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1ImportCatalogItemsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RecommendationengineV1beta1::GoogleRpcStatus, decorator: Google::Apis::RecommendationengineV1beta1::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ImportErrorsConfig, decorator: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ImportErrorsConfig::Representation
      
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1ImportErrorsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_prefix, as: 'gcsPrefix'
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1ImportMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :operation_name, as: 'operationName'
          property :request_id, as: 'requestId'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1ImportUserEventsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ImportErrorsConfig, decorator: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ImportErrorsConfig::Representation
      
          property :input_config, as: 'inputConfig', class: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1InputConfig, decorator: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1InputConfig::Representation
      
          property :request_id, as: 'requestId'
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1ImportUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RecommendationengineV1beta1::GoogleRpcStatus, decorator: Google::Apis::RecommendationengineV1beta1::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ImportErrorsConfig, decorator: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ImportErrorsConfig::Representation
      
          property :import_summary, as: 'importSummary', class: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1UserEventImportSummary, decorator: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1UserEventImportSummary::Representation
      
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1InputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :big_query_source, as: 'bigQuerySource', class: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1BigQuerySource, decorator: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1BigQuerySource::Representation
      
          property :catalog_inline_source, as: 'catalogInlineSource', class: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1CatalogInlineSource, decorator: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1CatalogInlineSource::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1GcsSource, decorator: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1GcsSource::Representation
      
          property :user_event_inline_source, as: 'userEventInlineSource', class: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1UserEventInlineSource, decorator: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1UserEventInlineSource::Representation
      
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :catalog_items, as: 'catalogItems', class: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1CatalogItem, decorator: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1CatalogItem::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1ListCatalogsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :catalogs, as: 'catalogs', class: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1Catalog, decorator: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1Catalog::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :prediction_api_key_registrations, as: 'predictionApiKeyRegistrations', class: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration, decorator: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration::Representation
      
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1ListUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :user_events, as: 'userEvents', class: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1UserEvent, decorator: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1UserEvent::Representation
      
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1PredictRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dry_run, as: 'dryRun'
          property :filter, as: 'filter'
          hash :labels, as: 'labels'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          hash :params, as: 'params'
          property :user_event, as: 'userEvent', class: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1UserEvent, decorator: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1UserEvent::Representation
      
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1PredictResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dry_run, as: 'dryRun'
          collection :items_missing_in_catalog, as: 'itemsMissingInCatalog'
          hash :metadata, as: 'metadata'
          property :next_page_token, as: 'nextPageToken'
          property :recommendation_token, as: 'recommendationToken'
          collection :results, as: 'results', class: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult, decorator: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult::Representation
      
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :item_metadata, as: 'itemMetadata'
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_key, as: 'apiKey'
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1ProductCatalogItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :available_quantity, :numeric_string => true, as: 'availableQuantity'
          property :canonical_product_uri, as: 'canonicalProductUri'
          hash :costs, as: 'costs'
          property :currency_code, as: 'currencyCode'
          property :exact_price, as: 'exactPrice', class: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice, decorator: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice::Representation
      
          collection :images, as: 'images', class: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1Image, decorator: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1Image::Representation
      
          property :price_range, as: 'priceRange', class: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange, decorator: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange::Representation
      
          property :stock_state, as: 'stockState'
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_price, as: 'displayPrice'
          property :original_price, as: 'originalPrice'
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max, as: 'max'
          property :min, as: 'min'
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1ProductDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :available_quantity, as: 'availableQuantity'
          property :currency_code, as: 'currencyCode'
          property :display_price, as: 'displayPrice'
          property :id, as: 'id'
          property :item_attributes, as: 'itemAttributes', class: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1FeatureMap, decorator: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1FeatureMap::Representation
      
          property :original_price, as: 'originalPrice'
          property :quantity, as: 'quantity'
          property :stock_state, as: 'stockState'
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1ProductEventDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cart_id, as: 'cartId'
          property :list_id, as: 'listId'
          collection :page_categories, as: 'pageCategories', class: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy, decorator: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy::Representation
      
          collection :product_details, as: 'productDetails', class: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ProductDetail, decorator: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ProductDetail::Representation
      
          property :purchase_transaction, as: 'purchaseTransaction', class: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1PurchaseTransaction, decorator: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1PurchaseTransaction::Representation
      
          property :search_query, as: 'searchQuery'
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1PurchaseTransaction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :costs, as: 'costs'
          property :currency_code, as: 'currencyCode'
          property :id, as: 'id'
          property :revenue, as: 'revenue'
          hash :taxes, as: 'taxes'
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1PurgeUserEventsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :operation_name, as: 'operationName'
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :force, as: 'force'
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1PurgeUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :purged_events_count, :numeric_string => true, as: 'purgedEventsCount'
          collection :user_events_sample, as: 'userEventsSample', class: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1UserEvent, decorator: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1UserEvent::Representation
      
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1RejoinUserEventsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :user_event_rejoin_scope, as: 'userEventRejoinScope'
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1RejoinUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rejoined_user_events_count, :numeric_string => true, as: 'rejoinedUserEventsCount'
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1UserEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event_detail, as: 'eventDetail', class: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1EventDetail, decorator: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1EventDetail::Representation
      
          property :event_source, as: 'eventSource'
          property :event_time, as: 'eventTime'
          property :event_type, as: 'eventType'
          property :product_event_detail, as: 'productEventDetail', class: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ProductEventDetail, decorator: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ProductEventDetail::Representation
      
          property :user_info, as: 'userInfo', class: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1UserInfo, decorator: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1UserInfo::Representation
      
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1UserEventImportSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :joined_events_count, :numeric_string => true, as: 'joinedEventsCount'
          property :unjoined_events_count, :numeric_string => true, as: 'unjoinedEventsCount'
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1UserEventInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :user_events, as: 'userEvents', class: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1UserEvent, decorator: Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1UserEvent::Representation
      
        end
      end
      
      class GoogleCloudRecommendationengineV1beta1UserInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :direct_user_request, as: 'directUserRequest'
          property :ip_address, as: 'ipAddress'
          property :user_agent, as: 'userAgent'
          property :user_id, as: 'userId'
          property :visitor_id, as: 'visitorId'
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::RecommendationengineV1beta1::GoogleLongrunningOperation, decorator: Google::Apis::RecommendationengineV1beta1::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::RecommendationengineV1beta1::GoogleRpcStatus, decorator: Google::Apis::RecommendationengineV1beta1::GoogleRpcStatus::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class GoogleProtobufEmpty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleRpcStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
    end
  end
end
