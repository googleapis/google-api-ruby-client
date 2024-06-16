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
    module DiscoveryengineV1
      
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
      
      class GoogleCloudDiscoveryengineV1AlloyDbSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1Answer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerCitation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerCitationSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestAnswerGenerationSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestAnswerGenerationSpecModelSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestAnswerGenerationSpecPromptSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpecQueryClassificationSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpecQueryRephraserSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestRelatedQuestionsSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestSafetySpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultChunkInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoDocumentContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoExtractiveAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoExtractiveSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryUnderstandingInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryUnderstandingInfoQueryClassificationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerReferenceChunkInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerReferenceChunkInfoDocumentMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerReferenceUnstructuredDocumentInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerReferenceUnstructuredDocumentInfoChunkContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerStepAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerStepActionObservation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResultChunkInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResultSnippetInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerStepActionSearchAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1BatchCreateTargetSiteMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1BatchCreateTargetSitesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1BatchCreateTargetSitesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1BatchVerifyTargetSitesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1BigQuerySource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1BigtableOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1BigtableOptionsBigtableColumn
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1BigtableOptionsBigtableColumnFamily
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1BigtableSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1CheckGroundingRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1CheckGroundingResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1CheckGroundingResponseClaim
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1CheckGroundingSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1Chunk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ChunkChunkMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ChunkDocumentMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ChunkPageSpan
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1CloudSqlSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1CompleteQueryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1CompleteQueryResponseQuerySuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1CompletionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1Condition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ConditionQueryTerm
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ConditionTimeRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1Control
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ControlBoostAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ControlFilterAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ControlRedirectAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ControlSynonymsAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1Conversation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ConversationContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ConversationMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ConverseConversationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ConverseConversationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1CreateDataStoreMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1CreateEngineMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1CreateSchemaMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1CreateTargetSiteMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1CreateTargetSiteRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1CustomAttribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DataStore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DeleteDataStoreMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DeleteEngineMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DeleteSchemaMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DeleteTargetSiteMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DisableAdvancedSiteSearchMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DisableAdvancedSiteSearchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DisableAdvancedSiteSearchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1Document
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DocumentContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DocumentInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DocumentProcessingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DocumentProcessingConfigChunkingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigDigitalParsingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigLayoutParsingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigOcrParsingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1EnableAdvancedSiteSearchMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1EnableAdvancedSiteSearchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1EnableAdvancedSiteSearchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1Engine
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1EngineChatEngineConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1EngineChatEngineConfigAgentCreationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1EngineChatEngineMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1EngineCommonConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1EngineSearchEngineConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1FactChunk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1FetchDomainVerificationStatusResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1FhirStoreSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1FirestoreSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1GcsSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1GroundingFact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ImportDocumentsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ImportDocumentsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ImportDocumentsRequestInlineSource
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
      
      class GoogleCloudDiscoveryengineV1ImportSuggestionDenyListEntriesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ImportSuggestionDenyListEntriesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ImportSuggestionDenyListEntriesRequestInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ImportSuggestionDenyListEntriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ImportUserEventsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ImportUserEventsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ImportUserEventsRequestInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ImportUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1Interval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ListControlsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ListConversationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ListDataStoresResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ListDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ListEnginesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ListSchemasResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ListSessionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ListTargetSitesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1MediaInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1PageInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1PanelInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1Project
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ProjectServiceTerms
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ProvisionProjectMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ProvisionProjectRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1PurgeDocumentsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1PurgeDocumentsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1PurgeDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1PurgeSuggestionDenyListEntriesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1PurgeSuggestionDenyListEntriesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1PurgeSuggestionDenyListEntriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1Query
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1RankRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1RankResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1RankingRecord
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1RecommendRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1RecommendResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1RecommendResponseRecommendationResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1RecrawlUrisRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1Reply
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1Schema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestBoostSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestBoostSpecConditionBoostSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecChunkSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecExtractiveContentSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSnippetSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpecModelPromptSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpecModelSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestDataStoreSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestFacetSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestFacetSpecFacetKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestImageQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestQueryExpansionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestSpellCorrectionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseFacet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseFacetFacetValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseQueryExpansionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseSearchResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseSummaryCitation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseSummaryCitationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseSummaryCitationSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseSummaryReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseSummaryReferenceChunkContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseSummarySafetyAttributes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseSummarySummaryWithMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1Session
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SessionTurn
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SiteSearchEngine
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SiteVerificationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SpannerSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SuggestionDenyListEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1TargetSite
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1TargetSiteFailureReason
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1TargetSiteFailureReasonQuotaFailure
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1TextInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1TransactionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1UpdateSchemaMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1UpdateTargetSiteMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1UserEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1UserInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAclConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerCitation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerCitationSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryUnderstandingInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryUnderstandingInfoQueryClassificationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerReferenceChunkInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerReferenceChunkInfoDocumentMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerReferenceUnstructuredDocumentInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerReferenceUnstructuredDocumentInfoChunkContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerStepAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservationSearchResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservationSearchResultChunkInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservationSearchResultSnippetInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerStepActionSearchAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaBatchCreateTargetSiteMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaBatchCreateTargetSitesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaConditionQueryTerm
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaConditionTimeRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaControl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaControlBoostAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaControlFilterAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaControlRedirectAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaControlSynonymsAction
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
      
      class GoogleCloudDiscoveryengineV1alphaCustomTuningModel
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
      
      class GoogleCloudDiscoveryengineV1alphaDisableAdvancedSiteSearchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigChunkingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfigDigitalParsingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfigLayoutParsingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfigOcrParsingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEnableAdvancedSiteSearchMetadata
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
      
      class GoogleCloudDiscoveryengineV1alphaEstimateDataSizeMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEstimateDataSizeResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaFieldConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaIdpConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaIdpConfigExternalIdpConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportDocumentsMetadata
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
      
      class GoogleCloudDiscoveryengineV1alphaImportSuggestionDenyListEntriesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportSuggestionDenyListEntriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportUserEventsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaLanguageInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListCustomModelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaProject
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaProjectServiceTerms
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaProvisionProjectMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeDocumentsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeSuggestionDenyListEntriesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeSuggestionDenyListEntriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeUserEventsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecrawlUrisMetadata
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
      
      class GoogleCloudDiscoveryengineV1alphaSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSession
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSessionTurn
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
      
      class GoogleCloudDiscoveryengineV1alphaTrainCustomModelMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaTrainCustomModelResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaTuneEngineMetadata
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
      
      class GoogleCloudDiscoveryengineV1betaBatchCreateTargetSiteMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaBatchCreateTargetSitesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaConditionQueryTerm
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaConditionTimeRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaControl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaControlBoostAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaControlFilterAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaControlRedirectAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaControlSynonymsAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaCreateDataStoreMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaCreateEngineMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaCreateSchemaMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaCreateTargetSiteMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaCustomTuningModel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDataStore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDeleteDataStoreMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDeleteEngineMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDeleteSchemaMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDeleteTargetSiteMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDisableAdvancedSiteSearchMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDisableAdvancedSiteSearchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDocumentProcessingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigChunkingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfigDigitalParsingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfigLayoutParsingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfigOcrParsingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaEnableAdvancedSiteSearchMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaEnableAdvancedSiteSearchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaEngine
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineChatEngineConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineChatEngineConfigAgentCreationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineChatEngineMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineCommonConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineSearchEngineConfig
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
      
      class GoogleCloudDiscoveryengineV1betaImportSuggestionDenyListEntriesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportSuggestionDenyListEntriesResponse
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
      
      class GoogleCloudDiscoveryengineV1betaLanguageInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaListCustomModelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaProject
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaProjectServiceTerms
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaProvisionProjectMetadata
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
      
      class GoogleCloudDiscoveryengineV1betaPurgeSuggestionDenyListEntriesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaPurgeSuggestionDenyListEntriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSiteVerificationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaTargetSite
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaTargetSiteFailureReason
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaTargetSiteFailureReasonQuotaFailure
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaTrainCustomModelMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaTrainCustomModelResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaTuneEngineMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaTuneEngineResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaUpdateSchemaMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaUpdateTargetSiteMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningCancelOperationRequest
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
          property :http_request, as: 'httpRequest', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineLoggingHttpRequestContext, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineLoggingHttpRequestContext::Representation
      
          property :report_location, as: 'reportLocation', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineLoggingSourceLocation, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineLoggingSourceLocation::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineLoggingErrorLog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context, as: 'context', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineLoggingErrorContext, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineLoggingErrorContext::Representation
      
          property :import_payload, as: 'importPayload', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineLoggingImportErrorContext, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineLoggingImportErrorContext::Representation
      
          property :message, as: 'message'
          hash :request_payload, as: 'requestPayload'
          hash :response_payload, as: 'responsePayload'
          property :service_context, as: 'serviceContext', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineLoggingServiceContext, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineLoggingServiceContext::Representation
      
          property :status, as: 'status', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1AlloyDbSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          property :database_id, as: 'databaseId'
          property :gcs_staging_dir, as: 'gcsStagingDir'
          property :location_id, as: 'locationId'
          property :project_id, as: 'projectId'
          property :table_id, as: 'tableId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1Answer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :answer_skipped_reasons, as: 'answerSkippedReasons'
          property :answer_text, as: 'answerText'
          collection :citations, as: 'citations', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerCitation, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerCitation::Representation
      
          property :complete_time, as: 'completeTime'
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :query_understanding_info, as: 'queryUnderstandingInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryUnderstandingInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryUnderstandingInfo::Representation
      
          collection :references, as: 'references', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerReference, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerReference::Representation
      
          collection :related_questions, as: 'relatedQuestions'
          property :state, as: 'state'
          collection :steps, as: 'steps', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerStep, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerStep::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerCitation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_index, :numeric_string => true, as: 'endIndex'
          collection :sources, as: 'sources', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerCitationSource, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerCitationSource::Representation
      
          property :start_index, :numeric_string => true, as: 'startIndex'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerCitationSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reference_id, as: 'referenceId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer_generation_spec, as: 'answerGenerationSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestAnswerGenerationSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestAnswerGenerationSpec::Representation
      
          property :asynchronous_mode, as: 'asynchronousMode'
          property :query, as: 'query', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Query, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Query::Representation
      
          property :query_understanding_spec, as: 'queryUnderstandingSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpec::Representation
      
          property :related_questions_spec, as: 'relatedQuestionsSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestRelatedQuestionsSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestRelatedQuestionsSpec::Representation
      
          property :safety_spec, as: 'safetySpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestSafetySpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestSafetySpec::Representation
      
          property :search_spec, as: 'searchSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpec::Representation
      
          property :session, as: 'session'
          hash :user_labels, as: 'userLabels'
          property :user_pseudo_id, as: 'userPseudoId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestAnswerGenerationSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer_language_code, as: 'answerLanguageCode'
          property :ignore_adversarial_query, as: 'ignoreAdversarialQuery'
          property :ignore_low_relevant_content, as: 'ignoreLowRelevantContent'
          property :ignore_non_answer_seeking_query, as: 'ignoreNonAnswerSeekingQuery'
          property :include_citations, as: 'includeCitations'
          property :model_spec, as: 'modelSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestAnswerGenerationSpecModelSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestAnswerGenerationSpecModelSpec::Representation
      
          property :prompt_spec, as: 'promptSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestAnswerGenerationSpecPromptSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestAnswerGenerationSpecPromptSpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestAnswerGenerationSpecModelSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model_version, as: 'modelVersion'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestAnswerGenerationSpecPromptSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :preamble, as: 'preamble'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query_classification_spec, as: 'queryClassificationSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpecQueryClassificationSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpecQueryClassificationSpec::Representation
      
          property :query_rephraser_spec, as: 'queryRephraserSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpecQueryRephraserSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpecQueryRephraserSpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpecQueryClassificationSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :types, as: 'types'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpecQueryRephraserSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable, as: 'disable'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestRelatedQuestionsSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable, as: 'enable'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestSafetySpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable, as: 'enable'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :search_params, as: 'searchParams', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchParams, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchParams::Representation
      
          property :search_result_list, as: 'searchResultList', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultList, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultList::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost_spec, as: 'boostSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestBoostSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestBoostSpec::Representation
      
          collection :data_store_specs, as: 'dataStoreSpecs', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestDataStoreSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestDataStoreSpec::Representation
      
          property :filter, as: 'filter'
          property :max_return_results, as: 'maxReturnResults'
          property :order_by, as: 'orderBy'
          property :search_result_mode, as: 'searchResultMode'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :search_results, as: 'searchResults', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResult, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResult::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk_info, as: 'chunkInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultChunkInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultChunkInfo::Representation
      
          property :unstructured_document_info, as: 'unstructuredDocumentInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfo::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultChunkInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk, as: 'chunk'
          property :content, as: 'content'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document'
          collection :document_contexts, as: 'documentContexts', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoDocumentContext, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoDocumentContext::Representation
      
          collection :extractive_answers, as: 'extractiveAnswers', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoExtractiveAnswer, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoExtractiveAnswer::Representation
      
          collection :extractive_segments, as: 'extractiveSegments', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoExtractiveSegment, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoExtractiveSegment::Representation
      
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoDocumentContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :page_identifier, as: 'pageIdentifier'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoExtractiveAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :page_identifier, as: 'pageIdentifier'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoExtractiveSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :page_identifier, as: 'pageIdentifier'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer, as: 'answer', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Answer, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Answer::Representation
      
          property :answer_query_token, as: 'answerQueryToken'
          property :session, as: 'session', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Session, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Session::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryUnderstandingInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :query_classification_info, as: 'queryClassificationInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryUnderstandingInfoQueryClassificationInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryUnderstandingInfoQueryClassificationInfo::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryUnderstandingInfoQueryClassificationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :positive, as: 'positive'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk_info, as: 'chunkInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerReferenceChunkInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerReferenceChunkInfo::Representation
      
          property :unstructured_document_info, as: 'unstructuredDocumentInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerReferenceUnstructuredDocumentInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerReferenceUnstructuredDocumentInfo::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerReferenceChunkInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk, as: 'chunk'
          property :content, as: 'content'
          property :document_metadata, as: 'documentMetadata', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerReferenceChunkInfoDocumentMetadata, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerReferenceChunkInfoDocumentMetadata::Representation
      
          property :relevance_score, as: 'relevanceScore'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerReferenceChunkInfoDocumentMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document'
          property :page_identifier, as: 'pageIdentifier'
          hash :struct_data, as: 'structData'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerReferenceUnstructuredDocumentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :chunk_contents, as: 'chunkContents', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerReferenceUnstructuredDocumentInfoChunkContent, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerReferenceUnstructuredDocumentInfoChunkContent::Representation
      
          property :document, as: 'document'
          hash :struct_data, as: 'structData'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerReferenceUnstructuredDocumentInfoChunkContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :page_identifier, as: 'pageIdentifier'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :actions, as: 'actions', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerStepAction, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerStepAction::Representation
      
          property :description, as: 'description'
          property :state, as: 'state'
          property :thought, as: 'thought'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerStepAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :observation, as: 'observation', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerStepActionObservation, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerStepActionObservation::Representation
      
          property :search_action, as: 'searchAction', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerStepActionSearchAction, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerStepActionSearchAction::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerStepActionObservation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :search_results, as: 'searchResults', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResult, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResult::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :chunk_info, as: 'chunkInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResultChunkInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResultChunkInfo::Representation
      
          property :document, as: 'document'
          collection :snippet_info, as: 'snippetInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResultSnippetInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResultSnippetInfo::Representation
      
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResultChunkInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk, as: 'chunk'
          property :content, as: 'content'
          property :relevance_score, as: 'relevanceScore'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResultSnippetInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :snippet, as: 'snippet'
          property :snippet_status, as: 'snippetStatus'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerStepActionSearchAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query, as: 'query'
        end
      end
      
      class GoogleCloudDiscoveryengineV1BatchCreateTargetSiteMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1BatchCreateTargetSitesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :requests, as: 'requests', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1CreateTargetSiteRequest, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1CreateTargetSiteRequest::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1BatchCreateTargetSitesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :target_sites, as: 'targetSites', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1TargetSite, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1TargetSite::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1BatchVerifyTargetSitesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1BigQuerySource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_schema, as: 'dataSchema'
          property :dataset_id, as: 'datasetId'
          property :gcs_staging_dir, as: 'gcsStagingDir'
          property :partition_date, as: 'partitionDate', class: Google::Apis::DiscoveryengineV1::GoogleTypeDate, decorator: Google::Apis::DiscoveryengineV1::GoogleTypeDate::Representation
      
          property :project_id, as: 'projectId'
          property :table_id, as: 'tableId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1BigtableOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :families, as: 'families', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1BigtableOptionsBigtableColumnFamily, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1BigtableOptionsBigtableColumnFamily::Representation
      
          property :key_field_name, as: 'keyFieldName'
        end
      end
      
      class GoogleCloudDiscoveryengineV1BigtableOptionsBigtableColumn
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encoding, as: 'encoding'
          property :field_name, as: 'fieldName'
          property :qualifier, :base64 => true, as: 'qualifier'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDiscoveryengineV1BigtableOptionsBigtableColumnFamily
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :columns, as: 'columns', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1BigtableOptionsBigtableColumn, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1BigtableOptionsBigtableColumn::Representation
      
          property :encoding, as: 'encoding'
          property :field_name, as: 'fieldName'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDiscoveryengineV1BigtableSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigtable_options, as: 'bigtableOptions', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1BigtableOptions, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1BigtableOptions::Representation
      
          property :instance_id, as: 'instanceId'
          property :project_id, as: 'projectId'
          property :table_id, as: 'tableId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1CheckGroundingRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer_candidate, as: 'answerCandidate'
          collection :facts, as: 'facts', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1GroundingFact, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1GroundingFact::Representation
      
          property :grounding_spec, as: 'groundingSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1CheckGroundingSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1CheckGroundingSpec::Representation
      
          hash :user_labels, as: 'userLabels'
        end
      end
      
      class GoogleCloudDiscoveryengineV1CheckGroundingResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cited_chunks, as: 'citedChunks', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1FactChunk, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1FactChunk::Representation
      
          collection :claims, as: 'claims', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1CheckGroundingResponseClaim, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1CheckGroundingResponseClaim::Representation
      
          property :support_score, as: 'supportScore'
        end
      end
      
      class GoogleCloudDiscoveryengineV1CheckGroundingResponseClaim
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :citation_indices, as: 'citationIndices'
          property :claim_text, as: 'claimText'
          property :end_pos, as: 'endPos'
          property :grounding_check_required, as: 'groundingCheckRequired'
          property :start_pos, as: 'startPos'
        end
      end
      
      class GoogleCloudDiscoveryengineV1CheckGroundingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :citation_threshold, as: 'citationThreshold'
        end
      end
      
      class GoogleCloudDiscoveryengineV1Chunk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk_metadata, as: 'chunkMetadata', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ChunkChunkMetadata, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ChunkChunkMetadata::Representation
      
          property :content, as: 'content'
          hash :derived_struct_data, as: 'derivedStructData'
          property :document_metadata, as: 'documentMetadata', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ChunkDocumentMetadata, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ChunkDocumentMetadata::Representation
      
          property :id, as: 'id'
          property :name, as: 'name'
          property :page_span, as: 'pageSpan', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ChunkPageSpan, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ChunkPageSpan::Representation
      
          property :relevance_score, as: 'relevanceScore'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ChunkChunkMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :next_chunks, as: 'nextChunks', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Chunk, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Chunk::Representation
      
          collection :previous_chunks, as: 'previousChunks', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Chunk, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Chunk::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1ChunkDocumentMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :struct_data, as: 'structData'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ChunkPageSpan
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :page_end, as: 'pageEnd'
          property :page_start, as: 'pageStart'
        end
      end
      
      class GoogleCloudDiscoveryengineV1CloudSqlSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database_id, as: 'databaseId'
          property :gcs_staging_dir, as: 'gcsStagingDir'
          property :instance_id, as: 'instanceId'
          property :offload, as: 'offload'
          property :project_id, as: 'projectId'
          property :table_id, as: 'tableId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1CompleteQueryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :query_suggestions, as: 'querySuggestions', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1CompleteQueryResponseQuerySuggestion, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1CompleteQueryResponseQuerySuggestion::Representation
      
          property :tail_match_triggered, as: 'tailMatchTriggered'
        end
      end
      
      class GoogleCloudDiscoveryengineV1CompleteQueryResponseQuerySuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :completable_field_paths, as: 'completableFieldPaths'
          property :suggestion, as: 'suggestion'
        end
      end
      
      class GoogleCloudDiscoveryengineV1CompletionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :selected_position, as: 'selectedPosition'
          property :selected_suggestion, as: 'selectedSuggestion'
        end
      end
      
      class GoogleCloudDiscoveryengineV1Condition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :active_time_range, as: 'activeTimeRange', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ConditionTimeRange, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ConditionTimeRange::Representation
      
          collection :query_terms, as: 'queryTerms', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ConditionQueryTerm, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ConditionQueryTerm::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1ConditionQueryTerm
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :full_match, as: 'fullMatch'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ConditionTimeRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1Control
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :associated_serving_config_ids, as: 'associatedServingConfigIds'
          property :boost_action, as: 'boostAction', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ControlBoostAction, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ControlBoostAction::Representation
      
          collection :conditions, as: 'conditions', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Condition, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Condition::Representation
      
          property :display_name, as: 'displayName'
          property :filter_action, as: 'filterAction', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ControlFilterAction, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ControlFilterAction::Representation
      
          property :name, as: 'name'
          property :redirect_action, as: 'redirectAction', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ControlRedirectAction, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ControlRedirectAction::Representation
      
          property :solution_type, as: 'solutionType'
          property :synonyms_action, as: 'synonymsAction', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ControlSynonymsAction, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ControlSynonymsAction::Representation
      
          collection :use_cases, as: 'useCases'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ControlBoostAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost, as: 'boost'
          property :data_store, as: 'dataStore'
          property :filter, as: 'filter'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ControlFilterAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_store, as: 'dataStore'
          property :filter, as: 'filter'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ControlRedirectAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :redirect_uri, as: 'redirectUri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ControlSynonymsAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :synonyms, as: 'synonyms'
        end
      end
      
      class GoogleCloudDiscoveryengineV1Conversation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          collection :messages, as: 'messages', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ConversationMessage, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ConversationMessage::Representation
      
          property :name, as: 'name'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :user_pseudo_id, as: 'userPseudoId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ConversationContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active_document, as: 'activeDocument'
          collection :context_documents, as: 'contextDocuments'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ConversationMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :reply, as: 'reply', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Reply, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Reply::Representation
      
          property :user_input, as: 'userInput', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1TextInput, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1TextInput::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1ConverseConversationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost_spec, as: 'boostSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestBoostSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestBoostSpec::Representation
      
          property :conversation, as: 'conversation', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Conversation, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Conversation::Representation
      
          property :filter, as: 'filter'
          property :query, as: 'query', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1TextInput, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1TextInput::Representation
      
          property :safe_search, as: 'safeSearch'
          property :serving_config, as: 'servingConfig'
          property :summary_spec, as: 'summarySpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpec::Representation
      
          hash :user_labels, as: 'userLabels'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ConverseConversationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation, as: 'conversation', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Conversation, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Conversation::Representation
      
          property :reply, as: 'reply', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Reply, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Reply::Representation
      
          collection :search_results, as: 'searchResults', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseSearchResult, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseSearchResult::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1CreateDataStoreMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1CreateEngineMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1CreateSchemaMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1CreateTargetSiteMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1CreateTargetSiteRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parent, as: 'parent'
          property :target_site, as: 'targetSite', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1TargetSite, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1TargetSite::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1CustomAttribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :numbers, as: 'numbers'
          collection :text, as: 'text'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DataStore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_config, as: 'contentConfig'
          property :create_time, as: 'createTime'
          property :default_schema_id, as: 'defaultSchemaId'
          property :display_name, as: 'displayName'
          property :document_processing_config, as: 'documentProcessingConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DocumentProcessingConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DocumentProcessingConfig::Representation
      
          property :industry_vertical, as: 'industryVertical'
          property :name, as: 'name'
          collection :solution_types, as: 'solutionTypes'
          property :starting_schema, as: 'startingSchema', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Schema, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Schema::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1DeleteDataStoreMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DeleteEngineMetadata
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
      
      class GoogleCloudDiscoveryengineV1DeleteTargetSiteMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DisableAdvancedSiteSearchMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DisableAdvancedSiteSearchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1DisableAdvancedSiteSearchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1Document
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DocumentContent, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DocumentContent::Representation
      
          hash :derived_struct_data, as: 'derivedStructData'
          property :id, as: 'id'
          property :index_time, as: 'indexTime'
          property :json_data, as: 'jsonData'
          property :name, as: 'name'
          property :parent_document_id, as: 'parentDocumentId'
          property :schema_id, as: 'schemaId'
          hash :struct_data, as: 'structData'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DocumentContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mime_type, as: 'mimeType'
          property :raw_bytes, :base64 => true, as: 'rawBytes'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DocumentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
          collection :promotion_ids, as: 'promotionIds'
          property :quantity, as: 'quantity'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DocumentProcessingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunking_config, as: 'chunkingConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DocumentProcessingConfigChunkingConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DocumentProcessingConfigChunkingConfig::Representation
      
          property :default_parsing_config, as: 'defaultParsingConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfig::Representation
      
          property :name, as: 'name'
          hash :parsing_config_overrides, as: 'parsingConfigOverrides', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1DocumentProcessingConfigChunkingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :layout_based_chunking_config, as: 'layoutBasedChunkingConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1DocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk_size, as: 'chunkSize'
          property :include_ancestor_headings, as: 'includeAncestorHeadings'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :digital_parsing_config, as: 'digitalParsingConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigDigitalParsingConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigDigitalParsingConfig::Representation
      
          property :layout_parsing_config, as: 'layoutParsingConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigLayoutParsingConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigLayoutParsingConfig::Representation
      
          property :ocr_parsing_config, as: 'ocrParsingConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigOcrParsingConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigOcrParsingConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigDigitalParsingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigLayoutParsingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigOcrParsingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :enhanced_document_elements, as: 'enhancedDocumentElements'
          property :use_native_text, as: 'useNativeText'
        end
      end
      
      class GoogleCloudDiscoveryengineV1EnableAdvancedSiteSearchMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1EnableAdvancedSiteSearchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1EnableAdvancedSiteSearchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1Engine
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chat_engine_config, as: 'chatEngineConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1EngineChatEngineConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1EngineChatEngineConfig::Representation
      
          property :chat_engine_metadata, as: 'chatEngineMetadata', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1EngineChatEngineMetadata, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1EngineChatEngineMetadata::Representation
      
          property :common_config, as: 'commonConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1EngineCommonConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1EngineCommonConfig::Representation
      
          property :create_time, as: 'createTime'
          collection :data_store_ids, as: 'dataStoreIds'
          property :display_name, as: 'displayName'
          property :industry_vertical, as: 'industryVertical'
          property :name, as: 'name'
          property :search_engine_config, as: 'searchEngineConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1EngineSearchEngineConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1EngineSearchEngineConfig::Representation
      
          property :solution_type, as: 'solutionType'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1EngineChatEngineConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_creation_config, as: 'agentCreationConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1EngineChatEngineConfigAgentCreationConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1EngineChatEngineConfigAgentCreationConfig::Representation
      
          property :dialogflow_agent_to_link, as: 'dialogflowAgentToLink'
        end
      end
      
      class GoogleCloudDiscoveryengineV1EngineChatEngineConfigAgentCreationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :business, as: 'business'
          property :default_language_code, as: 'defaultLanguageCode'
          property :location, as: 'location'
          property :time_zone, as: 'timeZone'
        end
      end
      
      class GoogleCloudDiscoveryengineV1EngineChatEngineMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dialogflow_agent, as: 'dialogflowAgent'
        end
      end
      
      class GoogleCloudDiscoveryengineV1EngineCommonConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :company_name, as: 'companyName'
        end
      end
      
      class GoogleCloudDiscoveryengineV1EngineSearchEngineConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :search_add_ons, as: 'searchAddOns'
          property :search_tier, as: 'searchTier'
        end
      end
      
      class GoogleCloudDiscoveryengineV1FactChunk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk_text, as: 'chunkText'
          property :index, as: 'index'
          property :source, as: 'source'
          hash :source_metadata, as: 'sourceMetadata'
        end
      end
      
      class GoogleCloudDiscoveryengineV1FetchDomainVerificationStatusResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :target_sites, as: 'targetSites', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1TargetSite, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1TargetSite::Representation
      
          property :total_size, as: 'totalSize'
        end
      end
      
      class GoogleCloudDiscoveryengineV1FhirStoreSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fhir_store, as: 'fhirStore'
          property :gcs_staging_dir, as: 'gcsStagingDir'
        end
      end
      
      class GoogleCloudDiscoveryengineV1FirestoreSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :collection_id, as: 'collectionId'
          property :database_id, as: 'databaseId'
          property :gcs_staging_dir, as: 'gcsStagingDir'
          property :project_id, as: 'projectId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1GcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_schema, as: 'dataSchema'
          collection :input_uris, as: 'inputUris'
        end
      end
      
      class GoogleCloudDiscoveryengineV1GroundingFact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes'
          property :fact_text, as: 'factText'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ImportDocumentsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :total_count, :numeric_string => true, as: 'totalCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ImportDocumentsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alloy_db_source, as: 'alloyDbSource', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AlloyDbSource, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AlloyDbSource::Representation
      
          property :auto_generate_ids, as: 'autoGenerateIds'
          property :bigquery_source, as: 'bigquerySource', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1BigQuerySource, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1BigQuerySource::Representation
      
          property :bigtable_source, as: 'bigtableSource', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1BigtableSource, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1BigtableSource::Representation
      
          property :cloud_sql_source, as: 'cloudSqlSource', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1CloudSqlSource, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1CloudSqlSource::Representation
      
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ImportErrorConfig::Representation
      
          property :fhir_store_source, as: 'fhirStoreSource', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1FhirStoreSource, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1FhirStoreSource::Representation
      
          property :firestore_source, as: 'firestoreSource', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1FirestoreSource, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1FirestoreSource::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1GcsSource, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1GcsSource::Representation
      
          property :id_field, as: 'idField'
          property :inline_source, as: 'inlineSource', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ImportDocumentsRequestInlineSource, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ImportDocumentsRequestInlineSource::Representation
      
          property :reconciliation_mode, as: 'reconciliationMode'
          property :spanner_source, as: 'spannerSource', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SpannerSource, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SpannerSource::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ImportDocumentsRequestInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :documents, as: 'documents', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Document, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Document::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1ImportDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1ImportErrorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_prefix, as: 'gcsPrefix'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ImportSuggestionDenyListEntriesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ImportSuggestionDenyListEntriesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_source, as: 'gcsSource', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1GcsSource, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1GcsSource::Representation
      
          property :inline_source, as: 'inlineSource', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ImportSuggestionDenyListEntriesRequestInlineSource, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ImportSuggestionDenyListEntriesRequestInlineSource::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1ImportSuggestionDenyListEntriesRequestInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SuggestionDenyListEntry, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SuggestionDenyListEntry::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1ImportSuggestionDenyListEntriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
          property :failed_entries_count, :numeric_string => true, as: 'failedEntriesCount'
          property :imported_entries_count, :numeric_string => true, as: 'importedEntriesCount'
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
      
      class GoogleCloudDiscoveryengineV1ImportUserEventsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_source, as: 'bigquerySource', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1BigQuerySource, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1BigQuerySource::Representation
      
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ImportErrorConfig::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1GcsSource, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1GcsSource::Representation
      
          property :inline_source, as: 'inlineSource', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ImportUserEventsRequestInlineSource, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ImportUserEventsRequestInlineSource::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1ImportUserEventsRequestInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :user_events, as: 'userEvents', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1UserEvent, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1UserEvent::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1ImportUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
          property :joined_events_count, :numeric_string => true, as: 'joinedEventsCount'
          property :unjoined_events_count, :numeric_string => true, as: 'unjoinedEventsCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1Interval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exclusive_maximum, as: 'exclusiveMaximum'
          property :exclusive_minimum, as: 'exclusiveMinimum'
          property :maximum, as: 'maximum'
          property :minimum, as: 'minimum'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ListControlsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :controls, as: 'controls', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Control, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Control::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ListConversationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conversations, as: 'conversations', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Conversation, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Conversation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ListDataStoresResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_stores, as: 'dataStores', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DataStore, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DataStore::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ListDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :documents, as: 'documents', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Document, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Document::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ListEnginesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :engines, as: 'engines', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Engine, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Engine::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ListSchemasResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :schemas, as: 'schemas', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Schema, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Schema::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1ListSessionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :sessions, as: 'sessions', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Session, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Session::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1ListTargetSitesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :target_sites, as: 'targetSites', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1TargetSite, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1TargetSite::Representation
      
          property :total_size, as: 'totalSize'
        end
      end
      
      class GoogleCloudDiscoveryengineV1MediaInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :media_progress_duration, as: 'mediaProgressDuration'
          property :media_progress_percentage, as: 'mediaProgressPercentage'
        end
      end
      
      class GoogleCloudDiscoveryengineV1PageInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :page_category, as: 'pageCategory'
          property :pageview_id, as: 'pageviewId'
          property :referrer_uri, as: 'referrerUri'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1PanelInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :panel_id, as: 'panelId'
          property :panel_position, as: 'panelPosition'
          property :total_panels, as: 'totalPanels'
        end
      end
      
      class GoogleCloudDiscoveryengineV1Project
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :provision_completion_time, as: 'provisionCompletionTime'
          hash :service_terms_map, as: 'serviceTermsMap', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ProjectServiceTerms, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ProjectServiceTerms::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1ProjectServiceTerms
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accept_time, as: 'acceptTime'
          property :decline_time, as: 'declineTime'
          property :id, as: 'id'
          property :state, as: 'state'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ProvisionProjectMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1ProvisionProjectRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accept_data_use_terms, as: 'acceptDataUseTerms'
          property :data_use_terms_version, as: 'dataUseTermsVersion'
        end
      end
      
      class GoogleCloudDiscoveryengineV1PurgeDocumentsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :ignored_count, :numeric_string => true, as: 'ignoredCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1PurgeDocumentsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :force, as: 'force'
        end
      end
      
      class GoogleCloudDiscoveryengineV1PurgeDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :purge_count, :numeric_string => true, as: 'purgeCount'
          collection :purge_sample, as: 'purgeSample'
        end
      end
      
      class GoogleCloudDiscoveryengineV1PurgeSuggestionDenyListEntriesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1PurgeSuggestionDenyListEntriesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1PurgeSuggestionDenyListEntriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
          property :purge_count, :numeric_string => true, as: 'purgeCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1Query
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query_id, as: 'queryId'
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDiscoveryengineV1RankRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ignore_record_details_in_response, as: 'ignoreRecordDetailsInResponse'
          property :model, as: 'model'
          property :query, as: 'query'
          collection :records, as: 'records', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1RankingRecord, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1RankingRecord::Representation
      
          property :top_n, as: 'topN'
          hash :user_labels, as: 'userLabels'
        end
      end
      
      class GoogleCloudDiscoveryengineV1RankResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :records, as: 'records', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1RankingRecord, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1RankingRecord::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1RankingRecord
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :id, as: 'id'
          property :score, as: 'score'
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudDiscoveryengineV1RecommendRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :page_size, as: 'pageSize'
          hash :params, as: 'params'
          property :user_event, as: 'userEvent', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1UserEvent, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1UserEvent::Representation
      
          hash :user_labels, as: 'userLabels'
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class GoogleCloudDiscoveryengineV1RecommendResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribution_token, as: 'attributionToken'
          collection :missing_ids, as: 'missingIds'
          collection :results, as: 'results', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1RecommendResponseRecommendationResult, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1RecommendResponseRecommendationResult::Representation
      
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class GoogleCloudDiscoveryengineV1RecommendResponseRecommendationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Document, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Document::Representation
      
          property :id, as: 'id'
          hash :metadata, as: 'metadata'
        end
      end
      
      class GoogleCloudDiscoveryengineV1RecrawlUrisRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :uris, as: 'uris'
        end
      end
      
      class GoogleCloudDiscoveryengineV1Reply
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :summary, as: 'summary', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseSummary, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseSummary::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1SearchInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :offset, as: 'offset'
          property :order_by, as: 'orderBy'
          property :search_query, as: 'searchQuery'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost_spec, as: 'boostSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestBoostSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestBoostSpec::Representation
      
          property :branch, as: 'branch'
          property :canonical_filter, as: 'canonicalFilter'
          property :content_search_spec, as: 'contentSearchSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpec::Representation
      
          collection :data_store_specs, as: 'dataStoreSpecs', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestDataStoreSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestDataStoreSpec::Representation
      
          collection :facet_specs, as: 'facetSpecs', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestFacetSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestFacetSpec::Representation
      
          property :filter, as: 'filter'
          property :image_query, as: 'imageQuery', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestImageQuery, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestImageQuery::Representation
      
          property :language_code, as: 'languageCode'
          property :offset, as: 'offset'
          property :order_by, as: 'orderBy'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          hash :params, as: 'params'
          property :query, as: 'query'
          property :query_expansion_spec, as: 'queryExpansionSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestQueryExpansionSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestQueryExpansionSpec::Representation
      
          property :safe_search, as: 'safeSearch'
          property :spell_correction_spec, as: 'spellCorrectionSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestSpellCorrectionSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestSpellCorrectionSpec::Representation
      
          property :user_info, as: 'userInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1UserInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1UserInfo::Representation
      
          hash :user_labels, as: 'userLabels'
          property :user_pseudo_id, as: 'userPseudoId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :condition_boost_specs, as: 'conditionBoostSpecs', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestBoostSpecConditionBoostSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestBoostSpecConditionBoostSpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestBoostSpecConditionBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost, as: 'boost'
          property :condition, as: 'condition'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk_spec, as: 'chunkSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecChunkSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecChunkSpec::Representation
      
          property :extractive_content_spec, as: 'extractiveContentSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecExtractiveContentSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecExtractiveContentSpec::Representation
      
          property :search_result_mode, as: 'searchResultMode'
          property :snippet_spec, as: 'snippetSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSnippetSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSnippetSpec::Representation
      
          property :summary_spec, as: 'summarySpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecChunkSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :num_next_chunks, as: 'numNextChunks'
          property :num_previous_chunks, as: 'numPreviousChunks'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecExtractiveContentSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_extractive_answer_count, as: 'maxExtractiveAnswerCount'
          property :max_extractive_segment_count, as: 'maxExtractiveSegmentCount'
          property :num_next_segments, as: 'numNextSegments'
          property :num_previous_segments, as: 'numPreviousSegments'
          property :return_extractive_segment_score, as: 'returnExtractiveSegmentScore'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSnippetSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_snippet_count, as: 'maxSnippetCount'
          property :reference_only, as: 'referenceOnly'
          property :return_snippet, as: 'returnSnippet'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ignore_adversarial_query, as: 'ignoreAdversarialQuery'
          property :ignore_non_summary_seeking_query, as: 'ignoreNonSummarySeekingQuery'
          property :include_citations, as: 'includeCitations'
          property :language_code, as: 'languageCode'
          property :model_prompt_spec, as: 'modelPromptSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpecModelPromptSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpecModelPromptSpec::Representation
      
          property :model_spec, as: 'modelSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpecModelSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpecModelSpec::Representation
      
          property :summary_result_count, as: 'summaryResultCount'
          property :use_semantic_chunks, as: 'useSemanticChunks'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpecModelPromptSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :preamble, as: 'preamble'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpecModelSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestDataStoreSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_store, as: 'dataStore'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestFacetSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_dynamic_position, as: 'enableDynamicPosition'
          collection :excluded_filter_keys, as: 'excludedFilterKeys'
          property :facet_key, as: 'facetKey', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestFacetSpecFacetKey, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestFacetSpecFacetKey::Representation
      
          property :limit, as: 'limit'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestFacetSpecFacetKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :case_insensitive, as: 'caseInsensitive'
          collection :contains, as: 'contains'
          collection :intervals, as: 'intervals', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Interval, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Interval::Representation
      
          property :key, as: 'key'
          property :order_by, as: 'orderBy'
          collection :prefixes, as: 'prefixes'
          collection :restricted_values, as: 'restrictedValues'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestImageQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_bytes, as: 'imageBytes'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestQueryExpansionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition'
          property :pin_unexpanded_results, as: 'pinUnexpandedResults'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestSpellCorrectionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribution_token, as: 'attributionToken'
          property :corrected_query, as: 'correctedQuery'
          collection :facets, as: 'facets', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseFacet, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseFacet::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :query_expansion_info, as: 'queryExpansionInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseQueryExpansionInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseQueryExpansionInfo::Representation
      
          property :redirect_uri, as: 'redirectUri'
          collection :results, as: 'results', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseSearchResult, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseSearchResult::Representation
      
          property :summary, as: 'summary', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseSummary, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseSummary::Representation
      
          property :total_size, as: 'totalSize'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseFacet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dynamic_facet, as: 'dynamicFacet'
          property :key, as: 'key'
          collection :values, as: 'values', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseFacetFacetValue, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseFacetFacetValue::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseFacetFacetValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :interval, as: 'interval', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Interval, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Interval::Representation
      
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseQueryExpansionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expanded_query, as: 'expandedQuery'
          property :pinned_result_count, :numeric_string => true, as: 'pinnedResultCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseSearchResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk, as: 'chunk', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Chunk, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Chunk::Representation
      
          property :document, as: 'document', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Document, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Document::Representation
      
          property :id, as: 'id'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :safety_attributes, as: 'safetyAttributes', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseSummarySafetyAttributes, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseSummarySafetyAttributes::Representation
      
          collection :summary_skipped_reasons, as: 'summarySkippedReasons'
          property :summary_text, as: 'summaryText'
          property :summary_with_metadata, as: 'summaryWithMetadata', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseSummarySummaryWithMetadata, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseSummarySummaryWithMetadata::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseSummaryCitation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_index, :numeric_string => true, as: 'endIndex'
          collection :sources, as: 'sources', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseSummaryCitationSource, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseSummaryCitationSource::Representation
      
          property :start_index, :numeric_string => true, as: 'startIndex'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseSummaryCitationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :citations, as: 'citations', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseSummaryCitation, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseSummaryCitation::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseSummaryCitationSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reference_index, :numeric_string => true, as: 'referenceIndex'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseSummaryReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :chunk_contents, as: 'chunkContents', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseSummaryReferenceChunkContent, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseSummaryReferenceChunkContent::Representation
      
          property :document, as: 'document'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseSummaryReferenceChunkContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :page_identifier, as: 'pageIdentifier'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseSummarySafetyAttributes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :categories, as: 'categories'
          collection :scores, as: 'scores'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseSummarySummaryWithMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :citation_metadata, as: 'citationMetadata', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseSummaryCitationMetadata, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseSummaryCitationMetadata::Representation
      
          collection :references, as: 'references', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseSummaryReference, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseSummaryReference::Representation
      
          property :summary, as: 'summary'
        end
      end
      
      class GoogleCloudDiscoveryengineV1Session
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :name, as: 'name'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          collection :turns, as: 'turns', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SessionTurn, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SessionTurn::Representation
      
          property :user_pseudo_id, as: 'userPseudoId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SessionTurn
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer, as: 'answer'
          property :query, as: 'query', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Query, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Query::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1SiteSearchEngine
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SiteVerificationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :site_verification_state, as: 'siteVerificationState'
          property :verify_time, as: 'verifyTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SpannerSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database_id, as: 'databaseId'
          property :enable_data_boost, as: 'enableDataBoost'
          property :instance_id, as: 'instanceId'
          property :project_id, as: 'projectId'
          property :table_id, as: 'tableId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SuggestionDenyListEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :block_phrase, as: 'blockPhrase'
          property :match_operator, as: 'matchOperator'
        end
      end
      
      class GoogleCloudDiscoveryengineV1TargetSite
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exact_match, as: 'exactMatch'
          property :failure_reason, as: 'failureReason', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1TargetSiteFailureReason, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1TargetSiteFailureReason::Representation
      
          property :generated_uri_pattern, as: 'generatedUriPattern'
          property :indexing_status, as: 'indexingStatus'
          property :name, as: 'name'
          property :provided_uri_pattern, as: 'providedUriPattern'
          property :root_domain_uri, as: 'rootDomainUri'
          property :site_verification_info, as: 'siteVerificationInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SiteVerificationInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SiteVerificationInfo::Representation
      
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1TargetSiteFailureReason
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :quota_failure, as: 'quotaFailure', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1TargetSiteFailureReasonQuotaFailure, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1TargetSiteFailureReasonQuotaFailure::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1TargetSiteFailureReasonQuotaFailure
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :total_required_quota, :numeric_string => true, as: 'totalRequiredQuota'
        end
      end
      
      class GoogleCloudDiscoveryengineV1TextInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context, as: 'context', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ConversationContext, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ConversationContext::Representation
      
          property :input, as: 'input'
        end
      end
      
      class GoogleCloudDiscoveryengineV1TransactionInfo
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
      
      class GoogleCloudDiscoveryengineV1UpdateSchemaMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1UpdateTargetSiteMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1UserEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1CustomAttribute, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1CustomAttribute::Representation
      
          property :attribution_token, as: 'attributionToken'
          property :completion_info, as: 'completionInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1CompletionInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1CompletionInfo::Representation
      
          property :data_store, as: 'dataStore'
          property :direct_user_request, as: 'directUserRequest'
          collection :documents, as: 'documents', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DocumentInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DocumentInfo::Representation
      
          property :engine, as: 'engine'
          property :event_time, as: 'eventTime'
          property :event_type, as: 'eventType'
          property :filter, as: 'filter'
          property :media_info, as: 'mediaInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1MediaInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1MediaInfo::Representation
      
          property :page_info, as: 'pageInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1PageInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1PageInfo::Representation
      
          property :panel, as: 'panel', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1PanelInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1PanelInfo::Representation
      
          collection :promotion_ids, as: 'promotionIds'
          property :search_info, as: 'searchInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchInfo::Representation
      
          property :session_id, as: 'sessionId'
          collection :tag_ids, as: 'tagIds'
          property :transaction_info, as: 'transactionInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1TransactionInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1TransactionInfo::Representation
      
          property :user_info, as: 'userInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1UserInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1UserInfo::Representation
      
          property :user_pseudo_id, as: 'userPseudoId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1UserInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :user_agent, as: 'userAgent'
          property :user_id, as: 'userId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAclConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :idp_config, as: 'idpConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaIdpConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaIdpConfig::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :answer_skipped_reasons, as: 'answerSkippedReasons'
          property :answer_text, as: 'answerText'
          collection :citations, as: 'citations', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerCitation, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerCitation::Representation
      
          property :complete_time, as: 'completeTime'
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :query_understanding_info, as: 'queryUnderstandingInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerQueryUnderstandingInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerQueryUnderstandingInfo::Representation
      
          collection :references, as: 'references', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerReference, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerReference::Representation
      
          collection :related_questions, as: 'relatedQuestions'
          property :state, as: 'state'
          collection :steps, as: 'steps', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerStep, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerStep::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerCitation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_index, :numeric_string => true, as: 'endIndex'
          collection :sources, as: 'sources', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerCitationSource, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerCitationSource::Representation
      
          property :start_index, :numeric_string => true, as: 'startIndex'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerCitationSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reference_id, as: 'referenceId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryUnderstandingInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :query_classification_info, as: 'queryClassificationInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerQueryUnderstandingInfoQueryClassificationInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerQueryUnderstandingInfoQueryClassificationInfo::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryUnderstandingInfoQueryClassificationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :positive, as: 'positive'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk_info, as: 'chunkInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerReferenceChunkInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerReferenceChunkInfo::Representation
      
          property :unstructured_document_info, as: 'unstructuredDocumentInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerReferenceUnstructuredDocumentInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerReferenceUnstructuredDocumentInfo::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerReferenceChunkInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk, as: 'chunk'
          property :content, as: 'content'
          property :document_metadata, as: 'documentMetadata', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerReferenceChunkInfoDocumentMetadata, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerReferenceChunkInfoDocumentMetadata::Representation
      
          property :relevance_score, as: 'relevanceScore'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerReferenceChunkInfoDocumentMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document'
          property :page_identifier, as: 'pageIdentifier'
          hash :struct_data, as: 'structData'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerReferenceUnstructuredDocumentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :chunk_contents, as: 'chunkContents', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerReferenceUnstructuredDocumentInfoChunkContent, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerReferenceUnstructuredDocumentInfoChunkContent::Representation
      
          property :document, as: 'document'
          hash :struct_data, as: 'structData'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerReferenceUnstructuredDocumentInfoChunkContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :page_identifier, as: 'pageIdentifier'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :actions, as: 'actions', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerStepAction, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerStepAction::Representation
      
          property :description, as: 'description'
          property :state, as: 'state'
          property :thought, as: 'thought'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerStepAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :observation, as: 'observation', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservation, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservation::Representation
      
          property :search_action, as: 'searchAction', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerStepActionSearchAction, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerStepActionSearchAction::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :search_results, as: 'searchResults', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservationSearchResult, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservationSearchResult::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservationSearchResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :chunk_info, as: 'chunkInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservationSearchResultChunkInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservationSearchResultChunkInfo::Representation
      
          property :document, as: 'document'
          collection :snippet_info, as: 'snippetInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservationSearchResultSnippetInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservationSearchResultSnippetInfo::Representation
      
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservationSearchResultChunkInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk, as: 'chunk'
          property :content, as: 'content'
          property :relevance_score, as: 'relevanceScore'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservationSearchResultSnippetInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :snippet, as: 'snippet'
          property :snippet_status, as: 'snippetStatus'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerStepActionSearchAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query, as: 'query'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaBatchCreateTargetSiteMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaBatchCreateTargetSitesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :target_sites, as: 'targetSites', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaTargetSite, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaTargetSite::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :active_time_range, as: 'activeTimeRange', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaConditionTimeRange, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaConditionTimeRange::Representation
      
          collection :query_terms, as: 'queryTerms', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaConditionQueryTerm, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaConditionQueryTerm::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaConditionQueryTerm
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :full_match, as: 'fullMatch'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaConditionTimeRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaControl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :associated_serving_config_ids, as: 'associatedServingConfigIds'
          property :boost_action, as: 'boostAction', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaControlBoostAction, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaControlBoostAction::Representation
      
          collection :conditions, as: 'conditions', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaCondition, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaCondition::Representation
      
          property :display_name, as: 'displayName'
          property :filter_action, as: 'filterAction', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaControlFilterAction, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaControlFilterAction::Representation
      
          property :name, as: 'name'
          property :redirect_action, as: 'redirectAction', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaControlRedirectAction, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaControlRedirectAction::Representation
      
          property :solution_type, as: 'solutionType'
          property :synonyms_action, as: 'synonymsAction', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaControlSynonymsAction, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaControlSynonymsAction::Representation
      
          collection :use_cases, as: 'useCases'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaControlBoostAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost, as: 'boost'
          property :data_store, as: 'dataStore'
          property :filter, as: 'filter'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaControlFilterAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_store, as: 'dataStore'
          property :filter, as: 'filter'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaControlRedirectAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :redirect_uri, as: 'redirectUri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaControlSynonymsAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :synonyms, as: 'synonyms'
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
      
      class GoogleCloudDiscoveryengineV1alphaCustomTuningModel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :model_state, as: 'modelState'
          property :model_version, :numeric_string => true, as: 'modelVersion'
          property :name, as: 'name'
          property :training_start_time, as: 'trainingStartTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataStore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acl_enabled, as: 'aclEnabled'
          property :content_config, as: 'contentConfig'
          property :create_time, as: 'createTime'
          property :default_schema_id, as: 'defaultSchemaId'
          property :display_name, as: 'displayName'
          property :document_processing_config, as: 'documentProcessingConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig::Representation
      
          property :idp_config, as: 'idpConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaIdpConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaIdpConfig::Representation
      
          property :industry_vertical, as: 'industryVertical'
          property :language_info, as: 'languageInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaLanguageInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaLanguageInfo::Representation
      
          property :name, as: 'name'
          collection :solution_types, as: 'solutionTypes'
          property :starting_schema, as: 'startingSchema', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSchema, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSchema::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1alphaDisableAdvancedSiteSearchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunking_config, as: 'chunkingConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigChunkingConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigChunkingConfig::Representation
      
          property :default_parsing_config, as: 'defaultParsingConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfig::Representation
      
          property :name, as: 'name'
          hash :parsing_config_overrides, as: 'parsingConfigOverrides', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigChunkingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :layout_based_chunking_config, as: 'layoutBasedChunkingConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk_size, as: 'chunkSize'
          property :include_ancestor_headings, as: 'includeAncestorHeadings'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :digital_parsing_config, as: 'digitalParsingConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfigDigitalParsingConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfigDigitalParsingConfig::Representation
      
          property :layout_parsing_config, as: 'layoutParsingConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfigLayoutParsingConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfigLayoutParsingConfig::Representation
      
          property :ocr_parsing_config, as: 'ocrParsingConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfigOcrParsingConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfigOcrParsingConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfigDigitalParsingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfigLayoutParsingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfigOcrParsingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :enhanced_document_elements, as: 'enhancedDocumentElements'
          property :use_native_text, as: 'useNativeText'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEnableAdvancedSiteSearchMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
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
          property :chat_engine_config, as: 'chatEngineConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfig::Representation
      
          property :chat_engine_metadata, as: 'chatEngineMetadata', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEngineChatEngineMetadata, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEngineChatEngineMetadata::Representation
      
          property :common_config, as: 'commonConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEngineCommonConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEngineCommonConfig::Representation
      
          property :create_time, as: 'createTime'
          collection :data_store_ids, as: 'dataStoreIds'
          property :display_name, as: 'displayName'
          property :industry_vertical, as: 'industryVertical'
          property :media_recommendation_engine_config, as: 'mediaRecommendationEngineConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig::Representation
      
          property :name, as: 'name'
          property :recommendation_metadata, as: 'recommendationMetadata', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEngineRecommendationMetadata, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEngineRecommendationMetadata::Representation
      
          property :search_engine_config, as: 'searchEngineConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfig::Representation
      
          property :similar_documents_config, as: 'similarDocumentsConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEngineSimilarDocumentsEngineConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEngineSimilarDocumentsEngineConfig::Representation
      
          property :solution_type, as: 'solutionType'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_creation_config, as: 'agentCreationConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigAgentCreationConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigAgentCreationConfig::Representation
      
          property :dialogflow_agent_to_link, as: 'dialogflowAgentToLink'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigAgentCreationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :business, as: 'business'
          property :default_language_code, as: 'defaultLanguageCode'
          property :location, as: 'location'
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
          property :optimization_objective_config, as: 'optimizationObjectiveConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1alphaEstimateDataSizeMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEstimateDataSizeResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_size_bytes, :numeric_string => true, as: 'dataSizeBytes'
          property :document_count, :numeric_string => true, as: 'documentCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaFieldConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :advanced_site_search_data_sources, as: 'advancedSiteSearchDataSources'
          property :completable_option, as: 'completableOption'
          property :dynamic_facetable_option, as: 'dynamicFacetableOption'
          property :field_path, as: 'fieldPath'
          property :field_type, as: 'fieldType'
          property :indexable_option, as: 'indexableOption'
          property :key_property_type, as: 'keyPropertyType'
          property :recs_filterable_option, as: 'recsFilterableOption'
          property :retrievable_option, as: 'retrievableOption'
          collection :schema_org_paths, as: 'schemaOrgPaths'
          property :searchable_option, as: 'searchableOption'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaIdpConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :external_idp_config, as: 'externalIdpConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaIdpConfigExternalIdpConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaIdpConfigExternalIdpConfig::Representation
      
          property :idp_type, as: 'idpType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaIdpConfigExternalIdpConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :workforce_pool_name, as: 'workforcePoolName'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportDocumentsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :total_count, :numeric_string => true, as: 'totalCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportErrorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_prefix, as: 'gcsPrefix'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportSuggestionDenyListEntriesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportSuggestionDenyListEntriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
          property :failed_entries_count, :numeric_string => true, as: 'failedEntriesCount'
          property :imported_entries_count, :numeric_string => true, as: 'importedEntriesCount'
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
      
      class GoogleCloudDiscoveryengineV1alphaImportUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
          property :joined_events_count, :numeric_string => true, as: 'joinedEventsCount'
          property :unjoined_events_count, :numeric_string => true, as: 'unjoinedEventsCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaLanguageInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language, as: 'language'
          property :language_code, as: 'languageCode'
          property :normalized_language_code, as: 'normalizedLanguageCode'
          property :region, as: 'region'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListCustomModelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :models, as: 'models', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaCustomTuningModel, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaCustomTuningModel::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaProject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :provision_completion_time, as: 'provisionCompletionTime'
          hash :service_terms_map, as: 'serviceTermsMap', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaProjectServiceTerms, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaProjectServiceTerms::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaProjectServiceTerms
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accept_time, as: 'acceptTime'
          property :decline_time, as: 'declineTime'
          property :id, as: 'id'
          property :state, as: 'state'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaProvisionProjectMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeDocumentsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :ignored_count, :numeric_string => true, as: 'ignoredCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :purge_count, :numeric_string => true, as: 'purgeCount'
          collection :purge_sample, as: 'purgeSample'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeSuggestionDenyListEntriesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeSuggestionDenyListEntriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
          property :purge_count, :numeric_string => true, as: 'purgeCount'
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
      
      class GoogleCloudDiscoveryengineV1alphaPurgeUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :purge_count, :numeric_string => true, as: 'purgeCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query_id, as: 'queryId'
          property :text, as: 'text'
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
      
      class GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :failed_uris, as: 'failedUris'
          collection :failure_samples, as: 'failureSamples', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponseFailureInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponseFailureInfo::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponseFailureInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :failure_reasons, as: 'failureReasons', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponseFailureInfoFailureReason, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponseFailureInfoFailureReason::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1alphaSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :field_configs, as: 'fieldConfigs', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaFieldConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaFieldConfig::Representation
      
          property :json_schema, as: 'jsonSchema'
          property :name, as: 'name'
          hash :struct_schema, as: 'structSchema'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSession
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :name, as: 'name'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          collection :turns, as: 'turns', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSessionTurn, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSessionTurn::Representation
      
          property :user_pseudo_id, as: 'userPseudoId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSessionTurn
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer, as: 'answer'
          property :query, as: 'query', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaQuery, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaQuery::Representation
      
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
          property :failure_reason, as: 'failureReason', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaTargetSiteFailureReason, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaTargetSiteFailureReason::Representation
      
          property :generated_uri_pattern, as: 'generatedUriPattern'
          property :indexing_status, as: 'indexingStatus'
          property :name, as: 'name'
          property :provided_uri_pattern, as: 'providedUriPattern'
          property :root_domain_uri, as: 'rootDomainUri'
          property :site_verification_info, as: 'siteVerificationInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSiteVerificationInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSiteVerificationInfo::Representation
      
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaTargetSiteFailureReason
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :quota_failure, as: 'quotaFailure', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaTargetSiteFailureReasonQuotaFailure, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaTargetSiteFailureReasonQuotaFailure::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaTargetSiteFailureReasonQuotaFailure
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :total_required_quota, :numeric_string => true, as: 'totalRequiredQuota'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaTrainCustomModelMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaTrainCustomModelResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
          hash :metrics, as: 'metrics'
          property :model_name, as: 'modelName'
          property :model_status, as: 'modelStatus'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaTuneEngineMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :engine, as: 'engine'
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
      
      class GoogleCloudDiscoveryengineV1betaBatchCreateTargetSiteMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaBatchCreateTargetSitesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :target_sites, as: 'targetSites', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaTargetSite, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaTargetSite::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :active_time_range, as: 'activeTimeRange', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaConditionTimeRange, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaConditionTimeRange::Representation
      
          collection :query_terms, as: 'queryTerms', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaConditionQueryTerm, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaConditionQueryTerm::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaConditionQueryTerm
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :full_match, as: 'fullMatch'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaConditionTimeRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaControl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :associated_serving_config_ids, as: 'associatedServingConfigIds'
          property :boost_action, as: 'boostAction', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaControlBoostAction, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaControlBoostAction::Representation
      
          collection :conditions, as: 'conditions', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaCondition, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaCondition::Representation
      
          property :display_name, as: 'displayName'
          property :filter_action, as: 'filterAction', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaControlFilterAction, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaControlFilterAction::Representation
      
          property :name, as: 'name'
          property :redirect_action, as: 'redirectAction', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaControlRedirectAction, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaControlRedirectAction::Representation
      
          property :solution_type, as: 'solutionType'
          property :synonyms_action, as: 'synonymsAction', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaControlSynonymsAction, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaControlSynonymsAction::Representation
      
          collection :use_cases, as: 'useCases'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaControlBoostAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost, as: 'boost'
          property :data_store, as: 'dataStore'
          property :filter, as: 'filter'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaControlFilterAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_store, as: 'dataStore'
          property :filter, as: 'filter'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaControlRedirectAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :redirect_uri, as: 'redirectUri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaControlSynonymsAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :synonyms, as: 'synonyms'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaCreateDataStoreMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaCreateEngineMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaCreateSchemaMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaCreateTargetSiteMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaCustomTuningModel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :model_state, as: 'modelState'
          property :model_version, :numeric_string => true, as: 'modelVersion'
          property :name, as: 'name'
          property :training_start_time, as: 'trainingStartTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDataStore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_config, as: 'contentConfig'
          property :create_time, as: 'createTime'
          property :default_schema_id, as: 'defaultSchemaId'
          property :display_name, as: 'displayName'
          property :document_processing_config, as: 'documentProcessingConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfig::Representation
      
          property :industry_vertical, as: 'industryVertical'
          property :language_info, as: 'languageInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaLanguageInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaLanguageInfo::Representation
      
          property :name, as: 'name'
          collection :solution_types, as: 'solutionTypes'
          property :starting_schema, as: 'startingSchema', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSchema, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSchema::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDeleteDataStoreMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDeleteEngineMetadata
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
      
      class GoogleCloudDiscoveryengineV1betaDeleteTargetSiteMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDisableAdvancedSiteSearchMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDisableAdvancedSiteSearchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDocumentProcessingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunking_config, as: 'chunkingConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigChunkingConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigChunkingConfig::Representation
      
          property :default_parsing_config, as: 'defaultParsingConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfig::Representation
      
          property :name, as: 'name'
          hash :parsing_config_overrides, as: 'parsingConfigOverrides', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigChunkingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :layout_based_chunking_config, as: 'layoutBasedChunkingConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk_size, as: 'chunkSize'
          property :include_ancestor_headings, as: 'includeAncestorHeadings'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :digital_parsing_config, as: 'digitalParsingConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfigDigitalParsingConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfigDigitalParsingConfig::Representation
      
          property :layout_parsing_config, as: 'layoutParsingConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfigLayoutParsingConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfigLayoutParsingConfig::Representation
      
          property :ocr_parsing_config, as: 'ocrParsingConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfigOcrParsingConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfigOcrParsingConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfigDigitalParsingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfigLayoutParsingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfigOcrParsingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :enhanced_document_elements, as: 'enhancedDocumentElements'
          property :use_native_text, as: 'useNativeText'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEnableAdvancedSiteSearchMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEnableAdvancedSiteSearchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEngine
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chat_engine_config, as: 'chatEngineConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaEngineChatEngineConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaEngineChatEngineConfig::Representation
      
          property :chat_engine_metadata, as: 'chatEngineMetadata', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaEngineChatEngineMetadata, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaEngineChatEngineMetadata::Representation
      
          property :common_config, as: 'commonConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaEngineCommonConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaEngineCommonConfig::Representation
      
          property :create_time, as: 'createTime'
          collection :data_store_ids, as: 'dataStoreIds'
          property :display_name, as: 'displayName'
          property :industry_vertical, as: 'industryVertical'
          property :name, as: 'name'
          property :search_engine_config, as: 'searchEngineConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaEngineSearchEngineConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaEngineSearchEngineConfig::Representation
      
          property :solution_type, as: 'solutionType'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineChatEngineConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_creation_config, as: 'agentCreationConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaEngineChatEngineConfigAgentCreationConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaEngineChatEngineConfigAgentCreationConfig::Representation
      
          property :dialogflow_agent_to_link, as: 'dialogflowAgentToLink'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineChatEngineConfigAgentCreationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :business, as: 'business'
          property :default_language_code, as: 'defaultLanguageCode'
          property :location, as: 'location'
          property :time_zone, as: 'timeZone'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineChatEngineMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dialogflow_agent, as: 'dialogflowAgent'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineCommonConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :company_name, as: 'companyName'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineSearchEngineConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :search_add_ons, as: 'searchAddOns'
          property :search_tier, as: 'searchTier'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportDocumentsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :total_count, :numeric_string => true, as: 'totalCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportErrorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_prefix, as: 'gcsPrefix'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportSuggestionDenyListEntriesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportSuggestionDenyListEntriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
          property :failed_entries_count, :numeric_string => true, as: 'failedEntriesCount'
          property :imported_entries_count, :numeric_string => true, as: 'importedEntriesCount'
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
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
          property :joined_events_count, :numeric_string => true, as: 'joinedEventsCount'
          property :unjoined_events_count, :numeric_string => true, as: 'unjoinedEventsCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaLanguageInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language, as: 'language'
          property :language_code, as: 'languageCode'
          property :normalized_language_code, as: 'normalizedLanguageCode'
          property :region, as: 'region'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaListCustomModelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :models, as: 'models', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaCustomTuningModel, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaCustomTuningModel::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaProject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :provision_completion_time, as: 'provisionCompletionTime'
          hash :service_terms_map, as: 'serviceTermsMap', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaProjectServiceTerms, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaProjectServiceTerms::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaProjectServiceTerms
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accept_time, as: 'acceptTime'
          property :decline_time, as: 'declineTime'
          property :id, as: 'id'
          property :state, as: 'state'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaProvisionProjectMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaPurgeDocumentsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :ignored_count, :numeric_string => true, as: 'ignoredCount'
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
      
      class GoogleCloudDiscoveryengineV1betaPurgeSuggestionDenyListEntriesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaPurgeSuggestionDenyListEntriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
          property :purge_count, :numeric_string => true, as: 'purgeCount'
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
      
      class GoogleCloudDiscoveryengineV1betaSiteVerificationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :site_verification_state, as: 'siteVerificationState'
          property :verify_time, as: 'verifyTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaTargetSite
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exact_match, as: 'exactMatch'
          property :failure_reason, as: 'failureReason', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaTargetSiteFailureReason, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaTargetSiteFailureReason::Representation
      
          property :generated_uri_pattern, as: 'generatedUriPattern'
          property :indexing_status, as: 'indexingStatus'
          property :name, as: 'name'
          property :provided_uri_pattern, as: 'providedUriPattern'
          property :root_domain_uri, as: 'rootDomainUri'
          property :site_verification_info, as: 'siteVerificationInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSiteVerificationInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSiteVerificationInfo::Representation
      
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaTargetSiteFailureReason
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :quota_failure, as: 'quotaFailure', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaTargetSiteFailureReasonQuotaFailure, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaTargetSiteFailureReasonQuotaFailure::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaTargetSiteFailureReasonQuotaFailure
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :total_required_quota, :numeric_string => true, as: 'totalRequiredQuota'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaTrainCustomModelMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaTrainCustomModelResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
          hash :metrics, as: 'metrics'
          property :model_name, as: 'modelName'
          property :model_status, as: 'modelStatus'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaTuneEngineMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :engine, as: 'engine'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaTuneEngineResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaUpdateSchemaMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaUpdateTargetSiteMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleLongrunningCancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::DiscoveryengineV1::GoogleLongrunningOperation, decorator: Google::Apis::DiscoveryengineV1::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
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
