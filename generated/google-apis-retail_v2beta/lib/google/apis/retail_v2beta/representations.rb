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
    module RetailV2beta
      
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
      
      class GoogleCloudRetailV2AddFulfillmentPlacesMetadata
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
      
      class GoogleCloudRetailV2AddLocalInventoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2CreateModelMetadata
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
      
      class GoogleCloudRetailV2ImportProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ImportUserEventsResponse
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
      
      class GoogleCloudRetailV2PurgeMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2PurgeUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2RejoinUserEventsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2RejoinUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2RemoveFulfillmentPlacesMetadata
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
      
      class GoogleCloudRetailV2RemoveLocalInventoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2SetInventoryMetadata
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
      
      class GoogleCloudRetailV2TuneModelResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2UserEventImportSummary
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
      
      class GoogleCloudRetailV2betaAddCatalogAttributeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaAddControlRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaAddFulfillmentPlacesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaAddFulfillmentPlacesRequest
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
      
      class GoogleCloudRetailV2betaAddLocalInventoriesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaAddLocalInventoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaAttributesConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaAudience
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaBatchRemoveCatalogAttributesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaBatchRemoveCatalogAttributesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaBigQueryOutputResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaBigQuerySource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaCatalog
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaCatalogAttribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaColorInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaCompleteQueryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaCompleteQueryResponseCompletionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaCompleteQueryResponseRecentSearchResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaCompletionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaCompletionDataInputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaCompletionDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaConditionQueryTerm
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaConditionTimeRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaControl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaCreateModelMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaCustomAttribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaExperimentInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaExperimentInfoServingConfigExperiment
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
      
      class GoogleCloudRetailV2betaFulfillmentInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaGcsOutputResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaGcsSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaGetDefaultBranchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaImage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaImportCompletionDataRequest
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
      
      class GoogleCloudRetailV2betaImportProductsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaImportProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaImportUserEventsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaImportUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaInterval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaListCatalogsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaListControlsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaListModelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaListProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaListServingConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaLocalInventory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaMerchantCenterFeedFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaMerchantCenterLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaMerchantCenterLinkingConfig
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
      
      class GoogleCloudRetailV2betaPauseModelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaPredictRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaPredictResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaPredictResponsePredictionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaPriceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaPriceInfoPriceRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaProduct
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaProductDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaProductInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaProductInputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaProductLevelConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaPromotion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaPurchaseTransaction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaPurgeMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaPurgeUserEventsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaPurgeUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaRating
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaRejoinUserEventsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaRejoinUserEventsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaRejoinUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaRemoveCatalogAttributeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaRemoveControlRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaRemoveFulfillmentPlacesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaRemoveFulfillmentPlacesRequest
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
      
      class GoogleCloudRetailV2betaRemoveLocalInventoriesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaRemoveLocalInventoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaReplaceCatalogAttributeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaResumeModelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaRuleBoostAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaRuleDoNotAssociateAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaRuleFilterAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaRuleIgnoreAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaRuleOnewaySynonymsAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaRuleRedirectAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaRuleReplacementAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaRuleTwowaySynonymsAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaSearchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaSearchRequestBoostSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaSearchRequestDynamicFacetSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaSearchRequestFacetSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaSearchRequestFacetSpecFacetKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaSearchRequestPersonalizationSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaSearchRequestQueryExpansionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaSearchRequestSpellCorrectionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaSearchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaSearchResponseFacet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaSearchResponseFacetFacetValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaSearchResponseQueryExpansionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaSearchResponseSearchResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaServingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaSetDefaultBranchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaSetInventoryMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaSetInventoryRequest
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
      
      class GoogleCloudRetailV2betaTuneModelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaTuneModelResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaUserEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaUserEventImportSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaUserEventInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaUserEventInputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaUserInfo
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
          property :http_request, as: 'httpRequest', class: Google::Apis::RetailV2beta::GoogleCloudRetailLoggingHttpRequestContext, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailLoggingHttpRequestContext::Representation
      
          property :report_location, as: 'reportLocation', class: Google::Apis::RetailV2beta::GoogleCloudRetailLoggingSourceLocation, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailLoggingSourceLocation::Representation
      
        end
      end
      
      class GoogleCloudRetailLoggingErrorLog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context, as: 'context', class: Google::Apis::RetailV2beta::GoogleCloudRetailLoggingErrorContext, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailLoggingErrorContext::Representation
      
          property :import_payload, as: 'importPayload', class: Google::Apis::RetailV2beta::GoogleCloudRetailLoggingImportErrorContext, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailLoggingImportErrorContext::Representation
      
          property :message, as: 'message'
          hash :request_payload, as: 'requestPayload'
          hash :response_payload, as: 'responsePayload'
          property :service_context, as: 'serviceContext', class: Google::Apis::RetailV2beta::GoogleCloudRetailLoggingServiceContext, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailLoggingServiceContext::Representation
      
          property :status, as: 'status', class: Google::Apis::RetailV2beta::GoogleRpcStatus, decorator: Google::Apis::RetailV2beta::GoogleRpcStatus::Representation
      
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
      
      class GoogleCloudRetailV2AddFulfillmentPlacesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
      
      class GoogleCloudRetailV2AddLocalInventoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2CreateModelMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model, as: 'model'
        end
      end
      
      class GoogleCloudRetailV2ImportCompletionDataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2beta::GoogleRpcStatus, decorator: Google::Apis::RetailV2beta::GoogleRpcStatus::Representation
      
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
      
      class GoogleCloudRetailV2ImportProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2beta::GoogleRpcStatus, decorator: Google::Apis::RetailV2beta::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2ImportErrorsConfig, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2ImportErrorsConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2ImportUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2beta::GoogleRpcStatus, decorator: Google::Apis::RetailV2beta::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2ImportErrorsConfig, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2ImportErrorsConfig::Representation
      
          property :import_summary, as: 'importSummary', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2UserEventImportSummary, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2UserEventImportSummary::Representation
      
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
          collection :serving_config_lists, as: 'servingConfigLists', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2ModelServingConfigList, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2ModelServingConfigList::Representation
      
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
      
      class GoogleCloudRetailV2PurgeMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2PurgeUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :purged_events_count, :numeric_string => true, as: 'purgedEventsCount'
        end
      end
      
      class GoogleCloudRetailV2RejoinUserEventsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2RejoinUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rejoined_user_events_count, :numeric_string => true, as: 'rejoinedUserEventsCount'
        end
      end
      
      class GoogleCloudRetailV2RemoveFulfillmentPlacesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
      
      class GoogleCloudRetailV2RemoveLocalInventoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2SetInventoryMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
      
      class GoogleCloudRetailV2TuneModelResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2UserEventImportSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :joined_events_count, :numeric_string => true, as: 'joinedEventsCount'
          property :unjoined_events_count, :numeric_string => true, as: 'unjoinedEventsCount'
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
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2beta::GoogleRpcStatus, decorator: Google::Apis::RetailV2beta::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaExportErrorsConfig, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaExportErrorsConfig::Representation
      
          property :output_result, as: 'outputResult', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaOutputResult, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaOutputResult::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaExportUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2beta::GoogleRpcStatus, decorator: Google::Apis::RetailV2beta::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaExportErrorsConfig, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaExportErrorsConfig::Representation
      
          property :output_result, as: 'outputResult', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaOutputResult, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaOutputResult::Representation
      
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
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2beta::GoogleRpcStatus, decorator: Google::Apis::RetailV2beta::GoogleRpcStatus::Representation
      
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
          property :transformed_user_events_metadata, as: 'transformedUserEventsMetadata', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaTransformedUserEventsMetadata, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaTransformedUserEventsMetadata::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudRetailV2alphaImportProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2beta::GoogleRpcStatus, decorator: Google::Apis::RetailV2beta::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaImportErrorsConfig, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaImportErrorsConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaImportUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2beta::GoogleRpcStatus, decorator: Google::Apis::RetailV2beta::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaImportErrorsConfig, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaImportErrorsConfig::Representation
      
          property :import_summary, as: 'importSummary', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaUserEventImportSummary, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaUserEventImportSummary::Representation
      
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
          property :page_optimization_config, as: 'pageOptimizationConfig', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaModelPageOptimizationConfig, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaModelPageOptimizationConfig::Representation
      
          property :periodic_tuning_state, as: 'periodicTuningState'
          collection :serving_config_lists, as: 'servingConfigLists', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaModelServingConfigList, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaModelServingConfigList::Representation
      
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
          collection :panels, as: 'panels', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel::Representation
      
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
          collection :candidates, as: 'candidates', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate::Representation
      
          property :default_candidate, as: 'defaultCandidate', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate::Representation
      
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
          collection :bigquery_result, as: 'bigqueryResult', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaBigQueryOutputResult, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaBigQueryOutputResult::Representation
      
          collection :gcs_result, as: 'gcsResult', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaGcsOutputResult, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaGcsOutputResult::Representation
      
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
      
      class GoogleCloudRetailV2betaAddCatalogAttributeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :catalog_attribute, as: 'catalogAttribute', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCatalogAttribute, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCatalogAttribute::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaAddControlRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :control_id, as: 'controlId'
        end
      end
      
      class GoogleCloudRetailV2betaAddFulfillmentPlacesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaAddFulfillmentPlacesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :add_time, as: 'addTime'
          property :allow_missing, as: 'allowMissing'
          collection :place_ids, as: 'placeIds'
          property :type, as: 'type'
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
      
      class GoogleCloudRetailV2betaAddLocalInventoriesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :add_mask, as: 'addMask'
          property :add_time, as: 'addTime'
          property :allow_missing, as: 'allowMissing'
          collection :local_inventories, as: 'localInventories', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaLocalInventory, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaLocalInventory::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaAddLocalInventoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaAttributesConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_config_level, as: 'attributeConfigLevel'
          hash :catalog_attributes, as: 'catalogAttributes', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCatalogAttribute, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCatalogAttribute::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudRetailV2betaAudience
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :age_groups, as: 'ageGroups'
          collection :genders, as: 'genders'
        end
      end
      
      class GoogleCloudRetailV2betaBatchRemoveCatalogAttributesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attribute_keys, as: 'attributeKeys'
        end
      end
      
      class GoogleCloudRetailV2betaBatchRemoveCatalogAttributesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :deleted_catalog_attributes, as: 'deletedCatalogAttributes'
          collection :reset_catalog_attributes, as: 'resetCatalogAttributes'
        end
      end
      
      class GoogleCloudRetailV2betaBigQueryOutputResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_id, as: 'datasetId'
          property :table_id, as: 'tableId'
        end
      end
      
      class GoogleCloudRetailV2betaBigQuerySource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_schema, as: 'dataSchema'
          property :dataset_id, as: 'datasetId'
          property :gcs_staging_dir, as: 'gcsStagingDir'
          property :partition_date, as: 'partitionDate', class: Google::Apis::RetailV2beta::GoogleTypeDate, decorator: Google::Apis::RetailV2beta::GoogleTypeDate::Representation
      
          property :project_id, as: 'projectId'
          property :table_id, as: 'tableId'
        end
      end
      
      class GoogleCloudRetailV2betaCatalog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :merchant_center_linking_config, as: 'merchantCenterLinkingConfig', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaMerchantCenterLinkingConfig, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaMerchantCenterLinkingConfig::Representation
      
          property :name, as: 'name'
          property :product_level_config, as: 'productLevelConfig', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProductLevelConfig, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProductLevelConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaCatalogAttribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dynamic_facetable_option, as: 'dynamicFacetableOption'
          property :exact_searchable_option, as: 'exactSearchableOption'
          property :in_use, as: 'inUse'
          property :indexable_option, as: 'indexableOption'
          property :key, as: 'key'
          property :recommendations_filtering_option, as: 'recommendationsFilteringOption'
          property :retrievable_option, as: 'retrievableOption'
          property :searchable_option, as: 'searchableOption'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudRetailV2betaColorInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :color_families, as: 'colorFamilies'
          collection :colors, as: 'colors'
        end
      end
      
      class GoogleCloudRetailV2betaCompleteQueryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribution_token, as: 'attributionToken'
          collection :completion_results, as: 'completionResults', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompleteQueryResponseCompletionResult, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompleteQueryResponseCompletionResult::Representation
      
          collection :recent_search_results, as: 'recentSearchResults', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompleteQueryResponseRecentSearchResult, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompleteQueryResponseRecentSearchResult::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaCompleteQueryResponseCompletionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCustomAttribute, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCustomAttribute::Representation
      
          property :suggestion, as: 'suggestion'
        end
      end
      
      class GoogleCloudRetailV2betaCompleteQueryResponseRecentSearchResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :recent_search, as: 'recentSearch'
        end
      end
      
      class GoogleCloudRetailV2betaCompletionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allowlist_input_config, as: 'allowlistInputConfig', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompletionDataInputConfig, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompletionDataInputConfig::Representation
      
          property :auto_learning, as: 'autoLearning'
          property :denylist_input_config, as: 'denylistInputConfig', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompletionDataInputConfig, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompletionDataInputConfig::Representation
      
          property :last_allowlist_import_operation, as: 'lastAllowlistImportOperation'
          property :last_denylist_import_operation, as: 'lastDenylistImportOperation'
          property :last_suggestions_import_operation, as: 'lastSuggestionsImportOperation'
          property :matching_order, as: 'matchingOrder'
          property :max_suggestions, as: 'maxSuggestions'
          property :min_prefix_length, as: 'minPrefixLength'
          property :name, as: 'name'
          property :suggestions_input_config, as: 'suggestionsInputConfig', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompletionDataInputConfig, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompletionDataInputConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaCompletionDataInputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :big_query_source, as: 'bigQuerySource', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaBigQuerySource, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaBigQuerySource::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaCompletionDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :completion_attribution_token, as: 'completionAttributionToken'
          property :selected_position, as: 'selectedPosition'
          property :selected_suggestion, as: 'selectedSuggestion'
        end
      end
      
      class GoogleCloudRetailV2betaCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :active_time_range, as: 'activeTimeRange', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaConditionTimeRange, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaConditionTimeRange::Representation
      
          collection :query_terms, as: 'queryTerms', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaConditionQueryTerm, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaConditionQueryTerm::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaConditionQueryTerm
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :full_match, as: 'fullMatch'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudRetailV2betaConditionTimeRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudRetailV2betaControl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :associated_serving_config_ids, as: 'associatedServingConfigIds'
          property :display_name, as: 'displayName'
          property :facet_spec, as: 'facetSpec', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestFacetSpec, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestFacetSpec::Representation
      
          property :name, as: 'name'
          property :rule, as: 'rule', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRule, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRule::Representation
      
          collection :search_solution_use_case, as: 'searchSolutionUseCase'
          collection :solution_types, as: 'solutionTypes'
        end
      end
      
      class GoogleCloudRetailV2betaCreateModelMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model, as: 'model'
        end
      end
      
      class GoogleCloudRetailV2betaCustomAttribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :indexable, as: 'indexable'
          collection :numbers, as: 'numbers'
          property :searchable, as: 'searchable'
          collection :text, as: 'text'
        end
      end
      
      class GoogleCloudRetailV2betaExperimentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :experiment_name, as: 'experimentName'
          property :serving_config_experiment, as: 'servingConfigExperiment', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaExperimentInfoServingConfigExperiment, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaExperimentInfoServingConfigExperiment::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaExperimentInfoServingConfigExperiment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :experiment_serving_config, as: 'experimentServingConfig'
          property :original_serving_config, as: 'originalServingConfig'
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
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2beta::GoogleRpcStatus, decorator: Google::Apis::RetailV2beta::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaExportErrorsConfig, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaExportErrorsConfig::Representation
      
          property :output_result, as: 'outputResult', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaOutputResult, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaOutputResult::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaExportUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2beta::GoogleRpcStatus, decorator: Google::Apis::RetailV2beta::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaExportErrorsConfig, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaExportErrorsConfig::Representation
      
          property :output_result, as: 'outputResult', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaOutputResult, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaOutputResult::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaFulfillmentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :place_ids, as: 'placeIds'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudRetailV2betaGcsOutputResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :output_uri, as: 'outputUri'
        end
      end
      
      class GoogleCloudRetailV2betaGcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_schema, as: 'dataSchema'
          collection :input_uris, as: 'inputUris'
        end
      end
      
      class GoogleCloudRetailV2betaGetDefaultBranchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :branch, as: 'branch'
          property :note, as: 'note'
          property :set_time, as: 'setTime'
        end
      end
      
      class GoogleCloudRetailV2betaImage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :height, as: 'height'
          property :uri, as: 'uri'
          property :width, as: 'width'
        end
      end
      
      class GoogleCloudRetailV2betaImportCompletionDataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_config, as: 'inputConfig', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompletionDataInputConfig, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompletionDataInputConfig::Representation
      
          property :notification_pubsub_topic, as: 'notificationPubsubTopic'
        end
      end
      
      class GoogleCloudRetailV2betaImportCompletionDataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2beta::GoogleRpcStatus, decorator: Google::Apis::RetailV2beta::GoogleRpcStatus::Representation
      
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
      
      class GoogleCloudRetailV2betaImportProductsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaImportErrorsConfig, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaImportErrorsConfig::Representation
      
          property :input_config, as: 'inputConfig', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProductInputConfig, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProductInputConfig::Representation
      
          property :notification_pubsub_topic, as: 'notificationPubsubTopic'
          property :reconciliation_mode, as: 'reconciliationMode'
          property :request_id, as: 'requestId'
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleCloudRetailV2betaImportProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2beta::GoogleRpcStatus, decorator: Google::Apis::RetailV2beta::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaImportErrorsConfig, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaImportErrorsConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaImportUserEventsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaImportErrorsConfig, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaImportErrorsConfig::Representation
      
          property :input_config, as: 'inputConfig', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserEventInputConfig, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserEventInputConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaImportUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2beta::GoogleRpcStatus, decorator: Google::Apis::RetailV2beta::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaImportErrorsConfig, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaImportErrorsConfig::Representation
      
          property :import_summary, as: 'importSummary', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserEventImportSummary, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserEventImportSummary::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaInterval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exclusive_maximum, as: 'exclusiveMaximum'
          property :exclusive_minimum, as: 'exclusiveMinimum'
          property :maximum, as: 'maximum'
          property :minimum, as: 'minimum'
        end
      end
      
      class GoogleCloudRetailV2betaListCatalogsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :catalogs, as: 'catalogs', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCatalog, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCatalog::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudRetailV2betaListControlsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :controls, as: 'controls', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaControl, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaControl::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudRetailV2betaListModelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :models, as: 'models', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaModel, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaModel::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudRetailV2betaListProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :products, as: 'products', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaListServingConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :serving_configs, as: 'servingConfigs', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaServingConfig, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaServingConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaLocalInventory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCustomAttribute, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCustomAttribute::Representation
      
          collection :fulfillment_types, as: 'fulfillmentTypes'
          property :place_id, as: 'placeId'
          property :price_info, as: 'priceInfo', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPriceInfo, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPriceInfo::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaMerchantCenterFeedFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :primary_feed_id, :numeric_string => true, as: 'primaryFeedId'
          property :primary_feed_name, as: 'primaryFeedName'
        end
      end
      
      class GoogleCloudRetailV2betaMerchantCenterLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :branch_id, as: 'branchId'
          collection :destinations, as: 'destinations'
          collection :feeds, as: 'feeds', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaMerchantCenterFeedFilter, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaMerchantCenterFeedFilter::Representation
      
          property :language_code, as: 'languageCode'
          property :merchant_center_account_id, :numeric_string => true, as: 'merchantCenterAccountId'
          property :region_code, as: 'regionCode'
        end
      end
      
      class GoogleCloudRetailV2betaMerchantCenterLinkingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :links, as: 'links', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaMerchantCenterLink, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaMerchantCenterLink::Representation
      
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
          collection :serving_config_lists, as: 'servingConfigLists', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaModelServingConfigList, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaModelServingConfigList::Representation
      
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
          collection :bigquery_result, as: 'bigqueryResult', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaBigQueryOutputResult, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaBigQueryOutputResult::Representation
      
          collection :gcs_result, as: 'gcsResult', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaGcsOutputResult, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaGcsOutputResult::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaPauseModelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaPredictRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          hash :labels, as: 'labels'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          hash :params, as: 'params'
          property :user_event, as: 'userEvent', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserEvent, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserEvent::Representation
      
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class GoogleCloudRetailV2betaPredictResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribution_token, as: 'attributionToken'
          collection :missing_ids, as: 'missingIds'
          collection :results, as: 'results', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPredictResponsePredictionResult, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPredictResponsePredictionResult::Representation
      
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class GoogleCloudRetailV2betaPredictResponsePredictionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :metadata, as: 'metadata'
        end
      end
      
      class GoogleCloudRetailV2betaPriceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cost, as: 'cost'
          property :currency_code, as: 'currencyCode'
          property :original_price, as: 'originalPrice'
          property :price, as: 'price'
          property :price_effective_time, as: 'priceEffectiveTime'
          property :price_expire_time, as: 'priceExpireTime'
          property :price_range, as: 'priceRange', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPriceInfoPriceRange, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPriceInfoPriceRange::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaPriceInfoPriceRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :original_price, as: 'originalPrice', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaInterval, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaInterval::Representation
      
          property :price, as: 'price', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaInterval, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaInterval::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaProduct
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCustomAttribute, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCustomAttribute::Representation
      
          property :audience, as: 'audience', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAudience, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAudience::Representation
      
          property :availability, as: 'availability'
          property :available_quantity, as: 'availableQuantity'
          property :available_time, as: 'availableTime'
          collection :brands, as: 'brands'
          collection :categories, as: 'categories'
          collection :collection_member_ids, as: 'collectionMemberIds'
          property :color_info, as: 'colorInfo', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaColorInfo, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaColorInfo::Representation
      
          collection :conditions, as: 'conditions'
          property :description, as: 'description'
          property :expire_time, as: 'expireTime'
          collection :fulfillment_info, as: 'fulfillmentInfo', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaFulfillmentInfo, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaFulfillmentInfo::Representation
      
          property :gtin, as: 'gtin'
          property :id, as: 'id'
          collection :images, as: 'images', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaImage, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaImage::Representation
      
          property :language_code, as: 'languageCode'
          collection :local_inventories, as: 'localInventories', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaLocalInventory, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaLocalInventory::Representation
      
          collection :materials, as: 'materials'
          property :name, as: 'name'
          collection :patterns, as: 'patterns'
          property :price_info, as: 'priceInfo', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPriceInfo, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPriceInfo::Representation
      
          property :primary_product_id, as: 'primaryProductId'
          collection :promotions, as: 'promotions', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPromotion, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPromotion::Representation
      
          property :publish_time, as: 'publishTime'
          property :rating, as: 'rating', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRating, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRating::Representation
      
          property :retrievable_fields, as: 'retrievableFields'
          collection :sizes, as: 'sizes'
          collection :tags, as: 'tags'
          property :title, as: 'title'
          property :ttl, as: 'ttl'
          property :type, as: 'type'
          property :uri, as: 'uri'
          collection :variants, as: 'variants', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaProductDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :product, as: 'product', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct::Representation
      
          property :quantity, as: 'quantity'
        end
      end
      
      class GoogleCloudRetailV2betaProductInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :products, as: 'products', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaProductInputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :big_query_source, as: 'bigQuerySource', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaBigQuerySource, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaBigQuerySource::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaGcsSource, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaGcsSource::Representation
      
          property :product_inline_source, as: 'productInlineSource', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProductInlineSource, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProductInlineSource::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaProductLevelConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ingestion_product_type, as: 'ingestionProductType'
          property :merchant_center_product_id_field, as: 'merchantCenterProductIdField'
        end
      end
      
      class GoogleCloudRetailV2betaPromotion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :promotion_id, as: 'promotionId'
        end
      end
      
      class GoogleCloudRetailV2betaPurchaseTransaction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cost, as: 'cost'
          property :currency_code, as: 'currencyCode'
          property :id, as: 'id'
          property :revenue, as: 'revenue'
          property :tax, as: 'tax'
        end
      end
      
      class GoogleCloudRetailV2betaPurgeMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaPurgeUserEventsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :force, as: 'force'
        end
      end
      
      class GoogleCloudRetailV2betaPurgeUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :purged_events_count, :numeric_string => true, as: 'purgedEventsCount'
        end
      end
      
      class GoogleCloudRetailV2betaRating
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :average_rating, as: 'averageRating'
          property :rating_count, as: 'ratingCount'
          collection :rating_histogram, as: 'ratingHistogram'
        end
      end
      
      class GoogleCloudRetailV2betaRejoinUserEventsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaRejoinUserEventsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :user_event_rejoin_scope, as: 'userEventRejoinScope'
        end
      end
      
      class GoogleCloudRetailV2betaRejoinUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rejoined_user_events_count, :numeric_string => true, as: 'rejoinedUserEventsCount'
        end
      end
      
      class GoogleCloudRetailV2betaRemoveCatalogAttributeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
        end
      end
      
      class GoogleCloudRetailV2betaRemoveControlRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :control_id, as: 'controlId'
        end
      end
      
      class GoogleCloudRetailV2betaRemoveFulfillmentPlacesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaRemoveFulfillmentPlacesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_missing, as: 'allowMissing'
          collection :place_ids, as: 'placeIds'
          property :remove_time, as: 'removeTime'
          property :type, as: 'type'
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
      
      class GoogleCloudRetailV2betaRemoveLocalInventoriesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_missing, as: 'allowMissing'
          collection :place_ids, as: 'placeIds'
          property :remove_time, as: 'removeTime'
        end
      end
      
      class GoogleCloudRetailV2betaRemoveLocalInventoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaReplaceCatalogAttributeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :catalog_attribute, as: 'catalogAttribute', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCatalogAttribute, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCatalogAttribute::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleCloudRetailV2betaResumeModelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost_action, as: 'boostAction', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRuleBoostAction, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRuleBoostAction::Representation
      
          property :condition, as: 'condition', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCondition, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCondition::Representation
      
          property :do_not_associate_action, as: 'doNotAssociateAction', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRuleDoNotAssociateAction, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRuleDoNotAssociateAction::Representation
      
          property :filter_action, as: 'filterAction', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRuleFilterAction, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRuleFilterAction::Representation
      
          property :ignore_action, as: 'ignoreAction', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRuleIgnoreAction, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRuleIgnoreAction::Representation
      
          property :oneway_synonyms_action, as: 'onewaySynonymsAction', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRuleOnewaySynonymsAction, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRuleOnewaySynonymsAction::Representation
      
          property :redirect_action, as: 'redirectAction', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRuleRedirectAction, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRuleRedirectAction::Representation
      
          property :replacement_action, as: 'replacementAction', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRuleReplacementAction, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRuleReplacementAction::Representation
      
          property :twoway_synonyms_action, as: 'twowaySynonymsAction', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRuleTwowaySynonymsAction, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRuleTwowaySynonymsAction::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaRuleBoostAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost, as: 'boost'
          property :products_filter, as: 'productsFilter'
        end
      end
      
      class GoogleCloudRetailV2betaRuleDoNotAssociateAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :do_not_associate_terms, as: 'doNotAssociateTerms'
          collection :query_terms, as: 'queryTerms'
          collection :terms, as: 'terms'
        end
      end
      
      class GoogleCloudRetailV2betaRuleFilterAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
        end
      end
      
      class GoogleCloudRetailV2betaRuleIgnoreAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ignore_terms, as: 'ignoreTerms'
        end
      end
      
      class GoogleCloudRetailV2betaRuleOnewaySynonymsAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :oneway_terms, as: 'onewayTerms'
          collection :query_terms, as: 'queryTerms'
          collection :synonyms, as: 'synonyms'
        end
      end
      
      class GoogleCloudRetailV2betaRuleRedirectAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :redirect_uri, as: 'redirectUri'
        end
      end
      
      class GoogleCloudRetailV2betaRuleReplacementAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :query_terms, as: 'queryTerms'
          property :replacement_term, as: 'replacementTerm'
          property :term, as: 'term'
        end
      end
      
      class GoogleCloudRetailV2betaRuleTwowaySynonymsAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :synonyms, as: 'synonyms'
        end
      end
      
      class GoogleCloudRetailV2betaSearchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost_spec, as: 'boostSpec', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestBoostSpec, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestBoostSpec::Representation
      
          property :branch, as: 'branch'
          property :canonical_filter, as: 'canonicalFilter'
          property :dynamic_facet_spec, as: 'dynamicFacetSpec', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestDynamicFacetSpec, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestDynamicFacetSpec::Representation
      
          collection :facet_specs, as: 'facetSpecs', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestFacetSpec, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestFacetSpec::Representation
      
          property :filter, as: 'filter'
          hash :labels, as: 'labels'
          property :offset, as: 'offset'
          property :order_by, as: 'orderBy'
          collection :page_categories, as: 'pageCategories'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :personalization_spec, as: 'personalizationSpec', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestPersonalizationSpec, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestPersonalizationSpec::Representation
      
          property :query, as: 'query'
          property :query_expansion_spec, as: 'queryExpansionSpec', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestQueryExpansionSpec, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestQueryExpansionSpec::Representation
      
          property :search_mode, as: 'searchMode'
          property :spell_correction_spec, as: 'spellCorrectionSpec', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestSpellCorrectionSpec, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestSpellCorrectionSpec::Representation
      
          property :user_info, as: 'userInfo', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserInfo, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserInfo::Representation
      
          collection :variant_rollup_keys, as: 'variantRollupKeys'
          property :visitor_id, as: 'visitorId'
        end
      end
      
      class GoogleCloudRetailV2betaSearchRequestBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :condition_boost_specs, as: 'conditionBoostSpecs', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec::Representation
      
          property :skip_boost_spec_validation, as: 'skipBoostSpecValidation'
        end
      end
      
      class GoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost, as: 'boost'
          property :condition, as: 'condition'
        end
      end
      
      class GoogleCloudRetailV2betaSearchRequestDynamicFacetSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
        end
      end
      
      class GoogleCloudRetailV2betaSearchRequestFacetSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_dynamic_position, as: 'enableDynamicPosition'
          collection :excluded_filter_keys, as: 'excludedFilterKeys'
          property :facet_key, as: 'facetKey', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestFacetSpecFacetKey, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestFacetSpecFacetKey::Representation
      
          property :limit, as: 'limit'
        end
      end
      
      class GoogleCloudRetailV2betaSearchRequestFacetSpecFacetKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :case_insensitive, as: 'caseInsensitive'
          collection :contains, as: 'contains'
          collection :intervals, as: 'intervals', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaInterval, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaInterval::Representation
      
          property :key, as: 'key'
          property :order_by, as: 'orderBy'
          collection :prefixes, as: 'prefixes'
          property :query, as: 'query'
          collection :restricted_values, as: 'restrictedValues'
          property :return_min_max, as: 'returnMinMax'
        end
      end
      
      class GoogleCloudRetailV2betaSearchRequestPersonalizationSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
        end
      end
      
      class GoogleCloudRetailV2betaSearchRequestQueryExpansionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition'
          property :pin_unexpanded_results, as: 'pinUnexpandedResults'
        end
      end
      
      class GoogleCloudRetailV2betaSearchRequestSpellCorrectionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
        end
      end
      
      class GoogleCloudRetailV2betaSearchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :applied_controls, as: 'appliedControls'
          property :attribution_token, as: 'attributionToken'
          property :corrected_query, as: 'correctedQuery'
          collection :experiment_info, as: 'experimentInfo', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaExperimentInfo, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaExperimentInfo::Representation
      
          collection :facets, as: 'facets', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchResponseFacet, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchResponseFacet::Representation
      
          collection :invalid_condition_boost_specs, as: 'invalidConditionBoostSpecs', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :query_expansion_info, as: 'queryExpansionInfo', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchResponseQueryExpansionInfo, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchResponseQueryExpansionInfo::Representation
      
          property :redirect_uri, as: 'redirectUri'
          collection :results, as: 'results', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchResponseSearchResult, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchResponseSearchResult::Representation
      
          property :total_size, as: 'totalSize'
        end
      end
      
      class GoogleCloudRetailV2betaSearchResponseFacet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dynamic_facet, as: 'dynamicFacet'
          property :key, as: 'key'
          collection :values, as: 'values', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchResponseFacetFacetValue, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchResponseFacetFacetValue::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaSearchResponseFacetFacetValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :interval, as: 'interval', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaInterval, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaInterval::Representation
      
          property :max_value, as: 'maxValue'
          property :min_value, as: 'minValue'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudRetailV2betaSearchResponseQueryExpansionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expanded_query, as: 'expandedQuery'
          property :pinned_result_count, :numeric_string => true, as: 'pinnedResultCount'
        end
      end
      
      class GoogleCloudRetailV2betaSearchResponseSearchResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :matching_variant_count, as: 'matchingVariantCount'
          hash :matching_variant_fields, as: 'matchingVariantFields'
          collection :personal_labels, as: 'personalLabels'
          property :product, as: 'product', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct::Representation
      
          hash :variant_rollup_values, as: 'variantRollupValues'
        end
      end
      
      class GoogleCloudRetailV2betaServingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :boost_control_ids, as: 'boostControlIds'
          property :display_name, as: 'displayName'
          property :diversity_level, as: 'diversityLevel'
          property :diversity_type, as: 'diversityType'
          collection :do_not_associate_control_ids, as: 'doNotAssociateControlIds'
          property :dynamic_facet_spec, as: 'dynamicFacetSpec', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestDynamicFacetSpec, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestDynamicFacetSpec::Representation
      
          property :enable_category_filter_level, as: 'enableCategoryFilterLevel'
          collection :facet_control_ids, as: 'facetControlIds'
          collection :filter_control_ids, as: 'filterControlIds'
          collection :ignore_control_ids, as: 'ignoreControlIds'
          property :model_id, as: 'modelId'
          property :name, as: 'name'
          collection :oneway_synonyms_control_ids, as: 'onewaySynonymsControlIds'
          property :personalization_spec, as: 'personalizationSpec', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestPersonalizationSpec, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestPersonalizationSpec::Representation
      
          property :price_reranking_level, as: 'priceRerankingLevel'
          collection :redirect_control_ids, as: 'redirectControlIds'
          collection :replacement_control_ids, as: 'replacementControlIds'
          collection :solution_types, as: 'solutionTypes'
          collection :twoway_synonyms_control_ids, as: 'twowaySynonymsControlIds'
        end
      end
      
      class GoogleCloudRetailV2betaSetDefaultBranchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :branch_id, as: 'branchId'
          property :force, as: 'force'
          property :note, as: 'note'
        end
      end
      
      class GoogleCloudRetailV2betaSetInventoryMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaSetInventoryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_missing, as: 'allowMissing'
          property :inventory, as: 'inventory', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct::Representation
      
          property :set_mask, as: 'setMask'
          property :set_time, as: 'setTime'
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
      
      class GoogleCloudRetailV2betaTuneModelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaTuneModelResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaUserEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCustomAttribute, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCustomAttribute::Representation
      
          property :attribution_token, as: 'attributionToken'
          property :cart_id, as: 'cartId'
          property :completion_detail, as: 'completionDetail', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompletionDetail, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompletionDetail::Representation
      
          property :event_time, as: 'eventTime'
          property :event_type, as: 'eventType'
          collection :experiment_ids, as: 'experimentIds'
          property :filter, as: 'filter'
          property :offset, as: 'offset'
          property :order_by, as: 'orderBy'
          collection :page_categories, as: 'pageCategories'
          property :page_view_id, as: 'pageViewId'
          collection :product_details, as: 'productDetails', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProductDetail, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProductDetail::Representation
      
          property :purchase_transaction, as: 'purchaseTransaction', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPurchaseTransaction, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPurchaseTransaction::Representation
      
          property :referrer_uri, as: 'referrerUri'
          property :search_query, as: 'searchQuery'
          property :session_id, as: 'sessionId'
          property :uri, as: 'uri'
          property :user_info, as: 'userInfo', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserInfo, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserInfo::Representation
      
          property :visitor_id, as: 'visitorId'
        end
      end
      
      class GoogleCloudRetailV2betaUserEventImportSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :joined_events_count, :numeric_string => true, as: 'joinedEventsCount'
          property :unjoined_events_count, :numeric_string => true, as: 'unjoinedEventsCount'
        end
      end
      
      class GoogleCloudRetailV2betaUserEventInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :user_events, as: 'userEvents', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserEvent, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserEvent::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaUserEventInputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :big_query_source, as: 'bigQuerySource', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaBigQuerySource, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaBigQuerySource::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaGcsSource, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaGcsSource::Representation
      
          property :user_event_inline_source, as: 'userEventInlineSource', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserEventInlineSource, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserEventInlineSource::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaUserInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :direct_user_request, as: 'directUserRequest'
          property :ip_address, as: 'ipAddress'
          property :user_agent, as: 'userAgent'
          property :user_id, as: 'userId'
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::RetailV2beta::GoogleLongrunningOperation, decorator: Google::Apis::RetailV2beta::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::RetailV2beta::GoogleRpcStatus, decorator: Google::Apis::RetailV2beta::GoogleRpcStatus::Representation
      
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
