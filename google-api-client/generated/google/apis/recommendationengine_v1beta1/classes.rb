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
      
      # Message that represents an arbitrary HTTP body. It should only be used for
      # payload formats that can't be represented as JSON, such as raw binary or an
      # HTML page. This message can be used both in streaming and non-streaming API
      # methods in the request as well as the response. It can be used as a top-level
      # request field, which is convenient if one wants to extract parameters from
      # either the URL or HTTP template into the request fields and also want access
      # to the raw HTTP body. Example: message GetResourceRequest ` // A unique
      # request id. string request_id = 1; // The raw HTTP body is bound to this field.
      # google.api.HttpBody http_body = 2; ` service ResourceService ` rpc
      # GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc
      # UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); ` Example
      # with streaming methods: service CaldavService ` rpc GetCalendar(stream google.
      # api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream
      # google.api.HttpBody) returns (stream google.api.HttpBody); ` Use of this type
      # only changes how the request and response bodies are handled, all other
      # features will continue to work unchanged.
      class GoogleApiHttpBody
        include Google::Apis::Core::Hashable
      
        # The HTTP Content-Type header value specifying the content type of the body.
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # The HTTP request/response body as raw binary.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # Application specific response metadata. Must be set in the first response for
        # streaming APIs.
        # Corresponds to the JSON property `extensions`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :extensions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_type = args[:content_type] if args.key?(:content_type)
          @data = args[:data] if args.key?(:data)
          @extensions = args[:extensions] if args.key?(:extensions)
        end
      end
      
      # Metadata for TriggerCatalogRejoin method.
      class GoogleCloudRecommendationengineV1alphaRejoinCatalogMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for TriggerCatalogRejoin method.
      class GoogleCloudRecommendationengineV1alphaRejoinCatalogResponse
        include Google::Apis::Core::Hashable
      
        # Number of user events that were joined with latest catalog items.
        # Corresponds to the JSON property `rejoinedUserEventsCount`
        # @return [Fixnum]
        attr_accessor :rejoined_user_events_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rejoined_user_events_count = args[:rejoined_user_events_count] if args.key?(:rejoined_user_events_count)
        end
      end
      
      # Metadata associated with a tune operation.
      class GoogleCloudRecommendationengineV1alphaTuningMetadata
        include Google::Apis::Core::Hashable
      
        # The resource name of the recommendation model that this tune applies to.
        # Format: projects/`project_number`/locations/`location_id`/catalogs/`catalog_id`
        # /eventStores/`event_store_id`/recommendationModels/`recommendation_model_id`
        # Corresponds to the JSON property `recommendationModel`
        # @return [String]
        attr_accessor :recommendation_model
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @recommendation_model = args[:recommendation_model] if args.key?(:recommendation_model)
        end
      end
      
      # Response associated with a tune operation.
      class GoogleCloudRecommendationengineV1alphaTuningResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # BigQuery source import data from.
      class GoogleCloudRecommendationengineV1beta1BigQuerySource
        include Google::Apis::Core::Hashable
      
        # Optional. The schema to use when parsing the data from the source. Supported
        # values for catalog imports: 1: "catalog_recommendations_ai" using https://
        # cloud.google.com/recommendations-ai/docs/upload-catalog#json (Default for
        # catalogItems.import) 2: "catalog_merchant_center" using https://cloud.google.
        # com/recommendations-ai/docs/upload-catalog#mc Supported values for user event
        # imports: 1: "user_events_recommendations_ai" using https://cloud.google.com/
        # recommendations-ai/docs/manage-user-events#import (Default for userEvents.
        # import) 2. "user_events_ga360" using https://support.google.com/analytics/
        # answer/3437719?hl=en
        # Corresponds to the JSON property `dataSchema`
        # @return [String]
        attr_accessor :data_schema
      
        # Required. The BigQuery data set to copy the data from.
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        # Optional. Intermediate Cloud Storage directory used for the import. Can be
        # specified if one wants to have the BigQuery export to a specific Cloud Storage
        # directory.
        # Corresponds to the JSON property `gcsStagingDir`
        # @return [String]
        attr_accessor :gcs_staging_dir
      
        # Optional. The project id (can be project # or id) that the BigQuery source is
        # in. If not specified, inherits the project id from the parent request.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Required. The BigQuery table to copy the data from.
        # Corresponds to the JSON property `tableId`
        # @return [String]
        attr_accessor :table_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_schema = args[:data_schema] if args.key?(:data_schema)
          @dataset_id = args[:dataset_id] if args.key?(:dataset_id)
          @gcs_staging_dir = args[:gcs_staging_dir] if args.key?(:gcs_staging_dir)
          @project_id = args[:project_id] if args.key?(:project_id)
          @table_id = args[:table_id] if args.key?(:table_id)
        end
      end
      
      # The catalog configuration. Next ID: 5.
      class GoogleCloudRecommendationengineV1beta1Catalog
        include Google::Apis::Core::Hashable
      
        # Configures the catalog level that users send events to, and the level at which
        # predictions are made.
        # Corresponds to the JSON property `catalogItemLevelConfig`
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig]
        attr_accessor :catalog_item_level_config
      
        # Required. The ID of the default event store.
        # Corresponds to the JSON property `defaultEventStoreId`
        # @return [String]
        attr_accessor :default_event_store_id
      
        # Required. The catalog display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The fully qualified resource name of the catalog.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @catalog_item_level_config = args[:catalog_item_level_config] if args.key?(:catalog_item_level_config)
          @default_event_store_id = args[:default_event_store_id] if args.key?(:default_event_store_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The inline source for the input config for ImportCatalogItems method.
      class GoogleCloudRecommendationengineV1beta1CatalogInlineSource
        include Google::Apis::Core::Hashable
      
        # Optional. A list of catalog items to update/create. Recommended max of 10k
        # items.
        # Corresponds to the JSON property `catalogItems`
        # @return [Array<Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1CatalogItem>]
        attr_accessor :catalog_items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @catalog_items = args[:catalog_items] if args.key?(:catalog_items)
        end
      end
      
      # CatalogItem captures all metadata information of items to be recommended.
      class GoogleCloudRecommendationengineV1beta1CatalogItem
        include Google::Apis::Core::Hashable
      
        # Required. Catalog item categories. This field is repeated for supporting one
        # catalog item belonging to several parallel category hierarchies. For example,
        # if a shoes product belongs to both ["Shoes & Accessories" -> "Shoes"] and ["
        # Sports & Fitness" -> "Athletic Clothing" -> "Shoes"], it could be represented
        # as: "categoryHierarchies": [ ` "categories": ["Shoes & Accessories", "Shoes"]`,
        # ` "categories": ["Sports & Fitness", "Athletic Clothing", "Shoes"] ` ]
        # Corresponds to the JSON property `categoryHierarchies`
        # @return [Array<Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy>]
        attr_accessor :category_hierarchies
      
        # Optional. Catalog item description. UTF-8 encoded string with a length limit
        # of 5 KiB.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. Catalog item identifier. UTF-8 encoded string with a length limit of
        # 128 bytes. This id must be unique among all catalog items within the same
        # catalog. It should also be used when logging user events in order for the user
        # events to be joined with the Catalog.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # FeatureMap represents extra features that customers want to include in the
        # recommendation model for catalogs/user events as categorical/numerical
        # features.
        # Corresponds to the JSON property `itemAttributes`
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1FeatureMap]
        attr_accessor :item_attributes
      
        # Optional. Variant group identifier for prediction results. UTF-8 encoded
        # string with a length limit of 128 bytes. This field must be enabled before it
        # can be used. [Learn more](/recommendations-ai/docs/catalog#item-group-id).
        # Corresponds to the JSON property `itemGroupId`
        # @return [String]
        attr_accessor :item_group_id
      
        # Optional. Deprecated. The model automatically detects the text language. Your
        # catalog can include text in different languages, but duplicating catalog items
        # to provide text in multiple languages can result in degraded model performance.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # ProductCatalogItem captures item metadata specific to retail products.
        # Corresponds to the JSON property `productMetadata`
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ProductCatalogItem]
        attr_accessor :product_metadata
      
        # Optional. Filtering tags associated with the catalog item. Each tag should be
        # a UTF-8 encoded string with a length limit of 1 KiB. This tag can be used for
        # filtering recommendation results by passing the tag as part of the predict
        # request filter.
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        # Required. Catalog item title. UTF-8 encoded string with a length limit of 1
        # KiB.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category_hierarchies = args[:category_hierarchies] if args.key?(:category_hierarchies)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @item_attributes = args[:item_attributes] if args.key?(:item_attributes)
          @item_group_id = args[:item_group_id] if args.key?(:item_group_id)
          @language_code = args[:language_code] if args.key?(:language_code)
          @product_metadata = args[:product_metadata] if args.key?(:product_metadata)
          @tags = args[:tags] if args.key?(:tags)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Category represents catalog item category hierarchy.
      class GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy
        include Google::Apis::Core::Hashable
      
        # Required. Catalog item categories. Each category should be a UTF-8 encoded
        # string with a length limit of 2 KiB. Note that the order in the list denotes
        # the specificity (from least to most specific).
        # Corresponds to the JSON property `categories`
        # @return [Array<String>]
        attr_accessor :categories
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @categories = args[:categories] if args.key?(:categories)
        end
      end
      
      # Configures the catalog level that users send events to, and the level at which
      # predictions are made.
      class GoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Level of the catalog at which events are uploaded. See https://cloud.
        # google.com/recommendations-ai/docs/catalog#catalog-levels for more details.
        # Corresponds to the JSON property `eventItemLevel`
        # @return [String]
        attr_accessor :event_item_level
      
        # Optional. Level of the catalog at which predictions are made. See https://
        # cloud.google.com/recommendations-ai/docs/catalog#catalog-levels for more
        # details.
        # Corresponds to the JSON property `predictItemLevel`
        # @return [String]
        attr_accessor :predict_item_level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_item_level = args[:event_item_level] if args.key?(:event_item_level)
          @predict_item_level = args[:predict_item_level] if args.key?(:predict_item_level)
        end
      end
      
      # Request message for the `CreatePredictionApiKeyRegistration` method.
      class GoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest
        include Google::Apis::Core::Hashable
      
        # Registered Api Key.
        # Corresponds to the JSON property `predictionApiKeyRegistration`
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration]
        attr_accessor :prediction_api_key_registration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @prediction_api_key_registration = args[:prediction_api_key_registration] if args.key?(:prediction_api_key_registration)
        end
      end
      
      # User event details shared by all recommendation types.
      class GoogleCloudRecommendationengineV1beta1EventDetail
        include Google::Apis::Core::Hashable
      
        # FeatureMap represents extra features that customers want to include in the
        # recommendation model for catalogs/user events as categorical/numerical
        # features.
        # Corresponds to the JSON property `eventAttributes`
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1FeatureMap]
        attr_accessor :event_attributes
      
        # Optional. A list of identifiers for the independent experiment groups this
        # user event belongs to. This is used to distinguish between user events
        # associated with different experiment setups (e.g. using Recommendation Engine
        # system, using different recommendation models).
        # Corresponds to the JSON property `experimentIds`
        # @return [Array<String>]
        attr_accessor :experiment_ids
      
        # Optional. A unique id of a web page view. This should be kept the same for all
        # user events triggered from the same pageview. For example, an item detail page
        # view could trigger multiple events as the user is browsing the page. The `
        # pageViewId` property should be kept the same for all these events so that they
        # can be grouped together properly. This `pageViewId` will be automatically
        # generated if using the JavaScript pixel.
        # Corresponds to the JSON property `pageViewId`
        # @return [String]
        attr_accessor :page_view_id
      
        # Optional. Recommendation token included in the recommendation prediction
        # response. This field enables accurate attribution of recommendation model
        # performance. This token enables us to accurately attribute page view or
        # purchase back to the event and the particular predict response containing this
        # clicked/purchased item. If user clicks on product K in the recommendation
        # results, pass the `PredictResponse.recommendationToken` property as a url
        # parameter to product K's page. When recording events on product K's page, log
        # the PredictResponse.recommendation_token to this field. Optional, but highly
        # encouraged for user events that are the result of a recommendation prediction
        # query.
        # Corresponds to the JSON property `recommendationToken`
        # @return [String]
        attr_accessor :recommendation_token
      
        # Optional. The referrer url of the current page. When using the JavaScript
        # pixel, this value is filled in automatically.
        # Corresponds to the JSON property `referrerUri`
        # @return [String]
        attr_accessor :referrer_uri
      
        # Optional. Complete url (window.location.href) of the user's current page. When
        # using the JavaScript pixel, this value is filled in automatically. Maximum
        # length 5KB.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_attributes = args[:event_attributes] if args.key?(:event_attributes)
          @experiment_ids = args[:experiment_ids] if args.key?(:experiment_ids)
          @page_view_id = args[:page_view_id] if args.key?(:page_view_id)
          @recommendation_token = args[:recommendation_token] if args.key?(:recommendation_token)
          @referrer_uri = args[:referrer_uri] if args.key?(:referrer_uri)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # FeatureMap represents extra features that customers want to include in the
      # recommendation model for catalogs/user events as categorical/numerical
      # features.
      class GoogleCloudRecommendationengineV1beta1FeatureMap
        include Google::Apis::Core::Hashable
      
        # Categorical features that can take on one of a limited number of possible
        # values. Some examples would be the brand/maker of a product, or country of a
        # customer. Feature names and values must be UTF-8 encoded strings. For example:
        # `` "colors": `"value": ["yellow", "green"]`, "sizes": `"value":["S", "M"]``
        # Corresponds to the JSON property `categoricalFeatures`
        # @return [Hash<String,Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1FeatureMapStringList>]
        attr_accessor :categorical_features
      
        # Numerical features. Some examples would be the height/weight of a product, or
        # age of a customer. Feature names must be UTF-8 encoded strings. For example: ``
        # "lengths_cm": `"value":[2.3, 15.4]`, "heights_cm": `"value":[8.1, 6.4]` ``
        # Corresponds to the JSON property `numericalFeatures`
        # @return [Hash<String,Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1FeatureMapFloatList>]
        attr_accessor :numerical_features
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @categorical_features = args[:categorical_features] if args.key?(:categorical_features)
          @numerical_features = args[:numerical_features] if args.key?(:numerical_features)
        end
      end
      
      # A list of float features.
      class GoogleCloudRecommendationengineV1beta1FeatureMapFloatList
        include Google::Apis::Core::Hashable
      
        # Float feature value.
        # Corresponds to the JSON property `value`
        # @return [Array<Float>]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A list of string features.
      class GoogleCloudRecommendationengineV1beta1FeatureMapStringList
        include Google::Apis::Core::Hashable
      
        # String feature value with a length limit of 128 bytes.
        # Corresponds to the JSON property `value`
        # @return [Array<String>]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Google Cloud Storage location for input content. format.
      class GoogleCloudRecommendationengineV1beta1GcsSource
        include Google::Apis::Core::Hashable
      
        # Required. Google Cloud Storage URIs to input files. URI can be up to 2000
        # characters long. URIs can match the full object path (for example, gs://bucket/
        # directory/object.json) or a pattern matching one or more files, such as gs://
        # bucket/directory/*.json. A request can contain at most 100 files, and each
        # file can be up to 2 GB. See [Importing catalog information](/recommendations-
        # ai/docs/upload-catalog) for the expected file format and setup instructions.
        # Corresponds to the JSON property `inputUris`
        # @return [Array<String>]
        attr_accessor :input_uris
      
        # Optional. The schema to use when parsing the data from the source. Supported
        # values for catalog imports: 1: "catalog_recommendations_ai" using https://
        # cloud.google.com/recommendations-ai/docs/upload-catalog#json (Default for
        # catalogItems.import) 2: "catalog_merchant_center" using https://cloud.google.
        # com/recommendations-ai/docs/upload-catalog#mc Supported values for user events
        # imports: 1: "user_events_recommendations_ai" using https://cloud.google.com/
        # recommendations-ai/docs/manage-user-events#import (Default for userEvents.
        # import) 2. "user_events_ga360" using https://support.google.com/analytics/
        # answer/3437719?hl=en
        # Corresponds to the JSON property `jsonSchema`
        # @return [String]
        attr_accessor :json_schema
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input_uris = args[:input_uris] if args.key?(:input_uris)
          @json_schema = args[:json_schema] if args.key?(:json_schema)
        end
      end
      
      # Catalog item thumbnail/detail image.
      class GoogleCloudRecommendationengineV1beta1Image
        include Google::Apis::Core::Hashable
      
        # Optional. Height of the image in number of pixels.
        # Corresponds to the JSON property `height`
        # @return [Fixnum]
        attr_accessor :height
      
        # Required. URL of the image with a length limit of 5 KiB.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        # Optional. Width of the image in number of pixels.
        # Corresponds to the JSON property `width`
        # @return [Fixnum]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @height = args[:height] if args.key?(:height)
          @uri = args[:uri] if args.key?(:uri)
          @width = args[:width] if args.key?(:width)
        end
      end
      
      # Request message for Import methods.
      class GoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest
        include Google::Apis::Core::Hashable
      
        # Configuration of destination for Import related errors.
        # Corresponds to the JSON property `errorsConfig`
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ImportErrorsConfig]
        attr_accessor :errors_config
      
        # The input config source.
        # Corresponds to the JSON property `inputConfig`
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1InputConfig]
        attr_accessor :input_config
      
        # Optional. Unique identifier provided by client, within the ancestor dataset
        # scope. Ensures idempotency and used for request deduplication. Server-
        # generated if unspecified. Up to 128 characters long. This is returned as
        # google.longrunning.Operation.name in the response.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Optional. Indicates which fields in the provided imported 'items' to update.
        # If not set, will by default update all fields.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors_config = args[:errors_config] if args.key?(:errors_config)
          @input_config = args[:input_config] if args.key?(:input_config)
          @request_id = args[:request_id] if args.key?(:request_id)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Response of the ImportCatalogItemsRequest. If the long running operation is
      # done, then this message is returned by the google.longrunning.Operations.
      # response field if the operation was successful.
      class GoogleCloudRecommendationengineV1beta1ImportCatalogItemsResponse
        include Google::Apis::Core::Hashable
      
        # A sample of errors encountered while processing the request.
        # Corresponds to the JSON property `errorSamples`
        # @return [Array<Google::Apis::RecommendationengineV1beta1::GoogleRpcStatus>]
        attr_accessor :error_samples
      
        # Configuration of destination for Import related errors.
        # Corresponds to the JSON property `errorsConfig`
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ImportErrorsConfig]
        attr_accessor :errors_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_samples = args[:error_samples] if args.key?(:error_samples)
          @errors_config = args[:errors_config] if args.key?(:errors_config)
        end
      end
      
      # Configuration of destination for Import related errors.
      class GoogleCloudRecommendationengineV1beta1ImportErrorsConfig
        include Google::Apis::Core::Hashable
      
        # Google Cloud Storage path for import errors. This must be an empty, existing
        # Cloud Storage bucket. Import errors will be written to a file in this bucket,
        # one per line, as a JSON-encoded `google.rpc.Status` message.
        # Corresponds to the JSON property `gcsPrefix`
        # @return [String]
        attr_accessor :gcs_prefix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_prefix = args[:gcs_prefix] if args.key?(:gcs_prefix)
        end
      end
      
      # Metadata related to the progress of the Import operation. This will be
      # returned by the google.longrunning.Operation.metadata field.
      class GoogleCloudRecommendationengineV1beta1ImportMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Count of entries that encountered errors while processing.
        # Corresponds to the JSON property `failureCount`
        # @return [Fixnum]
        attr_accessor :failure_count
      
        # Name of the operation.
        # Corresponds to the JSON property `operationName`
        # @return [String]
        attr_accessor :operation_name
      
        # Id of the request / operation. This is parroting back the requestId that was
        # passed in the request.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Count of entries that were processed successfully.
        # Corresponds to the JSON property `successCount`
        # @return [Fixnum]
        attr_accessor :success_count
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @failure_count = args[:failure_count] if args.key?(:failure_count)
          @operation_name = args[:operation_name] if args.key?(:operation_name)
          @request_id = args[:request_id] if args.key?(:request_id)
          @success_count = args[:success_count] if args.key?(:success_count)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Request message for the ImportUserEvents request.
      class GoogleCloudRecommendationengineV1beta1ImportUserEventsRequest
        include Google::Apis::Core::Hashable
      
        # Configuration of destination for Import related errors.
        # Corresponds to the JSON property `errorsConfig`
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ImportErrorsConfig]
        attr_accessor :errors_config
      
        # The input config source.
        # Corresponds to the JSON property `inputConfig`
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1InputConfig]
        attr_accessor :input_config
      
        # Optional. Unique identifier provided by client, within the ancestor dataset
        # scope. Ensures idempotency for expensive long running operations. Server-
        # generated if unspecified. Up to 128 characters long. This is returned as
        # google.longrunning.Operation.name in the response. Note that this field must
        # not be set if the desired input config is catalog_inline_source.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors_config = args[:errors_config] if args.key?(:errors_config)
          @input_config = args[:input_config] if args.key?(:input_config)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Response of the ImportUserEventsRequest. If the long running operation was
      # successful, then this message is returned by the google.longrunning.Operations.
      # response field if the operation was successful.
      class GoogleCloudRecommendationengineV1beta1ImportUserEventsResponse
        include Google::Apis::Core::Hashable
      
        # A sample of errors encountered while processing the request.
        # Corresponds to the JSON property `errorSamples`
        # @return [Array<Google::Apis::RecommendationengineV1beta1::GoogleRpcStatus>]
        attr_accessor :error_samples
      
        # Configuration of destination for Import related errors.
        # Corresponds to the JSON property `errorsConfig`
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ImportErrorsConfig]
        attr_accessor :errors_config
      
        # A summary of import result. The UserEventImportSummary summarizes the import
        # status for user events.
        # Corresponds to the JSON property `importSummary`
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1UserEventImportSummary]
        attr_accessor :import_summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_samples = args[:error_samples] if args.key?(:error_samples)
          @errors_config = args[:errors_config] if args.key?(:errors_config)
          @import_summary = args[:import_summary] if args.key?(:import_summary)
        end
      end
      
      # The input config source.
      class GoogleCloudRecommendationengineV1beta1InputConfig
        include Google::Apis::Core::Hashable
      
        # BigQuery source import data from.
        # Corresponds to the JSON property `bigQuerySource`
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1BigQuerySource]
        attr_accessor :big_query_source
      
        # The inline source for the input config for ImportCatalogItems method.
        # Corresponds to the JSON property `catalogInlineSource`
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1CatalogInlineSource]
        attr_accessor :catalog_inline_source
      
        # Google Cloud Storage location for input content. format.
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1GcsSource]
        attr_accessor :gcs_source
      
        # The inline source for the input config for ImportUserEvents method.
        # Corresponds to the JSON property `userEventInlineSource`
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1UserEventInlineSource]
        attr_accessor :user_event_inline_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @big_query_source = args[:big_query_source] if args.key?(:big_query_source)
          @catalog_inline_source = args[:catalog_inline_source] if args.key?(:catalog_inline_source)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
          @user_event_inline_source = args[:user_event_inline_source] if args.key?(:user_event_inline_source)
        end
      end
      
      # Response message for ListCatalogItems method.
      class GoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse
        include Google::Apis::Core::Hashable
      
        # The catalog items.
        # Corresponds to the JSON property `catalogItems`
        # @return [Array<Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1CatalogItem>]
        attr_accessor :catalog_items
      
        # If empty, the list is complete. If nonempty, the token to pass to the next
        # request's ListCatalogItemRequest.page_token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @catalog_items = args[:catalog_items] if args.key?(:catalog_items)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response for ListCatalogs method.
      class GoogleCloudRecommendationengineV1beta1ListCatalogsResponse
        include Google::Apis::Core::Hashable
      
        # Output only. All the customer's catalogs.
        # Corresponds to the JSON property `catalogs`
        # @return [Array<Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1Catalog>]
        attr_accessor :catalogs
      
        # Pagination token, if not returned indicates the last page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @catalogs = args[:catalogs] if args.key?(:catalogs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for the `ListPredictionApiKeyRegistrations`.
      class GoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse
        include Google::Apis::Core::Hashable
      
        # If empty, the list is complete. If nonempty, pass the token to the next
        # request's `ListPredictionApiKeysRegistrationsRequest.pageToken`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of registered API keys.
        # Corresponds to the JSON property `predictionApiKeyRegistrations`
        # @return [Array<Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration>]
        attr_accessor :prediction_api_key_registrations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @prediction_api_key_registrations = args[:prediction_api_key_registrations] if args.key?(:prediction_api_key_registrations)
        end
      end
      
      # Response message for ListUserEvents method.
      class GoogleCloudRecommendationengineV1beta1ListUserEventsResponse
        include Google::Apis::Core::Hashable
      
        # If empty, the list is complete. If nonempty, the token to pass to the next
        # request's ListUserEvents.page_token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The user events.
        # Corresponds to the JSON property `userEvents`
        # @return [Array<Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1UserEvent>]
        attr_accessor :user_events
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @user_events = args[:user_events] if args.key?(:user_events)
        end
      end
      
      # Request message for Predict method.
      class GoogleCloudRecommendationengineV1beta1PredictRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Use dryRun mode for this prediction query. If set to true, a dummy
        # model will be used that returns arbitrary catalog items. Note that the dryRun
        # mode should only be used for testing the API, or if the model is not ready.
        # Corresponds to the JSON property `dryRun`
        # @return [Boolean]
        attr_accessor :dry_run
        alias_method :dry_run?, :dry_run
      
        # Optional. Filter for restricting prediction results. Accepts values for tags
        # and the `filterOutOfStockItems` flag. * Tag expressions. Restricts predictions
        # to items that match all of the specified tags. Boolean operators `OR` and `NOT`
        # are supported if the expression is enclosed in parentheses, and must be
        # separated from the tag values by a space. `-"tagA"` is also supported and is
        # equivalent to `NOT "tagA"`. Tag values must be double quoted UTF-8 encoded
        # strings with a size limit of 1 KiB. * filterOutOfStockItems. Restricts
        # predictions to items that do not have a stockState value of OUT_OF_STOCK.
        # Examples: * tag=("Red" OR "Blue") tag="New-Arrival" tag=(NOT "promotional") *
        # filterOutOfStockItems tag=(-"promotional") * filterOutOfStockItems If your
        # filter blocks all prediction results, nothing will be returned. If you want
        # generic (unfiltered) popular items to be returned instead, set `
        # strictFiltering` to false in `PredictRequest.params`.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Optional. The labels for the predict request. * Label keys can contain
        # lowercase letters, digits and hyphens, must start with a letter, and must end
        # with a letter or digit. * Non-zero label values can contain lowercase letters,
        # digits and hyphens, must start with a letter, and must end with a letter or
        # digit. * No more than 64 labels can be associated with a given request. See
        # https://goo.gl/xmQnxf for more information on and examples of labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. Maximum number of results to return per page. Set this property to
        # the number of prediction results required. If zero, the service will choose a
        # reasonable default.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Optional. The previous PredictResponse.next_page_token.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Optional. Additional domain specific parameters for the predictions. Allowed
        # values: * `returnCatalogItem`: Boolean. If set to true, the associated
        # catalogItem object will be returned in the `PredictResponse.PredictionResult.
        # itemMetadata` object in the method response. * `returnItemScore`: Boolean. If
        # set to true, the prediction 'score' corresponding to each returned item will
        # be set in the `metadata` field in the prediction response. The given 'score'
        # indicates the probability of an item being clicked/purchased given the user's
        # context and history. * `strictFiltering`: Boolean. True by default. If set to
        # false, the service will return generic (unfiltered) popular items instead of
        # empty if your filter blocks all prediction results.
        # Corresponds to the JSON property `params`
        # @return [Hash<String,Object>]
        attr_accessor :params
      
        # UserEvent captures all metadata information recommendation engine needs to
        # know about how end users interact with customers' website.
        # Corresponds to the JSON property `userEvent`
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1UserEvent]
        attr_accessor :user_event
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dry_run = args[:dry_run] if args.key?(:dry_run)
          @filter = args[:filter] if args.key?(:filter)
          @labels = args[:labels] if args.key?(:labels)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @params = args[:params] if args.key?(:params)
          @user_event = args[:user_event] if args.key?(:user_event)
        end
      end
      
      # Response message for predict method.
      class GoogleCloudRecommendationengineV1beta1PredictResponse
        include Google::Apis::Core::Hashable
      
        # True if the dryRun property was set in the request.
        # Corresponds to the JSON property `dryRun`
        # @return [Boolean]
        attr_accessor :dry_run
        alias_method :dry_run?, :dry_run
      
        # IDs of items in the request that were missing from the catalog.
        # Corresponds to the JSON property `itemsMissingInCatalog`
        # @return [Array<String>]
        attr_accessor :items_missing_in_catalog
      
        # Additional domain specific prediction response metadata.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # If empty, the list is complete. If nonempty, the token to pass to the next
        # request's PredictRequest.page_token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A unique recommendation token. This should be included in the user event logs
        # resulting from this recommendation, which enables accurate attribution of
        # recommendation model performance.
        # Corresponds to the JSON property `recommendationToken`
        # @return [String]
        attr_accessor :recommendation_token
      
        # A list of recommended items. The order represents the ranking (from the most
        # relevant item to the least).
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult>]
        attr_accessor :results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dry_run = args[:dry_run] if args.key?(:dry_run)
          @items_missing_in_catalog = args[:items_missing_in_catalog] if args.key?(:items_missing_in_catalog)
          @metadata = args[:metadata] if args.key?(:metadata)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @recommendation_token = args[:recommendation_token] if args.key?(:recommendation_token)
          @results = args[:results] if args.key?(:results)
        end
      end
      
      # PredictionResult represents the recommendation prediction results.
      class GoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult
        include Google::Apis::Core::Hashable
      
        # ID of the recommended catalog item
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Additional item metadata / annotations. Possible values: * `catalogItem`: JSON
        # representation of the catalogItem. Will be set if `returnCatalogItem` is set
        # to true in `PredictRequest.params`. * `score`: Prediction score in double
        # value. Will be set if `returnItemScore` is set to true in `PredictRequest.
        # params`.
        # Corresponds to the JSON property `itemMetadata`
        # @return [Hash<String,Object>]
        attr_accessor :item_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @item_metadata = args[:item_metadata] if args.key?(:item_metadata)
        end
      end
      
      # Registered Api Key.
      class GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration
        include Google::Apis::Core::Hashable
      
        # The API key.
        # Corresponds to the JSON property `apiKey`
        # @return [String]
        attr_accessor :api_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_key = args[:api_key] if args.key?(:api_key)
        end
      end
      
      # ProductCatalogItem captures item metadata specific to retail products.
      class GoogleCloudRecommendationengineV1beta1ProductCatalogItem
        include Google::Apis::Core::Hashable
      
        # Optional. The available quantity of the item.
        # Corresponds to the JSON property `availableQuantity`
        # @return [Fixnum]
        attr_accessor :available_quantity
      
        # Optional. Canonical URL directly linking to the item detail page with a length
        # limit of 5 KiB..
        # Corresponds to the JSON property `canonicalProductUri`
        # @return [String]
        attr_accessor :canonical_product_uri
      
        # Optional. A map to pass the costs associated with the product. For example: `"
        # manufacturing": 45.5` The profit of selling this item is computed like so: *
        # If 'exactPrice' is provided, profit = displayPrice - sum(costs) * If '
        # priceRange' is provided, profit = minPrice - sum(costs)
        # Corresponds to the JSON property `costs`
        # @return [Hash<String,Float>]
        attr_accessor :costs
      
        # Optional. Only required if the price is set. Currency code for price/costs.
        # Use three-character ISO-4217 code.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Exact product price.
        # Corresponds to the JSON property `exactPrice`
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice]
        attr_accessor :exact_price
      
        # Optional. Product images for the catalog item.
        # Corresponds to the JSON property `images`
        # @return [Array<Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1Image>]
        attr_accessor :images
      
        # Product price range when there are a range of prices for different variations
        # of the same product.
        # Corresponds to the JSON property `priceRange`
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange]
        attr_accessor :price_range
      
        # Optional. Online stock state of the catalog item. Default is `IN_STOCK`.
        # Corresponds to the JSON property `stockState`
        # @return [String]
        attr_accessor :stock_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @available_quantity = args[:available_quantity] if args.key?(:available_quantity)
          @canonical_product_uri = args[:canonical_product_uri] if args.key?(:canonical_product_uri)
          @costs = args[:costs] if args.key?(:costs)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @exact_price = args[:exact_price] if args.key?(:exact_price)
          @images = args[:images] if args.key?(:images)
          @price_range = args[:price_range] if args.key?(:price_range)
          @stock_state = args[:stock_state] if args.key?(:stock_state)
        end
      end
      
      # Exact product price.
      class GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice
        include Google::Apis::Core::Hashable
      
        # Optional. Display price of the product.
        # Corresponds to the JSON property `displayPrice`
        # @return [Float]
        attr_accessor :display_price
      
        # Optional. Price of the product without any discount. If zero, by default set
        # to be the 'displayPrice'.
        # Corresponds to the JSON property `originalPrice`
        # @return [Float]
        attr_accessor :original_price
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_price = args[:display_price] if args.key?(:display_price)
          @original_price = args[:original_price] if args.key?(:original_price)
        end
      end
      
      # Product price range when there are a range of prices for different variations
      # of the same product.
      class GoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange
        include Google::Apis::Core::Hashable
      
        # Required. The maximum product price.
        # Corresponds to the JSON property `max`
        # @return [Float]
        attr_accessor :max
      
        # Required. The minimum product price.
        # Corresponds to the JSON property `min`
        # @return [Float]
        attr_accessor :min
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max = args[:max] if args.key?(:max)
          @min = args[:min] if args.key?(:min)
        end
      end
      
      # Detailed product information associated with a user event.
      class GoogleCloudRecommendationengineV1beta1ProductDetail
        include Google::Apis::Core::Hashable
      
        # Optional. Quantity of the products in stock when a user event happens.
        # Optional. If provided, this overrides the available quantity in Catalog for
        # this event. and can only be set if `stock_status` is set to `IN_STOCK`. Note
        # that if an item is out of stock, you must set the `stock_state` field to be `
        # OUT_OF_STOCK`. Leaving this field unspecified / as zero is not sufficient to
        # mark the item out of stock.
        # Corresponds to the JSON property `availableQuantity`
        # @return [Fixnum]
        attr_accessor :available_quantity
      
        # Optional. Currency code for price/costs. Use three-character ISO-4217 code.
        # Required only if originalPrice or displayPrice is set.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Optional. Display price of the product (e.g. discounted price). If provided,
        # this will override the display price in Catalog for this product.
        # Corresponds to the JSON property `displayPrice`
        # @return [Float]
        attr_accessor :display_price
      
        # Required. Catalog item ID. UTF-8 encoded string with a length limit of 128
        # characters.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # FeatureMap represents extra features that customers want to include in the
        # recommendation model for catalogs/user events as categorical/numerical
        # features.
        # Corresponds to the JSON property `itemAttributes`
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1FeatureMap]
        attr_accessor :item_attributes
      
        # Optional. Original price of the product. If provided, this will override the
        # original price in Catalog for this product.
        # Corresponds to the JSON property `originalPrice`
        # @return [Float]
        attr_accessor :original_price
      
        # Optional. Quantity of the product associated with the user event. For example,
        # this field will be 2 if two products are added to the shopping cart for `add-
        # to-cart` event. Required for `add-to-cart`, `add-to-list`, `remove-from-cart`,
        # `checkout-start`, `purchase-complete`, `refund` event types.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # Optional. Item stock state. If provided, this overrides the stock state in
        # Catalog for items in this event.
        # Corresponds to the JSON property `stockState`
        # @return [String]
        attr_accessor :stock_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @available_quantity = args[:available_quantity] if args.key?(:available_quantity)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @display_price = args[:display_price] if args.key?(:display_price)
          @id = args[:id] if args.key?(:id)
          @item_attributes = args[:item_attributes] if args.key?(:item_attributes)
          @original_price = args[:original_price] if args.key?(:original_price)
          @quantity = args[:quantity] if args.key?(:quantity)
          @stock_state = args[:stock_state] if args.key?(:stock_state)
        end
      end
      
      # ProductEventDetail captures user event information specific to retail products.
      class GoogleCloudRecommendationengineV1beta1ProductEventDetail
        include Google::Apis::Core::Hashable
      
        # Optional. The id or name of the associated shopping cart. This id is used to
        # associate multiple items added or present in the cart before purchase. This
        # can only be set for `add-to-cart`, `remove-from-cart`, `checkout-start`, `
        # purchase-complete`, or `shopping-cart-page-view` events.
        # Corresponds to the JSON property `cartId`
        # @return [String]
        attr_accessor :cart_id
      
        # Required for `add-to-list` and `remove-from-list` events. The id or name of
        # the list that the item is being added to or removed from. Other event types
        # should not set this field.
        # Corresponds to the JSON property `listId`
        # @return [String]
        attr_accessor :list_id
      
        # Required for `category-page-view` events. Other event types should not set
        # this field. The categories associated with a category page. Category pages
        # include special pages such as sales or promotions. For instance, a special
        # sale page may have the category hierarchy: categories : ["Sales", "2017 Black
        # Friday Deals"].
        # Corresponds to the JSON property `pageCategories`
        # @return [Array<Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy>]
        attr_accessor :page_categories
      
        # The main product details related to the event. This field is required for the
        # following event types: * `add-to-cart` * `add-to-list` * `checkout-start` * `
        # detail-page-view` * `purchase-complete` * `refund` * `remove-from-cart` * `
        # remove-from-list` This field is optional for the following event types: * `
        # page-visit` * `shopping-cart-page-view` - note that 'product_details' should
        # be set for this unless the shopping cart is empty. * `search` (highly
        # encouraged) In a `search` event, this field represents the products returned
        # to the end user on the current page (the end user may have not finished
        # broswing the whole page yet). When a new page is returned to the end user,
        # after pagination/filtering/ordering even for the same query, a new SEARCH
        # event with different product_details is desired. The end user may have not
        # finished broswing the whole page yet. This field is not allowed for the
        # following event types: * `category-page-view` * `home-page-view`
        # Corresponds to the JSON property `productDetails`
        # @return [Array<Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ProductDetail>]
        attr_accessor :product_details
      
        # A transaction represents the entire purchase transaction.
        # Corresponds to the JSON property `purchaseTransaction`
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1PurchaseTransaction]
        attr_accessor :purchase_transaction
      
        # Required for `search` events. Other event types should not set this field. The
        # user's search query as UTF-8 encoded text with a length limit of 5 KiB.
        # Corresponds to the JSON property `searchQuery`
        # @return [String]
        attr_accessor :search_query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cart_id = args[:cart_id] if args.key?(:cart_id)
          @list_id = args[:list_id] if args.key?(:list_id)
          @page_categories = args[:page_categories] if args.key?(:page_categories)
          @product_details = args[:product_details] if args.key?(:product_details)
          @purchase_transaction = args[:purchase_transaction] if args.key?(:purchase_transaction)
          @search_query = args[:search_query] if args.key?(:search_query)
        end
      end
      
      # A transaction represents the entire purchase transaction.
      class GoogleCloudRecommendationengineV1beta1PurchaseTransaction
        include Google::Apis::Core::Hashable
      
        # Optional. All the costs associated with the product. These can be
        # manufacturing costs, shipping expenses not borne by the end user, or any other
        # costs. Total product cost such that profit = revenue - (sum(taxes) + sum(costs)
        # ) If product_cost is not set, then profit = revenue - tax - shipping - sum(
        # CatalogItem.costs). If CatalogItem.cost is not specified for one of the items,
        # CatalogItem.cost based profit *cannot* be calculated for this Transaction.
        # Corresponds to the JSON property `costs`
        # @return [Hash<String,Float>]
        attr_accessor :costs
      
        # Required. Currency code. Use three-character ISO-4217 code. This field is not
        # required if the event type is `refund`.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Optional. The transaction ID with a length limit of 128 bytes.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Required. Total revenue or grand total associated with the transaction. This
        # value include shipping, tax, or other adjustments to total revenue that you
        # want to include as part of your revenue calculations. This field is not
        # required if the event type is `refund`.
        # Corresponds to the JSON property `revenue`
        # @return [Float]
        attr_accessor :revenue
      
        # Optional. All the taxes associated with the transaction.
        # Corresponds to the JSON property `taxes`
        # @return [Hash<String,Float>]
        attr_accessor :taxes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @costs = args[:costs] if args.key?(:costs)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @id = args[:id] if args.key?(:id)
          @revenue = args[:revenue] if args.key?(:revenue)
          @taxes = args[:taxes] if args.key?(:taxes)
        end
      end
      
      # Metadata related to the progress of the PurgeUserEvents operation. This will
      # be returned by the google.longrunning.Operation.metadata field.
      class GoogleCloudRecommendationengineV1beta1PurgeUserEventsMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The ID of the request / operation.
        # Corresponds to the JSON property `operationName`
        # @return [String]
        attr_accessor :operation_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @operation_name = args[:operation_name] if args.key?(:operation_name)
        end
      end
      
      # Request message for PurgeUserEvents method.
      class GoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The filter string to specify the events to be deleted. Empty string
        # filter is not allowed. The eligible fields for filtering are: * `eventType`:
        # UserEvent.eventType field of type string. * `eventTime`: in ISO 8601 "zulu"
        # format. * `visitorId`: field of type string. Specifying this will delete all
        # events associated with a visitor. * `userId`: field of type string. Specifying
        # this will delete all events associated with a user. Examples: * Deleting all
        # events in a time range: `eventTime > "2012-04-23T18:25:43.511Z" eventTime < "
        # 2012-04-23T18:30:43.511Z"` * Deleting specific eventType in time range: `
        # eventTime > "2012-04-23T18:25:43.511Z" eventType = "detail-page-view"` *
        # Deleting all events for a specific visitor: `visitorId = "visitor1024"` The
        # filtering fields are assumed to have an implicit AND.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Optional. The default value is false. Override this flag to true to actually
        # perform the purge. If the field is not set to true, a sampling of events to be
        # deleted will be returned.
        # Corresponds to the JSON property `force`
        # @return [Boolean]
        attr_accessor :force
        alias_method :force?, :force
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @force = args[:force] if args.key?(:force)
        end
      end
      
      # Response of the PurgeUserEventsRequest. If the long running operation is
      # successfully done, then this message is returned by the google.longrunning.
      # Operations.response field.
      class GoogleCloudRecommendationengineV1beta1PurgeUserEventsResponse
        include Google::Apis::Core::Hashable
      
        # The total count of events purged as a result of the operation.
        # Corresponds to the JSON property `purgedEventsCount`
        # @return [Fixnum]
        attr_accessor :purged_events_count
      
        # A sampling of events deleted (or will be deleted) depending on the `force`
        # property in the request. Max of 500 items will be returned.
        # Corresponds to the JSON property `userEventsSample`
        # @return [Array<Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1UserEvent>]
        attr_accessor :user_events_sample
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @purged_events_count = args[:purged_events_count] if args.key?(:purged_events_count)
          @user_events_sample = args[:user_events_sample] if args.key?(:user_events_sample)
        end
      end
      
      # Metadata for RejoinUserEvents method.
      class GoogleCloudRecommendationengineV1beta1RejoinUserEventsMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for CatalogRejoin method.
      class GoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The type of the catalog rejoin to define the scope and range of the
        # user events to be rejoined with catalog items.
        # Corresponds to the JSON property `userEventRejoinScope`
        # @return [String]
        attr_accessor :user_event_rejoin_scope
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_event_rejoin_scope = args[:user_event_rejoin_scope] if args.key?(:user_event_rejoin_scope)
        end
      end
      
      # Response message for RejoinUserEvents method.
      class GoogleCloudRecommendationengineV1beta1RejoinUserEventsResponse
        include Google::Apis::Core::Hashable
      
        # Number of user events that were joined with latest catalog items.
        # Corresponds to the JSON property `rejoinedUserEventsCount`
        # @return [Fixnum]
        attr_accessor :rejoined_user_events_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rejoined_user_events_count = args[:rejoined_user_events_count] if args.key?(:rejoined_user_events_count)
        end
      end
      
      # UserEvent captures all metadata information recommendation engine needs to
      # know about how end users interact with customers' website.
      class GoogleCloudRecommendationengineV1beta1UserEvent
        include Google::Apis::Core::Hashable
      
        # User event details shared by all recommendation types.
        # Corresponds to the JSON property `eventDetail`
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1EventDetail]
        attr_accessor :event_detail
      
        # Optional. This field should *not* be set when using JavaScript pixel or the
        # Recommendations AI Tag. Defaults to `EVENT_SOURCE_UNSPECIFIED`.
        # Corresponds to the JSON property `eventSource`
        # @return [String]
        attr_accessor :event_source
      
        # Optional. Only required for ImportUserEvents method. Timestamp of user event
        # created.
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # Required. User event type. Allowed values are: * `add-to-cart` Products being
        # added to cart. * `add-to-list` Items being added to a list (shopping list,
        # favorites etc). * `category-page-view` Special pages such as sale or promotion
        # pages viewed. * `checkout-start` User starting a checkout process. * `detail-
        # page-view` Products detail page viewed. * `home-page-view` Homepage viewed. * `
        # page-visit` Generic page visits not included in the event types above. * `
        # purchase-complete` User finishing a purchase. * `refund` Purchased items being
        # refunded or returned. * `remove-from-cart` Products being removed from cart. *
        # `remove-from-list` Items being removed from a list. * `search` Product search.
        # * `shopping-cart-page-view` User viewing a shopping cart. * `impression` List
        # of items displayed. Used by Google Tag Manager.
        # Corresponds to the JSON property `eventType`
        # @return [String]
        attr_accessor :event_type
      
        # ProductEventDetail captures user event information specific to retail products.
        # Corresponds to the JSON property `productEventDetail`
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1ProductEventDetail]
        attr_accessor :product_event_detail
      
        # Information of end users.
        # Corresponds to the JSON property `userInfo`
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1UserInfo]
        attr_accessor :user_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_detail = args[:event_detail] if args.key?(:event_detail)
          @event_source = args[:event_source] if args.key?(:event_source)
          @event_time = args[:event_time] if args.key?(:event_time)
          @event_type = args[:event_type] if args.key?(:event_type)
          @product_event_detail = args[:product_event_detail] if args.key?(:product_event_detail)
          @user_info = args[:user_info] if args.key?(:user_info)
        end
      end
      
      # A summary of import result. The UserEventImportSummary summarizes the import
      # status for user events.
      class GoogleCloudRecommendationengineV1beta1UserEventImportSummary
        include Google::Apis::Core::Hashable
      
        # Count of user events imported with complete existing catalog information.
        # Corresponds to the JSON property `joinedEventsCount`
        # @return [Fixnum]
        attr_accessor :joined_events_count
      
        # Count of user events imported, but with catalog information not found in the
        # imported catalog.
        # Corresponds to the JSON property `unjoinedEventsCount`
        # @return [Fixnum]
        attr_accessor :unjoined_events_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @joined_events_count = args[:joined_events_count] if args.key?(:joined_events_count)
          @unjoined_events_count = args[:unjoined_events_count] if args.key?(:unjoined_events_count)
        end
      end
      
      # The inline source for the input config for ImportUserEvents method.
      class GoogleCloudRecommendationengineV1beta1UserEventInlineSource
        include Google::Apis::Core::Hashable
      
        # Optional. A list of user events to import. Recommended max of 10k items.
        # Corresponds to the JSON property `userEvents`
        # @return [Array<Google::Apis::RecommendationengineV1beta1::GoogleCloudRecommendationengineV1beta1UserEvent>]
        attr_accessor :user_events
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_events = args[:user_events] if args.key?(:user_events)
        end
      end
      
      # Information of end users.
      class GoogleCloudRecommendationengineV1beta1UserInfo
        include Google::Apis::Core::Hashable
      
        # Optional. Indicates if the request is made directly from the end user in which
        # case the user_agent and ip_address fields can be populated from the HTTP
        # request. This should *not* be set when using the javascript pixel. This flag
        # should be set only if the API request is made directly from the end user such
        # as a mobile app (and not if a gateway or a server is processing and pushing
        # the user events).
        # Corresponds to the JSON property `directUserRequest`
        # @return [Boolean]
        attr_accessor :direct_user_request
        alias_method :direct_user_request?, :direct_user_request
      
        # Optional. IP address of the user. This could be either IPv4 (e.g. 104.133.9.80)
        # or IPv6 (e.g. 2001:0db8:85a3:0000:0000:8a2e:0370:7334). This should *not* be
        # set when using the javascript pixel or if `direct_user_request` is set. Used
        # to extract location information for personalization.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # Optional. User agent as included in the HTTP header. UTF-8 encoded string with
        # a length limit of 1 KiB. This should *not* be set when using the JavaScript
        # pixel or if `directUserRequest` is set.
        # Corresponds to the JSON property `userAgent`
        # @return [String]
        attr_accessor :user_agent
      
        # Optional. Unique identifier for logged-in user with a length limit of 128
        # bytes. Required only for logged-in users.
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        # Required. A unique identifier for tracking visitors with a length limit of 128
        # bytes. For example, this could be implemented with a http cookie, which should
        # be able to uniquely identify a visitor on a single device. This unique
        # identifier should not change if the visitor log in/out of the website. Maximum
        # length 128 bytes. Cannot be empty.
        # Corresponds to the JSON property `visitorId`
        # @return [String]
        attr_accessor :visitor_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @direct_user_request = args[:direct_user_request] if args.key?(:direct_user_request)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @user_agent = args[:user_agent] if args.key?(:user_agent)
          @user_id = args[:user_id] if args.key?(:user_id)
          @visitor_id = args[:visitor_id] if args.key?(:visitor_id)
        end
      end
      
      # The response message for Operations.ListOperations.
      class GoogleLongrunningListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::RecommendationengineV1beta1::GoogleLongrunningOperation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class GoogleLongrunningOperation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::RecommendationengineV1beta1::GoogleRpcStatus]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal response of the operation in case of success. If the original
        # method returns no data on success, such as `Delete`, the response is `google.
        # protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`,
        # the response should be the resource. For other methods, the response should
        # have the type `XxxResponse`, where `Xxx` is the original method name. For
        # example, if the original method name is `TakeSnapshot()`, the inferred
        # response type is `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class GoogleProtobufEmpty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class GoogleRpcStatus
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
    end
  end
end
