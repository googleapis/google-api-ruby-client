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
    module RetailV2
      
      class GoogleApiHttpBody
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailLoggingErrorContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailLoggingErrorLog
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailLoggingHttpRequestContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailLoggingImportErrorContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailLoggingServiceContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailLoggingSourceLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2AddCatalogAttributeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2AddControlRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2AddFulfillmentPlacesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2AddFulfillmentPlacesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2AddFulfillmentPlacesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2AddLocalInventoriesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2AddLocalInventoriesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2AddLocalInventoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2AttributesConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2Audience
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2BigQuerySource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2Catalog
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2CatalogAttribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ColorInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2CompleteQueryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2CompleteQueryResponseCompletionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2CompleteQueryResponseRecentSearchResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2CompletionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2CompletionDataInputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2CompletionDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2Condition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ConditionQueryTerm
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ConditionTimeRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2Control
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2CreateModelMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2CustomAttribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ExperimentInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ExperimentInfoServingConfigExperiment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2FulfillmentInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2GcsSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2GetDefaultBranchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2Image
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ImportCompletionDataRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ImportCompletionDataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ImportErrorsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ImportMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ImportProductsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ImportProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ImportUserEventsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ImportUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2Interval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ListCatalogsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ListControlsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ListModelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ListProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ListServingConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2LocalInventory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2Model
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ModelServingConfigList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2PauseModelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2PredictRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2PredictResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2PredictResponsePredictionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2PriceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2PriceInfoPriceRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2Product
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ProductDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ProductInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ProductInputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ProductLevelConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2Promotion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2PurchaseTransaction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2PurgeMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2PurgeUserEventsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2PurgeUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2Rating
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2RejoinUserEventsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2RejoinUserEventsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2RejoinUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2RemoveCatalogAttributeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2RemoveControlRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2RemoveFulfillmentPlacesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2RemoveFulfillmentPlacesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2RemoveFulfillmentPlacesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2RemoveLocalInventoriesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2RemoveLocalInventoriesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2RemoveLocalInventoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ReplaceCatalogAttributeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ResumeModelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2Rule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2RuleBoostAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2RuleDoNotAssociateAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2RuleFilterAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2RuleIgnoreAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2RuleOnewaySynonymsAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2RuleRedirectAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2RuleReplacementAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2RuleTwowaySynonymsAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2SearchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2SearchRequestBoostSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2SearchRequestDynamicFacetSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2SearchRequestFacetSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2SearchRequestFacetSpecFacetKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2SearchRequestPersonalizationSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2SearchRequestQueryExpansionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2SearchRequestSpellCorrectionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2SearchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2SearchResponseFacet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2SearchResponseFacetFacetValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2SearchResponseQueryExpansionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2SearchResponseSearchResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ServingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2SetDefaultBranchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2SetInventoryMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2SetInventoryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2SetInventoryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2TuneModelMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2TuneModelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2TuneModelResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2UserEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2UserEventImportSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2UserEventInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2UserEventInputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2UserInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaAddFulfillmentPlacesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaAddFulfillmentPlacesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaAddLocalInventoriesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaAddLocalInventoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaBigQueryOutputResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaCreateModelMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaExportErrorsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaExportMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaExportProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaExportUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaGcsOutputResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaImportCompletionDataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaImportErrorsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaImportMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaImportProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaImportUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaModel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaModelPageOptimizationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaModelServingConfigList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaOutputResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaPurgeMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaPurgeProductsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaPurgeProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaPurgeUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaRejoinUserEventsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaRejoinUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaRemoveFulfillmentPlacesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaRemoveFulfillmentPlacesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaRemoveLocalInventoriesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaRemoveLocalInventoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaSetInventoryMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaSetInventoryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaTransformedUserEventsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaTuneModelMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaTuneModelResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaUserEventImportSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaAddFulfillmentPlacesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaAddFulfillmentPlacesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaAddLocalInventoriesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaAddLocalInventoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaBigQueryOutputResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaCreateModelMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaExportErrorsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaExportMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaExportProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaExportUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaGcsOutputResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaImportCompletionDataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaImportErrorsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaImportMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaImportProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaImportUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaModel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaModelServingConfigList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaOutputResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaPurgeMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaPurgeUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaRejoinUserEventsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaRejoinUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaRemoveFulfillmentPlacesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaRemoveFulfillmentPlacesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaRemoveLocalInventoriesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaRemoveLocalInventoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaSetInventoryMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaSetInventoryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaTuneModelMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaTuneModelResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaUserEventImportSummary
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
      
      class GoogleTypeDate
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
      
      class GoogleCloudRetailLoggingErrorContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :http_request, as: 'httpRequest', class: Google::Apis::RetailV2::GoogleCloudRetailLoggingHttpRequestContext, decorator: Google::Apis::RetailV2::GoogleCloudRetailLoggingHttpRequestContext::Representation
      
          property :report_location, as: 'reportLocation', class: Google::Apis::RetailV2::GoogleCloudRetailLoggingSourceLocation, decorator: Google::Apis::RetailV2::GoogleCloudRetailLoggingSourceLocation::Representation
      
        end
      end
      
      class GoogleCloudRetailLoggingErrorLog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context, as: 'context', class: Google::Apis::RetailV2::GoogleCloudRetailLoggingErrorContext, decorator: Google::Apis::RetailV2::GoogleCloudRetailLoggingErrorContext::Representation
      
          property :import_payload, as: 'importPayload', class: Google::Apis::RetailV2::GoogleCloudRetailLoggingImportErrorContext, decorator: Google::Apis::RetailV2::GoogleCloudRetailLoggingImportErrorContext::Representation
      
          property :message, as: 'message'
          hash :request_payload, as: 'requestPayload'
          hash :response_payload, as: 'responsePayload'
          property :service_context, as: 'serviceContext', class: Google::Apis::RetailV2::GoogleCloudRetailLoggingServiceContext, decorator: Google::Apis::RetailV2::GoogleCloudRetailLoggingServiceContext::Representation
      
          property :status, as: 'status', class: Google::Apis::RetailV2::GoogleRpcStatus, decorator: Google::Apis::RetailV2::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudRetailLoggingHttpRequestContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :response_status_code, as: 'responseStatusCode'
        end
      end
      
      class GoogleCloudRetailLoggingImportErrorContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :catalog_item, as: 'catalogItem'
          property :gcs_path, as: 'gcsPath'
          property :line_number, as: 'lineNumber'
          property :operation_name, as: 'operationName'
          property :product, as: 'product'
          property :user_event, as: 'userEvent'
        end
      end
      
      class GoogleCloudRetailLoggingServiceContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service, as: 'service'
        end
      end
      
      class GoogleCloudRetailLoggingSourceLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :function_name, as: 'functionName'
        end
      end
      
      class GoogleCloudRetailV2AddCatalogAttributeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :catalog_attribute, as: 'catalogAttribute', class: Google::Apis::RetailV2::GoogleCloudRetailV2CatalogAttribute, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2CatalogAttribute::Representation
      
        end
      end
      
      class GoogleCloudRetailV2AddControlRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :control_id, as: 'controlId'
        end
      end
      
      class GoogleCloudRetailV2AddFulfillmentPlacesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2AddFulfillmentPlacesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :add_time, as: 'addTime'
          property :allow_missing, as: 'allowMissing'
          collection :place_ids, as: 'placeIds'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudRetailV2AddFulfillmentPlacesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2AddLocalInventoriesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2AddLocalInventoriesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :add_mask, as: 'addMask'
          property :add_time, as: 'addTime'
          property :allow_missing, as: 'allowMissing'
          collection :local_inventories, as: 'localInventories', class: Google::Apis::RetailV2::GoogleCloudRetailV2LocalInventory, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2LocalInventory::Representation
      
        end
      end
      
      class GoogleCloudRetailV2AddLocalInventoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2AttributesConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_config_level, as: 'attributeConfigLevel'
          hash :catalog_attributes, as: 'catalogAttributes', class: Google::Apis::RetailV2::GoogleCloudRetailV2CatalogAttribute, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2CatalogAttribute::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudRetailV2Audience
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :age_groups, as: 'ageGroups'
          collection :genders, as: 'genders'
        end
      end
      
      class GoogleCloudRetailV2BigQuerySource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_schema, as: 'dataSchema'
          property :dataset_id, as: 'datasetId'
          property :gcs_staging_dir, as: 'gcsStagingDir'
          property :partition_date, as: 'partitionDate', class: Google::Apis::RetailV2::GoogleTypeDate, decorator: Google::Apis::RetailV2::GoogleTypeDate::Representation
      
          property :project_id, as: 'projectId'
          property :table_id, as: 'tableId'
        end
      end
      
      class GoogleCloudRetailV2Catalog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :product_level_config, as: 'productLevelConfig', class: Google::Apis::RetailV2::GoogleCloudRetailV2ProductLevelConfig, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2ProductLevelConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2CatalogAttribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dynamic_facetable_option, as: 'dynamicFacetableOption'
          property :exact_searchable_option, as: 'exactSearchableOption'
          property :in_use, as: 'inUse'
          property :indexable_option, as: 'indexableOption'
          property :key, as: 'key'
          property :retrievable_option, as: 'retrievableOption'
          property :searchable_option, as: 'searchableOption'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudRetailV2ColorInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :color_families, as: 'colorFamilies'
          collection :colors, as: 'colors'
        end
      end
      
      class GoogleCloudRetailV2CompleteQueryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribution_token, as: 'attributionToken'
          collection :completion_results, as: 'completionResults', class: Google::Apis::RetailV2::GoogleCloudRetailV2CompleteQueryResponseCompletionResult, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2CompleteQueryResponseCompletionResult::Representation
      
          collection :recent_search_results, as: 'recentSearchResults', class: Google::Apis::RetailV2::GoogleCloudRetailV2CompleteQueryResponseRecentSearchResult, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2CompleteQueryResponseRecentSearchResult::Representation
      
        end
      end
      
      class GoogleCloudRetailV2CompleteQueryResponseCompletionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes', class: Google::Apis::RetailV2::GoogleCloudRetailV2CustomAttribute, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2CustomAttribute::Representation
      
          property :suggestion, as: 'suggestion'
        end
      end
      
      class GoogleCloudRetailV2CompleteQueryResponseRecentSearchResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :recent_search, as: 'recentSearch'
        end
      end
      
      class GoogleCloudRetailV2CompletionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allowlist_input_config, as: 'allowlistInputConfig', class: Google::Apis::RetailV2::GoogleCloudRetailV2CompletionDataInputConfig, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2CompletionDataInputConfig::Representation
      
          property :auto_learning, as: 'autoLearning'
          property :denylist_input_config, as: 'denylistInputConfig', class: Google::Apis::RetailV2::GoogleCloudRetailV2CompletionDataInputConfig, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2CompletionDataInputConfig::Representation
      
          property :last_allowlist_import_operation, as: 'lastAllowlistImportOperation'
          property :last_denylist_import_operation, as: 'lastDenylistImportOperation'
          property :last_suggestions_import_operation, as: 'lastSuggestionsImportOperation'
          property :matching_order, as: 'matchingOrder'
          property :max_suggestions, as: 'maxSuggestions'
          property :min_prefix_length, as: 'minPrefixLength'
          property :name, as: 'name'
          property :suggestions_input_config, as: 'suggestionsInputConfig', class: Google::Apis::RetailV2::GoogleCloudRetailV2CompletionDataInputConfig, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2CompletionDataInputConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2CompletionDataInputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :big_query_source, as: 'bigQuerySource', class: Google::Apis::RetailV2::GoogleCloudRetailV2BigQuerySource, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2BigQuerySource::Representation
      
        end
      end
      
      class GoogleCloudRetailV2CompletionDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :completion_attribution_token, as: 'completionAttributionToken'
          property :selected_position, as: 'selectedPosition'
          property :selected_suggestion, as: 'selectedSuggestion'
        end
      end
      
      class GoogleCloudRetailV2Condition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :active_time_range, as: 'activeTimeRange', class: Google::Apis::RetailV2::GoogleCloudRetailV2ConditionTimeRange, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2ConditionTimeRange::Representation
      
          collection :query_terms, as: 'queryTerms', class: Google::Apis::RetailV2::GoogleCloudRetailV2ConditionQueryTerm, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2ConditionQueryTerm::Representation
      
        end
      end
      
      class GoogleCloudRetailV2ConditionQueryTerm
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :full_match, as: 'fullMatch'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudRetailV2ConditionTimeRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudRetailV2Control
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :associated_serving_config_ids, as: 'associatedServingConfigIds'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :rule, as: 'rule', class: Google::Apis::RetailV2::GoogleCloudRetailV2Rule, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2Rule::Representation
      
          collection :search_solution_use_case, as: 'searchSolutionUseCase'
          collection :solution_types, as: 'solutionTypes'
        end
      end
      
      class GoogleCloudRetailV2CreateModelMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model, as: 'model'
        end
      end
      
      class GoogleCloudRetailV2CustomAttribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :indexable, as: 'indexable'
          collection :numbers, as: 'numbers'
          property :searchable, as: 'searchable'
          collection :text, as: 'text'
        end
      end
      
      class GoogleCloudRetailV2ExperimentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :experiment_name, as: 'experimentName'
          property :serving_config_experiment, as: 'servingConfigExperiment', class: Google::Apis::RetailV2::GoogleCloudRetailV2ExperimentInfoServingConfigExperiment, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2ExperimentInfoServingConfigExperiment::Representation
      
        end
      end
      
      class GoogleCloudRetailV2ExperimentInfoServingConfigExperiment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :experiment_serving_config, as: 'experimentServingConfig'
          property :original_serving_config, as: 'originalServingConfig'
        end
      end
      
      class GoogleCloudRetailV2FulfillmentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :place_ids, as: 'placeIds'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudRetailV2GcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_schema, as: 'dataSchema'
          collection :input_uris, as: 'inputUris'
        end
      end
      
      class GoogleCloudRetailV2GetDefaultBranchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :branch, as: 'branch'
          property :note, as: 'note'
          property :set_time, as: 'setTime'
        end
      end
      
      class GoogleCloudRetailV2Image
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :height, as: 'height'
          property :uri, as: 'uri'
          property :width, as: 'width'
        end
      end
      
      class GoogleCloudRetailV2ImportCompletionDataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_config, as: 'inputConfig', class: Google::Apis::RetailV2::GoogleCloudRetailV2CompletionDataInputConfig, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2CompletionDataInputConfig::Representation
      
          property :notification_pubsub_topic, as: 'notificationPubsubTopic'
        end
      end
      
      class GoogleCloudRetailV2ImportCompletionDataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2::GoogleRpcStatus, decorator: Google::Apis::RetailV2::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudRetailV2ImportErrorsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_prefix, as: 'gcsPrefix'
        end
      end
      
      class GoogleCloudRetailV2ImportMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :notification_pubsub_topic, as: 'notificationPubsubTopic'
          property :request_id, as: 'requestId'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudRetailV2ImportProductsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2::GoogleCloudRetailV2ImportErrorsConfig, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2ImportErrorsConfig::Representation
      
          property :input_config, as: 'inputConfig', class: Google::Apis::RetailV2::GoogleCloudRetailV2ProductInputConfig, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2ProductInputConfig::Representation
      
          property :notification_pubsub_topic, as: 'notificationPubsubTopic'
          property :reconciliation_mode, as: 'reconciliationMode'
          property :request_id, as: 'requestId'
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleCloudRetailV2ImportProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2::GoogleRpcStatus, decorator: Google::Apis::RetailV2::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2::GoogleCloudRetailV2ImportErrorsConfig, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2ImportErrorsConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2ImportUserEventsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2::GoogleCloudRetailV2ImportErrorsConfig, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2ImportErrorsConfig::Representation
      
          property :input_config, as: 'inputConfig', class: Google::Apis::RetailV2::GoogleCloudRetailV2UserEventInputConfig, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2UserEventInputConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2ImportUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2::GoogleRpcStatus, decorator: Google::Apis::RetailV2::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2::GoogleCloudRetailV2ImportErrorsConfig, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2ImportErrorsConfig::Representation
      
          property :import_summary, as: 'importSummary', class: Google::Apis::RetailV2::GoogleCloudRetailV2UserEventImportSummary, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2UserEventImportSummary::Representation
      
        end
      end
      
      class GoogleCloudRetailV2Interval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exclusive_maximum, as: 'exclusiveMaximum'
          property :exclusive_minimum, as: 'exclusiveMinimum'
          property :maximum, as: 'maximum'
          property :minimum, as: 'minimum'
        end
      end
      
      class GoogleCloudRetailV2ListCatalogsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :catalogs, as: 'catalogs', class: Google::Apis::RetailV2::GoogleCloudRetailV2Catalog, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2Catalog::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudRetailV2ListControlsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :controls, as: 'controls', class: Google::Apis::RetailV2::GoogleCloudRetailV2Control, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2Control::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudRetailV2ListModelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :models, as: 'models', class: Google::Apis::RetailV2::GoogleCloudRetailV2Model, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2Model::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudRetailV2ListProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :products, as: 'products', class: Google::Apis::RetailV2::GoogleCloudRetailV2Product, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2Product::Representation
      
        end
      end
      
      class GoogleCloudRetailV2ListServingConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :serving_configs, as: 'servingConfigs', class: Google::Apis::RetailV2::GoogleCloudRetailV2ServingConfig, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2ServingConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2LocalInventory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes', class: Google::Apis::RetailV2::GoogleCloudRetailV2CustomAttribute, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2CustomAttribute::Representation
      
          collection :fulfillment_types, as: 'fulfillmentTypes'
          property :place_id, as: 'placeId'
          property :price_info, as: 'priceInfo', class: Google::Apis::RetailV2::GoogleCloudRetailV2PriceInfo, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2PriceInfo::Representation
      
        end
      end
      
      class GoogleCloudRetailV2Model
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :data_state, as: 'dataState'
          property :display_name, as: 'displayName'
          property :filtering_option, as: 'filteringOption'
          property :last_tune_time, as: 'lastTuneTime'
          property :name, as: 'name'
          property :optimization_objective, as: 'optimizationObjective'
          property :periodic_tuning_state, as: 'periodicTuningState'
          collection :serving_config_lists, as: 'servingConfigLists', class: Google::Apis::RetailV2::GoogleCloudRetailV2ModelServingConfigList, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2ModelServingConfigList::Representation
      
          property :serving_state, as: 'servingState'
          property :training_state, as: 'trainingState'
          property :tuning_operation, as: 'tuningOperation'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudRetailV2ModelServingConfigList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :serving_config_ids, as: 'servingConfigIds'
        end
      end
      
      class GoogleCloudRetailV2PauseModelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2PredictRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          hash :labels, as: 'labels'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          hash :params, as: 'params'
          property :user_event, as: 'userEvent', class: Google::Apis::RetailV2::GoogleCloudRetailV2UserEvent, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2UserEvent::Representation
      
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class GoogleCloudRetailV2PredictResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribution_token, as: 'attributionToken'
          collection :missing_ids, as: 'missingIds'
          collection :results, as: 'results', class: Google::Apis::RetailV2::GoogleCloudRetailV2PredictResponsePredictionResult, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2PredictResponsePredictionResult::Representation
      
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class GoogleCloudRetailV2PredictResponsePredictionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :metadata, as: 'metadata'
        end
      end
      
      class GoogleCloudRetailV2PriceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cost, as: 'cost'
          property :currency_code, as: 'currencyCode'
          property :original_price, as: 'originalPrice'
          property :price, as: 'price'
          property :price_effective_time, as: 'priceEffectiveTime'
          property :price_expire_time, as: 'priceExpireTime'
          property :price_range, as: 'priceRange', class: Google::Apis::RetailV2::GoogleCloudRetailV2PriceInfoPriceRange, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2PriceInfoPriceRange::Representation
      
        end
      end
      
      class GoogleCloudRetailV2PriceInfoPriceRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :original_price, as: 'originalPrice', class: Google::Apis::RetailV2::GoogleCloudRetailV2Interval, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2Interval::Representation
      
          property :price, as: 'price', class: Google::Apis::RetailV2::GoogleCloudRetailV2Interval, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2Interval::Representation
      
        end
      end
      
      class GoogleCloudRetailV2Product
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes', class: Google::Apis::RetailV2::GoogleCloudRetailV2CustomAttribute, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2CustomAttribute::Representation
      
          property :audience, as: 'audience', class: Google::Apis::RetailV2::GoogleCloudRetailV2Audience, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2Audience::Representation
      
          property :availability, as: 'availability'
          property :available_quantity, as: 'availableQuantity'
          property :available_time, as: 'availableTime'
          collection :brands, as: 'brands'
          collection :categories, as: 'categories'
          collection :collection_member_ids, as: 'collectionMemberIds'
          property :color_info, as: 'colorInfo', class: Google::Apis::RetailV2::GoogleCloudRetailV2ColorInfo, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2ColorInfo::Representation
      
          collection :conditions, as: 'conditions'
          property :description, as: 'description'
          property :expire_time, as: 'expireTime'
          collection :fulfillment_info, as: 'fulfillmentInfo', class: Google::Apis::RetailV2::GoogleCloudRetailV2FulfillmentInfo, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2FulfillmentInfo::Representation
      
          property :gtin, as: 'gtin'
          property :id, as: 'id'
          collection :images, as: 'images', class: Google::Apis::RetailV2::GoogleCloudRetailV2Image, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2Image::Representation
      
          property :language_code, as: 'languageCode'
          collection :local_inventories, as: 'localInventories', class: Google::Apis::RetailV2::GoogleCloudRetailV2LocalInventory, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2LocalInventory::Representation
      
          collection :materials, as: 'materials'
          property :name, as: 'name'
          collection :patterns, as: 'patterns'
          property :price_info, as: 'priceInfo', class: Google::Apis::RetailV2::GoogleCloudRetailV2PriceInfo, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2PriceInfo::Representation
      
          property :primary_product_id, as: 'primaryProductId'
          collection :promotions, as: 'promotions', class: Google::Apis::RetailV2::GoogleCloudRetailV2Promotion, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2Promotion::Representation
      
          property :publish_time, as: 'publishTime'
          property :rating, as: 'rating', class: Google::Apis::RetailV2::GoogleCloudRetailV2Rating, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2Rating::Representation
      
          property :retrievable_fields, as: 'retrievableFields'
          collection :sizes, as: 'sizes'
          collection :tags, as: 'tags'
          property :title, as: 'title'
          property :ttl, as: 'ttl'
          property :type, as: 'type'
          property :uri, as: 'uri'
          collection :variants, as: 'variants', class: Google::Apis::RetailV2::GoogleCloudRetailV2Product, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2Product::Representation
      
        end
      end
      
      class GoogleCloudRetailV2ProductDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :product, as: 'product', class: Google::Apis::RetailV2::GoogleCloudRetailV2Product, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2Product::Representation
      
          property :quantity, as: 'quantity'
        end
      end
      
      class GoogleCloudRetailV2ProductInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :products, as: 'products', class: Google::Apis::RetailV2::GoogleCloudRetailV2Product, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2Product::Representation
      
        end
      end
      
      class GoogleCloudRetailV2ProductInputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :big_query_source, as: 'bigQuerySource', class: Google::Apis::RetailV2::GoogleCloudRetailV2BigQuerySource, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2BigQuerySource::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::RetailV2::GoogleCloudRetailV2GcsSource, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2GcsSource::Representation
      
          property :product_inline_source, as: 'productInlineSource', class: Google::Apis::RetailV2::GoogleCloudRetailV2ProductInlineSource, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2ProductInlineSource::Representation
      
        end
      end
      
      class GoogleCloudRetailV2ProductLevelConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ingestion_product_type, as: 'ingestionProductType'
          property :merchant_center_product_id_field, as: 'merchantCenterProductIdField'
        end
      end
      
      class GoogleCloudRetailV2Promotion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :promotion_id, as: 'promotionId'
        end
      end
      
      class GoogleCloudRetailV2PurchaseTransaction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cost, as: 'cost'
          property :currency_code, as: 'currencyCode'
          property :id, as: 'id'
          property :revenue, as: 'revenue'
          property :tax, as: 'tax'
        end
      end
      
      class GoogleCloudRetailV2PurgeMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2PurgeUserEventsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :force, as: 'force'
        end
      end
      
      class GoogleCloudRetailV2PurgeUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :purged_events_count, :numeric_string => true, as: 'purgedEventsCount'
        end
      end
      
      class GoogleCloudRetailV2Rating
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :average_rating, as: 'averageRating'
          property :rating_count, as: 'ratingCount'
          collection :rating_histogram, as: 'ratingHistogram'
        end
      end
      
      class GoogleCloudRetailV2RejoinUserEventsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2RejoinUserEventsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :user_event_rejoin_scope, as: 'userEventRejoinScope'
        end
      end
      
      class GoogleCloudRetailV2RejoinUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rejoined_user_events_count, :numeric_string => true, as: 'rejoinedUserEventsCount'
        end
      end
      
      class GoogleCloudRetailV2RemoveCatalogAttributeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
        end
      end
      
      class GoogleCloudRetailV2RemoveControlRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :control_id, as: 'controlId'
        end
      end
      
      class GoogleCloudRetailV2RemoveFulfillmentPlacesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2RemoveFulfillmentPlacesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_missing, as: 'allowMissing'
          collection :place_ids, as: 'placeIds'
          property :remove_time, as: 'removeTime'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudRetailV2RemoveFulfillmentPlacesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2RemoveLocalInventoriesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2RemoveLocalInventoriesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_missing, as: 'allowMissing'
          collection :place_ids, as: 'placeIds'
          property :remove_time, as: 'removeTime'
        end
      end
      
      class GoogleCloudRetailV2RemoveLocalInventoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2ReplaceCatalogAttributeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :catalog_attribute, as: 'catalogAttribute', class: Google::Apis::RetailV2::GoogleCloudRetailV2CatalogAttribute, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2CatalogAttribute::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleCloudRetailV2ResumeModelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2Rule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost_action, as: 'boostAction', class: Google::Apis::RetailV2::GoogleCloudRetailV2RuleBoostAction, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2RuleBoostAction::Representation
      
          property :condition, as: 'condition', class: Google::Apis::RetailV2::GoogleCloudRetailV2Condition, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2Condition::Representation
      
          property :do_not_associate_action, as: 'doNotAssociateAction', class: Google::Apis::RetailV2::GoogleCloudRetailV2RuleDoNotAssociateAction, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2RuleDoNotAssociateAction::Representation
      
          property :filter_action, as: 'filterAction', class: Google::Apis::RetailV2::GoogleCloudRetailV2RuleFilterAction, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2RuleFilterAction::Representation
      
          property :ignore_action, as: 'ignoreAction', class: Google::Apis::RetailV2::GoogleCloudRetailV2RuleIgnoreAction, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2RuleIgnoreAction::Representation
      
          property :oneway_synonyms_action, as: 'onewaySynonymsAction', class: Google::Apis::RetailV2::GoogleCloudRetailV2RuleOnewaySynonymsAction, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2RuleOnewaySynonymsAction::Representation
      
          property :redirect_action, as: 'redirectAction', class: Google::Apis::RetailV2::GoogleCloudRetailV2RuleRedirectAction, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2RuleRedirectAction::Representation
      
          property :replacement_action, as: 'replacementAction', class: Google::Apis::RetailV2::GoogleCloudRetailV2RuleReplacementAction, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2RuleReplacementAction::Representation
      
          property :twoway_synonyms_action, as: 'twowaySynonymsAction', class: Google::Apis::RetailV2::GoogleCloudRetailV2RuleTwowaySynonymsAction, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2RuleTwowaySynonymsAction::Representation
      
        end
      end
      
      class GoogleCloudRetailV2RuleBoostAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost, as: 'boost'
          property :products_filter, as: 'productsFilter'
        end
      end
      
      class GoogleCloudRetailV2RuleDoNotAssociateAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :do_not_associate_terms, as: 'doNotAssociateTerms'
          collection :query_terms, as: 'queryTerms'
          collection :terms, as: 'terms'
        end
      end
      
      class GoogleCloudRetailV2RuleFilterAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
        end
      end
      
      class GoogleCloudRetailV2RuleIgnoreAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ignore_terms, as: 'ignoreTerms'
        end
      end
      
      class GoogleCloudRetailV2RuleOnewaySynonymsAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :oneway_terms, as: 'onewayTerms'
          collection :query_terms, as: 'queryTerms'
          collection :synonyms, as: 'synonyms'
        end
      end
      
      class GoogleCloudRetailV2RuleRedirectAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :redirect_uri, as: 'redirectUri'
        end
      end
      
      class GoogleCloudRetailV2RuleReplacementAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :query_terms, as: 'queryTerms'
          property :replacement_term, as: 'replacementTerm'
          property :term, as: 'term'
        end
      end
      
      class GoogleCloudRetailV2RuleTwowaySynonymsAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :synonyms, as: 'synonyms'
        end
      end
      
      class GoogleCloudRetailV2SearchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost_spec, as: 'boostSpec', class: Google::Apis::RetailV2::GoogleCloudRetailV2SearchRequestBoostSpec, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2SearchRequestBoostSpec::Representation
      
          property :branch, as: 'branch'
          property :canonical_filter, as: 'canonicalFilter'
          property :dynamic_facet_spec, as: 'dynamicFacetSpec', class: Google::Apis::RetailV2::GoogleCloudRetailV2SearchRequestDynamicFacetSpec, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2SearchRequestDynamicFacetSpec::Representation
      
          collection :facet_specs, as: 'facetSpecs', class: Google::Apis::RetailV2::GoogleCloudRetailV2SearchRequestFacetSpec, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2SearchRequestFacetSpec::Representation
      
          property :filter, as: 'filter'
          hash :labels, as: 'labels'
          property :offset, as: 'offset'
          property :order_by, as: 'orderBy'
          collection :page_categories, as: 'pageCategories'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :personalization_spec, as: 'personalizationSpec', class: Google::Apis::RetailV2::GoogleCloudRetailV2SearchRequestPersonalizationSpec, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2SearchRequestPersonalizationSpec::Representation
      
          property :query, as: 'query'
          property :query_expansion_spec, as: 'queryExpansionSpec', class: Google::Apis::RetailV2::GoogleCloudRetailV2SearchRequestQueryExpansionSpec, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2SearchRequestQueryExpansionSpec::Representation
      
          property :search_mode, as: 'searchMode'
          property :spell_correction_spec, as: 'spellCorrectionSpec', class: Google::Apis::RetailV2::GoogleCloudRetailV2SearchRequestSpellCorrectionSpec, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2SearchRequestSpellCorrectionSpec::Representation
      
          property :user_info, as: 'userInfo', class: Google::Apis::RetailV2::GoogleCloudRetailV2UserInfo, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2UserInfo::Representation
      
          collection :variant_rollup_keys, as: 'variantRollupKeys'
          property :visitor_id, as: 'visitorId'
        end
      end
      
      class GoogleCloudRetailV2SearchRequestBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :condition_boost_specs, as: 'conditionBoostSpecs', class: Google::Apis::RetailV2::GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec::Representation
      
          property :skip_boost_spec_validation, as: 'skipBoostSpecValidation'
        end
      end
      
      class GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost, as: 'boost'
          property :condition, as: 'condition'
        end
      end
      
      class GoogleCloudRetailV2SearchRequestDynamicFacetSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
        end
      end
      
      class GoogleCloudRetailV2SearchRequestFacetSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_dynamic_position, as: 'enableDynamicPosition'
          collection :excluded_filter_keys, as: 'excludedFilterKeys'
          property :facet_key, as: 'facetKey', class: Google::Apis::RetailV2::GoogleCloudRetailV2SearchRequestFacetSpecFacetKey, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2SearchRequestFacetSpecFacetKey::Representation
      
          property :limit, as: 'limit'
        end
      end
      
      class GoogleCloudRetailV2SearchRequestFacetSpecFacetKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :case_insensitive, as: 'caseInsensitive'
          collection :contains, as: 'contains'
          collection :intervals, as: 'intervals', class: Google::Apis::RetailV2::GoogleCloudRetailV2Interval, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2Interval::Representation
      
          property :key, as: 'key'
          property :order_by, as: 'orderBy'
          collection :prefixes, as: 'prefixes'
          property :query, as: 'query'
          collection :restricted_values, as: 'restrictedValues'
          property :return_min_max, as: 'returnMinMax'
        end
      end
      
      class GoogleCloudRetailV2SearchRequestPersonalizationSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
        end
      end
      
      class GoogleCloudRetailV2SearchRequestQueryExpansionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition'
          property :pin_unexpanded_results, as: 'pinUnexpandedResults'
        end
      end
      
      class GoogleCloudRetailV2SearchRequestSpellCorrectionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
        end
      end
      
      class GoogleCloudRetailV2SearchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :applied_controls, as: 'appliedControls'
          property :attribution_token, as: 'attributionToken'
          property :corrected_query, as: 'correctedQuery'
          collection :experiment_info, as: 'experimentInfo', class: Google::Apis::RetailV2::GoogleCloudRetailV2ExperimentInfo, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2ExperimentInfo::Representation
      
          collection :facets, as: 'facets', class: Google::Apis::RetailV2::GoogleCloudRetailV2SearchResponseFacet, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2SearchResponseFacet::Representation
      
          collection :invalid_condition_boost_specs, as: 'invalidConditionBoostSpecs', class: Google::Apis::RetailV2::GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :query_expansion_info, as: 'queryExpansionInfo', class: Google::Apis::RetailV2::GoogleCloudRetailV2SearchResponseQueryExpansionInfo, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2SearchResponseQueryExpansionInfo::Representation
      
          property :redirect_uri, as: 'redirectUri'
          collection :results, as: 'results', class: Google::Apis::RetailV2::GoogleCloudRetailV2SearchResponseSearchResult, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2SearchResponseSearchResult::Representation
      
          property :total_size, as: 'totalSize'
        end
      end
      
      class GoogleCloudRetailV2SearchResponseFacet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dynamic_facet, as: 'dynamicFacet'
          property :key, as: 'key'
          collection :values, as: 'values', class: Google::Apis::RetailV2::GoogleCloudRetailV2SearchResponseFacetFacetValue, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2SearchResponseFacetFacetValue::Representation
      
        end
      end
      
      class GoogleCloudRetailV2SearchResponseFacetFacetValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :interval, as: 'interval', class: Google::Apis::RetailV2::GoogleCloudRetailV2Interval, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2Interval::Representation
      
          property :max_value, as: 'maxValue'
          property :min_value, as: 'minValue'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudRetailV2SearchResponseQueryExpansionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expanded_query, as: 'expandedQuery'
          property :pinned_result_count, :numeric_string => true, as: 'pinnedResultCount'
        end
      end
      
      class GoogleCloudRetailV2SearchResponseSearchResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :matching_variant_count, as: 'matchingVariantCount'
          hash :matching_variant_fields, as: 'matchingVariantFields'
          collection :personal_labels, as: 'personalLabels'
          property :product, as: 'product', class: Google::Apis::RetailV2::GoogleCloudRetailV2Product, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2Product::Representation
      
          hash :variant_rollup_values, as: 'variantRollupValues'
        end
      end
      
      class GoogleCloudRetailV2ServingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :boost_control_ids, as: 'boostControlIds'
          property :display_name, as: 'displayName'
          property :diversity_level, as: 'diversityLevel'
          property :diversity_type, as: 'diversityType'
          collection :do_not_associate_control_ids, as: 'doNotAssociateControlIds'
          property :dynamic_facet_spec, as: 'dynamicFacetSpec', class: Google::Apis::RetailV2::GoogleCloudRetailV2SearchRequestDynamicFacetSpec, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2SearchRequestDynamicFacetSpec::Representation
      
          property :enable_category_filter_level, as: 'enableCategoryFilterLevel'
          collection :facet_control_ids, as: 'facetControlIds'
          collection :filter_control_ids, as: 'filterControlIds'
          collection :ignore_control_ids, as: 'ignoreControlIds'
          property :model_id, as: 'modelId'
          property :name, as: 'name'
          collection :oneway_synonyms_control_ids, as: 'onewaySynonymsControlIds'
          property :personalization_spec, as: 'personalizationSpec', class: Google::Apis::RetailV2::GoogleCloudRetailV2SearchRequestPersonalizationSpec, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2SearchRequestPersonalizationSpec::Representation
      
          property :price_reranking_level, as: 'priceRerankingLevel'
          collection :redirect_control_ids, as: 'redirectControlIds'
          collection :replacement_control_ids, as: 'replacementControlIds'
          collection :solution_types, as: 'solutionTypes'
          collection :twoway_synonyms_control_ids, as: 'twowaySynonymsControlIds'
        end
      end
      
      class GoogleCloudRetailV2SetDefaultBranchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :branch_id, as: 'branchId'
          property :force, as: 'force'
          property :note, as: 'note'
        end
      end
      
      class GoogleCloudRetailV2SetInventoryMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2SetInventoryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_missing, as: 'allowMissing'
          property :inventory, as: 'inventory', class: Google::Apis::RetailV2::GoogleCloudRetailV2Product, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2Product::Representation
      
          property :set_mask, as: 'setMask'
          property :set_time, as: 'setTime'
        end
      end
      
      class GoogleCloudRetailV2SetInventoryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2TuneModelMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model, as: 'model'
        end
      end
      
      class GoogleCloudRetailV2TuneModelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2TuneModelResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2UserEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes', class: Google::Apis::RetailV2::GoogleCloudRetailV2CustomAttribute, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2CustomAttribute::Representation
      
          property :attribution_token, as: 'attributionToken'
          property :cart_id, as: 'cartId'
          property :completion_detail, as: 'completionDetail', class: Google::Apis::RetailV2::GoogleCloudRetailV2CompletionDetail, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2CompletionDetail::Representation
      
          property :event_time, as: 'eventTime'
          property :event_type, as: 'eventType'
          collection :experiment_ids, as: 'experimentIds'
          property :filter, as: 'filter'
          property :offset, as: 'offset'
          property :order_by, as: 'orderBy'
          collection :page_categories, as: 'pageCategories'
          property :page_view_id, as: 'pageViewId'
          collection :product_details, as: 'productDetails', class: Google::Apis::RetailV2::GoogleCloudRetailV2ProductDetail, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2ProductDetail::Representation
      
          property :purchase_transaction, as: 'purchaseTransaction', class: Google::Apis::RetailV2::GoogleCloudRetailV2PurchaseTransaction, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2PurchaseTransaction::Representation
      
          property :referrer_uri, as: 'referrerUri'
          property :search_query, as: 'searchQuery'
          property :session_id, as: 'sessionId'
          property :uri, as: 'uri'
          property :user_info, as: 'userInfo', class: Google::Apis::RetailV2::GoogleCloudRetailV2UserInfo, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2UserInfo::Representation
      
          property :visitor_id, as: 'visitorId'
        end
      end
      
      class GoogleCloudRetailV2UserEventImportSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :joined_events_count, :numeric_string => true, as: 'joinedEventsCount'
          property :unjoined_events_count, :numeric_string => true, as: 'unjoinedEventsCount'
        end
      end
      
      class GoogleCloudRetailV2UserEventInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :user_events, as: 'userEvents', class: Google::Apis::RetailV2::GoogleCloudRetailV2UserEvent, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2UserEvent::Representation
      
        end
      end
      
      class GoogleCloudRetailV2UserEventInputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :big_query_source, as: 'bigQuerySource', class: Google::Apis::RetailV2::GoogleCloudRetailV2BigQuerySource, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2BigQuerySource::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::RetailV2::GoogleCloudRetailV2GcsSource, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2GcsSource::Representation
      
          property :user_event_inline_source, as: 'userEventInlineSource', class: Google::Apis::RetailV2::GoogleCloudRetailV2UserEventInlineSource, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2UserEventInlineSource::Representation
      
        end
      end
      
      class GoogleCloudRetailV2UserInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :direct_user_request, as: 'directUserRequest'
          property :ip_address, as: 'ipAddress'
          property :user_agent, as: 'userAgent'
          property :user_id, as: 'userId'
        end
      end
      
      class GoogleCloudRetailV2alphaAddFulfillmentPlacesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2alphaAddFulfillmentPlacesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2alphaAddLocalInventoriesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2alphaAddLocalInventoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2alphaBigQueryOutputResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_id, as: 'datasetId'
          property :table_id, as: 'tableId'
        end
      end
      
      class GoogleCloudRetailV2alphaCreateModelMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model, as: 'model'
        end
      end
      
      class GoogleCloudRetailV2alphaExportErrorsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_prefix, as: 'gcsPrefix'
        end
      end
      
      class GoogleCloudRetailV2alphaExportMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudRetailV2alphaExportProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2::GoogleRpcStatus, decorator: Google::Apis::RetailV2::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2::GoogleCloudRetailV2alphaExportErrorsConfig, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2alphaExportErrorsConfig::Representation
      
          property :output_result, as: 'outputResult', class: Google::Apis::RetailV2::GoogleCloudRetailV2alphaOutputResult, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2alphaOutputResult::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaExportUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2::GoogleRpcStatus, decorator: Google::Apis::RetailV2::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2::GoogleCloudRetailV2alphaExportErrorsConfig, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2alphaExportErrorsConfig::Representation
      
          property :output_result, as: 'outputResult', class: Google::Apis::RetailV2::GoogleCloudRetailV2alphaOutputResult, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2alphaOutputResult::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaGcsOutputResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :output_uri, as: 'outputUri'
        end
      end
      
      class GoogleCloudRetailV2alphaImportCompletionDataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2::GoogleRpcStatus, decorator: Google::Apis::RetailV2::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaImportErrorsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_prefix, as: 'gcsPrefix'
        end
      end
      
      class GoogleCloudRetailV2alphaImportMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :notification_pubsub_topic, as: 'notificationPubsubTopic'
          property :request_id, as: 'requestId'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :transformed_user_events_metadata, as: 'transformedUserEventsMetadata', class: Google::Apis::RetailV2::GoogleCloudRetailV2alphaTransformedUserEventsMetadata, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2alphaTransformedUserEventsMetadata::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudRetailV2alphaImportProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2::GoogleRpcStatus, decorator: Google::Apis::RetailV2::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2::GoogleCloudRetailV2alphaImportErrorsConfig, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2alphaImportErrorsConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaImportUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2::GoogleRpcStatus, decorator: Google::Apis::RetailV2::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2::GoogleCloudRetailV2alphaImportErrorsConfig, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2alphaImportErrorsConfig::Representation
      
          property :import_summary, as: 'importSummary', class: Google::Apis::RetailV2::GoogleCloudRetailV2alphaUserEventImportSummary, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2alphaUserEventImportSummary::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaModel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :data_state, as: 'dataState'
          property :display_name, as: 'displayName'
          property :filtering_option, as: 'filteringOption'
          property :last_tune_time, as: 'lastTuneTime'
          property :name, as: 'name'
          property :optimization_objective, as: 'optimizationObjective'
          property :page_optimization_config, as: 'pageOptimizationConfig', class: Google::Apis::RetailV2::GoogleCloudRetailV2alphaModelPageOptimizationConfig, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2alphaModelPageOptimizationConfig::Representation
      
          property :periodic_tuning_state, as: 'periodicTuningState'
          collection :serving_config_lists, as: 'servingConfigLists', class: Google::Apis::RetailV2::GoogleCloudRetailV2alphaModelServingConfigList, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2alphaModelServingConfigList::Representation
      
          property :serving_state, as: 'servingState'
          property :training_state, as: 'trainingState'
          property :tuning_operation, as: 'tuningOperation'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudRetailV2alphaModelPageOptimizationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :page_optimization_event_type, as: 'pageOptimizationEventType'
          collection :panels, as: 'panels', class: Google::Apis::RetailV2::GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel::Representation
      
          property :restriction, as: 'restriction'
        end
      end
      
      class GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :serving_config_id, as: 'servingConfigId'
        end
      end
      
      class GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :candidates, as: 'candidates', class: Google::Apis::RetailV2::GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate::Representation
      
          property :default_candidate, as: 'defaultCandidate', class: Google::Apis::RetailV2::GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate::Representation
      
          property :display_name, as: 'displayName'
        end
      end
      
      class GoogleCloudRetailV2alphaModelServingConfigList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :serving_config_ids, as: 'servingConfigIds'
        end
      end
      
      class GoogleCloudRetailV2alphaOutputResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bigquery_result, as: 'bigqueryResult', class: Google::Apis::RetailV2::GoogleCloudRetailV2alphaBigQueryOutputResult, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2alphaBigQueryOutputResult::Representation
      
          collection :gcs_result, as: 'gcsResult', class: Google::Apis::RetailV2::GoogleCloudRetailV2alphaGcsOutputResult, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2alphaGcsOutputResult::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaPurgeMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2alphaPurgeProductsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudRetailV2alphaPurgeProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :purge_count, :numeric_string => true, as: 'purgeCount'
          collection :purge_sample, as: 'purgeSample'
        end
      end
      
      class GoogleCloudRetailV2alphaPurgeUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :purged_events_count, :numeric_string => true, as: 'purgedEventsCount'
        end
      end
      
      class GoogleCloudRetailV2alphaRejoinUserEventsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2alphaRejoinUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rejoined_user_events_count, :numeric_string => true, as: 'rejoinedUserEventsCount'
        end
      end
      
      class GoogleCloudRetailV2alphaRemoveFulfillmentPlacesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2alphaRemoveFulfillmentPlacesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2alphaRemoveLocalInventoriesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2alphaRemoveLocalInventoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2alphaSetInventoryMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2alphaSetInventoryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2alphaTransformedUserEventsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source_events_count, :numeric_string => true, as: 'sourceEventsCount'
          property :transformed_events_count, :numeric_string => true, as: 'transformedEventsCount'
        end
      end
      
      class GoogleCloudRetailV2alphaTuneModelMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model, as: 'model'
        end
      end
      
      class GoogleCloudRetailV2alphaTuneModelResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2alphaUserEventImportSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :joined_events_count, :numeric_string => true, as: 'joinedEventsCount'
          property :unjoined_events_count, :numeric_string => true, as: 'unjoinedEventsCount'
        end
      end
      
      class GoogleCloudRetailV2betaAddFulfillmentPlacesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaAddFulfillmentPlacesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaAddLocalInventoriesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaAddLocalInventoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaBigQueryOutputResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_id, as: 'datasetId'
          property :table_id, as: 'tableId'
        end
      end
      
      class GoogleCloudRetailV2betaCreateModelMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model, as: 'model'
        end
      end
      
      class GoogleCloudRetailV2betaExportErrorsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_prefix, as: 'gcsPrefix'
        end
      end
      
      class GoogleCloudRetailV2betaExportMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudRetailV2betaExportProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2::GoogleRpcStatus, decorator: Google::Apis::RetailV2::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2::GoogleCloudRetailV2betaExportErrorsConfig, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2betaExportErrorsConfig::Representation
      
          property :output_result, as: 'outputResult', class: Google::Apis::RetailV2::GoogleCloudRetailV2betaOutputResult, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2betaOutputResult::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaExportUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2::GoogleRpcStatus, decorator: Google::Apis::RetailV2::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2::GoogleCloudRetailV2betaExportErrorsConfig, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2betaExportErrorsConfig::Representation
      
          property :output_result, as: 'outputResult', class: Google::Apis::RetailV2::GoogleCloudRetailV2betaOutputResult, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2betaOutputResult::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaGcsOutputResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :output_uri, as: 'outputUri'
        end
      end
      
      class GoogleCloudRetailV2betaImportCompletionDataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2::GoogleRpcStatus, decorator: Google::Apis::RetailV2::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaImportErrorsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_prefix, as: 'gcsPrefix'
        end
      end
      
      class GoogleCloudRetailV2betaImportMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :notification_pubsub_topic, as: 'notificationPubsubTopic'
          property :request_id, as: 'requestId'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudRetailV2betaImportProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2::GoogleRpcStatus, decorator: Google::Apis::RetailV2::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2::GoogleCloudRetailV2betaImportErrorsConfig, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2betaImportErrorsConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaImportUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2::GoogleRpcStatus, decorator: Google::Apis::RetailV2::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2::GoogleCloudRetailV2betaImportErrorsConfig, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2betaImportErrorsConfig::Representation
      
          property :import_summary, as: 'importSummary', class: Google::Apis::RetailV2::GoogleCloudRetailV2betaUserEventImportSummary, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2betaUserEventImportSummary::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaModel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :data_state, as: 'dataState'
          property :display_name, as: 'displayName'
          property :filtering_option, as: 'filteringOption'
          property :last_tune_time, as: 'lastTuneTime'
          property :name, as: 'name'
          property :optimization_objective, as: 'optimizationObjective'
          property :periodic_tuning_state, as: 'periodicTuningState'
          collection :serving_config_lists, as: 'servingConfigLists', class: Google::Apis::RetailV2::GoogleCloudRetailV2betaModelServingConfigList, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2betaModelServingConfigList::Representation
      
          property :serving_state, as: 'servingState'
          property :training_state, as: 'trainingState'
          property :tuning_operation, as: 'tuningOperation'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudRetailV2betaModelServingConfigList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :serving_config_ids, as: 'servingConfigIds'
        end
      end
      
      class GoogleCloudRetailV2betaOutputResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bigquery_result, as: 'bigqueryResult', class: Google::Apis::RetailV2::GoogleCloudRetailV2betaBigQueryOutputResult, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2betaBigQueryOutputResult::Representation
      
          collection :gcs_result, as: 'gcsResult', class: Google::Apis::RetailV2::GoogleCloudRetailV2betaGcsOutputResult, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2betaGcsOutputResult::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaPurgeMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaPurgeUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :purged_events_count, :numeric_string => true, as: 'purgedEventsCount'
        end
      end
      
      class GoogleCloudRetailV2betaRejoinUserEventsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaRejoinUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rejoined_user_events_count, :numeric_string => true, as: 'rejoinedUserEventsCount'
        end
      end
      
      class GoogleCloudRetailV2betaRemoveFulfillmentPlacesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaRemoveFulfillmentPlacesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaRemoveLocalInventoriesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaRemoveLocalInventoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaSetInventoryMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaSetInventoryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaTuneModelMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model, as: 'model'
        end
      end
      
      class GoogleCloudRetailV2betaTuneModelResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaUserEventImportSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :joined_events_count, :numeric_string => true, as: 'joinedEventsCount'
          property :unjoined_events_count, :numeric_string => true, as: 'unjoinedEventsCount'
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::RetailV2::GoogleLongrunningOperation, decorator: Google::Apis::RetailV2::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::RetailV2::GoogleRpcStatus, decorator: Google::Apis::RetailV2::GoogleRpcStatus::Representation
      
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
      
      class GoogleTypeDate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
    end
  end
end
