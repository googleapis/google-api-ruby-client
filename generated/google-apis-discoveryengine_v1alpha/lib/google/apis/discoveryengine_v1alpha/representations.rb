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
    module DiscoveryengineV1alpha
      
      class GoogleApiHttpBody
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineLoggingErrorContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineLoggingErrorLog
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineLoggingHttpRequestContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineLoggingImportErrorContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineLoggingServiceContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineLoggingSourceLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1CreateSchemaMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DeleteSchemaMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ImportDocumentsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ImportDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ImportErrorConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ImportUserEventsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ImportUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1PurgeDocumentsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1PurgeDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1Schema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1UpdateSchemaMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAdditionalParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaBatchCreateTargetSiteMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaBatchCreateTargetSitesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaBatchCreateTargetSitesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaBatchVerifyTargetSitesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaBigQuerySource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCompleteQueryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCompleteQueryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCompleteQueryResponseQuerySuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCompletionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaConversation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaConversationContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaConversationMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaConverseConversationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaConverseConversationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCreateDataStoreMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCreateEngineMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCreateSchemaMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCreateTargetSiteMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCreateTargetSiteRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCustomAttribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataStore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteDataStoreMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteEngineMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteSchemaMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteTargetSiteMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDisableAdvancedSiteSearchMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDisableAdvancedSiteSearchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDisableAdvancedSiteSearchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocument
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDoubleList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEnableAdvancedSiteSearchMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEnableAdvancedSiteSearchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEnableAdvancedSiteSearchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngine
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigAgentCreationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineChatEngineMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineCommonConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineRecommendationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineSimilarDocumentsEngineConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaFetchDomainVerificationStatusResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaFieldConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaGcsSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportDocumentsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportDocumentsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportDocumentsRequestInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportErrorConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportUserEventsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportUserEventsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportUserEventsRequestInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaInterval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListConversationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListDataStoresResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListEnginesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListSchemasResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListTargetSitesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaLookupWidgetConfigRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaLookupWidgetConfigResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaMediaInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaPageInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaPanelInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaPauseEngineRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeDocumentsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeDocumentsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeUserEventsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeUserEventsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecommendRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecommendResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecommendResponseRecommendationResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecrawlUrisMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecrawlUrisRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponseFailureInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponseFailureInfoFailureReason
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaReply
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaReplyReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaResumeEngineRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecExtractiveContentSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSnippetSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecModelSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestEmbeddingSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestEmbeddingSpecEmbeddingVector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestFacetSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestFacetSpecFacetKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestImageQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestQueryExpansionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestSpellCorrectionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseFacet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseFacetFacetValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseGeoSearchDebugInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseGuidedSearchResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseGuidedSearchResultRefinementAttribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseQueryExpansionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseSearchResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySafetyAttributes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSiteSearchEngine
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSiteVerificationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaTargetSite
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaTargetSiteFailureReason
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaTargetSiteFailureReasonQuotaFailure
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaTextInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaTransactionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaTuneEngineMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaTuneEngineRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaTuneEngineResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaUpdateSchemaMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaUpdateTargetSiteMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaUserEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaUserInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetCompleteQueryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetCompleteQueryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetCompleteQueryResponseWidgetQuerySuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConfigFacetField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConfigUiComponentField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConverseConversationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConverseConversationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetSearchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetSearchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaCreateSchemaMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDeleteSchemaMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportDocumentsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportErrorConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportUserEventsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaPurgeDocumentsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaPurgeDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaUpdateSchemaMetadata
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
      
      class GoogleCloudDiscoveryengineLoggingErrorContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :http_request, as: 'httpRequest', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineLoggingHttpRequestContext, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineLoggingHttpRequestContext::Representation
      
          property :report_location, as: 'reportLocation', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineLoggingSourceLocation, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineLoggingSourceLocation::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineLoggingErrorLog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context, as: 'context', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineLoggingErrorContext, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineLoggingErrorContext::Representation
      
          property :import_payload, as: 'importPayload', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineLoggingImportErrorContext, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineLoggingImportErrorContext::Representation
      
          property :message, as: 'message'
          hash :request_payload, as: 'requestPayload'
          hash :response_payload, as: 'responsePayload'
          property :service_context, as: 'serviceContext', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineLoggingServiceContext, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineLoggingServiceContext::Representation
      
          property :status, as: 'status', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineLoggingHttpRequestContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :response_status_code, as: 'responseStatusCode'
        end
      end
      
      class GoogleCloudDiscoveryengineLoggingImportErrorContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document'
          property :gcs_path, as: 'gcsPath'
          property :line_number, as: 'lineNumber'
          property :operation, as: 'operation'
          property :user_event, as: 'userEvent'
        end
      end
      
      class GoogleCloudDiscoveryengineLoggingServiceContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service, as: 'service'
        end
      end
      
      class GoogleCloudDiscoveryengineLoggingSourceLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :function_name, as: 'functionName'
        end
      end
      
      class GoogleCloudDiscoveryengineV1CreateSchemaMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DeleteSchemaMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ImportDocumentsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ImportDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1ImportErrorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_prefix, as: 'gcsPrefix'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ImportUserEventsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ImportUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          property :joined_events_count, :numeric_string => true, as: 'joinedEventsCount'
          property :unjoined_events_count, :numeric_string => true, as: 'unjoinedEventsCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1PurgeDocumentsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1PurgeDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :purge_count, :numeric_string => true, as: 'purgeCount'
          collection :purge_sample, as: 'purgeSample'
        end
      end
      
      class GoogleCloudDiscoveryengineV1Schema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :json_schema, as: 'jsonSchema'
          property :name, as: 'name'
          hash :struct_schema, as: 'structSchema'
        end
      end
      
      class GoogleCloudDiscoveryengineV1UpdateSchemaMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAdditionalParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :token, as: 'token'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaBatchCreateTargetSiteMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaBatchCreateTargetSitesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :requests, as: 'requests', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCreateTargetSiteRequest, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCreateTargetSiteRequest::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaBatchCreateTargetSitesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :target_sites, as: 'targetSites', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSite, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSite::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaBatchVerifyTargetSitesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaBigQuerySource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_schema, as: 'dataSchema'
          property :dataset_id, as: 'datasetId'
          property :gcs_staging_dir, as: 'gcsStagingDir'
          property :partition_date, as: 'partitionDate', class: Google::Apis::DiscoveryengineV1alpha::GoogleTypeDate, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleTypeDate::Representation
      
          property :project_id, as: 'projectId'
          property :table_id, as: 'tableId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCompleteQueryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_store, as: 'dataStore'
          property :include_tail_suggestions, as: 'includeTailSuggestions'
          property :query, as: 'query'
          property :query_model, as: 'queryModel'
          property :user_pseudo_id, as: 'userPseudoId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCompleteQueryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :query_suggestions, as: 'querySuggestions', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCompleteQueryResponseQuerySuggestion, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCompleteQueryResponseQuerySuggestion::Representation
      
          property :tail_match_triggered, as: 'tailMatchTriggered'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCompleteQueryResponseQuerySuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :completable_field_paths, as: 'completableFieldPaths'
          property :suggestion, as: 'suggestion'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCompletionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :selected_position, as: 'selectedPosition'
          property :selected_suggestion, as: 'selectedSuggestion'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaConversation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          collection :messages, as: 'messages', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversationMessage, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversationMessage::Representation
      
          property :name, as: 'name'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :user_pseudo_id, as: 'userPseudoId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaConversationContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active_document, as: 'activeDocument'
          collection :context_documents, as: 'contextDocuments'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaConversationMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :reply, as: 'reply', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaReply, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaReply::Representation
      
          property :user_input, as: 'userInput', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTextInput, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTextInput::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaConverseConversationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation, as: 'conversation', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation::Representation
      
          property :name, as: 'name'
          property :query, as: 'query', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTextInput, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTextInput::Representation
      
          property :safe_search, as: 'safeSearch'
          property :serving_config, as: 'servingConfig'
          property :summary_spec, as: 'summarySpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpec::Representation
      
          hash :user_labels, as: 'userLabels'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaConverseConversationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation, as: 'conversation', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation::Representation
      
          collection :related_questions, as: 'relatedQuestions'
          property :reply, as: 'reply', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaReply, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaReply::Representation
      
          collection :search_results, as: 'searchResults', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSearchResult, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSearchResult::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCreateDataStoreMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCreateEngineMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCreateSchemaMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCreateTargetSiteMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCreateTargetSiteRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parent, as: 'parent'
          property :target_site, as: 'targetSite', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSite, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSite::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCustomAttribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :numbers, as: 'numbers'
          collection :text, as: 'text'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataStore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_config, as: 'contentConfig'
          property :create_time, as: 'createTime'
          property :default_schema_id, as: 'defaultSchemaId'
          property :display_name, as: 'displayName'
          property :industry_vertical, as: 'industryVertical'
          property :name, as: 'name'
          collection :solution_types, as: 'solutionTypes'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteDataStoreMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteEngineMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteSchemaMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteTargetSiteMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDisableAdvancedSiteSearchMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDisableAdvancedSiteSearchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDisableAdvancedSiteSearchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocument
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentContent, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentContent::Representation
      
          hash :derived_struct_data, as: 'derivedStructData'
          property :id, as: 'id'
          property :json_data, as: 'jsonData'
          property :name, as: 'name'
          property :parent_document_id, as: 'parentDocumentId'
          property :schema_id, as: 'schemaId'
          hash :struct_data, as: 'structData'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mime_type, as: 'mimeType'
          property :raw_bytes, :base64 => true, as: 'rawBytes'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
          collection :promotion_ids, as: 'promotionIds'
          property :quantity, as: 'quantity'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDoubleList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEnableAdvancedSiteSearchMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEnableAdvancedSiteSearchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEnableAdvancedSiteSearchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngine
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chat_engine_config, as: 'chatEngineConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfig::Representation
      
          property :chat_engine_metadata, as: 'chatEngineMetadata', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineChatEngineMetadata, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineChatEngineMetadata::Representation
      
          property :common_config, as: 'commonConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineCommonConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineCommonConfig::Representation
      
          property :create_time, as: 'createTime'
          collection :data_store_ids, as: 'dataStoreIds'
          property :display_name, as: 'displayName'
          property :industry_vertical, as: 'industryVertical'
          property :media_recommendation_engine_config, as: 'mediaRecommendationEngineConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig::Representation
      
          property :name, as: 'name'
          property :recommendation_metadata, as: 'recommendationMetadata', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineRecommendationMetadata, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineRecommendationMetadata::Representation
      
          property :search_engine_config, as: 'searchEngineConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfig::Representation
      
          property :similar_documents_config, as: 'similarDocumentsConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineSimilarDocumentsEngineConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineSimilarDocumentsEngineConfig::Representation
      
          property :solution_type, as: 'solutionType'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_creation_config, as: 'agentCreationConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigAgentCreationConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigAgentCreationConfig::Representation
      
          property :dialogflow_agent_to_link, as: 'dialogflowAgentToLink'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigAgentCreationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :business, as: 'business'
          property :default_language_code, as: 'defaultLanguageCode'
          property :time_zone, as: 'timeZone'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineChatEngineMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dialogflow_agent, as: 'dialogflowAgent'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineCommonConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :company_name, as: 'companyName'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :optimization_objective, as: 'optimizationObjective'
          property :optimization_objective_config, as: 'optimizationObjectiveConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig::Representation
      
          property :training_state, as: 'trainingState'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :target_field, as: 'targetField'
          property :target_field_value_float, as: 'targetFieldValueFloat'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineRecommendationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_state, as: 'dataState'
          property :last_tune_time, as: 'lastTuneTime'
          property :serving_state, as: 'servingState'
          property :tuning_operation, as: 'tuningOperation'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :search_add_ons, as: 'searchAddOns'
          property :search_tier, as: 'searchTier'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineSimilarDocumentsEngineConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaFetchDomainVerificationStatusResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :target_sites, as: 'targetSites', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSite, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSite::Representation
      
          property :total_size, as: 'totalSize'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaFieldConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :completable_option, as: 'completableOption'
          property :dynamic_facetable_option, as: 'dynamicFacetableOption'
          property :field_path, as: 'fieldPath'
          property :field_type, as: 'fieldType'
          property :indexable_option, as: 'indexableOption'
          property :key_property_type, as: 'keyPropertyType'
          property :recs_filterable_option, as: 'recsFilterableOption'
          property :retrievable_option, as: 'retrievableOption'
          property :searchable_option, as: 'searchableOption'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaGcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_schema, as: 'dataSchema'
          collection :input_uris, as: 'inputUris'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportDocumentsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportDocumentsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_generate_ids, as: 'autoGenerateIds'
          property :bigquery_source, as: 'bigquerySource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBigQuerySource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBigQuerySource::Representation
      
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportErrorConfig::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaGcsSource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaGcsSource::Representation
      
          property :id_field, as: 'idField'
          property :inline_source, as: 'inlineSource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportDocumentsRequestInlineSource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportDocumentsRequestInlineSource::Representation
      
          property :reconciliation_mode, as: 'reconciliationMode'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportDocumentsRequestInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :documents, as: 'documents', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportErrorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_prefix, as: 'gcsPrefix'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportUserEventsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportUserEventsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_source, as: 'bigquerySource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBigQuerySource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBigQuerySource::Representation
      
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportErrorConfig::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaGcsSource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaGcsSource::Representation
      
          property :inline_source, as: 'inlineSource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportUserEventsRequestInlineSource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportUserEventsRequestInlineSource::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportUserEventsRequestInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :user_events, as: 'userEvents', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          property :joined_events_count, :numeric_string => true, as: 'joinedEventsCount'
          property :unjoined_events_count, :numeric_string => true, as: 'unjoinedEventsCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaInterval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exclusive_maximum, as: 'exclusiveMaximum'
          property :exclusive_minimum, as: 'exclusiveMinimum'
          property :maximum, as: 'maximum'
          property :minimum, as: 'minimum'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListConversationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conversations, as: 'conversations', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListDataStoresResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_stores, as: 'dataStores', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataStore, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataStore::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :documents, as: 'documents', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListEnginesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :engines, as: 'engines', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngine, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngine::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListSchemasResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :schemas, as: 'schemas', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListTargetSitesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :target_sites, as: 'targetSites', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSite, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSite::Representation
      
          property :total_size, as: 'totalSize'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaLookupWidgetConfigRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :widget_config_id, as: 'widgetConfigId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaLookupWidgetConfigResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :anonymous_widget_config, as: 'anonymousWidgetConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaMediaInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :media_progress_duration, as: 'mediaProgressDuration'
          property :media_progress_percentage, as: 'mediaProgressPercentage'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaPageInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :page_category, as: 'pageCategory'
          property :pageview_id, as: 'pageviewId'
          property :referrer_uri, as: 'referrerUri'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaPanelInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :panel_id, as: 'panelId'
          property :panel_position, as: 'panelPosition'
          property :total_panels, as: 'totalPanels'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaPauseEngineRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeDocumentsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeDocumentsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :force, as: 'force'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :purge_count, :numeric_string => true, as: 'purgeCount'
          collection :purge_sample, as: 'purgeSample'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeUserEventsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeUserEventsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :force, as: 'force'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :purge_count, :numeric_string => true, as: 'purgeCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecommendRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :page_size, as: 'pageSize'
          hash :params, as: 'params'
          property :user_event, as: 'userEvent', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent::Representation
      
          hash :user_labels, as: 'userLabels'
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecommendResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribution_token, as: 'attributionToken'
          collection :missing_ids, as: 'missingIds'
          collection :results, as: 'results', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecommendResponseRecommendationResult, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecommendResponseRecommendationResult::Representation
      
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecommendResponseRecommendationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument::Representation
      
          property :id, as: 'id'
          hash :metadata, as: 'metadata'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecrawlUrisMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          collection :invalid_uris, as: 'invalidUris'
          property :pending_count, as: 'pendingCount'
          property :quota_exceeded_count, as: 'quotaExceededCount'
          property :success_count, as: 'successCount'
          property :update_time, as: 'updateTime'
          property :valid_uris_count, as: 'validUrisCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecrawlUrisRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :uris, as: 'uris'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :failed_uris, as: 'failedUris'
          collection :failure_samples, as: 'failureSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponseFailureInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponseFailureInfo::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponseFailureInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :failure_reasons, as: 'failureReasons', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponseFailureInfoFailureReason, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponseFailureInfoFailureReason::Representation
      
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponseFailureInfoFailureReason
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :corpus_type, as: 'corpusType'
          property :error_message, as: 'errorMessage'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaReply
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :references, as: 'references', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaReplyReference, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaReplyReference::Representation
      
          property :reply, as: 'reply'
          property :summary, as: 'summary', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSummary, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSummary::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaReplyReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :anchor_text, as: 'anchorText'
          property :end, as: 'end'
          property :start, as: 'start'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaResumeEngineRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :field_configs, as: 'fieldConfigs', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaFieldConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaFieldConfig::Representation
      
          property :json_schema, as: 'jsonSchema'
          property :name, as: 'name'
          hash :struct_schema, as: 'structSchema'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :offset, as: 'offset'
          property :order_by, as: 'orderBy'
          property :search_query, as: 'searchQuery'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost_spec, as: 'boostSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpec::Representation
      
          property :branch, as: 'branch'
          property :canonical_filter, as: 'canonicalFilter'
          property :content_search_spec, as: 'contentSearchSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpec::Representation
      
          property :embedding_spec, as: 'embeddingSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestEmbeddingSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestEmbeddingSpec::Representation
      
          collection :facet_specs, as: 'facetSpecs', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestFacetSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestFacetSpec::Representation
      
          property :filter, as: 'filter'
          property :image_query, as: 'imageQuery', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestImageQuery, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestImageQuery::Representation
      
          property :offset, as: 'offset'
          property :order_by, as: 'orderBy'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          hash :params, as: 'params'
          property :query, as: 'query'
          property :query_expansion_spec, as: 'queryExpansionSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestQueryExpansionSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestQueryExpansionSpec::Representation
      
          property :ranking_expression, as: 'rankingExpression'
          property :safe_search, as: 'safeSearch'
          property :serving_config, as: 'servingConfig'
          property :spell_correction_spec, as: 'spellCorrectionSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestSpellCorrectionSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestSpellCorrectionSpec::Representation
      
          property :user_info, as: 'userInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserInfo::Representation
      
          hash :user_labels, as: 'userLabels'
          property :user_pseudo_id, as: 'userPseudoId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :condition_boost_specs, as: 'conditionBoostSpecs', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost, as: 'boost'
          property :condition, as: 'condition'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :extractive_content_spec, as: 'extractiveContentSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecExtractiveContentSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecExtractiveContentSpec::Representation
      
          property :snippet_spec, as: 'snippetSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSnippetSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSnippetSpec::Representation
      
          property :summary_spec, as: 'summarySpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecExtractiveContentSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_extractive_answer_count, as: 'maxExtractiveAnswerCount'
          property :max_extractive_segment_count, as: 'maxExtractiveSegmentCount'
          property :num_next_segments, as: 'numNextSegments'
          property :num_previous_segments, as: 'numPreviousSegments'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSnippetSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_snippet_count, as: 'maxSnippetCount'
          property :reference_only, as: 'referenceOnly'
          property :return_snippet, as: 'returnSnippet'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ignore_adversarial_query, as: 'ignoreAdversarialQuery'
          property :ignore_non_summary_seeking_query, as: 'ignoreNonSummarySeekingQuery'
          property :include_citations, as: 'includeCitations'
          property :language_code, as: 'languageCode'
          property :model_spec, as: 'modelSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecModelSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecModelSpec::Representation
      
          property :summary_result_count, as: 'summaryResultCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecModelSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestEmbeddingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :embedding_vectors, as: 'embeddingVectors', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestEmbeddingSpecEmbeddingVector, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestEmbeddingSpecEmbeddingVector::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestEmbeddingSpecEmbeddingVector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_path, as: 'fieldPath'
          collection :vector, as: 'vector'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestFacetSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_dynamic_position, as: 'enableDynamicPosition'
          collection :excluded_filter_keys, as: 'excludedFilterKeys'
          property :facet_key, as: 'facetKey', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestFacetSpecFacetKey, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestFacetSpecFacetKey::Representation
      
          property :limit, as: 'limit'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestFacetSpecFacetKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :case_insensitive, as: 'caseInsensitive'
          collection :contains, as: 'contains'
          collection :intervals, as: 'intervals', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaInterval, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaInterval::Representation
      
          property :key, as: 'key'
          property :order_by, as: 'orderBy'
          collection :prefixes, as: 'prefixes'
          collection :restricted_values, as: 'restrictedValues'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestImageQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_bytes, as: 'imageBytes'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestQueryExpansionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition'
          property :pin_unexpanded_results, as: 'pinUnexpandedResults'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestSpellCorrectionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :applied_controls, as: 'appliedControls'
          property :attribution_token, as: 'attributionToken'
          property :corrected_query, as: 'correctedQuery'
          collection :facets, as: 'facets', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseFacet, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseFacet::Representation
      
          collection :geo_search_debug_info, as: 'geoSearchDebugInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseGeoSearchDebugInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseGeoSearchDebugInfo::Representation
      
          property :guided_search_result, as: 'guidedSearchResult', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseGuidedSearchResult, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseGuidedSearchResult::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :query_expansion_info, as: 'queryExpansionInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseQueryExpansionInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseQueryExpansionInfo::Representation
      
          property :redirect_uri, as: 'redirectUri'
          collection :results, as: 'results', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSearchResult, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSearchResult::Representation
      
          property :summary, as: 'summary', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSummary, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSummary::Representation
      
          property :total_size, as: 'totalSize'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseFacet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dynamic_facet, as: 'dynamicFacet'
          property :key, as: 'key'
          collection :values, as: 'values', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseFacetFacetValue, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseFacetFacetValue::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseFacetFacetValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :interval, as: 'interval', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaInterval, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaInterval::Representation
      
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseGeoSearchDebugInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_message, as: 'errorMessage'
          property :original_address_query, as: 'originalAddressQuery'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseGuidedSearchResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :follow_up_questions, as: 'followUpQuestions'
          collection :refinement_attributes, as: 'refinementAttributes', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseGuidedSearchResultRefinementAttribute, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseGuidedSearchResultRefinementAttribute::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseGuidedSearchResultRefinementAttribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_key, as: 'attributeKey'
          property :attribute_value, as: 'attributeValue'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseQueryExpansionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expanded_query, as: 'expandedQuery'
          property :pinned_result_count, :numeric_string => true, as: 'pinnedResultCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseSearchResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument::Representation
      
          property :id, as: 'id'
          hash :model_scores, as: 'modelScores', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDoubleList, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDoubleList::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :safety_attributes, as: 'safetyAttributes', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySafetyAttributes, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySafetyAttributes::Representation
      
          collection :summary_skipped_reasons, as: 'summarySkippedReasons'
          property :summary_text, as: 'summaryText'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySafetyAttributes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :categories, as: 'categories'
          collection :scores, as: 'scores'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSiteSearchEngine
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSiteVerificationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :site_verification_state, as: 'siteVerificationState'
          property :verify_time, as: 'verifyTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaTargetSite
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exact_match, as: 'exactMatch'
          property :failure_reason, as: 'failureReason', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSiteFailureReason, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSiteFailureReason::Representation
      
          property :generated_uri_pattern, as: 'generatedUriPattern'
          property :indexing_status, as: 'indexingStatus'
          property :name, as: 'name'
          property :provided_uri_pattern, as: 'providedUriPattern'
          property :site_verification_info, as: 'siteVerificationInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSiteVerificationInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSiteVerificationInfo::Representation
      
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaTargetSiteFailureReason
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :quota_failure, as: 'quotaFailure', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSiteFailureReasonQuotaFailure, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSiteFailureReasonQuotaFailure::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaTargetSiteFailureReasonQuotaFailure
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaTextInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context, as: 'context', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversationContext, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversationContext::Representation
      
          property :input, as: 'input'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaTransactionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cost, as: 'cost'
          property :currency, as: 'currency'
          property :discount_value, as: 'discountValue'
          property :tax, as: 'tax'
          property :transaction_id, as: 'transactionId'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaTuneEngineMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :engine, as: 'engine'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaTuneEngineRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaTuneEngineResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaUpdateSchemaMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaUpdateTargetSiteMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaUserEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCustomAttribute, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCustomAttribute::Representation
      
          property :attribution_token, as: 'attributionToken'
          property :completion_info, as: 'completionInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCompletionInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCompletionInfo::Representation
      
          property :direct_user_request, as: 'directUserRequest'
          collection :documents, as: 'documents', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentInfo::Representation
      
          property :event_time, as: 'eventTime'
          property :event_type, as: 'eventType'
          property :filter, as: 'filter'
          property :media_info, as: 'mediaInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaMediaInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaMediaInfo::Representation
      
          property :page_info, as: 'pageInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPageInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPageInfo::Representation
      
          property :panel, as: 'panel', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPanelInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPanelInfo::Representation
      
          collection :promotion_ids, as: 'promotionIds'
          property :search_info, as: 'searchInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchInfo::Representation
      
          property :session_id, as: 'sessionId'
          collection :tag_ids, as: 'tagIds'
          property :transaction_info, as: 'transactionInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTransactionInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTransactionInfo::Representation
      
          property :user_info, as: 'userInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserInfo::Representation
      
          property :user_pseudo_id, as: 'userPseudoId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaUserInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :user_agent, as: 'userAgent'
          property :user_id, as: 'userId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetCompleteQueryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :additional_params, as: 'additionalParams', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdditionalParams, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdditionalParams::Representation
      
          property :complete_query_request, as: 'completeQueryRequest', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCompleteQueryRequest, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCompleteQueryRequest::Representation
      
          property :config_id, as: 'configId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetCompleteQueryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :u_token, as: 'uToken'
          collection :widget_query_suggestions, as: 'widgetQuerySuggestions', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetCompleteQueryResponseWidgetQuerySuggestion, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetCompleteQueryResponseWidgetQuerySuggestion::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetCompleteQueryResponseWidgetQuerySuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :suggestion, as: 'suggestion'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_public_access, as: 'allowPublicAccess'
          collection :allowlisted_domains, as: 'allowlistedDomains'
          property :config_id, as: 'configId'
          property :content_search_spec, as: 'contentSearchSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpec::Representation
      
          property :create_time, as: 'createTime'
          property :data_store_type, as: 'dataStoreType'
          property :display_name, as: 'displayName'
          property :enable_autocomplete, as: 'enableAutocomplete'
          property :enable_conversational_search, as: 'enableConversationalSearch'
          property :enable_quality_feedback, as: 'enableQualityFeedback'
          property :enable_result_score, as: 'enableResultScore'
          property :enable_safe_search, as: 'enableSafeSearch'
          property :enable_snippet_result_summary, as: 'enableSnippetResultSummary'
          property :enable_summarization, as: 'enableSummarization'
          collection :facet_field, as: 'facetField', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigFacetField, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigFacetField::Representation
      
          hash :fields_ui_components_map, as: 'fieldsUiComponentsMap', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigUiComponentField, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigUiComponentField::Representation
      
          property :llm_enabled, as: 'llmEnabled'
          property :minimum_data_term_accepted, as: 'minimumDataTermAccepted'
          property :name, as: 'name'
          property :result_display_type, as: 'resultDisplayType'
          property :solution_type, as: 'solutionType'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConfigFacetField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :field, as: 'field'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConfigUiComponentField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :device_visibility, as: 'deviceVisibility'
          property :display_template, as: 'displayTemplate'
          property :field, as: 'field'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConverseConversationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :additional_params, as: 'additionalParams', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdditionalParams, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdditionalParams::Representation
      
          property :config_id, as: 'configId'
          property :conversation_id, as: 'conversationId'
          property :converse_conversation_request, as: 'converseConversationRequest', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConverseConversationRequest, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConverseConversationRequest::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConverseConversationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation_id, as: 'conversationId'
          property :converse_conversation_response, as: 'converseConversationResponse', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConverseConversationResponse, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConverseConversationResponse::Representation
      
          property :u_token, as: 'uToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetSearchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :additional_params, as: 'additionalParams', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdditionalParams, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdditionalParams::Representation
      
          property :config_id, as: 'configId'
          property :search_request, as: 'searchRequest', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequest, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequest::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetSearchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :search_response, as: 'searchResponse', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponse, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponse::Representation
      
          property :u_token, as: 'uToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaCreateSchemaMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDeleteSchemaMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportDocumentsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportErrorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_prefix, as: 'gcsPrefix'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportUserEventsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          property :joined_events_count, :numeric_string => true, as: 'joinedEventsCount'
          property :unjoined_events_count, :numeric_string => true, as: 'unjoinedEventsCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaPurgeDocumentsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaPurgeDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :purge_count, :numeric_string => true, as: 'purgeCount'
          collection :purge_sample, as: 'purgeSample'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :json_schema, as: 'jsonSchema'
          property :name, as: 'name'
          hash :struct_schema, as: 'structSchema'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaUpdateSchemaMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
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
