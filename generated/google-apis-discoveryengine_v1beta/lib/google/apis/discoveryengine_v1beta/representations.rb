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
    module DiscoveryengineV1beta
      
      class GoogleApiDistribution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleApiDistributionBucketOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleApiDistributionBucketOptionsExplicit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleApiDistributionBucketOptionsExponential
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleApiDistributionBucketOptionsLinear
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleApiDistributionExemplar
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleApiDistributionRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleApiHttpBody
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleApiMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleApiMonitoredResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleApiMonitoredResourceMetadata
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
      
      class GoogleCloudDiscoveryengineV1AdvancedSiteSearchConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1BatchCreateTargetSiteMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1BatchCreateTargetSitesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1CmekConfig
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
      
      class GoogleCloudDiscoveryengineV1ControlPromoteAction
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
      
      class GoogleCloudDiscoveryengineV1DataStore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DataStoreBillingEstimation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DataStoreServingConfigDataStore
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
      
      class GoogleCloudDiscoveryengineV1DeleteIdentityMappingStoreMetadata
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
      
      class GoogleCloudDiscoveryengineV1DisableAdvancedSiteSearchResponse
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
      
      class GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsResponse
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
      
      class GoogleCloudDiscoveryengineV1ImportSuggestionDenyListEntriesMetadata
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
      
      class GoogleCloudDiscoveryengineV1ImportUserEventsResponse
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
      
      class GoogleCloudDiscoveryengineV1PurgeCompletionSuggestionsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1PurgeCompletionSuggestionsResponse
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
      
      class GoogleCloudDiscoveryengineV1PurgeSuggestionDenyListEntriesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1PurgeSuggestionDenyListEntriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1Schema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchLinkPromotion
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
      
      class GoogleCloudDiscoveryengineV1ServingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ServingConfigGenericConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ServingConfigMediaConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SingleRegionKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SiteVerificationInfo
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
      
      class GoogleCloudDiscoveryengineV1TrainCustomModelMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1TrainCustomModelResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1UpdateCmekConfigMetadata
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
      
      class GoogleCloudDiscoveryengineV1WorkspaceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAclConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaActionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAdvancedSiteSearchConfig
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
      
      class GoogleCloudDiscoveryengineV1alphaAnswerGroundingSupport
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
      
      class GoogleCloudDiscoveryengineV1alphaAnswerReferenceStructuredDocumentInfo
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
      
      class GoogleCloudDiscoveryengineV1alphaCmekConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCollection
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
      
      class GoogleCloudDiscoveryengineV1alphaConnectorRun
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaConnectorRunEntityRun
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
      
      class GoogleCloudDiscoveryengineV1alphaControlPromoteAction
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
      
      class GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries
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
      
      class GoogleCloudDiscoveryengineV1alphaCreateEvaluationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCreateSchemaMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCreateSitemapMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCreateTargetSiteMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCustomFineTuningSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataConnector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataConnectorSourceEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataStore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataStoreBillingEstimation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataStoreServingConfigDataStore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDedicatedCrawlRateTimeSeries
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteCollectionMetadata
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
      
      class GoogleCloudDiscoveryengineV1alphaDeleteIdentityMappingStoreMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteSchemaMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteSessionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteSitemapMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteTargetSiteMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDestinationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDestinationConfigDestination
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
      
      class GoogleCloudDiscoveryengineV1alphaEvaluation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEvaluationEvaluationSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEvaluationEvaluationSpecQuerySetSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaFetchSitemapsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaFetchSitemapsResponseSitemapMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaFieldConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaGetSessionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaGetUriPatternDocumentDataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaIdentityScheduleConfig
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
      
      class GoogleCloudDiscoveryengineV1alphaImportCompletionSuggestionsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportCompletionSuggestionsResponse
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
      
      class GoogleCloudDiscoveryengineV1alphaImportSampleQueriesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportSampleQueriesResponse
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
      
      class GoogleCloudDiscoveryengineV1alphaInterval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaLanguageInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListSessionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListSessionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaNaturalLanguageQueryUnderstandingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaObtainCrawlRateResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaOrganicCrawlRateTimeSeries
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
      
      class GoogleCloudDiscoveryengineV1alphaPurgeCompletionSuggestionsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeCompletionSuggestionsResponse
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
      
      class GoogleCloudDiscoveryengineV1alphaQualityMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics
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
      
      class GoogleCloudDiscoveryengineV1alphaRemoveDedicatedCrawlRateMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaRemoveDedicatedCrawlRateResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSafetyRating
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchLinkPromotion
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
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpecBoostControlSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpecBoostControlSpecControlPoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecChunkSpec
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
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecModelPromptSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecModelSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestDataStoreSpec
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
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestNaturalLanguageQueryUnderstandingSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestPersonalizationSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestQueryExpansionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestSearchAsYouTypeSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestSessionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestSpellCorrectionSpec
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
      
      class GoogleCloudDiscoveryengineV1alphaSetDedicatedCrawlRateMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSetDedicatedCrawlRateResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSetUpDataConnectorMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSetUriPatternDocumentDataMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSetUriPatternDocumentDataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSingleRegionKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSiteVerificationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSitemap
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
      
      class GoogleCloudDiscoveryengineV1alphaUpdateCmekConfigMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaUpdateCollectionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaUpdateSchemaMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaUpdateSessionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaUpdateTargetSiteMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaUserInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaWorkspaceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryRequestBoostSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryRequestBoostSpecConditionBoostSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponseContentSuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponsePersonSuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponseQuerySuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponseRecentSearchSuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAdvancedSiteSearchConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAlloyDbSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerCitation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerCitationSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerGroundingSupport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestAnswerGenerationSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestAnswerGenerationSpecModelSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestAnswerGenerationSpecPromptSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestGroundingSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestQueryUnderstandingSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestQueryUnderstandingSpecQueryClassificationSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestQueryUnderstandingSpecQueryRephraserSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestQueryUnderstandingSpecQueryRephraserSpecModelSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestRelatedQuestionsSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSafetySpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSafetySpecSafetySetting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpecSearchParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpecSearchResultList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpecSearchResultListSearchResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpecSearchResultListSearchResultChunkInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpecSearchResultListSearchResultChunkInfoDocumentMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoDocumentContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoExtractiveAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoExtractiveSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryUnderstandingInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryUnderstandingInfoQueryClassificationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerReferenceChunkInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerReferenceChunkInfoDocumentMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerReferenceStructuredDocumentInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerReferenceUnstructuredDocumentInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerReferenceUnstructuredDocumentInfoChunkContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerStepAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerStepActionObservation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerStepActionObservationSearchResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerStepActionObservationSearchResultChunkInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerStepActionObservationSearchResultSnippetInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerStepActionSearchAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaBatchCreateTargetSiteMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaBatchCreateTargetSitesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaBatchCreateTargetSitesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaBatchGetDocumentsMetadataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaBatchGetDocumentsMetadataResponseDocumentMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaBatchGetDocumentsMetadataResponseDocumentMetadataMatcherValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaBatchVerifyTargetSitesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaBigQuerySource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaBigtableOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaBigtableOptionsBigtableColumn
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaBigtableOptionsBigtableColumnFamily
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaBigtableSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaCheckGroundingRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaCheckGroundingResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaCheckGroundingResponseCheckGroundingFactChunk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaCheckGroundingResponseClaim
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaCheckGroundingSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaChunk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaChunkChunkMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaChunkDocumentMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaChunkPageSpan
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaCloudSqlSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaCmekConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaCompleteQueryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaCompleteQueryResponseQuerySuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaCompletionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaCompletionSuggestion
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
      
      class GoogleCloudDiscoveryengineV1betaControlPromoteAction
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
      
      class GoogleCloudDiscoveryengineV1betaConversation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaConversationContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaConversationMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaConverseConversationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaConverseConversationResponse
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
      
      class GoogleCloudDiscoveryengineV1betaCreateEvaluationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaCreateSchemaMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaCreateSitemapMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaCreateTargetSiteMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaCreateTargetSiteRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaCustomAttribute
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
      
      class GoogleCloudDiscoveryengineV1betaDataStoreBillingEstimation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDataStoreServingConfigDataStore
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
      
      class GoogleCloudDiscoveryengineV1betaDeleteIdentityMappingStoreMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDeleteSchemaMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDeleteSitemapMetadata
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
      
      class GoogleCloudDiscoveryengineV1betaDisableAdvancedSiteSearchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDisableAdvancedSiteSearchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDocument
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDocumentContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDocumentIndexStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDocumentInfo
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
      
      class GoogleCloudDiscoveryengineV1betaDoubleList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaEmbeddingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaEnableAdvancedSiteSearchMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaEnableAdvancedSiteSearchRequest
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
      
      class GoogleCloudDiscoveryengineV1betaEvaluation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaEvaluationEvaluationSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaEvaluationEvaluationSpecQuerySetSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaFactChunk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaFetchDomainVerificationStatusResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaFetchSitemapsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaFetchSitemapsResponseSitemapMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaFhirStoreSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaFirestoreSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaGcsSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaGenerateGroundedContentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaGenerateGroundedContentRequestDynamicRetrievalConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaGenerateGroundedContentRequestDynamicRetrievalConfigurationDynamicRetrievalPredictor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaGenerateGroundedContentRequestGenerationSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaGenerateGroundedContentRequestGroundingSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaGenerateGroundedContentRequestGroundingSourceGoogleSearchSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaGenerateGroundedContentRequestGroundingSourceInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaGenerateGroundedContentRequestGroundingSourceSearchSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaGenerateGroundedContentRequestGroundingSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaGenerateGroundedContentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaGenerateGroundedContentResponseCandidate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaGenerateGroundedContentResponseCandidateGroundingMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaGenerateGroundedContentResponseCandidateGroundingMetadataDynamicRetrievalMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaGenerateGroundedContentResponseCandidateGroundingMetadataDynamicRetrievalPredictorMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaGenerateGroundedContentResponseCandidateGroundingMetadataGroundingSupport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaGenerateGroundedContentResponseCandidateGroundingMetadataRetrievalMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaGenerateGroundedContentResponseCandidateGroundingMetadataSearchEntryPoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaGroundedGenerationContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaGroundedGenerationContentPart
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaGroundingFact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportCompletionSuggestionsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportCompletionSuggestionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportCompletionSuggestionsRequestInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportCompletionSuggestionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportDocumentsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportDocumentsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportDocumentsRequestInlineSource
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
      
      class GoogleCloudDiscoveryengineV1betaImportSampleQueriesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportSampleQueriesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportSampleQueriesRequestInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportSampleQueriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportSuggestionDenyListEntriesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportSuggestionDenyListEntriesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportSuggestionDenyListEntriesRequestInlineSource
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
      
      class GoogleCloudDiscoveryengineV1betaImportUserEventsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportUserEventsRequestInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaInterval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaLanguageInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaListControlsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaListConversationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaListCustomModelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaListDataStoresResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaListDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaListEnginesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaListEvaluationResultsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaListEvaluationResultsResponseEvaluationResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaListEvaluationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaListSampleQueriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaListSampleQuerySetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaListSchemasResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaListServingConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaListSessionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaListTargetSitesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaMediaInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaNaturalLanguageQueryUnderstandingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaPageInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaPanelInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaPauseEngineRequest
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
      
      class GoogleCloudDiscoveryengineV1betaProvisionProjectRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaPurgeCompletionSuggestionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaPurgeDocumentsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaPurgeDocumentsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaPurgeDocumentsRequestInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaPurgeDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaPurgeErrorConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaPurgeSuggestionDenyListEntriesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaPurgeSuggestionDenyListEntriesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaPurgeSuggestionDenyListEntriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaPurgeUserEventsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaQualityMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaRankRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaRankResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaRankingRecord
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaRecommendRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaRecommendResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaRecommendResponseRecommendationResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaRecrawlUrisRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaReply
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaReplyReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaResumeEngineRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSafetyRating
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSampleQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSampleQueryQueryEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSampleQueryQueryEntryTarget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSampleQuerySet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchLinkPromotion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpecBoostControlSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpecBoostControlSpecControlPoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecChunkSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecExtractiveContentSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSnippetSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecModelPromptSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecModelSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestDataStoreSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpecEmbeddingVector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestFacetSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestFacetSpecFacetKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestImageQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestNaturalLanguageQueryUnderstandingSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestPersonalizationSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestQueryExpansionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestSearchAsYouTypeSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestSessionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestSpellCorrectionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseFacet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseFacetFacetValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseGeoSearchDebugInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseGuidedSearchResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseGuidedSearchResultRefinementAttribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterAndExpression
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterExpression
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterGeolocationConstraint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterNumberConstraint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterOrExpression
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterStringConstraint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseOneBoxResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseQueryExpansionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseSearchResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseSessionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseSummaryCitation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseSummaryCitationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseSummaryCitationSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseSummaryReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseSummaryReferenceChunkContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseSummarySafetyAttributes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseSummarySummaryWithMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaServingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaServingConfigGenericConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaServingConfigMediaConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSession
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSessionTurn
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSingleRegionKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSiteSearchEngine
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSiteVerificationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSitemap
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSpannerSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSuggestionDenyListEntry
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
      
      class GoogleCloudDiscoveryengineV1betaTextInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaTrainCustomModelMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaTrainCustomModelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaTrainCustomModelRequestGcsTrainingInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaTrainCustomModelResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaTransactionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaTuneEngineMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaTuneEngineRequest
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
      
      class GoogleCloudDiscoveryengineV1betaUserEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaUserInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaWorkspaceConfig
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
      
      class GoogleMonitoringV3Point
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMonitoringV3TimeInterval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMonitoringV3TimeSeries
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMonitoringV3TypedValue
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
      
      class GoogleTypeDateTime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeTimeZone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleApiDistribution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bucket_counts, as: 'bucketCounts'
          property :bucket_options, as: 'bucketOptions', class: Google::Apis::DiscoveryengineV1beta::GoogleApiDistributionBucketOptions, decorator: Google::Apis::DiscoveryengineV1beta::GoogleApiDistributionBucketOptions::Representation
      
          property :count, :numeric_string => true, as: 'count'
          collection :exemplars, as: 'exemplars', class: Google::Apis::DiscoveryengineV1beta::GoogleApiDistributionExemplar, decorator: Google::Apis::DiscoveryengineV1beta::GoogleApiDistributionExemplar::Representation
      
          property :mean, as: 'mean'
          property :range, as: 'range', class: Google::Apis::DiscoveryengineV1beta::GoogleApiDistributionRange, decorator: Google::Apis::DiscoveryengineV1beta::GoogleApiDistributionRange::Representation
      
          property :sum_of_squared_deviation, as: 'sumOfSquaredDeviation'
        end
      end
      
      class GoogleApiDistributionBucketOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :explicit_buckets, as: 'explicitBuckets', class: Google::Apis::DiscoveryengineV1beta::GoogleApiDistributionBucketOptionsExplicit, decorator: Google::Apis::DiscoveryengineV1beta::GoogleApiDistributionBucketOptionsExplicit::Representation
      
          property :exponential_buckets, as: 'exponentialBuckets', class: Google::Apis::DiscoveryengineV1beta::GoogleApiDistributionBucketOptionsExponential, decorator: Google::Apis::DiscoveryengineV1beta::GoogleApiDistributionBucketOptionsExponential::Representation
      
          property :linear_buckets, as: 'linearBuckets', class: Google::Apis::DiscoveryengineV1beta::GoogleApiDistributionBucketOptionsLinear, decorator: Google::Apis::DiscoveryengineV1beta::GoogleApiDistributionBucketOptionsLinear::Representation
      
        end
      end
      
      class GoogleApiDistributionBucketOptionsExplicit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bounds, as: 'bounds'
        end
      end
      
      class GoogleApiDistributionBucketOptionsExponential
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :growth_factor, as: 'growthFactor'
          property :num_finite_buckets, as: 'numFiniteBuckets'
          property :scale, as: 'scale'
        end
      end
      
      class GoogleApiDistributionBucketOptionsLinear
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :num_finite_buckets, as: 'numFiniteBuckets'
          property :offset, as: 'offset'
          property :width, as: 'width'
        end
      end
      
      class GoogleApiDistributionExemplar
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attachments, as: 'attachments'
          property :timestamp, as: 'timestamp'
          property :value, as: 'value'
        end
      end
      
      class GoogleApiDistributionRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max, as: 'max'
          property :min, as: 'min'
        end
      end
      
      class GoogleApiHttpBody
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_type, as: 'contentType'
          property :data, :base64 => true, as: 'data'
          collection :extensions, as: 'extensions'
        end
      end
      
      class GoogleApiMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
          property :type, as: 'type'
        end
      end
      
      class GoogleApiMonitoredResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
          property :type, as: 'type'
        end
      end
      
      class GoogleApiMonitoredResourceMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :system_labels, as: 'systemLabels'
          hash :user_labels, as: 'userLabels'
        end
      end
      
      class GoogleCloudDiscoveryengineLoggingErrorContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :http_request, as: 'httpRequest', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineLoggingHttpRequestContext, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineLoggingHttpRequestContext::Representation
      
          property :report_location, as: 'reportLocation', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineLoggingSourceLocation, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineLoggingSourceLocation::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineLoggingErrorLog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context, as: 'context', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineLoggingErrorContext, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineLoggingErrorContext::Representation
      
          property :import_payload, as: 'importPayload', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineLoggingImportErrorContext, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineLoggingImportErrorContext::Representation
      
          property :message, as: 'message'
          hash :request_payload, as: 'requestPayload'
          hash :response_payload, as: 'responsePayload'
          property :service_context, as: 'serviceContext', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineLoggingServiceContext, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineLoggingServiceContext::Representation
      
          property :status, as: 'status', class: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1AdvancedSiteSearchConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_automatic_refresh, as: 'disableAutomaticRefresh'
          property :disable_initial_index, as: 'disableInitialIndex'
        end
      end
      
      class GoogleCloudDiscoveryengineV1BatchCreateTargetSiteMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1BatchCreateTargetSitesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :target_sites, as: 'targetSites', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1TargetSite, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1TargetSite::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1CmekConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_default, as: 'isDefault'
          property :kms_key, as: 'kmsKey'
          property :kms_key_version, as: 'kmsKeyVersion'
          property :last_rotation_timestamp_micros, :numeric_string => true, as: 'lastRotationTimestampMicros'
          property :name, as: 'name'
          collection :single_region_keys, as: 'singleRegionKeys', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1SingleRegionKey, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1SingleRegionKey::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDiscoveryengineV1Condition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :active_time_range, as: 'activeTimeRange', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1ConditionTimeRange, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1ConditionTimeRange::Representation
      
          property :query_regex, as: 'queryRegex'
          collection :query_terms, as: 'queryTerms', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1ConditionQueryTerm, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1ConditionQueryTerm::Representation
      
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
          property :boost_action, as: 'boostAction', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1ControlBoostAction, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1ControlBoostAction::Representation
      
          collection :conditions, as: 'conditions', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1Condition, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1Condition::Representation
      
          property :display_name, as: 'displayName'
          property :filter_action, as: 'filterAction', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1ControlFilterAction, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1ControlFilterAction::Representation
      
          property :name, as: 'name'
          property :promote_action, as: 'promoteAction', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1ControlPromoteAction, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1ControlPromoteAction::Representation
      
          property :redirect_action, as: 'redirectAction', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1ControlRedirectAction, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1ControlRedirectAction::Representation
      
          property :solution_type, as: 'solutionType'
          property :synonyms_action, as: 'synonymsAction', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1ControlSynonymsAction, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1ControlSynonymsAction::Representation
      
          collection :use_cases, as: 'useCases'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ControlBoostAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost, as: 'boost'
          property :data_store, as: 'dataStore'
          property :filter, as: 'filter'
          property :fixed_boost, as: 'fixedBoost'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ControlFilterAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_store, as: 'dataStore'
          property :filter, as: 'filter'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ControlPromoteAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_store, as: 'dataStore'
          property :search_link_promotion, as: 'searchLinkPromotion', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1SearchLinkPromotion, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1SearchLinkPromotion::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1DataStore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advanced_site_search_config, as: 'advancedSiteSearchConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1AdvancedSiteSearchConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1AdvancedSiteSearchConfig::Representation
      
          property :billing_estimation, as: 'billingEstimation', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1DataStoreBillingEstimation, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1DataStoreBillingEstimation::Representation
      
          property :cmek_config, as: 'cmekConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1CmekConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1CmekConfig::Representation
      
          property :content_config, as: 'contentConfig'
          property :create_time, as: 'createTime'
          property :default_schema_id, as: 'defaultSchemaId'
          property :display_name, as: 'displayName'
          property :document_processing_config, as: 'documentProcessingConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1DocumentProcessingConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1DocumentProcessingConfig::Representation
      
          property :industry_vertical, as: 'industryVertical'
          property :is_infobot_faq_data_store, as: 'isInfobotFaqDataStore'
          property :kms_key_name, as: 'kmsKeyName'
          property :name, as: 'name'
          property :serving_config_data_store, as: 'servingConfigDataStore', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1DataStoreServingConfigDataStore, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1DataStoreServingConfigDataStore::Representation
      
          collection :solution_types, as: 'solutionTypes'
          property :starting_schema, as: 'startingSchema', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1Schema, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1Schema::Representation
      
          property :workspace_config, as: 'workspaceConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1WorkspaceConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1WorkspaceConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1DataStoreBillingEstimation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :structured_data_size, :numeric_string => true, as: 'structuredDataSize'
          property :structured_data_update_time, as: 'structuredDataUpdateTime'
          property :unstructured_data_size, :numeric_string => true, as: 'unstructuredDataSize'
          property :unstructured_data_update_time, as: 'unstructuredDataUpdateTime'
          property :website_data_size, :numeric_string => true, as: 'websiteDataSize'
          property :website_data_update_time, as: 'websiteDataUpdateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DataStoreServingConfigDataStore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled_for_serving, as: 'disabledForServing'
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
      
      class GoogleCloudDiscoveryengineV1DeleteIdentityMappingStoreMetadata
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
      
      class GoogleCloudDiscoveryengineV1DisableAdvancedSiteSearchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1DocumentProcessingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunking_config, as: 'chunkingConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1DocumentProcessingConfigChunkingConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1DocumentProcessingConfigChunkingConfig::Representation
      
          property :default_parsing_config, as: 'defaultParsingConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfig::Representation
      
          property :name, as: 'name'
          hash :parsing_config_overrides, as: 'parsingConfigOverrides', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1DocumentProcessingConfigChunkingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :layout_based_chunking_config, as: 'layoutBasedChunkingConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1DocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1DocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig::Representation
      
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
          property :digital_parsing_config, as: 'digitalParsingConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigDigitalParsingConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigDigitalParsingConfig::Representation
      
          property :layout_parsing_config, as: 'layoutParsingConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigLayoutParsingConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigLayoutParsingConfig::Representation
      
          property :ocr_parsing_config, as: 'ocrParsingConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigOcrParsingConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigOcrParsingConfig::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1EnableAdvancedSiteSearchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1Engine
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chat_engine_config, as: 'chatEngineConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1EngineChatEngineConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1EngineChatEngineConfig::Representation
      
          property :chat_engine_metadata, as: 'chatEngineMetadata', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1EngineChatEngineMetadata, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1EngineChatEngineMetadata::Representation
      
          property :common_config, as: 'commonConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1EngineCommonConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1EngineCommonConfig::Representation
      
          property :create_time, as: 'createTime'
          collection :data_store_ids, as: 'dataStoreIds'
          property :disable_analytics, as: 'disableAnalytics'
          property :display_name, as: 'displayName'
          property :industry_vertical, as: 'industryVertical'
          property :name, as: 'name'
          property :search_engine_config, as: 'searchEngineConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1EngineSearchEngineConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1EngineSearchEngineConfig::Representation
      
          property :solution_type, as: 'solutionType'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1EngineChatEngineConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_creation_config, as: 'agentCreationConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1EngineChatEngineConfigAgentCreationConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1EngineChatEngineConfigAgentCreationConfig::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1ImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1ImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1ImportDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1ImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1ImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1ImportSuggestionDenyListEntriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1ImportUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1ImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1ImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus::Representation
      
          property :joined_events_count, :numeric_string => true, as: 'joinedEventsCount'
          property :unjoined_events_count, :numeric_string => true, as: 'unjoinedEventsCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1Project
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :provision_completion_time, as: 'provisionCompletionTime'
          hash :service_terms_map, as: 'serviceTermsMap', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1ProjectServiceTerms, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1ProjectServiceTerms::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1PurgeCompletionSuggestionsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1PurgeCompletionSuggestionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus::Representation
      
          property :purge_succeeded, as: 'purgeSucceeded'
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
      
      class GoogleCloudDiscoveryengineV1PurgeSuggestionDenyListEntriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus::Representation
      
          property :purge_count, :numeric_string => true, as: 'purgeCount'
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
      
      class GoogleCloudDiscoveryengineV1SearchLinkPromotion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :enabled, as: 'enabled'
          property :image_uri, as: 'imageUri'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk_spec, as: 'chunkSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecChunkSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecChunkSpec::Representation
      
          property :extractive_content_spec, as: 'extractiveContentSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecExtractiveContentSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecExtractiveContentSpec::Representation
      
          property :search_result_mode, as: 'searchResultMode'
          property :snippet_spec, as: 'snippetSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSnippetSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSnippetSpec::Representation
      
          property :summary_spec, as: 'summarySpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpec::Representation
      
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
          property :ignore_jail_breaking_query, as: 'ignoreJailBreakingQuery'
          property :ignore_low_relevant_content, as: 'ignoreLowRelevantContent'
          property :ignore_non_summary_seeking_query, as: 'ignoreNonSummarySeekingQuery'
          property :include_citations, as: 'includeCitations'
          property :language_code, as: 'languageCode'
          property :model_prompt_spec, as: 'modelPromptSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpecModelPromptSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpecModelPromptSpec::Representation
      
          property :model_spec, as: 'modelSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpecModelSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpecModelSpec::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1ServingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :boost_control_ids, as: 'boostControlIds'
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          collection :dissociate_control_ids, as: 'dissociateControlIds'
          property :diversity_level, as: 'diversityLevel'
          collection :filter_control_ids, as: 'filterControlIds'
          property :generic_config, as: 'genericConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1ServingConfigGenericConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1ServingConfigGenericConfig::Representation
      
          collection :ignore_control_ids, as: 'ignoreControlIds'
          property :media_config, as: 'mediaConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1ServingConfigMediaConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1ServingConfigMediaConfig::Representation
      
          property :model_id, as: 'modelId'
          property :name, as: 'name'
          collection :oneway_synonyms_control_ids, as: 'onewaySynonymsControlIds'
          collection :promote_control_ids, as: 'promoteControlIds'
          property :ranking_expression, as: 'rankingExpression'
          collection :redirect_control_ids, as: 'redirectControlIds'
          collection :replacement_control_ids, as: 'replacementControlIds'
          property :solution_type, as: 'solutionType'
          collection :synonyms_control_ids, as: 'synonymsControlIds'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ServingConfigGenericConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_search_spec, as: 'contentSearchSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1ServingConfigMediaConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_freshness_cutoff_days, as: 'contentFreshnessCutoffDays'
          property :content_watched_percentage_threshold, as: 'contentWatchedPercentageThreshold'
          property :content_watched_seconds_threshold, as: 'contentWatchedSecondsThreshold'
          property :demote_content_watched_past_days, as: 'demoteContentWatchedPastDays'
          property :demotion_event_type, as: 'demotionEventType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SingleRegionKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key, as: 'kmsKey'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SiteVerificationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :site_verification_state, as: 'siteVerificationState'
          property :verify_time, as: 'verifyTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1TargetSite
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exact_match, as: 'exactMatch'
          property :failure_reason, as: 'failureReason', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1TargetSiteFailureReason, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1TargetSiteFailureReason::Representation
      
          property :generated_uri_pattern, as: 'generatedUriPattern'
          property :indexing_status, as: 'indexingStatus'
          property :name, as: 'name'
          property :provided_uri_pattern, as: 'providedUriPattern'
          property :root_domain_uri, as: 'rootDomainUri'
          property :site_verification_info, as: 'siteVerificationInfo', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1SiteVerificationInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1SiteVerificationInfo::Representation
      
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1TargetSiteFailureReason
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :quota_failure, as: 'quotaFailure', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1TargetSiteFailureReasonQuotaFailure, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1TargetSiteFailureReasonQuotaFailure::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1TargetSiteFailureReasonQuotaFailure
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :total_required_quota, :numeric_string => true, as: 'totalRequiredQuota'
        end
      end
      
      class GoogleCloudDiscoveryengineV1TrainCustomModelMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1TrainCustomModelResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1ImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1ImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus::Representation
      
          hash :metrics, as: 'metrics'
          property :model_name, as: 'modelName'
          property :model_status, as: 'modelStatus'
        end
      end
      
      class GoogleCloudDiscoveryengineV1UpdateCmekConfigMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
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
      
      class GoogleCloudDiscoveryengineV1WorkspaceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dasher_customer_id, as: 'dasherCustomerId'
          property :super_admin_email_address, as: 'superAdminEmailAddress'
          property :super_admin_service_account, as: 'superAdminServiceAccount'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAclConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :idp_config, as: 'idpConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaIdpConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaIdpConfig::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaActionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :action_params, as: 'actionParams'
          property :is_action_configured, as: 'isActionConfigured'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAdvancedSiteSearchConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_automatic_refresh, as: 'disableAutomaticRefresh'
          property :disable_initial_index, as: 'disableInitialIndex'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :answer_skipped_reasons, as: 'answerSkippedReasons'
          property :answer_text, as: 'answerText'
          collection :citations, as: 'citations', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswerCitation, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswerCitation::Representation
      
          property :complete_time, as: 'completeTime'
          property :create_time, as: 'createTime'
          property :grounding_score, as: 'groundingScore'
          collection :grounding_supports, as: 'groundingSupports', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswerGroundingSupport, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswerGroundingSupport::Representation
      
          property :name, as: 'name'
          property :query_understanding_info, as: 'queryUnderstandingInfo', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswerQueryUnderstandingInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswerQueryUnderstandingInfo::Representation
      
          collection :references, as: 'references', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswerReference, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswerReference::Representation
      
          collection :related_questions, as: 'relatedQuestions'
          collection :safety_ratings, as: 'safetyRatings', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSafetyRating, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSafetyRating::Representation
      
          property :state, as: 'state'
          collection :steps, as: 'steps', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswerStep, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswerStep::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerCitation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_index, :numeric_string => true, as: 'endIndex'
          collection :sources, as: 'sources', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswerCitationSource, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswerCitationSource::Representation
      
          property :start_index, :numeric_string => true, as: 'startIndex'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerCitationSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reference_id, as: 'referenceId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerGroundingSupport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_index, :numeric_string => true, as: 'endIndex'
          property :grounding_check_required, as: 'groundingCheckRequired'
          property :grounding_score, as: 'groundingScore'
          collection :sources, as: 'sources', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswerCitationSource, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswerCitationSource::Representation
      
          property :start_index, :numeric_string => true, as: 'startIndex'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryUnderstandingInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :query_classification_info, as: 'queryClassificationInfo', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswerQueryUnderstandingInfoQueryClassificationInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswerQueryUnderstandingInfoQueryClassificationInfo::Representation
      
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
          property :chunk_info, as: 'chunkInfo', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswerReferenceChunkInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswerReferenceChunkInfo::Representation
      
          property :structured_document_info, as: 'structuredDocumentInfo', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswerReferenceStructuredDocumentInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswerReferenceStructuredDocumentInfo::Representation
      
          property :unstructured_document_info, as: 'unstructuredDocumentInfo', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswerReferenceUnstructuredDocumentInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswerReferenceUnstructuredDocumentInfo::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerReferenceChunkInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk, as: 'chunk'
          property :content, as: 'content'
          property :document_metadata, as: 'documentMetadata', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswerReferenceChunkInfoDocumentMetadata, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswerReferenceChunkInfoDocumentMetadata::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1alphaAnswerReferenceStructuredDocumentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document'
          hash :struct_data, as: 'structData'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerReferenceUnstructuredDocumentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :chunk_contents, as: 'chunkContents', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswerReferenceUnstructuredDocumentInfoChunkContent, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswerReferenceUnstructuredDocumentInfoChunkContent::Representation
      
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
          property :relevance_score, as: 'relevanceScore'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :actions, as: 'actions', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswerStepAction, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswerStepAction::Representation
      
          property :description, as: 'description'
          property :state, as: 'state'
          property :thought, as: 'thought'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerStepAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :observation, as: 'observation', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservation, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservation::Representation
      
          property :search_action, as: 'searchAction', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswerStepActionSearchAction, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswerStepActionSearchAction::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :search_results, as: 'searchResults', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservationSearchResult, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservationSearchResult::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservationSearchResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :chunk_info, as: 'chunkInfo', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservationSearchResultChunkInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservationSearchResultChunkInfo::Representation
      
          property :document, as: 'document'
          collection :snippet_info, as: 'snippetInfo', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservationSearchResultSnippetInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservationSearchResultSnippetInfo::Representation
      
          hash :struct_data, as: 'structData'
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
          collection :target_sites, as: 'targetSites', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaTargetSite, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaTargetSite::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCmekConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_default, as: 'isDefault'
          property :kms_key, as: 'kmsKey'
          property :kms_key_version, as: 'kmsKeyVersion'
          property :last_rotation_timestamp_micros, :numeric_string => true, as: 'lastRotationTimestampMicros'
          property :name, as: 'name'
          collection :single_region_keys, as: 'singleRegionKeys', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSingleRegionKey, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSingleRegionKey::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCollection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :data_connector, as: 'dataConnector', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaDataConnector, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaDataConnector::Representation
      
          property :display_name, as: 'displayName'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :active_time_range, as: 'activeTimeRange', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaConditionTimeRange, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaConditionTimeRange::Representation
      
          property :query_regex, as: 'queryRegex'
          collection :query_terms, as: 'queryTerms', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaConditionQueryTerm, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaConditionQueryTerm::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1alphaConnectorRun
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          collection :entity_runs, as: 'entityRuns', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaConnectorRunEntityRun, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaConnectorRunEntityRun::Representation
      
          collection :errors, as: 'errors', class: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus::Representation
      
          property :latest_pause_time, as: 'latestPauseTime'
          property :name, as: 'name'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :state_update_time, as: 'stateUpdateTime'
          property :trigger, as: 'trigger'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaConnectorRunEntityRun
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity_name, as: 'entityName'
          property :error_record_count, :numeric_string => true, as: 'errorRecordCount'
          collection :errors, as: 'errors', class: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus::Representation
      
          property :extracted_record_count, :numeric_string => true, as: 'extractedRecordCount'
          property :indexed_record_count, :numeric_string => true, as: 'indexedRecordCount'
          property :source_api_request_count, :numeric_string => true, as: 'sourceApiRequestCount'
          property :state, as: 'state'
          property :state_update_time, as: 'stateUpdateTime'
          property :stats_update_time, as: 'statsUpdateTime'
          property :sync_type, as: 'syncType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaControl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :associated_serving_config_ids, as: 'associatedServingConfigIds'
          property :boost_action, as: 'boostAction', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaControlBoostAction, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaControlBoostAction::Representation
      
          collection :conditions, as: 'conditions', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaCondition, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaCondition::Representation
      
          property :display_name, as: 'displayName'
          property :filter_action, as: 'filterAction', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaControlFilterAction, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaControlFilterAction::Representation
      
          property :name, as: 'name'
          property :promote_action, as: 'promoteAction', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaControlPromoteAction, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaControlPromoteAction::Representation
      
          property :redirect_action, as: 'redirectAction', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaControlRedirectAction, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaControlRedirectAction::Representation
      
          property :solution_type, as: 'solutionType'
          property :synonyms_action, as: 'synonymsAction', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaControlSynonymsAction, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaControlSynonymsAction::Representation
      
          collection :use_cases, as: 'useCases'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaControlBoostAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost, as: 'boost'
          property :data_store, as: 'dataStore'
          property :filter, as: 'filter'
          property :fixed_boost, as: 'fixedBoost'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaControlFilterAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_store, as: 'dataStore'
          property :filter, as: 'filter'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaControlPromoteAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_store, as: 'dataStore'
          property :search_link_promotion, as: 'searchLinkPromotion', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchLinkPromotion, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchLinkPromotion::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :qps_time_series, as: 'qpsTimeSeries', class: Google::Apis::DiscoveryengineV1beta::GoogleMonitoringV3TimeSeries, decorator: Google::Apis::DiscoveryengineV1beta::GoogleMonitoringV3TimeSeries::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1alphaCreateEvaluationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCreateSchemaMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCreateSitemapMetadata
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
      
      class GoogleCloudDiscoveryengineV1alphaCustomFineTuningSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_search_adaptor, as: 'enableSearchAdaptor'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataConnector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_config, as: 'actionConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaActionConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaActionConfig::Representation
      
          property :auto_run_disabled, as: 'autoRunDisabled'
          collection :blocking_reasons, as: 'blockingReasons'
          property :create_time, as: 'createTime'
          property :data_source, as: 'dataSource'
          collection :destination_configs, as: 'destinationConfigs', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaDestinationConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaDestinationConfig::Representation
      
          collection :entities, as: 'entities', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaDataConnectorSourceEntity, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaDataConnectorSourceEntity::Representation
      
          collection :errors, as: 'errors', class: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus::Representation
      
          property :identity_refresh_interval, as: 'identityRefreshInterval'
          property :identity_schedule_config, as: 'identityScheduleConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaIdentityScheduleConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaIdentityScheduleConfig::Representation
      
          property :kms_key_name, as: 'kmsKeyName'
          property :last_sync_time, as: 'lastSyncTime'
          property :latest_pause_time, as: 'latestPauseTime'
          property :name, as: 'name'
          property :next_sync_time, as: 'nextSyncTime', class: Google::Apis::DiscoveryengineV1beta::GoogleTypeDateTime, decorator: Google::Apis::DiscoveryengineV1beta::GoogleTypeDateTime::Representation
      
          hash :params, as: 'params'
          property :private_connectivity_project_id, as: 'privateConnectivityProjectId'
          property :refresh_interval, as: 'refreshInterval'
          property :state, as: 'state'
          collection :static_ip_addresses, as: 'staticIpAddresses'
          property :static_ip_enabled, as: 'staticIpEnabled'
          property :sync_mode, as: 'syncMode'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataConnectorSourceEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_store, as: 'dataStore'
          property :entity_name, as: 'entityName'
          hash :key_property_mappings, as: 'keyPropertyMappings'
          hash :params, as: 'params'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataStore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acl_enabled, as: 'aclEnabled'
          property :advanced_site_search_config, as: 'advancedSiteSearchConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAdvancedSiteSearchConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAdvancedSiteSearchConfig::Representation
      
          property :billing_estimation, as: 'billingEstimation', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaDataStoreBillingEstimation, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaDataStoreBillingEstimation::Representation
      
          property :cmek_config, as: 'cmekConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaCmekConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaCmekConfig::Representation
      
          property :content_config, as: 'contentConfig'
          property :create_time, as: 'createTime'
          property :default_schema_id, as: 'defaultSchemaId'
          property :display_name, as: 'displayName'
          property :document_processing_config, as: 'documentProcessingConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig::Representation
      
          property :idp_config, as: 'idpConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaIdpConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaIdpConfig::Representation
      
          property :industry_vertical, as: 'industryVertical'
          property :is_infobot_faq_data_store, as: 'isInfobotFaqDataStore'
          property :kms_key_name, as: 'kmsKeyName'
          property :language_info, as: 'languageInfo', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaLanguageInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaLanguageInfo::Representation
      
          property :name, as: 'name'
          property :natural_language_query_understanding_config, as: 'naturalLanguageQueryUnderstandingConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaNaturalLanguageQueryUnderstandingConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaNaturalLanguageQueryUnderstandingConfig::Representation
      
          property :serving_config_data_store, as: 'servingConfigDataStore', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaDataStoreServingConfigDataStore, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaDataStoreServingConfigDataStore::Representation
      
          collection :solution_types, as: 'solutionTypes'
          property :starting_schema, as: 'startingSchema', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSchema, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSchema::Representation
      
          property :workspace_config, as: 'workspaceConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaWorkspaceConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaWorkspaceConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataStoreBillingEstimation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :structured_data_size, :numeric_string => true, as: 'structuredDataSize'
          property :structured_data_update_time, as: 'structuredDataUpdateTime'
          property :unstructured_data_size, :numeric_string => true, as: 'unstructuredDataSize'
          property :unstructured_data_update_time, as: 'unstructuredDataUpdateTime'
          property :website_data_size, :numeric_string => true, as: 'websiteDataSize'
          property :website_data_update_time, as: 'websiteDataUpdateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataStoreServingConfigDataStore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled_for_serving, as: 'disabledForServing'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDedicatedCrawlRateTimeSeries
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_refresh_crawl_rate, as: 'autoRefreshCrawlRate', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries::Representation
      
          property :user_triggered_crawl_rate, as: 'userTriggeredCrawlRate', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteCollectionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
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
      
      class GoogleCloudDiscoveryengineV1alphaDeleteIdentityMappingStoreMetadata
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
      
      class GoogleCloudDiscoveryengineV1alphaDeleteSessionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteSitemapMetadata
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
      
      class GoogleCloudDiscoveryengineV1alphaDestinationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :destinations, as: 'destinations', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaDestinationConfigDestination, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaDestinationConfigDestination::Representation
      
          property :key, as: 'key'
          hash :params, as: 'params'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDestinationConfigDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host, as: 'host'
          property :port, as: 'port'
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
          property :chunking_config, as: 'chunkingConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigChunkingConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigChunkingConfig::Representation
      
          property :default_parsing_config, as: 'defaultParsingConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfig::Representation
      
          property :name, as: 'name'
          hash :parsing_config_overrides, as: 'parsingConfigOverrides', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigChunkingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :layout_based_chunking_config, as: 'layoutBasedChunkingConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig::Representation
      
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
          property :digital_parsing_config, as: 'digitalParsingConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfigDigitalParsingConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfigDigitalParsingConfig::Representation
      
          property :layout_parsing_config, as: 'layoutParsingConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfigLayoutParsingConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfigLayoutParsingConfig::Representation
      
          property :ocr_parsing_config, as: 'ocrParsingConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfigOcrParsingConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfigOcrParsingConfig::Representation
      
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
          property :chat_engine_config, as: 'chatEngineConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfig::Representation
      
          property :chat_engine_metadata, as: 'chatEngineMetadata', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaEngineChatEngineMetadata, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaEngineChatEngineMetadata::Representation
      
          property :common_config, as: 'commonConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaEngineCommonConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaEngineCommonConfig::Representation
      
          property :create_time, as: 'createTime'
          collection :data_store_ids, as: 'dataStoreIds'
          property :disable_analytics, as: 'disableAnalytics'
          property :display_name, as: 'displayName'
          property :industry_vertical, as: 'industryVertical'
          property :media_recommendation_engine_config, as: 'mediaRecommendationEngineConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig::Representation
      
          property :name, as: 'name'
          property :recommendation_metadata, as: 'recommendationMetadata', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaEngineRecommendationMetadata, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaEngineRecommendationMetadata::Representation
      
          property :search_engine_config, as: 'searchEngineConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfig::Representation
      
          property :similar_documents_config, as: 'similarDocumentsConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaEngineSimilarDocumentsEngineConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaEngineSimilarDocumentsEngineConfig::Representation
      
          property :solution_type, as: 'solutionType'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_creation_config, as: 'agentCreationConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigAgentCreationConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigAgentCreationConfig::Representation
      
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
          property :optimization_objective_config, as: 'optimizationObjectiveConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1alphaEvaluation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :error, as: 'error', class: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus::Representation
      
          property :evaluation_spec, as: 'evaluationSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaEvaluationEvaluationSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaEvaluationEvaluationSpec::Representation
      
          property :name, as: 'name'
          property :quality_metrics, as: 'qualityMetrics', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaQualityMetrics, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaQualityMetrics::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEvaluationEvaluationSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query_set_spec, as: 'querySetSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaEvaluationEvaluationSpecQuerySetSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaEvaluationEvaluationSpecQuerySetSpec::Representation
      
          property :search_request, as: 'searchRequest', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequest, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequest::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEvaluationEvaluationSpecQuerySetSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sample_query_set, as: 'sampleQuerySet'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaFetchSitemapsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :sitemaps_metadata, as: 'sitemapsMetadata', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaFetchSitemapsResponseSitemapMetadata, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaFetchSitemapsResponseSitemapMetadata::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaFetchSitemapsResponseSitemapMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sitemap, as: 'sitemap', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSitemap, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSitemap::Representation
      
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
          property :metatag_name, as: 'metatagName'
          property :recs_filterable_option, as: 'recsFilterableOption'
          property :retrievable_option, as: 'retrievableOption'
          collection :schema_org_paths, as: 'schemaOrgPaths'
          property :searchable_option, as: 'searchableOption'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaGetSessionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :include_answer_details, as: 'includeAnswerDetails'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaGetUriPatternDocumentDataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :document_data_map, as: 'documentDataMap'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaIdentityScheduleConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_sync_time, as: 'nextSyncTime', class: Google::Apis::DiscoveryengineV1beta::GoogleTypeDateTime, decorator: Google::Apis::DiscoveryengineV1beta::GoogleTypeDateTime::Representation
      
          property :refresh_interval, as: 'refreshInterval'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaIdpConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :external_idp_config, as: 'externalIdpConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaIdpConfigExternalIdpConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaIdpConfigExternalIdpConfig::Representation
      
          property :idp_type, as: 'idpType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaIdpConfigExternalIdpConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :workforce_pool_name, as: 'workforcePoolName'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportCompletionSuggestionsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportCompletionSuggestionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus::Representation
      
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
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportErrorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_prefix, as: 'gcsPrefix'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportSampleQueriesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :total_count, :numeric_string => true, as: 'totalCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportSampleQueriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus::Representation
      
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
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus::Representation
      
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
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1alphaLanguageInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language, as: 'language'
          property :language_code, as: 'languageCode'
          property :normalized_language_code, as: 'normalizedLanguageCode'
          property :region, as: 'region'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListSessionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :order_by, as: 'orderBy'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :parent, as: 'parent'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListSessionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :sessions, as: 'sessions', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSession, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSession::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaNaturalLanguageQueryUnderstandingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaObtainCrawlRateResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dedicated_crawl_rate_time_series, as: 'dedicatedCrawlRateTimeSeries', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaDedicatedCrawlRateTimeSeries, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaDedicatedCrawlRateTimeSeries::Representation
      
          property :error, as: 'error', class: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus::Representation
      
          property :organic_crawl_rate_time_series, as: 'organicCrawlRateTimeSeries', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaOrganicCrawlRateTimeSeries, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaOrganicCrawlRateTimeSeries::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaOrganicCrawlRateTimeSeries
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :google_organic_crawl_rate, as: 'googleOrganicCrawlRate', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries::Representation
      
          property :vertex_ai_organic_crawl_rate, as: 'vertexAiOrganicCrawlRate', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaProject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :provision_completion_time, as: 'provisionCompletionTime'
          hash :service_terms_map, as: 'serviceTermsMap', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaProjectServiceTerms, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaProjectServiceTerms::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1alphaPurgeCompletionSuggestionsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeCompletionSuggestionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus::Representation
      
          property :purge_succeeded, as: 'purgeSucceeded'
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
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1alphaQualityMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :doc_ndcg, as: 'docNdcg', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics::Representation
      
          property :doc_precision, as: 'docPrecision', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics::Representation
      
          property :doc_recall, as: 'docRecall', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics::Representation
      
          property :page_ndcg, as: 'pageNdcg', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics::Representation
      
          property :page_recall, as: 'pageRecall', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :top1, as: 'top1'
          property :top10, as: 'top10'
          property :top3, as: 'top3'
          property :top5, as: 'top5'
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
          property :invalid_uris_count, as: 'invalidUrisCount'
          property :pending_count, as: 'pendingCount'
          property :quota_exceeded_count, as: 'quotaExceededCount'
          property :success_count, as: 'successCount'
          property :update_time, as: 'updateTime'
          collection :uris_not_matching_target_sites, as: 'urisNotMatchingTargetSites'
          property :uris_not_matching_target_sites_count, as: 'urisNotMatchingTargetSitesCount'
          property :valid_uris_count, as: 'validUrisCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :failed_uris, as: 'failedUris'
          collection :failure_samples, as: 'failureSamples', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponseFailureInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponseFailureInfo::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponseFailureInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :failure_reasons, as: 'failureReasons', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponseFailureInfoFailureReason, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponseFailureInfoFailureReason::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1alphaRemoveDedicatedCrawlRateMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRemoveDedicatedCrawlRateResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSafetyRating
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blocked, as: 'blocked'
          property :category, as: 'category'
          property :probability, as: 'probability'
          property :probability_score, as: 'probabilityScore'
          property :severity, as: 'severity'
          property :severity_score, as: 'severityScore'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :field_configs, as: 'fieldConfigs', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaFieldConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaFieldConfig::Representation
      
          property :json_schema, as: 'jsonSchema'
          property :name, as: 'name'
          hash :struct_schema, as: 'structSchema'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchLinkPromotion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :enabled, as: 'enabled'
          property :image_uri, as: 'imageUri'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost_spec, as: 'boostSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpec::Representation
      
          property :branch, as: 'branch'
          property :canonical_filter, as: 'canonicalFilter'
          property :content_search_spec, as: 'contentSearchSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpec::Representation
      
          property :custom_fine_tuning_spec, as: 'customFineTuningSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaCustomFineTuningSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaCustomFineTuningSpec::Representation
      
          collection :data_store_specs, as: 'dataStoreSpecs', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestDataStoreSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestDataStoreSpec::Representation
      
          property :embedding_spec, as: 'embeddingSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestEmbeddingSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestEmbeddingSpec::Representation
      
          collection :facet_specs, as: 'facetSpecs', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestFacetSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestFacetSpec::Representation
      
          property :filter, as: 'filter'
          property :image_query, as: 'imageQuery', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestImageQuery, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestImageQuery::Representation
      
          property :language_code, as: 'languageCode'
          property :natural_language_query_understanding_spec, as: 'naturalLanguageQueryUnderstandingSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestNaturalLanguageQueryUnderstandingSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestNaturalLanguageQueryUnderstandingSpec::Representation
      
          property :offset, as: 'offset'
          property :one_box_page_size, as: 'oneBoxPageSize'
          property :order_by, as: 'orderBy'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          hash :params, as: 'params'
          property :personalization_spec, as: 'personalizationSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestPersonalizationSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestPersonalizationSpec::Representation
      
          property :query, as: 'query'
          property :query_expansion_spec, as: 'queryExpansionSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestQueryExpansionSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestQueryExpansionSpec::Representation
      
          property :ranking_expression, as: 'rankingExpression'
          property :region_code, as: 'regionCode'
          property :relevance_threshold, as: 'relevanceThreshold'
          property :safe_search, as: 'safeSearch'
          property :search_as_you_type_spec, as: 'searchAsYouTypeSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestSearchAsYouTypeSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestSearchAsYouTypeSpec::Representation
      
          property :serving_config, as: 'servingConfig'
          property :session, as: 'session'
          property :session_spec, as: 'sessionSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestSessionSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestSessionSpec::Representation
      
          property :spell_correction_spec, as: 'spellCorrectionSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestSpellCorrectionSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestSpellCorrectionSpec::Representation
      
          property :user_info, as: 'userInfo', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaUserInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaUserInfo::Representation
      
          hash :user_labels, as: 'userLabels'
          property :user_pseudo_id, as: 'userPseudoId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :condition_boost_specs, as: 'conditionBoostSpecs', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost, as: 'boost'
          property :boost_control_spec, as: 'boostControlSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpecBoostControlSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpecBoostControlSpec::Representation
      
          property :condition, as: 'condition'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpecBoostControlSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_type, as: 'attributeType'
          collection :control_points, as: 'controlPoints', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpecBoostControlSpecControlPoint, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpecBoostControlSpecControlPoint::Representation
      
          property :field_name, as: 'fieldName'
          property :interpolation_type, as: 'interpolationType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpecBoostControlSpecControlPoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_value, as: 'attributeValue'
          property :boost_amount, as: 'boostAmount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk_spec, as: 'chunkSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecChunkSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecChunkSpec::Representation
      
          property :extractive_content_spec, as: 'extractiveContentSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecExtractiveContentSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecExtractiveContentSpec::Representation
      
          property :search_result_mode, as: 'searchResultMode'
          property :snippet_spec, as: 'snippetSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSnippetSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSnippetSpec::Representation
      
          property :summary_spec, as: 'summarySpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecChunkSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :num_next_chunks, as: 'numNextChunks'
          property :num_previous_chunks, as: 'numPreviousChunks'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecExtractiveContentSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_extractive_answer_count, as: 'maxExtractiveAnswerCount'
          property :max_extractive_segment_count, as: 'maxExtractiveSegmentCount'
          property :num_next_segments, as: 'numNextSegments'
          property :num_previous_segments, as: 'numPreviousSegments'
          property :return_extractive_segment_score, as: 'returnExtractiveSegmentScore'
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
          property :ignore_jail_breaking_query, as: 'ignoreJailBreakingQuery'
          property :ignore_low_relevant_content, as: 'ignoreLowRelevantContent'
          property :ignore_non_summary_seeking_query, as: 'ignoreNonSummarySeekingQuery'
          property :include_citations, as: 'includeCitations'
          property :language_code, as: 'languageCode'
          property :model_prompt_spec, as: 'modelPromptSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecModelPromptSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecModelPromptSpec::Representation
      
          property :model_spec, as: 'modelSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecModelSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecModelSpec::Representation
      
          property :summary_result_count, as: 'summaryResultCount'
          property :use_semantic_chunks, as: 'useSemanticChunks'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecModelPromptSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :preamble, as: 'preamble'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecModelSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestDataStoreSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost_spec, as: 'boostSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpec::Representation
      
          property :data_store, as: 'dataStore'
          property :filter, as: 'filter'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestEmbeddingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :embedding_vectors, as: 'embeddingVectors', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestEmbeddingSpecEmbeddingVector, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestEmbeddingSpecEmbeddingVector::Representation
      
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
          property :facet_key, as: 'facetKey', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestFacetSpecFacetKey, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSearchRequestFacetSpecFacetKey::Representation
      
          property :limit, as: 'limit'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestFacetSpecFacetKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :case_insensitive, as: 'caseInsensitive'
          collection :contains, as: 'contains'
          collection :intervals, as: 'intervals', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaInterval, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaInterval::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestNaturalLanguageQueryUnderstandingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter_extraction_condition, as: 'filterExtractionCondition'
          collection :geo_search_query_detection_field_names, as: 'geoSearchQueryDetectionFieldNames'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestPersonalizationSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestQueryExpansionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition'
          property :pin_unexpanded_results, as: 'pinUnexpandedResults'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestSearchAsYouTypeSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestSessionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query_id, as: 'queryId'
          property :search_result_persistence_count, as: 'searchResultPersistenceCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestSpellCorrectionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSession
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :end_time, as: 'endTime'
          property :is_pinned, as: 'isPinned'
          property :name, as: 'name'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          collection :turns, as: 'turns', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSessionTurn, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSessionTurn::Representation
      
          property :user_pseudo_id, as: 'userPseudoId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSessionTurn
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer, as: 'answer'
          property :detailed_answer, as: 'detailedAnswer', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswer, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaAnswer::Representation
      
          property :query, as: 'query', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaQuery, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaQuery::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSetDedicatedCrawlRateMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSetDedicatedCrawlRateResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSetUpDataConnectorMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSetUriPatternDocumentDataMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSetUriPatternDocumentDataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSingleRegionKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key, as: 'kmsKey'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSiteVerificationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :site_verification_state, as: 'siteVerificationState'
          property :verify_time, as: 'verifyTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSitemap
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaTargetSite
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exact_match, as: 'exactMatch'
          property :failure_reason, as: 'failureReason', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaTargetSiteFailureReason, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaTargetSiteFailureReason::Representation
      
          property :generated_uri_pattern, as: 'generatedUriPattern'
          property :indexing_status, as: 'indexingStatus'
          property :name, as: 'name'
          property :provided_uri_pattern, as: 'providedUriPattern'
          property :root_domain_uri, as: 'rootDomainUri'
          property :site_verification_info, as: 'siteVerificationInfo', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSiteVerificationInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSiteVerificationInfo::Representation
      
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaTargetSiteFailureReason
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :quota_failure, as: 'quotaFailure', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaTargetSiteFailureReasonQuotaFailure, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaTargetSiteFailureReasonQuotaFailure::Representation
      
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
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1alphaUpdateCmekConfigMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaUpdateCollectionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaUpdateSchemaMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaUpdateSessionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :session, as: 'session', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSession, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSession::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaUpdateTargetSiteMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaUserInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :user_agent, as: 'userAgent'
          property :user_id, as: 'userId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaWorkspaceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dasher_customer_id, as: 'dasherCustomerId'
          property :super_admin_email_address, as: 'superAdminEmailAddress'
          property :super_admin_service_account, as: 'superAdminServiceAccount'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost_spec, as: 'boostSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryRequestBoostSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryRequestBoostSpec::Representation
      
          property :include_tail_suggestions, as: 'includeTailSuggestions'
          property :query, as: 'query'
          property :query_model, as: 'queryModel'
          collection :suggestion_types, as: 'suggestionTypes'
          property :user_info, as: 'userInfo', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserInfo::Representation
      
          property :user_pseudo_id, as: 'userPseudoId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryRequestBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :condition_boost_specs, as: 'conditionBoostSpecs', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryRequestBoostSpecConditionBoostSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryRequestBoostSpecConditionBoostSpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryRequestBoostSpecConditionBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost, as: 'boost'
          property :condition, as: 'condition'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :content_suggestions, as: 'contentSuggestions', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponseContentSuggestion, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponseContentSuggestion::Representation
      
          collection :people_suggestions, as: 'peopleSuggestions', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponsePersonSuggestion, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponsePersonSuggestion::Representation
      
          collection :query_suggestions, as: 'querySuggestions', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponseQuerySuggestion, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponseQuerySuggestion::Representation
      
          collection :recent_search_suggestions, as: 'recentSearchSuggestions', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponseRecentSearchSuggestion, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponseRecentSearchSuggestion::Representation
      
          property :tail_match_triggered, as: 'tailMatchTriggered'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponseContentSuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_type, as: 'contentType'
          property :data_store, as: 'dataStore'
          property :document, as: 'document', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument::Representation
      
          property :suggestion, as: 'suggestion'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponsePersonSuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_store, as: 'dataStore'
          property :document, as: 'document', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument::Representation
      
          property :person_type, as: 'personType'
          property :suggestion, as: 'suggestion'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponseQuerySuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :completable_field_paths, as: 'completableFieldPaths'
          collection :data_store, as: 'dataStore'
          property :suggestion, as: 'suggestion'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponseRecentSearchSuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :recent_search_time, as: 'recentSearchTime'
          property :suggestion, as: 'suggestion'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAdvancedSiteSearchConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_automatic_refresh, as: 'disableAutomaticRefresh'
          property :disable_initial_index, as: 'disableInitialIndex'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAlloyDbSource
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
      
      class GoogleCloudDiscoveryengineV1betaAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :answer_skipped_reasons, as: 'answerSkippedReasons'
          property :answer_text, as: 'answerText'
          collection :citations, as: 'citations', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerCitation, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerCitation::Representation
      
          property :complete_time, as: 'completeTime'
          property :create_time, as: 'createTime'
          property :grounding_score, as: 'groundingScore'
          collection :grounding_supports, as: 'groundingSupports', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerGroundingSupport, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerGroundingSupport::Representation
      
          property :name, as: 'name'
          property :query_understanding_info, as: 'queryUnderstandingInfo', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryUnderstandingInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryUnderstandingInfo::Representation
      
          collection :references, as: 'references', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerReference, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerReference::Representation
      
          collection :related_questions, as: 'relatedQuestions'
          collection :safety_ratings, as: 'safetyRatings', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSafetyRating, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSafetyRating::Representation
      
          property :state, as: 'state'
          collection :steps, as: 'steps', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerStep, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerStep::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerCitation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_index, :numeric_string => true, as: 'endIndex'
          collection :sources, as: 'sources', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerCitationSource, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerCitationSource::Representation
      
          property :start_index, :numeric_string => true, as: 'startIndex'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerCitationSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reference_id, as: 'referenceId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerGroundingSupport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_index, :numeric_string => true, as: 'endIndex'
          property :grounding_check_required, as: 'groundingCheckRequired'
          property :grounding_score, as: 'groundingScore'
          collection :sources, as: 'sources', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerCitationSource, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerCitationSource::Representation
      
          property :start_index, :numeric_string => true, as: 'startIndex'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer_generation_spec, as: 'answerGenerationSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestAnswerGenerationSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestAnswerGenerationSpec::Representation
      
          property :asynchronous_mode, as: 'asynchronousMode'
          property :grounding_spec, as: 'groundingSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestGroundingSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestGroundingSpec::Representation
      
          property :query, as: 'query', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaQuery, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaQuery::Representation
      
          property :query_understanding_spec, as: 'queryUnderstandingSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestQueryUnderstandingSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestQueryUnderstandingSpec::Representation
      
          property :related_questions_spec, as: 'relatedQuestionsSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestRelatedQuestionsSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestRelatedQuestionsSpec::Representation
      
          property :safety_spec, as: 'safetySpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSafetySpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSafetySpec::Representation
      
          property :search_spec, as: 'searchSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpec::Representation
      
          property :session, as: 'session'
          hash :user_labels, as: 'userLabels'
          property :user_pseudo_id, as: 'userPseudoId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestAnswerGenerationSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer_language_code, as: 'answerLanguageCode'
          property :ignore_adversarial_query, as: 'ignoreAdversarialQuery'
          property :ignore_jail_breaking_query, as: 'ignoreJailBreakingQuery'
          property :ignore_low_relevant_content, as: 'ignoreLowRelevantContent'
          property :ignore_non_answer_seeking_query, as: 'ignoreNonAnswerSeekingQuery'
          property :include_citations, as: 'includeCitations'
          property :model_spec, as: 'modelSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestAnswerGenerationSpecModelSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestAnswerGenerationSpecModelSpec::Representation
      
          property :prompt_spec, as: 'promptSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestAnswerGenerationSpecPromptSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestAnswerGenerationSpecPromptSpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestAnswerGenerationSpecModelSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model_version, as: 'modelVersion'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestAnswerGenerationSpecPromptSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :preamble, as: 'preamble'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestGroundingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filtering_level, as: 'filteringLevel'
          property :include_grounding_supports, as: 'includeGroundingSupports'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestQueryUnderstandingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query_classification_spec, as: 'queryClassificationSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestQueryUnderstandingSpecQueryClassificationSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestQueryUnderstandingSpecQueryClassificationSpec::Representation
      
          property :query_rephraser_spec, as: 'queryRephraserSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestQueryUnderstandingSpecQueryRephraserSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestQueryUnderstandingSpecQueryRephraserSpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestQueryUnderstandingSpecQueryClassificationSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :types, as: 'types'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestQueryUnderstandingSpecQueryRephraserSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable, as: 'disable'
          property :max_rephrase_steps, as: 'maxRephraseSteps'
          property :model_spec, as: 'modelSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestQueryUnderstandingSpecQueryRephraserSpecModelSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestQueryUnderstandingSpecQueryRephraserSpecModelSpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestQueryUnderstandingSpecQueryRephraserSpecModelSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model_type, as: 'modelType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestRelatedQuestionsSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable, as: 'enable'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSafetySpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable, as: 'enable'
          collection :safety_settings, as: 'safetySettings', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSafetySpecSafetySetting, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSafetySpecSafetySetting::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSafetySpecSafetySetting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category, as: 'category'
          property :threshold, as: 'threshold'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :search_params, as: 'searchParams', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpecSearchParams, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpecSearchParams::Representation
      
          property :search_result_list, as: 'searchResultList', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpecSearchResultList, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpecSearchResultList::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpecSearchParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost_spec, as: 'boostSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec::Representation
      
          collection :data_store_specs, as: 'dataStoreSpecs', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestDataStoreSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestDataStoreSpec::Representation
      
          property :filter, as: 'filter'
          property :max_return_results, as: 'maxReturnResults'
          property :natural_language_query_understanding_spec, as: 'naturalLanguageQueryUnderstandingSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestNaturalLanguageQueryUnderstandingSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestNaturalLanguageQueryUnderstandingSpec::Representation
      
          property :order_by, as: 'orderBy'
          property :search_result_mode, as: 'searchResultMode'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpecSearchResultList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :search_results, as: 'searchResults', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpecSearchResultListSearchResult, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpecSearchResultListSearchResult::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpecSearchResultListSearchResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk_info, as: 'chunkInfo', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpecSearchResultListSearchResultChunkInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpecSearchResultListSearchResultChunkInfo::Representation
      
          property :unstructured_document_info, as: 'unstructuredDocumentInfo', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfo::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpecSearchResultListSearchResultChunkInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk, as: 'chunk'
          property :content, as: 'content'
          property :document_metadata, as: 'documentMetadata', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpecSearchResultListSearchResultChunkInfoDocumentMetadata, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpecSearchResultListSearchResultChunkInfoDocumentMetadata::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpecSearchResultListSearchResultChunkInfoDocumentMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document'
          collection :document_contexts, as: 'documentContexts', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoDocumentContext, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoDocumentContext::Representation
      
          collection :extractive_answers, as: 'extractiveAnswers', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoExtractiveAnswer, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoExtractiveAnswer::Representation
      
          collection :extractive_segments, as: 'extractiveSegments', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoExtractiveSegment, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoExtractiveSegment::Representation
      
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoDocumentContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :page_identifier, as: 'pageIdentifier'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoExtractiveAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :page_identifier, as: 'pageIdentifier'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoExtractiveSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :page_identifier, as: 'pageIdentifier'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer, as: 'answer', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswer, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswer::Representation
      
          property :answer_query_token, as: 'answerQueryToken'
          property :session, as: 'session', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryUnderstandingInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :query_classification_info, as: 'queryClassificationInfo', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryUnderstandingInfoQueryClassificationInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryUnderstandingInfoQueryClassificationInfo::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerQueryUnderstandingInfoQueryClassificationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :positive, as: 'positive'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk_info, as: 'chunkInfo', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerReferenceChunkInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerReferenceChunkInfo::Representation
      
          property :structured_document_info, as: 'structuredDocumentInfo', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerReferenceStructuredDocumentInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerReferenceStructuredDocumentInfo::Representation
      
          property :unstructured_document_info, as: 'unstructuredDocumentInfo', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerReferenceUnstructuredDocumentInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerReferenceUnstructuredDocumentInfo::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerReferenceChunkInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk, as: 'chunk'
          property :content, as: 'content'
          property :document_metadata, as: 'documentMetadata', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerReferenceChunkInfoDocumentMetadata, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerReferenceChunkInfoDocumentMetadata::Representation
      
          property :relevance_score, as: 'relevanceScore'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerReferenceChunkInfoDocumentMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document'
          property :page_identifier, as: 'pageIdentifier'
          hash :struct_data, as: 'structData'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerReferenceStructuredDocumentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document'
          hash :struct_data, as: 'structData'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerReferenceUnstructuredDocumentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :chunk_contents, as: 'chunkContents', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerReferenceUnstructuredDocumentInfoChunkContent, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerReferenceUnstructuredDocumentInfoChunkContent::Representation
      
          property :document, as: 'document'
          hash :struct_data, as: 'structData'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerReferenceUnstructuredDocumentInfoChunkContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :page_identifier, as: 'pageIdentifier'
          property :relevance_score, as: 'relevanceScore'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :actions, as: 'actions', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerStepAction, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerStepAction::Representation
      
          property :description, as: 'description'
          property :state, as: 'state'
          property :thought, as: 'thought'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerStepAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :observation, as: 'observation', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerStepActionObservation, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerStepActionObservation::Representation
      
          property :search_action, as: 'searchAction', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerStepActionSearchAction, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerStepActionSearchAction::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerStepActionObservation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :search_results, as: 'searchResults', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerStepActionObservationSearchResult, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerStepActionObservationSearchResult::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerStepActionObservationSearchResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :chunk_info, as: 'chunkInfo', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerStepActionObservationSearchResultChunkInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerStepActionObservationSearchResultChunkInfo::Representation
      
          property :document, as: 'document'
          collection :snippet_info, as: 'snippetInfo', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerStepActionObservationSearchResultSnippetInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerStepActionObservationSearchResultSnippetInfo::Representation
      
          hash :struct_data, as: 'structData'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerStepActionObservationSearchResultChunkInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk, as: 'chunk'
          property :content, as: 'content'
          property :relevance_score, as: 'relevanceScore'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerStepActionObservationSearchResultSnippetInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :snippet, as: 'snippet'
          property :snippet_status, as: 'snippetStatus'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAnswerStepActionSearchAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query, as: 'query'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaBatchCreateTargetSiteMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaBatchCreateTargetSitesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :requests, as: 'requests', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCreateTargetSiteRequest, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCreateTargetSiteRequest::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaBatchCreateTargetSitesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :target_sites, as: 'targetSites', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTargetSite, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTargetSite::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaBatchGetDocumentsMetadataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :documents_metadata, as: 'documentsMetadata', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaBatchGetDocumentsMetadataResponseDocumentMetadata, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaBatchGetDocumentsMetadataResponseDocumentMetadata::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaBatchGetDocumentsMetadataResponseDocumentMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_ingestion_source, as: 'dataIngestionSource'
          property :last_refreshed_time, as: 'lastRefreshedTime'
          property :matcher_value, as: 'matcherValue', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaBatchGetDocumentsMetadataResponseDocumentMetadataMatcherValue, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaBatchGetDocumentsMetadataResponseDocumentMetadataMatcherValue::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaBatchGetDocumentsMetadataResponseDocumentMetadataMatcherValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fhir_resource, as: 'fhirResource'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaBatchVerifyTargetSitesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaBigQuerySource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_schema, as: 'dataSchema'
          property :dataset_id, as: 'datasetId'
          property :gcs_staging_dir, as: 'gcsStagingDir'
          property :partition_date, as: 'partitionDate', class: Google::Apis::DiscoveryengineV1beta::GoogleTypeDate, decorator: Google::Apis::DiscoveryengineV1beta::GoogleTypeDate::Representation
      
          property :project_id, as: 'projectId'
          property :table_id, as: 'tableId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaBigtableOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :families, as: 'families', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaBigtableOptionsBigtableColumnFamily, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaBigtableOptionsBigtableColumnFamily::Representation
      
          property :key_field_name, as: 'keyFieldName'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaBigtableOptionsBigtableColumn
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encoding, as: 'encoding'
          property :field_name, as: 'fieldName'
          property :qualifier, :base64 => true, as: 'qualifier'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaBigtableOptionsBigtableColumnFamily
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :columns, as: 'columns', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaBigtableOptionsBigtableColumn, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaBigtableOptionsBigtableColumn::Representation
      
          property :encoding, as: 'encoding'
          property :field_name, as: 'fieldName'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaBigtableSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigtable_options, as: 'bigtableOptions', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaBigtableOptions, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaBigtableOptions::Representation
      
          property :instance_id, as: 'instanceId'
          property :project_id, as: 'projectId'
          property :table_id, as: 'tableId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaCheckGroundingRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer_candidate, as: 'answerCandidate'
          collection :facts, as: 'facts', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGroundingFact, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGroundingFact::Representation
      
          property :grounding_spec, as: 'groundingSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCheckGroundingSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCheckGroundingSpec::Representation
      
          hash :user_labels, as: 'userLabels'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaCheckGroundingResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cited_chunks, as: 'citedChunks', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaFactChunk, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaFactChunk::Representation
      
          collection :cited_facts, as: 'citedFacts', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCheckGroundingResponseCheckGroundingFactChunk, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCheckGroundingResponseCheckGroundingFactChunk::Representation
      
          collection :claims, as: 'claims', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCheckGroundingResponseClaim, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCheckGroundingResponseClaim::Representation
      
          property :support_score, as: 'supportScore'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaCheckGroundingResponseCheckGroundingFactChunk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk_text, as: 'chunkText'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaCheckGroundingResponseClaim
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :citation_indices, as: 'citationIndices'
          property :claim_text, as: 'claimText'
          property :end_pos, as: 'endPos'
          property :grounding_check_required, as: 'groundingCheckRequired'
          property :start_pos, as: 'startPos'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaCheckGroundingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :citation_threshold, as: 'citationThreshold'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaChunk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk_metadata, as: 'chunkMetadata', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaChunkChunkMetadata, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaChunkChunkMetadata::Representation
      
          property :content, as: 'content'
          hash :derived_struct_data, as: 'derivedStructData'
          property :document_metadata, as: 'documentMetadata', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaChunkDocumentMetadata, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaChunkDocumentMetadata::Representation
      
          property :id, as: 'id'
          property :name, as: 'name'
          property :page_span, as: 'pageSpan', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaChunkPageSpan, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaChunkPageSpan::Representation
      
          property :relevance_score, as: 'relevanceScore'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaChunkChunkMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :next_chunks, as: 'nextChunks', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaChunk, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaChunk::Representation
      
          collection :previous_chunks, as: 'previousChunks', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaChunk, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaChunk::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaChunkDocumentMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :struct_data, as: 'structData'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaChunkPageSpan
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :page_end, as: 'pageEnd'
          property :page_start, as: 'pageStart'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaCloudSqlSource
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
      
      class GoogleCloudDiscoveryengineV1betaCmekConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_default, as: 'isDefault'
          property :kms_key, as: 'kmsKey'
          property :kms_key_version, as: 'kmsKeyVersion'
          property :last_rotation_timestamp_micros, :numeric_string => true, as: 'lastRotationTimestampMicros'
          property :name, as: 'name'
          collection :single_region_keys, as: 'singleRegionKeys', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSingleRegionKey, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSingleRegionKey::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaCompleteQueryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :query_suggestions, as: 'querySuggestions', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCompleteQueryResponseQuerySuggestion, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCompleteQueryResponseQuerySuggestion::Representation
      
          property :tail_match_triggered, as: 'tailMatchTriggered'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaCompleteQueryResponseQuerySuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :completable_field_paths, as: 'completableFieldPaths'
          property :suggestion, as: 'suggestion'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaCompletionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :selected_position, as: 'selectedPosition'
          property :selected_suggestion, as: 'selectedSuggestion'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaCompletionSuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :alternative_phrases, as: 'alternativePhrases'
          property :frequency, :numeric_string => true, as: 'frequency'
          property :global_score, as: 'globalScore'
          property :group_id, as: 'groupId'
          property :group_score, as: 'groupScore'
          property :language_code, as: 'languageCode'
          property :suggestion, as: 'suggestion'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :active_time_range, as: 'activeTimeRange', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConditionTimeRange, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConditionTimeRange::Representation
      
          property :query_regex, as: 'queryRegex'
          collection :query_terms, as: 'queryTerms', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConditionQueryTerm, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConditionQueryTerm::Representation
      
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
          property :boost_action, as: 'boostAction', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControlBoostAction, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControlBoostAction::Representation
      
          collection :conditions, as: 'conditions', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCondition, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCondition::Representation
      
          property :display_name, as: 'displayName'
          property :filter_action, as: 'filterAction', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControlFilterAction, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControlFilterAction::Representation
      
          property :name, as: 'name'
          property :promote_action, as: 'promoteAction', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControlPromoteAction, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControlPromoteAction::Representation
      
          property :redirect_action, as: 'redirectAction', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControlRedirectAction, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControlRedirectAction::Representation
      
          property :solution_type, as: 'solutionType'
          property :synonyms_action, as: 'synonymsAction', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControlSynonymsAction, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControlSynonymsAction::Representation
      
          collection :use_cases, as: 'useCases'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaControlBoostAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost, as: 'boost'
          property :data_store, as: 'dataStore'
          property :filter, as: 'filter'
          property :fixed_boost, as: 'fixedBoost'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaControlFilterAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_store, as: 'dataStore'
          property :filter, as: 'filter'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaControlPromoteAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_store, as: 'dataStore'
          property :search_link_promotion, as: 'searchLinkPromotion', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchLinkPromotion, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchLinkPromotion::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1betaConversation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          collection :messages, as: 'messages', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversationMessage, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversationMessage::Representation
      
          property :name, as: 'name'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :user_pseudo_id, as: 'userPseudoId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaConversationContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active_document, as: 'activeDocument'
          collection :context_documents, as: 'contextDocuments'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaConversationMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :reply, as: 'reply', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaReply, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaReply::Representation
      
          property :user_input, as: 'userInput', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTextInput, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTextInput::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaConverseConversationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost_spec, as: 'boostSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec::Representation
      
          property :conversation, as: 'conversation', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation::Representation
      
          property :filter, as: 'filter'
          property :query, as: 'query', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTextInput, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTextInput::Representation
      
          property :safe_search, as: 'safeSearch'
          property :serving_config, as: 'servingConfig'
          property :summary_spec, as: 'summarySpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpec::Representation
      
          hash :user_labels, as: 'userLabels'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaConverseConversationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation, as: 'conversation', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation::Representation
      
          collection :related_questions, as: 'relatedQuestions'
          property :reply, as: 'reply', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaReply, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaReply::Representation
      
          collection :search_results, as: 'searchResults', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseSearchResult, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseSearchResult::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1betaCreateEvaluationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaCreateSchemaMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaCreateSitemapMetadata
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
      
      class GoogleCloudDiscoveryengineV1betaCreateTargetSiteRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parent, as: 'parent'
          property :target_site, as: 'targetSite', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTargetSite, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTargetSite::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaCustomAttribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :numbers, as: 'numbers'
          collection :text, as: 'text'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaCustomTuningModel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :error_message, as: 'errorMessage'
          hash :metrics, as: 'metrics'
          property :model_state, as: 'modelState'
          property :model_version, :numeric_string => true, as: 'modelVersion'
          property :name, as: 'name'
          property :training_start_time, as: 'trainingStartTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDataStore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advanced_site_search_config, as: 'advancedSiteSearchConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAdvancedSiteSearchConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAdvancedSiteSearchConfig::Representation
      
          property :billing_estimation, as: 'billingEstimation', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDataStoreBillingEstimation, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDataStoreBillingEstimation::Representation
      
          property :cmek_config, as: 'cmekConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCmekConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCmekConfig::Representation
      
          property :content_config, as: 'contentConfig'
          property :create_time, as: 'createTime'
          property :default_schema_id, as: 'defaultSchemaId'
          property :display_name, as: 'displayName'
          property :document_processing_config, as: 'documentProcessingConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfig::Representation
      
          property :industry_vertical, as: 'industryVertical'
          property :is_infobot_faq_data_store, as: 'isInfobotFaqDataStore'
          property :kms_key_name, as: 'kmsKeyName'
          property :language_info, as: 'languageInfo', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaLanguageInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaLanguageInfo::Representation
      
          property :name, as: 'name'
          property :natural_language_query_understanding_config, as: 'naturalLanguageQueryUnderstandingConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaNaturalLanguageQueryUnderstandingConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaNaturalLanguageQueryUnderstandingConfig::Representation
      
          property :serving_config_data_store, as: 'servingConfigDataStore', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDataStoreServingConfigDataStore, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDataStoreServingConfigDataStore::Representation
      
          collection :solution_types, as: 'solutionTypes'
          property :starting_schema, as: 'startingSchema', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSchema, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSchema::Representation
      
          property :workspace_config, as: 'workspaceConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaWorkspaceConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaWorkspaceConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDataStoreBillingEstimation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :structured_data_size, :numeric_string => true, as: 'structuredDataSize'
          property :structured_data_update_time, as: 'structuredDataUpdateTime'
          property :unstructured_data_size, :numeric_string => true, as: 'unstructuredDataSize'
          property :unstructured_data_update_time, as: 'unstructuredDataUpdateTime'
          property :website_data_size, :numeric_string => true, as: 'websiteDataSize'
          property :website_data_update_time, as: 'websiteDataUpdateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDataStoreServingConfigDataStore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled_for_serving, as: 'disabledForServing'
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
      
      class GoogleCloudDiscoveryengineV1betaDeleteIdentityMappingStoreMetadata
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
      
      class GoogleCloudDiscoveryengineV1betaDeleteSitemapMetadata
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
      
      class GoogleCloudDiscoveryengineV1betaDisableAdvancedSiteSearchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDisableAdvancedSiteSearchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDocument
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocumentContent, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocumentContent::Representation
      
          hash :derived_struct_data, as: 'derivedStructData'
          property :id, as: 'id'
          property :index_status, as: 'indexStatus', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocumentIndexStatus, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocumentIndexStatus::Representation
      
          property :index_time, as: 'indexTime'
          property :json_data, as: 'jsonData'
          property :name, as: 'name'
          property :parent_document_id, as: 'parentDocumentId'
          property :schema_id, as: 'schemaId'
          hash :struct_data, as: 'structData'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDocumentContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mime_type, as: 'mimeType'
          property :raw_bytes, :base64 => true, as: 'rawBytes'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDocumentIndexStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus::Representation
      
          property :index_time, as: 'indexTime'
          property :pending_message, as: 'pendingMessage'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDocumentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversion_value, as: 'conversionValue'
          property :id, as: 'id'
          property :joined, as: 'joined'
          property :name, as: 'name'
          collection :promotion_ids, as: 'promotionIds'
          property :quantity, as: 'quantity'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDocumentProcessingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunking_config, as: 'chunkingConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigChunkingConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigChunkingConfig::Representation
      
          property :default_parsing_config, as: 'defaultParsingConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfig::Representation
      
          property :name, as: 'name'
          hash :parsing_config_overrides, as: 'parsingConfigOverrides', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigChunkingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :layout_based_chunking_config, as: 'layoutBasedChunkingConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig::Representation
      
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
          property :digital_parsing_config, as: 'digitalParsingConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfigDigitalParsingConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfigDigitalParsingConfig::Representation
      
          property :layout_parsing_config, as: 'layoutParsingConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfigLayoutParsingConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfigLayoutParsingConfig::Representation
      
          property :ocr_parsing_config, as: 'ocrParsingConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfigOcrParsingConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfigOcrParsingConfig::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1betaDoubleList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEmbeddingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_path, as: 'fieldPath'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEnableAdvancedSiteSearchMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEnableAdvancedSiteSearchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
          property :chat_engine_config, as: 'chatEngineConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEngineChatEngineConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEngineChatEngineConfig::Representation
      
          property :chat_engine_metadata, as: 'chatEngineMetadata', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEngineChatEngineMetadata, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEngineChatEngineMetadata::Representation
      
          property :common_config, as: 'commonConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEngineCommonConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEngineCommonConfig::Representation
      
          property :create_time, as: 'createTime'
          collection :data_store_ids, as: 'dataStoreIds'
          property :disable_analytics, as: 'disableAnalytics'
          property :display_name, as: 'displayName'
          property :industry_vertical, as: 'industryVertical'
          property :name, as: 'name'
          property :search_engine_config, as: 'searchEngineConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEngineSearchEngineConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEngineSearchEngineConfig::Representation
      
          property :solution_type, as: 'solutionType'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineChatEngineConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_creation_config, as: 'agentCreationConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEngineChatEngineConfigAgentCreationConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEngineChatEngineConfigAgentCreationConfig::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1betaEvaluation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :error, as: 'error', class: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus::Representation
      
          property :evaluation_spec, as: 'evaluationSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEvaluationEvaluationSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEvaluationEvaluationSpec::Representation
      
          property :name, as: 'name'
          property :quality_metrics, as: 'qualityMetrics', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaQualityMetrics, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaQualityMetrics::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEvaluationEvaluationSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query_set_spec, as: 'querySetSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEvaluationEvaluationSpecQuerySetSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEvaluationEvaluationSpecQuerySetSpec::Representation
      
          property :search_request, as: 'searchRequest', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequest, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequest::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEvaluationEvaluationSpecQuerySetSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sample_query_set, as: 'sampleQuerySet'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaFactChunk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk_text, as: 'chunkText'
          property :index, as: 'index'
          property :source, as: 'source'
          hash :source_metadata, as: 'sourceMetadata'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaFetchDomainVerificationStatusResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :target_sites, as: 'targetSites', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTargetSite, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTargetSite::Representation
      
          property :total_size, as: 'totalSize'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaFetchSitemapsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :sitemaps_metadata, as: 'sitemapsMetadata', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaFetchSitemapsResponseSitemapMetadata, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaFetchSitemapsResponseSitemapMetadata::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaFetchSitemapsResponseSitemapMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sitemap, as: 'sitemap', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSitemap, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSitemap::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaFhirStoreSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fhir_store, as: 'fhirStore'
          property :gcs_staging_dir, as: 'gcsStagingDir'
          collection :resource_types, as: 'resourceTypes'
          property :update_from_latest_predefined_schema, as: 'updateFromLatestPredefinedSchema'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaFirestoreSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :collection_id, as: 'collectionId'
          property :database_id, as: 'databaseId'
          property :gcs_staging_dir, as: 'gcsStagingDir'
          property :project_id, as: 'projectId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaGcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_schema, as: 'dataSchema'
          collection :input_uris, as: 'inputUris'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaGenerateGroundedContentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :contents, as: 'contents', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGroundedGenerationContent, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGroundedGenerationContent::Representation
      
          property :generation_spec, as: 'generationSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGenerateGroundedContentRequestGenerationSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGenerateGroundedContentRequestGenerationSpec::Representation
      
          property :grounding_spec, as: 'groundingSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGenerateGroundedContentRequestGroundingSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGenerateGroundedContentRequestGroundingSpec::Representation
      
          property :system_instruction, as: 'systemInstruction', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGroundedGenerationContent, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGroundedGenerationContent::Representation
      
          hash :user_labels, as: 'userLabels'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaGenerateGroundedContentRequestDynamicRetrievalConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :predictor, as: 'predictor', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGenerateGroundedContentRequestDynamicRetrievalConfigurationDynamicRetrievalPredictor, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGenerateGroundedContentRequestDynamicRetrievalConfigurationDynamicRetrievalPredictor::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaGenerateGroundedContentRequestDynamicRetrievalConfigurationDynamicRetrievalPredictor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :threshold, as: 'threshold'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaGenerateGroundedContentRequestGenerationSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :frequency_penalty, as: 'frequencyPenalty'
          property :language_code, as: 'languageCode'
          property :max_output_tokens, as: 'maxOutputTokens'
          property :model_id, as: 'modelId'
          property :presence_penalty, as: 'presencePenalty'
          property :seed, as: 'seed'
          property :temperature, as: 'temperature'
          property :top_k, as: 'topK'
          property :top_p, as: 'topP'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaGenerateGroundedContentRequestGroundingSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :google_search_source, as: 'googleSearchSource', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGenerateGroundedContentRequestGroundingSourceGoogleSearchSource, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGenerateGroundedContentRequestGroundingSourceGoogleSearchSource::Representation
      
          property :inline_source, as: 'inlineSource', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGenerateGroundedContentRequestGroundingSourceInlineSource, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGenerateGroundedContentRequestGroundingSourceInlineSource::Representation
      
          property :search_source, as: 'searchSource', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGenerateGroundedContentRequestGroundingSourceSearchSource, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGenerateGroundedContentRequestGroundingSourceSearchSource::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaGenerateGroundedContentRequestGroundingSourceGoogleSearchSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dynamic_retrieval_config, as: 'dynamicRetrievalConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGenerateGroundedContentRequestDynamicRetrievalConfiguration, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGenerateGroundedContentRequestDynamicRetrievalConfiguration::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaGenerateGroundedContentRequestGroundingSourceInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes'
          collection :grounding_facts, as: 'groundingFacts', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGroundingFact, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGroundingFact::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaGenerateGroundedContentRequestGroundingSourceSearchSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :max_result_count, as: 'maxResultCount'
          property :safe_search, as: 'safeSearch'
          property :serving_config, as: 'servingConfig'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaGenerateGroundedContentRequestGroundingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :grounding_sources, as: 'groundingSources', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGenerateGroundedContentRequestGroundingSource, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGenerateGroundedContentRequestGroundingSource::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaGenerateGroundedContentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :candidates, as: 'candidates', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGenerateGroundedContentResponseCandidate, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGenerateGroundedContentResponseCandidate::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaGenerateGroundedContentResponseCandidate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGroundedGenerationContent, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGroundedGenerationContent::Representation
      
          property :grounding_metadata, as: 'groundingMetadata', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGenerateGroundedContentResponseCandidateGroundingMetadata, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGenerateGroundedContentResponseCandidateGroundingMetadata::Representation
      
          property :grounding_score, as: 'groundingScore'
          property :index, as: 'index'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaGenerateGroundedContentResponseCandidateGroundingMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :grounding_support, as: 'groundingSupport', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGenerateGroundedContentResponseCandidateGroundingMetadataGroundingSupport, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGenerateGroundedContentResponseCandidateGroundingMetadataGroundingSupport::Representation
      
          collection :retrieval_metadata, as: 'retrievalMetadata', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGenerateGroundedContentResponseCandidateGroundingMetadataRetrievalMetadata, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGenerateGroundedContentResponseCandidateGroundingMetadataRetrievalMetadata::Representation
      
          property :search_entry_point, as: 'searchEntryPoint', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGenerateGroundedContentResponseCandidateGroundingMetadataSearchEntryPoint, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGenerateGroundedContentResponseCandidateGroundingMetadataSearchEntryPoint::Representation
      
          collection :support_chunks, as: 'supportChunks', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaFactChunk, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaFactChunk::Representation
      
          collection :web_search_queries, as: 'webSearchQueries'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaGenerateGroundedContentResponseCandidateGroundingMetadataDynamicRetrievalMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :predictor_metadata, as: 'predictorMetadata', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGenerateGroundedContentResponseCandidateGroundingMetadataDynamicRetrievalPredictorMetadata, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGenerateGroundedContentResponseCandidateGroundingMetadataDynamicRetrievalPredictorMetadata::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaGenerateGroundedContentResponseCandidateGroundingMetadataDynamicRetrievalPredictorMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :prediction, as: 'prediction'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaGenerateGroundedContentResponseCandidateGroundingMetadataGroundingSupport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :claim_text, as: 'claimText'
          collection :support_chunk_indices, as: 'supportChunkIndices'
          property :support_score, as: 'supportScore'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaGenerateGroundedContentResponseCandidateGroundingMetadataRetrievalMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dynamic_retrieval_metadata, as: 'dynamicRetrievalMetadata', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGenerateGroundedContentResponseCandidateGroundingMetadataDynamicRetrievalMetadata, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGenerateGroundedContentResponseCandidateGroundingMetadataDynamicRetrievalMetadata::Representation
      
          property :source, as: 'source'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaGenerateGroundedContentResponseCandidateGroundingMetadataSearchEntryPoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rendered_content, as: 'renderedContent'
          property :sdk_blob, :base64 => true, as: 'sdkBlob'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaGroundedGenerationContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :parts, as: 'parts', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGroundedGenerationContentPart, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGroundedGenerationContentPart::Representation
      
          property :role, as: 'role'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaGroundedGenerationContentPart
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaGroundingFact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes'
          property :fact_text, as: 'factText'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportCompletionSuggestionsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportCompletionSuggestionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_source, as: 'bigquerySource', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaBigQuerySource, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaBigQuerySource::Representation
      
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportErrorConfig::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGcsSource, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGcsSource::Representation
      
          property :inline_source, as: 'inlineSource', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportCompletionSuggestionsRequestInlineSource, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportCompletionSuggestionsRequestInlineSource::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportCompletionSuggestionsRequestInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :suggestions, as: 'suggestions', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCompletionSuggestion, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCompletionSuggestion::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportCompletionSuggestionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1betaImportDocumentsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alloy_db_source, as: 'alloyDbSource', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAlloyDbSource, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAlloyDbSource::Representation
      
          property :auto_generate_ids, as: 'autoGenerateIds'
          property :bigquery_source, as: 'bigquerySource', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaBigQuerySource, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaBigQuerySource::Representation
      
          property :bigtable_source, as: 'bigtableSource', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaBigtableSource, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaBigtableSource::Representation
      
          property :cloud_sql_source, as: 'cloudSqlSource', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCloudSqlSource, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCloudSqlSource::Representation
      
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportErrorConfig::Representation
      
          property :fhir_store_source, as: 'fhirStoreSource', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaFhirStoreSource, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaFhirStoreSource::Representation
      
          property :firestore_source, as: 'firestoreSource', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaFirestoreSource, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaFirestoreSource::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGcsSource, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGcsSource::Representation
      
          property :id_field, as: 'idField'
          property :inline_source, as: 'inlineSource', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportDocumentsRequestInlineSource, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportDocumentsRequestInlineSource::Representation
      
          property :reconciliation_mode, as: 'reconciliationMode'
          property :spanner_source, as: 'spannerSource', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSpannerSource, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSpannerSource::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportDocumentsRequestInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :documents, as: 'documents', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportErrorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_prefix, as: 'gcsPrefix'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportSampleQueriesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :total_count, :numeric_string => true, as: 'totalCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportSampleQueriesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_source, as: 'bigquerySource', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaBigQuerySource, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaBigQuerySource::Representation
      
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportErrorConfig::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGcsSource, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGcsSource::Representation
      
          property :inline_source, as: 'inlineSource', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportSampleQueriesRequestInlineSource, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportSampleQueriesRequestInlineSource::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportSampleQueriesRequestInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :sample_queries, as: 'sampleQueries', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuery, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuery::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportSampleQueriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportSuggestionDenyListEntriesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportSuggestionDenyListEntriesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_source, as: 'gcsSource', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGcsSource, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGcsSource::Representation
      
          property :inline_source, as: 'inlineSource', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportSuggestionDenyListEntriesRequestInlineSource, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportSuggestionDenyListEntriesRequestInlineSource::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportSuggestionDenyListEntriesRequestInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSuggestionDenyListEntry, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSuggestionDenyListEntry::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportSuggestionDenyListEntriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1betaImportUserEventsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_source, as: 'bigquerySource', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaBigQuerySource, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaBigQuerySource::Representation
      
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportErrorConfig::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGcsSource, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGcsSource::Representation
      
          property :inline_source, as: 'inlineSource', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportUserEventsRequestInlineSource, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportUserEventsRequestInlineSource::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportUserEventsRequestInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :user_events, as: 'userEvents', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserEvent, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserEvent::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus::Representation
      
          property :joined_events_count, :numeric_string => true, as: 'joinedEventsCount'
          property :unjoined_events_count, :numeric_string => true, as: 'unjoinedEventsCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaInterval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exclusive_maximum, as: 'exclusiveMaximum'
          property :exclusive_minimum, as: 'exclusiveMinimum'
          property :maximum, as: 'maximum'
          property :minimum, as: 'minimum'
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
      
      class GoogleCloudDiscoveryengineV1betaListControlsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :controls, as: 'controls', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaListConversationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conversations, as: 'conversations', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaListCustomModelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :models, as: 'models', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCustomTuningModel, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCustomTuningModel::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaListDataStoresResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_stores, as: 'dataStores', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDataStore, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDataStore::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaListDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :documents, as: 'documents', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaListEnginesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :engines, as: 'engines', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEngine, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEngine::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaListEvaluationResultsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :evaluation_results, as: 'evaluationResults', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListEvaluationResultsResponseEvaluationResult, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListEvaluationResultsResponseEvaluationResult::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaListEvaluationResultsResponseEvaluationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :quality_metrics, as: 'qualityMetrics', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaQualityMetrics, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaQualityMetrics::Representation
      
          property :sample_query, as: 'sampleQuery', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuery, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuery::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaListEvaluationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :evaluations, as: 'evaluations', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEvaluation, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEvaluation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaListSampleQueriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :sample_queries, as: 'sampleQueries', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuery, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuery::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaListSampleQuerySetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :sample_query_sets, as: 'sampleQuerySets', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuerySet, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuerySet::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaListSchemasResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :schemas, as: 'schemas', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSchema, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSchema::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaListServingConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :serving_configs, as: 'servingConfigs', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaServingConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaServingConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaListSessionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :sessions, as: 'sessions', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaListTargetSitesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :target_sites, as: 'targetSites', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTargetSite, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTargetSite::Representation
      
          property :total_size, as: 'totalSize'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaMediaInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :media_progress_duration, as: 'mediaProgressDuration'
          property :media_progress_percentage, as: 'mediaProgressPercentage'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaNaturalLanguageQueryUnderstandingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaPageInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :page_category, as: 'pageCategory'
          property :pageview_id, as: 'pageviewId'
          property :referrer_uri, as: 'referrerUri'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaPanelInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          collection :documents, as: 'documents', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocumentInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocumentInfo::Representation
      
          property :panel_id, as: 'panelId'
          property :panel_position, as: 'panelPosition'
          property :total_panels, as: 'totalPanels'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaPauseEngineRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaProject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :provision_completion_time, as: 'provisionCompletionTime'
          hash :service_terms_map, as: 'serviceTermsMap', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaProjectServiceTerms, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaProjectServiceTerms::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1betaProvisionProjectRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accept_data_use_terms, as: 'acceptDataUseTerms'
          property :data_use_terms_version, as: 'dataUseTermsVersion'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaPurgeCompletionSuggestionsRequest
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
      
      class GoogleCloudDiscoveryengineV1betaPurgeDocumentsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaPurgeErrorConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaPurgeErrorConfig::Representation
      
          property :filter, as: 'filter'
          property :force, as: 'force'
          property :gcs_source, as: 'gcsSource', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGcsSource, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGcsSource::Representation
      
          property :inline_source, as: 'inlineSource', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaPurgeDocumentsRequestInlineSource, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaPurgeDocumentsRequestInlineSource::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaPurgeDocumentsRequestInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :documents, as: 'documents'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaPurgeDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :purge_count, :numeric_string => true, as: 'purgeCount'
          collection :purge_sample, as: 'purgeSample'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaPurgeErrorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_prefix, as: 'gcsPrefix'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaPurgeSuggestionDenyListEntriesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaPurgeSuggestionDenyListEntriesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaPurgeSuggestionDenyListEntriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus::Representation
      
          property :purge_count, :numeric_string => true, as: 'purgeCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaPurgeUserEventsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :force, as: 'force'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaQualityMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :doc_ndcg, as: 'docNdcg', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics::Representation
      
          property :doc_precision, as: 'docPrecision', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics::Representation
      
          property :doc_recall, as: 'docRecall', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics::Representation
      
          property :page_ndcg, as: 'pageNdcg', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics::Representation
      
          property :page_recall, as: 'pageRecall', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :top1, as: 'top1'
          property :top10, as: 'top10'
          property :top3, as: 'top3'
          property :top5, as: 'top5'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query_id, as: 'queryId'
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaRankRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ignore_record_details_in_response, as: 'ignoreRecordDetailsInResponse'
          property :model, as: 'model'
          property :query, as: 'query'
          collection :records, as: 'records', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRankingRecord, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRankingRecord::Representation
      
          property :top_n, as: 'topN'
          hash :user_labels, as: 'userLabels'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaRankResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :records, as: 'records', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRankingRecord, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRankingRecord::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaRankingRecord
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :id, as: 'id'
          property :score, as: 'score'
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaRecommendRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :page_size, as: 'pageSize'
          hash :params, as: 'params'
          property :user_event, as: 'userEvent', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserEvent, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserEvent::Representation
      
          hash :user_labels, as: 'userLabels'
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaRecommendResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribution_token, as: 'attributionToken'
          collection :missing_ids, as: 'missingIds'
          collection :results, as: 'results', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRecommendResponseRecommendationResult, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRecommendResponseRecommendationResult::Representation
      
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaRecommendResponseRecommendationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument::Representation
      
          property :id, as: 'id'
          hash :metadata, as: 'metadata'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaRecrawlUrisRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :site_credential, as: 'siteCredential'
          collection :uris, as: 'uris'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaReply
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :references, as: 'references', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaReplyReference, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaReplyReference::Representation
      
          property :reply, as: 'reply'
          property :summary, as: 'summary', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseSummary, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseSummary::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaReplyReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :anchor_text, as: 'anchorText'
          property :end, as: 'end'
          property :start, as: 'start'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaResumeEngineRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSafetyRating
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blocked, as: 'blocked'
          property :category, as: 'category'
          property :probability, as: 'probability'
          property :probability_score, as: 'probabilityScore'
          property :severity, as: 'severity'
          property :severity_score, as: 'severityScore'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSampleQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :query_entry, as: 'queryEntry', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQueryQueryEntry, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQueryQueryEntry::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSampleQueryQueryEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query, as: 'query'
          collection :targets, as: 'targets', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQueryQueryEntryTarget, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQueryQueryEntryTarget::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSampleQueryQueryEntryTarget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :page_numbers, as: 'pageNumbers'
          property :score, as: 'score'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSampleQuerySet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
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
      
      class GoogleCloudDiscoveryengineV1betaSearchInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :offset, as: 'offset'
          property :order_by, as: 'orderBy'
          property :search_query, as: 'searchQuery'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchLinkPromotion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :enabled, as: 'enabled'
          property :image_uri, as: 'imageUri'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost_spec, as: 'boostSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec::Representation
      
          property :branch, as: 'branch'
          property :canonical_filter, as: 'canonicalFilter'
          property :content_search_spec, as: 'contentSearchSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpec::Representation
      
          collection :data_store_specs, as: 'dataStoreSpecs', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestDataStoreSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestDataStoreSpec::Representation
      
          property :embedding_spec, as: 'embeddingSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpec::Representation
      
          collection :facet_specs, as: 'facetSpecs', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestFacetSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestFacetSpec::Representation
      
          property :filter, as: 'filter'
          property :image_query, as: 'imageQuery', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestImageQuery, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestImageQuery::Representation
      
          property :language_code, as: 'languageCode'
          property :natural_language_query_understanding_spec, as: 'naturalLanguageQueryUnderstandingSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestNaturalLanguageQueryUnderstandingSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestNaturalLanguageQueryUnderstandingSpec::Representation
      
          property :offset, as: 'offset'
          property :one_box_page_size, as: 'oneBoxPageSize'
          property :order_by, as: 'orderBy'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          hash :params, as: 'params'
          property :personalization_spec, as: 'personalizationSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestPersonalizationSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestPersonalizationSpec::Representation
      
          property :query, as: 'query'
          property :query_expansion_spec, as: 'queryExpansionSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestQueryExpansionSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestQueryExpansionSpec::Representation
      
          property :ranking_expression, as: 'rankingExpression'
          property :region_code, as: 'regionCode'
          property :relevance_threshold, as: 'relevanceThreshold'
          property :safe_search, as: 'safeSearch'
          property :search_as_you_type_spec, as: 'searchAsYouTypeSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestSearchAsYouTypeSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestSearchAsYouTypeSpec::Representation
      
          property :serving_config, as: 'servingConfig'
          property :session, as: 'session'
          property :session_spec, as: 'sessionSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestSessionSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestSessionSpec::Representation
      
          property :spell_correction_spec, as: 'spellCorrectionSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestSpellCorrectionSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestSpellCorrectionSpec::Representation
      
          property :user_info, as: 'userInfo', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserInfo::Representation
      
          hash :user_labels, as: 'userLabels'
          property :user_pseudo_id, as: 'userPseudoId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :condition_boost_specs, as: 'conditionBoostSpecs', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost, as: 'boost'
          property :boost_control_spec, as: 'boostControlSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpecBoostControlSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpecBoostControlSpec::Representation
      
          property :condition, as: 'condition'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpecBoostControlSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_type, as: 'attributeType'
          collection :control_points, as: 'controlPoints', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpecBoostControlSpecControlPoint, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpecBoostControlSpecControlPoint::Representation
      
          property :field_name, as: 'fieldName'
          property :interpolation_type, as: 'interpolationType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpecBoostControlSpecControlPoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_value, as: 'attributeValue'
          property :boost_amount, as: 'boostAmount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk_spec, as: 'chunkSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecChunkSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecChunkSpec::Representation
      
          property :extractive_content_spec, as: 'extractiveContentSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecExtractiveContentSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecExtractiveContentSpec::Representation
      
          property :search_result_mode, as: 'searchResultMode'
          property :snippet_spec, as: 'snippetSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSnippetSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSnippetSpec::Representation
      
          property :summary_spec, as: 'summarySpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecChunkSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :num_next_chunks, as: 'numNextChunks'
          property :num_previous_chunks, as: 'numPreviousChunks'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecExtractiveContentSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_extractive_answer_count, as: 'maxExtractiveAnswerCount'
          property :max_extractive_segment_count, as: 'maxExtractiveSegmentCount'
          property :num_next_segments, as: 'numNextSegments'
          property :num_previous_segments, as: 'numPreviousSegments'
          property :return_extractive_segment_score, as: 'returnExtractiveSegmentScore'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSnippetSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_snippet_count, as: 'maxSnippetCount'
          property :reference_only, as: 'referenceOnly'
          property :return_snippet, as: 'returnSnippet'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ignore_adversarial_query, as: 'ignoreAdversarialQuery'
          property :ignore_jail_breaking_query, as: 'ignoreJailBreakingQuery'
          property :ignore_low_relevant_content, as: 'ignoreLowRelevantContent'
          property :ignore_non_summary_seeking_query, as: 'ignoreNonSummarySeekingQuery'
          property :include_citations, as: 'includeCitations'
          property :language_code, as: 'languageCode'
          property :model_prompt_spec, as: 'modelPromptSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecModelPromptSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecModelPromptSpec::Representation
      
          property :model_spec, as: 'modelSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecModelSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecModelSpec::Representation
      
          property :summary_result_count, as: 'summaryResultCount'
          property :use_semantic_chunks, as: 'useSemanticChunks'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecModelPromptSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :preamble, as: 'preamble'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecModelSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestDataStoreSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost_spec, as: 'boostSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec::Representation
      
          property :data_store, as: 'dataStore'
          property :filter, as: 'filter'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :embedding_vectors, as: 'embeddingVectors', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpecEmbeddingVector, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpecEmbeddingVector::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpecEmbeddingVector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_path, as: 'fieldPath'
          collection :vector, as: 'vector'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestFacetSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_dynamic_position, as: 'enableDynamicPosition'
          collection :excluded_filter_keys, as: 'excludedFilterKeys'
          property :facet_key, as: 'facetKey', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestFacetSpecFacetKey, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestFacetSpecFacetKey::Representation
      
          property :limit, as: 'limit'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestFacetSpecFacetKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :case_insensitive, as: 'caseInsensitive'
          collection :contains, as: 'contains'
          collection :intervals, as: 'intervals', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaInterval, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaInterval::Representation
      
          property :key, as: 'key'
          property :order_by, as: 'orderBy'
          collection :prefixes, as: 'prefixes'
          collection :restricted_values, as: 'restrictedValues'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestImageQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_bytes, as: 'imageBytes'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestNaturalLanguageQueryUnderstandingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter_extraction_condition, as: 'filterExtractionCondition'
          collection :geo_search_query_detection_field_names, as: 'geoSearchQueryDetectionFieldNames'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestPersonalizationSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestQueryExpansionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition'
          property :pin_unexpanded_results, as: 'pinUnexpandedResults'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestSearchAsYouTypeSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestSessionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query_id, as: 'queryId'
          property :search_result_persistence_count, as: 'searchResultPersistenceCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestSpellCorrectionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :applied_controls, as: 'appliedControls'
          property :attribution_token, as: 'attributionToken'
          property :corrected_query, as: 'correctedQuery'
          collection :facets, as: 'facets', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseFacet, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseFacet::Representation
      
          collection :geo_search_debug_info, as: 'geoSearchDebugInfo', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseGeoSearchDebugInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseGeoSearchDebugInfo::Representation
      
          property :guided_search_result, as: 'guidedSearchResult', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseGuidedSearchResult, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseGuidedSearchResult::Representation
      
          property :natural_language_query_understanding_info, as: 'naturalLanguageQueryUnderstandingInfo', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfo::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :one_box_results, as: 'oneBoxResults', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseOneBoxResult, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseOneBoxResult::Representation
      
          property :query_expansion_info, as: 'queryExpansionInfo', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseQueryExpansionInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseQueryExpansionInfo::Representation
      
          property :redirect_uri, as: 'redirectUri'
          collection :results, as: 'results', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseSearchResult, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseSearchResult::Representation
      
          collection :search_link_promotions, as: 'searchLinkPromotions', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchLinkPromotion, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchLinkPromotion::Representation
      
          property :session_info, as: 'sessionInfo', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseSessionInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseSessionInfo::Representation
      
          property :summary, as: 'summary', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseSummary, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseSummary::Representation
      
          property :total_size, as: 'totalSize'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseFacet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dynamic_facet, as: 'dynamicFacet'
          property :key, as: 'key'
          collection :values, as: 'values', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseFacetFacetValue, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseFacetFacetValue::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseFacetFacetValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :interval, as: 'interval', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaInterval, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaInterval::Representation
      
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseGeoSearchDebugInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_message, as: 'errorMessage'
          property :original_address_query, as: 'originalAddressQuery'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseGuidedSearchResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :follow_up_questions, as: 'followUpQuestions'
          collection :refinement_attributes, as: 'refinementAttributes', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseGuidedSearchResultRefinementAttribute, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseGuidedSearchResultRefinementAttribute::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseGuidedSearchResultRefinementAttribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_key, as: 'attributeKey'
          property :attribute_value, as: 'attributeValue'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :extracted_filters, as: 'extractedFilters'
          property :rewritten_query, as: 'rewrittenQuery'
          property :structured_extracted_filter, as: 'structuredExtractedFilter', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilter, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilter::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expression, as: 'expression', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterExpression, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterExpression::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterAndExpression
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :expressions, as: 'expressions', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterExpression, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterExpression::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterExpression
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :and_expr, as: 'andExpr', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterAndExpression, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterAndExpression::Representation
      
          property :geolocation_constraint, as: 'geolocationConstraint', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterGeolocationConstraint, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterGeolocationConstraint::Representation
      
          property :number_constraint, as: 'numberConstraint', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterNumberConstraint, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterNumberConstraint::Representation
      
          property :or_expr, as: 'orExpr', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterOrExpression, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterOrExpression::Representation
      
          property :string_constraint, as: 'stringConstraint', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterStringConstraint, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterStringConstraint::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterGeolocationConstraint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address'
          property :field_name, as: 'fieldName'
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
          property :radius_in_meters, as: 'radiusInMeters'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterNumberConstraint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :comparison, as: 'comparison'
          property :field_name, as: 'fieldName'
          property :query_segment, as: 'querySegment'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterOrExpression
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :expressions, as: 'expressions', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterExpression, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterExpression::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterStringConstraint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_name, as: 'fieldName'
          property :query_segment, as: 'querySegment'
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseOneBoxResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :one_box_type, as: 'oneBoxType'
          collection :search_results, as: 'searchResults', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseSearchResult, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseSearchResult::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseQueryExpansionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expanded_query, as: 'expandedQuery'
          property :pinned_result_count, :numeric_string => true, as: 'pinnedResultCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseSearchResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk, as: 'chunk', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaChunk, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaChunk::Representation
      
          property :document, as: 'document', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument::Representation
      
          property :id, as: 'id'
          hash :model_scores, as: 'modelScores', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDoubleList, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDoubleList::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseSessionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :query_id, as: 'queryId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :safety_attributes, as: 'safetyAttributes', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseSummarySafetyAttributes, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseSummarySafetyAttributes::Representation
      
          collection :summary_skipped_reasons, as: 'summarySkippedReasons'
          property :summary_text, as: 'summaryText'
          property :summary_with_metadata, as: 'summaryWithMetadata', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseSummarySummaryWithMetadata, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseSummarySummaryWithMetadata::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseSummaryCitation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_index, :numeric_string => true, as: 'endIndex'
          collection :sources, as: 'sources', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseSummaryCitationSource, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseSummaryCitationSource::Representation
      
          property :start_index, :numeric_string => true, as: 'startIndex'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseSummaryCitationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :citations, as: 'citations', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseSummaryCitation, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseSummaryCitation::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseSummaryCitationSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reference_index, :numeric_string => true, as: 'referenceIndex'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseSummaryReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :chunk_contents, as: 'chunkContents', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseSummaryReferenceChunkContent, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseSummaryReferenceChunkContent::Representation
      
          property :document, as: 'document'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseSummaryReferenceChunkContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :page_identifier, as: 'pageIdentifier'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseSummarySafetyAttributes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :categories, as: 'categories'
          collection :scores, as: 'scores'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchResponseSummarySummaryWithMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :citation_metadata, as: 'citationMetadata', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseSummaryCitationMetadata, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseSummaryCitationMetadata::Representation
      
          collection :references, as: 'references', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseSummaryReference, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseSummaryReference::Representation
      
          property :summary, as: 'summary'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaServingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :boost_control_ids, as: 'boostControlIds'
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          collection :dissociate_control_ids, as: 'dissociateControlIds'
          property :diversity_level, as: 'diversityLevel'
          property :embedding_config, as: 'embeddingConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEmbeddingConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEmbeddingConfig::Representation
      
          collection :filter_control_ids, as: 'filterControlIds'
          property :generic_config, as: 'genericConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaServingConfigGenericConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaServingConfigGenericConfig::Representation
      
          collection :ignore_control_ids, as: 'ignoreControlIds'
          property :media_config, as: 'mediaConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaServingConfigMediaConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaServingConfigMediaConfig::Representation
      
          property :model_id, as: 'modelId'
          property :name, as: 'name'
          collection :oneway_synonyms_control_ids, as: 'onewaySynonymsControlIds'
          property :personalization_spec, as: 'personalizationSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestPersonalizationSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestPersonalizationSpec::Representation
      
          collection :promote_control_ids, as: 'promoteControlIds'
          property :ranking_expression, as: 'rankingExpression'
          collection :redirect_control_ids, as: 'redirectControlIds'
          collection :replacement_control_ids, as: 'replacementControlIds'
          property :solution_type, as: 'solutionType'
          collection :synonyms_control_ids, as: 'synonymsControlIds'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaServingConfigGenericConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_search_spec, as: 'contentSearchSpec', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpec, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaServingConfigMediaConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_freshness_cutoff_days, as: 'contentFreshnessCutoffDays'
          property :content_watched_percentage_threshold, as: 'contentWatchedPercentageThreshold'
          property :content_watched_seconds_threshold, as: 'contentWatchedSecondsThreshold'
          property :demote_content_watched_past_days, as: 'demoteContentWatchedPastDays'
          property :demotion_event_type, as: 'demotionEventType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSession
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :end_time, as: 'endTime'
          property :is_pinned, as: 'isPinned'
          property :name, as: 'name'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          collection :turns, as: 'turns', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSessionTurn, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSessionTurn::Representation
      
          property :user_pseudo_id, as: 'userPseudoId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSessionTurn
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer, as: 'answer'
          property :detailed_answer, as: 'detailedAnswer', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswer, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswer::Representation
      
          property :query, as: 'query', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaQuery, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaQuery::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSingleRegionKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key, as: 'kmsKey'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSiteSearchEngine
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSiteVerificationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :site_verification_state, as: 'siteVerificationState'
          property :verify_time, as: 'verifyTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSitemap
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSpannerSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database_id, as: 'databaseId'
          property :enable_data_boost, as: 'enableDataBoost'
          property :instance_id, as: 'instanceId'
          property :project_id, as: 'projectId'
          property :table_id, as: 'tableId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSuggestionDenyListEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :block_phrase, as: 'blockPhrase'
          property :match_operator, as: 'matchOperator'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaTargetSite
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exact_match, as: 'exactMatch'
          property :failure_reason, as: 'failureReason', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTargetSiteFailureReason, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTargetSiteFailureReason::Representation
      
          property :generated_uri_pattern, as: 'generatedUriPattern'
          property :indexing_status, as: 'indexingStatus'
          property :name, as: 'name'
          property :provided_uri_pattern, as: 'providedUriPattern'
          property :root_domain_uri, as: 'rootDomainUri'
          property :site_verification_info, as: 'siteVerificationInfo', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSiteVerificationInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSiteVerificationInfo::Representation
      
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaTargetSiteFailureReason
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :quota_failure, as: 'quotaFailure', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTargetSiteFailureReasonQuotaFailure, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTargetSiteFailureReasonQuotaFailure::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaTargetSiteFailureReasonQuotaFailure
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :total_required_quota, :numeric_string => true, as: 'totalRequiredQuota'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaTextInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context, as: 'context', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversationContext, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversationContext::Representation
      
          property :input, as: 'input'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaTrainCustomModelMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaTrainCustomModelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportErrorConfig::Representation
      
          property :gcs_training_input, as: 'gcsTrainingInput', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTrainCustomModelRequestGcsTrainingInput, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTrainCustomModelRequestGcsTrainingInput::Representation
      
          property :model_id, as: 'modelId'
          property :model_type, as: 'modelType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaTrainCustomModelRequestGcsTrainingInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :corpus_data_path, as: 'corpusDataPath'
          property :query_data_path, as: 'queryDataPath'
          property :test_data_path, as: 'testDataPath'
          property :train_data_path, as: 'trainDataPath'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaTrainCustomModelResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus::Representation
      
          hash :metrics, as: 'metrics'
          property :model_name, as: 'modelName'
          property :model_status, as: 'modelStatus'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaTransactionInfo
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
      
      class GoogleCloudDiscoveryengineV1betaTuneEngineMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :engine, as: 'engine'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaTuneEngineRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
      
      class GoogleCloudDiscoveryengineV1betaUserEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCustomAttribute, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCustomAttribute::Representation
      
          property :attribution_token, as: 'attributionToken'
          property :completion_info, as: 'completionInfo', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCompletionInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCompletionInfo::Representation
      
          property :conversion_type, as: 'conversionType'
          property :data_store, as: 'dataStore'
          property :direct_user_request, as: 'directUserRequest'
          collection :documents, as: 'documents', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocumentInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocumentInfo::Representation
      
          property :engine, as: 'engine'
          property :event_time, as: 'eventTime'
          property :event_type, as: 'eventType'
          property :filter, as: 'filter'
          property :media_info, as: 'mediaInfo', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaMediaInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaMediaInfo::Representation
      
          property :page_info, as: 'pageInfo', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaPageInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaPageInfo::Representation
      
          property :panel, as: 'panel', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaPanelInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaPanelInfo::Representation
      
          collection :panels, as: 'panels', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaPanelInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaPanelInfo::Representation
      
          collection :promotion_ids, as: 'promotionIds'
          property :search_info, as: 'searchInfo', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchInfo::Representation
      
          property :session_id, as: 'sessionId'
          collection :tag_ids, as: 'tagIds'
          property :transaction_info, as: 'transactionInfo', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTransactionInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTransactionInfo::Representation
      
          property :user_info, as: 'userInfo', class: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserInfo, decorator: Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserInfo::Representation
      
          property :user_pseudo_id, as: 'userPseudoId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaUserInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :user_agent, as: 'userAgent'
          property :user_id, as: 'userId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaWorkspaceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dasher_customer_id, as: 'dasherCustomerId'
          property :super_admin_email_address, as: 'superAdminEmailAddress'
          property :super_admin_service_account, as: 'superAdminServiceAccount'
          property :type, as: 'type'
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
          collection :operations, as: 'operations', class: Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation, decorator: Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class GoogleMonitoringV3Point
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :interval, as: 'interval', class: Google::Apis::DiscoveryengineV1beta::GoogleMonitoringV3TimeInterval, decorator: Google::Apis::DiscoveryengineV1beta::GoogleMonitoringV3TimeInterval::Representation
      
          property :value, as: 'value', class: Google::Apis::DiscoveryengineV1beta::GoogleMonitoringV3TypedValue, decorator: Google::Apis::DiscoveryengineV1beta::GoogleMonitoringV3TypedValue::Representation
      
        end
      end
      
      class GoogleMonitoringV3TimeInterval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleMonitoringV3TimeSeries
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :metadata, as: 'metadata', class: Google::Apis::DiscoveryengineV1beta::GoogleApiMonitoredResourceMetadata, decorator: Google::Apis::DiscoveryengineV1beta::GoogleApiMonitoredResourceMetadata::Representation
      
          property :metric, as: 'metric', class: Google::Apis::DiscoveryengineV1beta::GoogleApiMetric, decorator: Google::Apis::DiscoveryengineV1beta::GoogleApiMetric::Representation
      
          property :metric_kind, as: 'metricKind'
          collection :points, as: 'points', class: Google::Apis::DiscoveryengineV1beta::GoogleMonitoringV3Point, decorator: Google::Apis::DiscoveryengineV1beta::GoogleMonitoringV3Point::Representation
      
          property :resource, as: 'resource', class: Google::Apis::DiscoveryengineV1beta::GoogleApiMonitoredResource, decorator: Google::Apis::DiscoveryengineV1beta::GoogleApiMonitoredResource::Representation
      
          property :unit, as: 'unit'
          property :value_type, as: 'valueType'
        end
      end
      
      class GoogleMonitoringV3TypedValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bool_value, as: 'boolValue'
          property :distribution_value, as: 'distributionValue', class: Google::Apis::DiscoveryengineV1beta::GoogleApiDistribution, decorator: Google::Apis::DiscoveryengineV1beta::GoogleApiDistribution::Representation
      
          property :double_value, as: 'doubleValue'
          property :int64_value, :numeric_string => true, as: 'int64Value'
          property :string_value, as: 'stringValue'
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
      
      class GoogleTypeDateTime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :hours, as: 'hours'
          property :minutes, as: 'minutes'
          property :month, as: 'month'
          property :nanos, as: 'nanos'
          property :seconds, as: 'seconds'
          property :time_zone, as: 'timeZone', class: Google::Apis::DiscoveryengineV1beta::GoogleTypeTimeZone, decorator: Google::Apis::DiscoveryengineV1beta::GoogleTypeTimeZone::Representation
      
          property :utc_offset, as: 'utcOffset'
          property :year, as: 'year'
        end
      end
      
      class GoogleTypeTimeZone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :version, as: 'version'
        end
      end
    end
  end
end
