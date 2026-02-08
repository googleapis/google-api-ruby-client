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
      
      class GoogleCloudDiscoveryengineLoggingConnectorRunErrorContext
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
      
      class GoogleCloudDiscoveryengineV1AclConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ActionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequestBoostSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequestBoostSpecConditionBoostSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequestSuggestionTypeSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponseContentSuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponsePersonSuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponseQuerySuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponseRecentSearchSuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AdvancedSiteSearchConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AlertPolicyConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AlertPolicyConfigAlertEnrollment
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
      
      class GoogleCloudDiscoveryengineV1AnswerGenerationSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerGenerationSpecUserDefinedClassifierSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerGroundingSupport
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
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpecEndUserMetaData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpecEndUserMetaDataChunkInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpecEndUserMetaDataChunkInfoDocumentMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestGroundingSpec
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
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpecQueryRephraserSpecModelSpec
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
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestSafetySpecSafetySetting
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
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultChunkInfoDocumentMetadata
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
      
      class GoogleCloudDiscoveryengineV1AnswerReferenceStructuredDocumentInfo
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
      
      class GoogleCloudDiscoveryengineV1AssistAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AssistAnswerCustomerPolicyEnforcementResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AssistAnswerCustomerPolicyEnforcementResultBannedPhraseEnforcementResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AssistAnswerCustomerPolicyEnforcementResultModelArmorEnforcementResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AssistAnswerCustomerPolicyEnforcementResultPolicyEnforcementResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AssistAnswerReply
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AssistUserMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1Assistant
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AssistantContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AssistantContentBlob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AssistantContentCodeExecutionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AssistantContentExecutableCode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AssistantContentFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AssistantCustomerPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AssistantCustomerPolicyBannedPhrase
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AssistantCustomerPolicyModelArmorConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AssistantGenerationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AssistantGenerationConfigSystemInstruction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AssistantGroundedContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadataReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadataReferenceDocumentMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadataSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AssistantToolInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AssistantToolList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1BapConfig
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
      
      class GoogleCloudDiscoveryengineV1BatchGetDocumentsMetadataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1BatchGetDocumentsMetadataResponseDocumentMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1BatchGetDocumentsMetadataResponseDocumentMetadataMatcherValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1BatchUpdateUserLicensesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1BatchUpdateUserLicensesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1BatchUpdateUserLicensesRequestInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1BatchUpdateUserLicensesResponse
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
      
      class GoogleCloudDiscoveryengineV1CheckGroundingResponseCheckGroundingFactChunk
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
      
      class GoogleCloudDiscoveryengineV1ChunkAnnotationMetadata
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
      
      class GoogleCloudDiscoveryengineV1ChunkStructuredContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1Citation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1CitationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1CloudSqlSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1CmekConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1Collection
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
      
      class GoogleCloudDiscoveryengineV1CompletionSuggestion
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
      
      class GoogleCloudDiscoveryengineV1ControlBoostActionInterpolationBoostSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ControlBoostActionInterpolationBoostSpecControlPoint
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
      
      class GoogleCloudDiscoveryengineV1CreateSitemapMetadata
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
      
      class GoogleCloudDiscoveryengineV1CustomTuningModel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DataConnector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DataConnectorEndUserConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DataConnectorFederatedConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DataConnectorRealtimeSyncConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DataConnectorRealtimeSyncConfigStreamingError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DataConnectorSourceEntity
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
      
      class GoogleCloudDiscoveryengineV1DeleteCmekConfigMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DeleteCollectionMetadata
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
      
      class GoogleCloudDiscoveryengineV1DeleteSitemapMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DeleteTargetSiteMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DestinationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DestinationConfigDestination
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
      
      class GoogleCloudDiscoveryengineV1DocumentAclInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DocumentAclInfoAccessRestriction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DocumentContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DocumentIndexStatus
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
      
      class GoogleCloudDiscoveryengineV1DoubleList
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
      
      class GoogleCloudDiscoveryengineV1EngineKnowledgeGraphConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1EngineKnowledgeGraphConfigFeatureConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigEngineFeaturesConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigMostPopularFeatureConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigOptimizationObjectiveConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigRecommendedForYouFeatureConfig
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
      
      class GoogleCloudDiscoveryengineV1FetchSitemapsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1FetchSitemapsResponseSitemapMetadata
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
      
      class GoogleCloudDiscoveryengineV1HealthcareFhirConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1IdentityMappingEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1IdentityMappingEntryOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1IdentityMappingStore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1IdentityScheduleConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1IdpConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1IdpConfigExternalIdpConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsRequestInlineSource
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
      
      class GoogleCloudDiscoveryengineV1ImportIdentityMappingsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ImportIdentityMappingsRequestInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ImportIdentityMappingsResponse
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
      
      class GoogleCloudDiscoveryengineV1LicenseConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1LicenseConfigUsageStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ListAssistantsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ListCmekConfigsResponse
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
      
      class GoogleCloudDiscoveryengineV1ListCustomModelsResponse
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
      
      class GoogleCloudDiscoveryengineV1ListIdentityMappingStoresResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ListIdentityMappingsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ListLicenseConfigsUsageStatsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ListSchemasResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ListServingConfigsResponse
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
      
      class GoogleCloudDiscoveryengineV1ListUserLicensesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1MediaInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1NaturalLanguageQueryUnderstandingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ObservabilityConfig
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
      
      class GoogleCloudDiscoveryengineV1Principal
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1Project
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ProjectConfigurableBillingStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ProjectCustomerProvidedConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ProjectCustomerProvidedConfigNotebooklmConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ProjectCustomerProvidedConfigNotebooklmConfigModelArmorConfig
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
      
      class GoogleCloudDiscoveryengineV1ProvisionProjectRequestSaasParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1PurgeCompletionSuggestionsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1PurgeCompletionSuggestionsRequest
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
      
      class GoogleCloudDiscoveryengineV1PurgeDocumentsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1PurgeDocumentsRequestInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1PurgeDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1PurgeErrorConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1PurgeIdentityMappingsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1PurgeIdentityMappingsRequestInlineSource
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
      
      class GoogleCloudDiscoveryengineV1PurgeUserEventsRequest
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
      
      class GoogleCloudDiscoveryengineV1SafetyRating
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
      
      class GoogleCloudDiscoveryengineV1SearchLinkPromotion
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
      
      class GoogleCloudDiscoveryengineV1SearchRequestBoostSpecConditionBoostSpecBoostControlSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestBoostSpecConditionBoostSpecBoostControlSpecControlPoint
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
      
      class GoogleCloudDiscoveryengineV1SearchRequestCrowdingSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestDataStoreSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestDisplaySpec
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
      
      class GoogleCloudDiscoveryengineV1SearchRequestNaturalLanguageQueryUnderstandingSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestQueryExpansionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestRelevanceScoreSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestSearchAsYouTypeSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestSessionSpec
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
      
      class GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterAndExpression
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterExpression
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterGeolocationConstraint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterNumberConstraint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterOrExpression
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterStringConstraint
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
      
      class GoogleCloudDiscoveryengineV1SearchResponseSearchResultRankSignals
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseSearchResultRankSignalsCustomSignal
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseSessionInfo
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
      
      class GoogleCloudDiscoveryengineV1Session
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SessionTurn
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SetUpDataConnectorMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SetUpDataConnectorRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SingleRegionKey
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
      
      class GoogleCloudDiscoveryengineV1Sitemap
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SpannerSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1StreamAssistRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1StreamAssistRequestGenerationSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpecImageGenerationSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpecVertexAiSearchSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpecVideoGenerationSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpecWebGroundingSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1StreamAssistResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1StreamAssistResponseSessionInfo
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
      
      class GoogleCloudDiscoveryengineV1Tenant
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1TextInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1TrainCustomModelMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1TrainCustomModelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1TrainCustomModelRequestGcsTrainingInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1TrainCustomModelResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1TransactionInfo
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
      
      class GoogleCloudDiscoveryengineV1UserEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1UserInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1UserLicense
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1UserStore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1WidgetConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1WidgetConfigAccessSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1WidgetConfigAssistantSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1WidgetConfigCollectionComponent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1WidgetConfigCustomerProvidedConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1WidgetConfigDataStoreComponent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1WidgetConfigDataStoreUiConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1WidgetConfigFacetField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1WidgetConfigHomepageSetting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1WidgetConfigHomepageSettingShortcut
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1WidgetConfigImage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1WidgetConfigNode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1WidgetConfigUiComponentField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1WidgetConfigUiBrandingSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1WidgetConfigUiSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1WidgetConfigUiSettingsGenerativeAnswerConfig
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
      
      class GoogleCloudDiscoveryengineV1alphaAddPatientFilterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAdvancedSiteSearchConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAlertPolicyConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAlertPolicyConfigAlertEnrollment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAlertPolicyResourceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAlertPolicyResourceConfigAlertEnrollment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerBlobAttachment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerBlobAttachmentBlob
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
      
      class GoogleCloudDiscoveryengineV1alphaAssistAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResultBannedPhraseEnforcementResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResultModelArmorEnforcementResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResultPolicyEnforcementResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistAnswerReply
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantContentBlob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantContentCodeExecutionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantContentExecutableCode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantContentFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantGroundedContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadataReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadataReferenceDocumentMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadataSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaBapConfig
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
      
      class GoogleCloudDiscoveryengineV1alphaBatchUpdateUserLicensesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaBatchUpdateUserLicensesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCitation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCitationMetadata
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
      
      class GoogleCloudDiscoveryengineV1alphaConnectorRunEntityRunProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaContactDetails
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
      
      class GoogleCloudDiscoveryengineV1alphaControlBoostActionInterpolationBoostSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaControlBoostActionInterpolationBoostSpecControlPoint
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
      
      class GoogleCloudDiscoveryengineV1alphaDataConnectorEndUserConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataConnectorFederatedConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataConnectorRealtimeSyncConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataConnectorRealtimeSyncConfigStreamingError
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
      
      class GoogleCloudDiscoveryengineV1alphaDeleteAgentMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteCmekConfigMetadata
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
      
      class GoogleCloudDiscoveryengineV1alphaDeletePatientFiltersRequest
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
      
      class GoogleCloudDiscoveryengineV1alphaDeleteUserStoreMetadata
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
      
      class GoogleCloudDiscoveryengineV1alphaEngineKnowledgeGraphConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineKnowledgeGraphConfigFeatureConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigEngineFeaturesConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigMostPopularFeatureConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigRecommendedForYouFeatureConfig
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
      
      class GoogleCloudDiscoveryengineV1alphaExportMetricsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaExportMetricsResponse
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
      
      class GoogleCloudDiscoveryengineV1alphaHealthcareFhirConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaIdentityMappingEntryOperationMetadata
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
      
      class GoogleCloudDiscoveryengineV1alphaImportIdentityMappingsResponse
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
      
      class GoogleCloudDiscoveryengineV1alphaLicenseConfig
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
      
      class GoogleCloudDiscoveryengineV1alphaObservabilityConfig
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
      
      class GoogleCloudDiscoveryengineV1alphaPatientFilterOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaProject
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaProjectConfigurableBillingStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaProjectCustomerProvidedConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaProjectCustomerProvidedConfigNotebooklmConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaProjectCustomerProvidedConfigNotebooklmConfigModelArmorConfig
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
      
      class GoogleCloudDiscoveryengineV1alphaRemovePatientFilterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaReplacePatientFilterRequest
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
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecMultiModalSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestCrowdingSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestDataStoreSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestDisplaySpec
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
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestRelevanceFilterSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestRelevanceFilterSpecRelevanceThresholdSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestRelevanceScoreSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestSearchAddonSpec
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
      
      class GoogleCloudDiscoveryengineV1alphaTenant
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
      
      class GoogleCloudDiscoveryengineV1alphaUserLicense
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaWorkspaceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAclConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAdvancedSiteSearchConfig
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
      
      class GoogleCloudDiscoveryengineV1betaBatchUpdateUserLicensesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaBatchUpdateUserLicensesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaCmekConfig
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
      
      class GoogleCloudDiscoveryengineV1betaControlBoostActionInterpolationBoostSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaControlBoostActionInterpolationBoostSpecControlPoint
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
      
      class GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries
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
      
      class GoogleCloudDiscoveryengineV1betaDedicatedCrawlRateTimeSeries
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
      
      class GoogleCloudDiscoveryengineV1betaEngineKnowledgeGraphConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineKnowledgeGraphConfigFeatureConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigEngineFeaturesConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigMostPopularFeatureConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigRecommendedForYouFeatureConfig
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
      
      class GoogleCloudDiscoveryengineV1betaHealthcareFhirConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaIdentityMappingEntryOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaIdpConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaIdpConfigExternalIdpConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportCompletionSuggestionsMetadata
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
      
      class GoogleCloudDiscoveryengineV1betaImportDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportErrorConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportIdentityMappingsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportSampleQueriesMetadata
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
      
      class GoogleCloudDiscoveryengineV1betaInterval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaLanguageInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaLicenseConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaNaturalLanguageQueryUnderstandingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaObservabilityConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaObtainCrawlRateResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaOrganicCrawlRateTimeSeries
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaProject
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaProjectConfigurableBillingStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaProjectCustomerProvidedConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaProjectCustomerProvidedConfigNotebooklmConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaProjectCustomerProvidedConfigNotebooklmConfigModelArmorConfig
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
      
      class GoogleCloudDiscoveryengineV1betaQualityMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaRemoveDedicatedCrawlRateMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaRemoveDedicatedCrawlRateResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSchema
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
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecMultiModalSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestCrowdingSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestDataStoreSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestDisplaySpec
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
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestRelevanceFilterSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestRelevanceFilterSpecRelevanceThresholdSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestRelevanceScoreSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestSearchAddonSpec
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
      
      class GoogleCloudDiscoveryengineV1betaSetDedicatedCrawlRateMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSetDedicatedCrawlRateResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSingleRegionKey
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
      
      class GoogleCloudDiscoveryengineV1betaUserInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaUserLicense
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaUserStore
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
          property :bucket_options, as: 'bucketOptions', class: Google::Apis::DiscoveryengineV1::GoogleApiDistributionBucketOptions, decorator: Google::Apis::DiscoveryengineV1::GoogleApiDistributionBucketOptions::Representation
      
          property :count, :numeric_string => true, as: 'count'
          collection :exemplars, as: 'exemplars', class: Google::Apis::DiscoveryengineV1::GoogleApiDistributionExemplar, decorator: Google::Apis::DiscoveryengineV1::GoogleApiDistributionExemplar::Representation
      
          property :mean, as: 'mean'
          property :range, as: 'range', class: Google::Apis::DiscoveryengineV1::GoogleApiDistributionRange, decorator: Google::Apis::DiscoveryengineV1::GoogleApiDistributionRange::Representation
      
          property :sum_of_squared_deviation, as: 'sumOfSquaredDeviation'
        end
      end
      
      class GoogleApiDistributionBucketOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :explicit_buckets, as: 'explicitBuckets', class: Google::Apis::DiscoveryengineV1::GoogleApiDistributionBucketOptionsExplicit, decorator: Google::Apis::DiscoveryengineV1::GoogleApiDistributionBucketOptionsExplicit::Representation
      
          property :exponential_buckets, as: 'exponentialBuckets', class: Google::Apis::DiscoveryengineV1::GoogleApiDistributionBucketOptionsExponential, decorator: Google::Apis::DiscoveryengineV1::GoogleApiDistributionBucketOptionsExponential::Representation
      
          property :linear_buckets, as: 'linearBuckets', class: Google::Apis::DiscoveryengineV1::GoogleApiDistributionBucketOptionsLinear, decorator: Google::Apis::DiscoveryengineV1::GoogleApiDistributionBucketOptionsLinear::Representation
      
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
      
      class GoogleCloudDiscoveryengineLoggingConnectorRunErrorContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connector_run, as: 'connectorRun'
          property :data_connector, as: 'dataConnector'
          property :end_time, as: 'endTime'
          property :entity, as: 'entity'
          property :operation, as: 'operation'
          property :start_time, as: 'startTime'
          property :sync_type, as: 'syncType'
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
          property :connector_run_payload, as: 'connectorRunPayload', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineLoggingConnectorRunErrorContext, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineLoggingConnectorRunErrorContext::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1AclConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :idp_config, as: 'idpConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1IdpConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1IdpConfig::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ActionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :action_params, as: 'actionParams'
          property :is_action_configured, as: 'isActionConfigured'
          property :json_action_params, as: 'jsonActionParams'
          property :service_name, as: 'serviceName'
          property :use_static_secrets, as: 'useStaticSecrets'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost_spec, as: 'boostSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequestBoostSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequestBoostSpec::Representation
      
          collection :experiment_ids, as: 'experimentIds'
          property :include_tail_suggestions, as: 'includeTailSuggestions'
          property :query, as: 'query'
          property :query_model, as: 'queryModel'
          collection :suggestion_type_specs, as: 'suggestionTypeSpecs', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequestSuggestionTypeSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequestSuggestionTypeSpec::Representation
      
          collection :suggestion_types, as: 'suggestionTypes'
          property :user_info, as: 'userInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1UserInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1UserInfo::Representation
      
          property :user_pseudo_id, as: 'userPseudoId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequestBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :condition_boost_specs, as: 'conditionBoostSpecs', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequestBoostSpecConditionBoostSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequestBoostSpecConditionBoostSpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequestBoostSpecConditionBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost, as: 'boost'
          property :condition, as: 'condition'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequestSuggestionTypeSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_suggestions, as: 'maxSuggestions'
          property :suggestion_type, as: 'suggestionType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :content_suggestions, as: 'contentSuggestions', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponseContentSuggestion, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponseContentSuggestion::Representation
      
          collection :people_suggestions, as: 'peopleSuggestions', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponsePersonSuggestion, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponsePersonSuggestion::Representation
      
          collection :query_suggestions, as: 'querySuggestions', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponseQuerySuggestion, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponseQuerySuggestion::Representation
      
          collection :recent_search_suggestions, as: 'recentSearchSuggestions', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponseRecentSearchSuggestion, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponseRecentSearchSuggestion::Representation
      
          property :tail_match_triggered, as: 'tailMatchTriggered'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponseContentSuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_type, as: 'contentType'
          property :data_store, as: 'dataStore'
          property :destination_uri, as: 'destinationUri'
          property :document, as: 'document', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Document, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Document::Representation
      
          property :icon_uri, as: 'iconUri'
          property :score, as: 'score'
          property :suggestion, as: 'suggestion'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponsePersonSuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_store, as: 'dataStore'
          property :destination_uri, as: 'destinationUri'
          property :display_photo_uri, as: 'displayPhotoUri'
          property :document, as: 'document', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Document, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Document::Representation
      
          property :person_type, as: 'personType'
          property :score, as: 'score'
          property :suggestion, as: 'suggestion'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponseQuerySuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :completable_field_paths, as: 'completableFieldPaths'
          collection :data_store, as: 'dataStore'
          property :score, as: 'score'
          property :suggestion, as: 'suggestion'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponseRecentSearchSuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :recent_search_time, as: 'recentSearchTime'
          property :score, as: 'score'
          property :suggestion, as: 'suggestion'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AdvancedSiteSearchConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_automatic_refresh, as: 'disableAutomaticRefresh'
          property :disable_initial_index, as: 'disableInitialIndex'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AlertPolicyConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :alert_enrollments, as: 'alertEnrollments', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AlertPolicyConfigAlertEnrollment, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AlertPolicyConfigAlertEnrollment::Representation
      
          property :alert_policy_name, as: 'alertPolicyName'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AlertPolicyConfigAlertEnrollment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alert_id, as: 'alertId'
          property :enroll_state, as: 'enrollState'
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
          property :grounding_score, as: 'groundingScore'
          collection :grounding_supports, as: 'groundingSupports', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerGroundingSupport, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerGroundingSupport::Representation
      
          property :name, as: 'name'
          property :query_understanding_info, as: 'queryUnderstandingInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryUnderstandingInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryUnderstandingInfo::Representation
      
          collection :references, as: 'references', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerReference, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerReference::Representation
      
          collection :related_questions, as: 'relatedQuestions'
          collection :safety_ratings, as: 'safetyRatings', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SafetyRating, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SafetyRating::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1AnswerGenerationSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :user_defined_classifier_spec, as: 'userDefinedClassifierSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerGenerationSpecUserDefinedClassifierSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerGenerationSpecUserDefinedClassifierSpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerGenerationSpecUserDefinedClassifierSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_user_defined_classifier, as: 'enableUserDefinedClassifier'
          property :model_id, as: 'modelId'
          property :preamble, as: 'preamble'
          property :seed, as: 'seed'
          property :task_marker, as: 'taskMarker'
          property :temperature, as: 'temperature'
          property :top_k, :numeric_string => true, as: 'topK'
          property :top_p, as: 'topP'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerGroundingSupport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_index, :numeric_string => true, as: 'endIndex'
          property :grounding_check_required, as: 'groundingCheckRequired'
          property :grounding_score, as: 'groundingScore'
          collection :sources, as: 'sources', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerCitationSource, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerCitationSource::Representation
      
          property :start_index, :numeric_string => true, as: 'startIndex'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer_generation_spec, as: 'answerGenerationSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestAnswerGenerationSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestAnswerGenerationSpec::Representation
      
          property :asynchronous_mode, as: 'asynchronousMode'
          property :end_user_spec, as: 'endUserSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpec::Representation
      
          property :grounding_spec, as: 'groundingSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestGroundingSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestGroundingSpec::Representation
      
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
          property :ignore_jail_breaking_query, as: 'ignoreJailBreakingQuery'
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
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :end_user_metadata, as: 'endUserMetadata', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpecEndUserMetaData, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpecEndUserMetaData::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpecEndUserMetaData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk_info, as: 'chunkInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpecEndUserMetaDataChunkInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpecEndUserMetaDataChunkInfo::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpecEndUserMetaDataChunkInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :document_metadata, as: 'documentMetadata', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpecEndUserMetaDataChunkInfoDocumentMetadata, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpecEndUserMetaDataChunkInfoDocumentMetadata::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpecEndUserMetaDataChunkInfoDocumentMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestGroundingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filtering_level, as: 'filteringLevel'
          property :include_grounding_supports, as: 'includeGroundingSupports'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_spell_correction, as: 'disableSpellCorrection'
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
          property :max_rephrase_steps, as: 'maxRephraseSteps'
          property :model_spec, as: 'modelSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpecQueryRephraserSpecModelSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpecQueryRephraserSpecModelSpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpecQueryRephraserSpecModelSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model_type, as: 'modelType'
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
          collection :safety_settings, as: 'safetySettings', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestSafetySpecSafetySetting, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestSafetySpecSafetySetting::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestSafetySpecSafetySetting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category, as: 'category'
          property :threshold, as: 'threshold'
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
          property :document_metadata, as: 'documentMetadata', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultChunkInfoDocumentMetadata, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultChunkInfoDocumentMetadata::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultChunkInfoDocumentMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :title, as: 'title'
          property :uri, as: 'uri'
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
      
          property :structured_document_info, as: 'structuredDocumentInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerReferenceStructuredDocumentInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerReferenceStructuredDocumentInfo::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1AnswerReferenceStructuredDocumentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document'
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
          property :relevance_score, as: 'relevanceScore'
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
      
          hash :struct_data, as: 'structData'
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
      
      class GoogleCloudDiscoveryengineV1AssistAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assist_skipped_reasons, as: 'assistSkippedReasons'
          property :customer_policy_enforcement_result, as: 'customerPolicyEnforcementResult', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistAnswerCustomerPolicyEnforcementResult, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistAnswerCustomerPolicyEnforcementResult::Representation
      
          property :name, as: 'name'
          collection :replies, as: 'replies', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistAnswerReply, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistAnswerReply::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AssistAnswerCustomerPolicyEnforcementResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :policy_results, as: 'policyResults', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistAnswerCustomerPolicyEnforcementResultPolicyEnforcementResult, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistAnswerCustomerPolicyEnforcementResultPolicyEnforcementResult::Representation
      
          property :verdict, as: 'verdict'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AssistAnswerCustomerPolicyEnforcementResultBannedPhraseEnforcementResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :banned_phrases, as: 'bannedPhrases'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AssistAnswerCustomerPolicyEnforcementResultModelArmorEnforcementResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
          property :model_armor_violation, as: 'modelArmorViolation'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AssistAnswerCustomerPolicyEnforcementResultPolicyEnforcementResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :banned_phrase_enforcement_result, as: 'bannedPhraseEnforcementResult', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistAnswerCustomerPolicyEnforcementResultBannedPhraseEnforcementResult, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistAnswerCustomerPolicyEnforcementResultBannedPhraseEnforcementResult::Representation
      
          property :model_armor_enforcement_result, as: 'modelArmorEnforcementResult', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistAnswerCustomerPolicyEnforcementResultModelArmorEnforcementResult, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistAnswerCustomerPolicyEnforcementResultModelArmorEnforcementResult::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1AssistAnswerReply
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :grounded_content, as: 'groundedContent', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistantGroundedContent, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistantGroundedContent::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1AssistUserMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :preferred_language_code, as: 'preferredLanguageCode'
          property :time_zone, as: 'timeZone'
        end
      end
      
      class GoogleCloudDiscoveryengineV1Assistant
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer_policy, as: 'customerPolicy', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistantCustomerPolicy, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistantCustomerPolicy::Representation
      
          property :default_web_grounding_toggle_off, as: 'defaultWebGroundingToggleOff'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          hash :enabled_tools, as: 'enabledTools', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistantToolList, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistantToolList::Representation
      
          property :generation_config, as: 'generationConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistantGenerationConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistantGenerationConfig::Representation
      
          property :name, as: 'name'
          property :web_grounding_type, as: 'webGroundingType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AssistantContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code_execution_result, as: 'codeExecutionResult', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistantContentCodeExecutionResult, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistantContentCodeExecutionResult::Representation
      
          property :executable_code, as: 'executableCode', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistantContentExecutableCode, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistantContentExecutableCode::Representation
      
          property :file, as: 'file', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistantContentFile, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistantContentFile::Representation
      
          property :inline_data, as: 'inlineData', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistantContentBlob, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistantContentBlob::Representation
      
          property :role, as: 'role'
          property :text, as: 'text'
          property :thought, as: 'thought'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AssistantContentBlob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data, :base64 => true, as: 'data'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AssistantContentCodeExecutionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :outcome, as: 'outcome'
          property :output, as: 'output'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AssistantContentExecutableCode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AssistantContentFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_id, as: 'fileId'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AssistantCustomerPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :banned_phrases, as: 'bannedPhrases', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistantCustomerPolicyBannedPhrase, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistantCustomerPolicyBannedPhrase::Representation
      
          property :model_armor_config, as: 'modelArmorConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistantCustomerPolicyModelArmorConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistantCustomerPolicyModelArmorConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1AssistantCustomerPolicyBannedPhrase
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ignore_diacritics, as: 'ignoreDiacritics'
          property :match_type, as: 'matchType'
          property :phrase, as: 'phrase'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AssistantCustomerPolicyModelArmorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :failure_mode, as: 'failureMode'
          property :response_template, as: 'responseTemplate'
          property :user_prompt_template, as: 'userPromptTemplate'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AssistantGenerationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_model_ids, as: 'allowedModelIds'
          property :default_language, as: 'defaultLanguage'
          property :default_model_id, as: 'defaultModelId'
          property :system_instruction, as: 'systemInstruction', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistantGenerationConfigSystemInstruction, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistantGenerationConfigSystemInstruction::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1AssistantGenerationConfigSystemInstruction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :additional_system_instruction, as: 'additionalSystemInstruction'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AssistantGroundedContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :citation_metadata, as: 'citationMetadata', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1CitationMetadata, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1CitationMetadata::Representation
      
          property :content, as: 'content', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistantContent, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistantContent::Representation
      
          property :text_grounding_metadata, as: 'textGroundingMetadata', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadata, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadata::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :references, as: 'references', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadataReference, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadataReference::Representation
      
          collection :segments, as: 'segments', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadataSegment, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadataSegment::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadataReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :document_metadata, as: 'documentMetadata', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadataReferenceDocumentMetadata, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadataReferenceDocumentMetadata::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadataReferenceDocumentMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document'
          property :domain, as: 'domain'
          property :mime_type, as: 'mimeType'
          property :page_identifier, as: 'pageIdentifier'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadataSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_index, :numeric_string => true, as: 'endIndex'
          property :grounding_score, as: 'groundingScore'
          collection :reference_indices, as: 'referenceIndices'
          property :start_index, :numeric_string => true, as: 'startIndex'
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AssistantToolInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tool_display_name, as: 'toolDisplayName'
          property :tool_name, as: 'toolName'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AssistantToolList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :tool_info, as: 'toolInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistantToolInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistantToolInfo::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1BapConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :enabled_actions, as: 'enabledActions'
          collection :supported_connector_modes, as: 'supportedConnectorModes'
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
      
      class GoogleCloudDiscoveryengineV1BatchGetDocumentsMetadataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :documents_metadata, as: 'documentsMetadata', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1BatchGetDocumentsMetadataResponseDocumentMetadata, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1BatchGetDocumentsMetadataResponseDocumentMetadata::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1BatchGetDocumentsMetadataResponseDocumentMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_ingestion_source, as: 'dataIngestionSource'
          property :last_refreshed_time, as: 'lastRefreshedTime'
          property :matcher_value, as: 'matcherValue', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1BatchGetDocumentsMetadataResponseDocumentMetadataMatcherValue, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1BatchGetDocumentsMetadataResponseDocumentMetadataMatcherValue::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDiscoveryengineV1BatchGetDocumentsMetadataResponseDocumentMetadataMatcherValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fhir_resource, as: 'fhirResource'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1BatchUpdateUserLicensesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1BatchUpdateUserLicensesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delete_unassigned_user_licenses, as: 'deleteUnassignedUserLicenses'
          property :inline_source, as: 'inlineSource', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1BatchUpdateUserLicensesRequestInlineSource, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1BatchUpdateUserLicensesRequestInlineSource::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1BatchUpdateUserLicensesRequestInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :update_mask, as: 'updateMask'
          collection :user_licenses, as: 'userLicenses', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1UserLicense, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1UserLicense::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1BatchUpdateUserLicensesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
          collection :user_licenses, as: 'userLicenses', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1UserLicense, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1UserLicense::Representation
      
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
      
          collection :cited_facts, as: 'citedFacts', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1CheckGroundingResponseCheckGroundingFactChunk, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1CheckGroundingResponseCheckGroundingFactChunk::Representation
      
          collection :claims, as: 'claims', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1CheckGroundingResponseClaim, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1CheckGroundingResponseClaim::Representation
      
          property :support_score, as: 'supportScore'
        end
      end
      
      class GoogleCloudDiscoveryengineV1CheckGroundingResponseCheckGroundingFactChunk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk_text, as: 'chunkText'
        end
      end
      
      class GoogleCloudDiscoveryengineV1CheckGroundingResponseClaim
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :citation_indices, as: 'citationIndices'
          property :claim_text, as: 'claimText'
          property :end_pos, as: 'endPos'
          property :grounding_check_required, as: 'groundingCheckRequired'
          property :score, as: 'score'
          property :start_pos, as: 'startPos'
        end
      end
      
      class GoogleCloudDiscoveryengineV1CheckGroundingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :citation_threshold, as: 'citationThreshold'
          property :enable_claim_level_score, as: 'enableClaimLevelScore'
        end
      end
      
      class GoogleCloudDiscoveryengineV1Chunk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotation_contents, as: 'annotationContents'
          collection :annotation_metadata, as: 'annotationMetadata', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ChunkAnnotationMetadata, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ChunkAnnotationMetadata::Representation
      
          property :chunk_metadata, as: 'chunkMetadata', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ChunkChunkMetadata, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ChunkChunkMetadata::Representation
      
          property :content, as: 'content'
          collection :data_urls, as: 'dataUrls'
          hash :derived_struct_data, as: 'derivedStructData'
          property :document_metadata, as: 'documentMetadata', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ChunkDocumentMetadata, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ChunkDocumentMetadata::Representation
      
          property :id, as: 'id'
          property :name, as: 'name'
          property :page_span, as: 'pageSpan', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ChunkPageSpan, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ChunkPageSpan::Representation
      
          property :relevance_score, as: 'relevanceScore'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ChunkAnnotationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_id, as: 'imageId'
          property :structured_content, as: 'structuredContent', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ChunkStructuredContent, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ChunkStructuredContent::Representation
      
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
          property :mime_type, as: 'mimeType'
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
      
      class GoogleCloudDiscoveryengineV1ChunkStructuredContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :structure_type, as: 'structureType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1Citation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_index, as: 'endIndex'
          property :license, as: 'license'
          property :publication_date, as: 'publicationDate', class: Google::Apis::DiscoveryengineV1::GoogleTypeDate, decorator: Google::Apis::DiscoveryengineV1::GoogleTypeDate::Representation
      
          property :start_index, as: 'startIndex'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1CitationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :citations, as: 'citations', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Citation, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Citation::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1CmekConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_default, as: 'isDefault'
          property :kms_key, as: 'kmsKey'
          property :kms_key_version, as: 'kmsKeyVersion'
          property :last_rotation_timestamp_micros, :numeric_string => true, as: 'lastRotationTimestampMicros'
          property :name, as: 'name'
          property :notebooklm_state, as: 'notebooklmState'
          collection :single_region_keys, as: 'singleRegionKeys', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SingleRegionKey, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SingleRegionKey::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDiscoveryengineV1Collection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
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
      
      class GoogleCloudDiscoveryengineV1CompletionSuggestion
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
      
      class GoogleCloudDiscoveryengineV1Condition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :active_time_range, as: 'activeTimeRange', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ConditionTimeRange, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ConditionTimeRange::Representation
      
          property :query_regex, as: 'queryRegex'
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
          property :promote_action, as: 'promoteAction', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ControlPromoteAction, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ControlPromoteAction::Representation
      
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
          property :fixed_boost, as: 'fixedBoost'
          property :interpolation_boost_spec, as: 'interpolationBoostSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ControlBoostActionInterpolationBoostSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ControlBoostActionInterpolationBoostSpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1ControlBoostActionInterpolationBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_type, as: 'attributeType'
          collection :control_points, as: 'controlPoints', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ControlBoostActionInterpolationBoostSpecControlPoint, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ControlBoostActionInterpolationBoostSpecControlPoint::Representation
      
          property :field_name, as: 'fieldName'
          property :interpolation_type, as: 'interpolationType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ControlBoostActionInterpolationBoostSpecControlPoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_value, as: 'attributeValue'
          property :boost_amount, as: 'boostAmount'
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
          property :search_link_promotion, as: 'searchLinkPromotion', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchLinkPromotion, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchLinkPromotion::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1CreateSitemapMetadata
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
      
      class GoogleCloudDiscoveryengineV1CustomTuningModel
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
      
      class GoogleCloudDiscoveryengineV1DataConnector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acl_enabled, as: 'aclEnabled'
          property :action_config, as: 'actionConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ActionConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ActionConfig::Representation
      
          property :action_state, as: 'actionState'
          collection :alert_policy_configs, as: 'alertPolicyConfigs', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AlertPolicyConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AlertPolicyConfig::Representation
      
          property :auto_run_disabled, as: 'autoRunDisabled'
          property :bap_config, as: 'bapConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1BapConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1BapConfig::Representation
      
          collection :blocking_reasons, as: 'blockingReasons'
          collection :connector_modes, as: 'connectorModes'
          property :connector_type, as: 'connectorType'
          property :create_eua_saas, as: 'createEuaSaas'
          property :create_time, as: 'createTime'
          property :data_source, as: 'dataSource'
          collection :destination_configs, as: 'destinationConfigs', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DestinationConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DestinationConfig::Representation
      
          property :end_user_config, as: 'endUserConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DataConnectorEndUserConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DataConnectorEndUserConfig::Representation
      
          collection :entities, as: 'entities', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DataConnectorSourceEntity, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DataConnectorSourceEntity::Representation
      
          collection :errors, as: 'errors', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
          property :federated_config, as: 'federatedConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DataConnectorFederatedConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DataConnectorFederatedConfig::Representation
      
          property :hybrid_ingestion_disabled, as: 'hybridIngestionDisabled'
          property :identity_refresh_interval, as: 'identityRefreshInterval'
          property :identity_schedule_config, as: 'identityScheduleConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1IdentityScheduleConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1IdentityScheduleConfig::Representation
      
          property :incremental_refresh_interval, as: 'incrementalRefreshInterval'
          property :incremental_sync_disabled, as: 'incrementalSyncDisabled'
          property :json_params, as: 'jsonParams'
          property :kms_key_name, as: 'kmsKeyName'
          property :last_sync_time, as: 'lastSyncTime'
          property :latest_pause_time, as: 'latestPauseTime'
          property :name, as: 'name'
          property :next_sync_time, as: 'nextSyncTime', class: Google::Apis::DiscoveryengineV1::GoogleTypeDateTime, decorator: Google::Apis::DiscoveryengineV1::GoogleTypeDateTime::Representation
      
          hash :params, as: 'params'
          property :private_connectivity_project_id, as: 'privateConnectivityProjectId'
          property :realtime_state, as: 'realtimeState'
          property :realtime_sync_config, as: 'realtimeSyncConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DataConnectorRealtimeSyncConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DataConnectorRealtimeSyncConfig::Representation
      
          property :refresh_interval, as: 'refreshInterval'
          collection :remove_param_keys, as: 'removeParamKeys'
          property :state, as: 'state'
          collection :static_ip_addresses, as: 'staticIpAddresses'
          property :static_ip_enabled, as: 'staticIpEnabled'
          property :sync_mode, as: 'syncMode'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DataConnectorEndUserConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :additional_params, as: 'additionalParams'
          hash :auth_params, as: 'authParams'
          property :json_auth_params, as: 'jsonAuthParams'
          property :tenant, as: 'tenant', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Tenant, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Tenant::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1DataConnectorFederatedConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :additional_params, as: 'additionalParams'
          hash :auth_params, as: 'authParams'
          property :json_auth_params, as: 'jsonAuthParams'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DataConnectorRealtimeSyncConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :realtime_sync_secret, as: 'realtimeSyncSecret'
          property :streaming_error, as: 'streamingError', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DataConnectorRealtimeSyncConfigStreamingError, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DataConnectorRealtimeSyncConfigStreamingError::Representation
      
          property :webhook_uri, as: 'webhookUri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DataConnectorRealtimeSyncConfigStreamingError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
          property :streaming_error_reason, as: 'streamingErrorReason'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DataConnectorSourceEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_store, as: 'dataStore'
          property :entity_name, as: 'entityName'
          property :healthcare_fhir_config, as: 'healthcareFhirConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1HealthcareFhirConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1HealthcareFhirConfig::Representation
      
          property :json_params, as: 'jsonParams'
          hash :key_property_mappings, as: 'keyPropertyMappings'
          hash :params, as: 'params'
          property :starting_schema, as: 'startingSchema', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Schema, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Schema::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1DataStore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acl_enabled, as: 'aclEnabled'
          property :advanced_site_search_config, as: 'advancedSiteSearchConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AdvancedSiteSearchConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AdvancedSiteSearchConfig::Representation
      
          property :billing_estimation, as: 'billingEstimation', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DataStoreBillingEstimation, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DataStoreBillingEstimation::Representation
      
          property :cmek_config, as: 'cmekConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1CmekConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1CmekConfig::Representation
      
          property :configurable_billing_approach, as: 'configurableBillingApproach'
          property :configurable_billing_approach_update_time, as: 'configurableBillingApproachUpdateTime'
          property :content_config, as: 'contentConfig'
          property :create_time, as: 'createTime'
          property :default_schema_id, as: 'defaultSchemaId'
          property :display_name, as: 'displayName'
          property :document_processing_config, as: 'documentProcessingConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DocumentProcessingConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DocumentProcessingConfig::Representation
      
          property :healthcare_fhir_config, as: 'healthcareFhirConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1HealthcareFhirConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1HealthcareFhirConfig::Representation
      
          property :identity_mapping_store, as: 'identityMappingStore'
          property :industry_vertical, as: 'industryVertical'
          property :is_infobot_faq_data_store, as: 'isInfobotFaqDataStore'
          property :kms_key_name, as: 'kmsKeyName'
          property :name, as: 'name'
          property :natural_language_query_understanding_config, as: 'naturalLanguageQueryUnderstandingConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1NaturalLanguageQueryUnderstandingConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1NaturalLanguageQueryUnderstandingConfig::Representation
      
          property :serving_config_data_store, as: 'servingConfigDataStore', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DataStoreServingConfigDataStore, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DataStoreServingConfigDataStore::Representation
      
          collection :solution_types, as: 'solutionTypes'
          property :starting_schema, as: 'startingSchema', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Schema, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Schema::Representation
      
          property :workspace_config, as: 'workspaceConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WorkspaceConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WorkspaceConfig::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1DeleteCmekConfigMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DeleteCollectionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
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
      
      class GoogleCloudDiscoveryengineV1DeleteSitemapMetadata
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
      
      class GoogleCloudDiscoveryengineV1DestinationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :destinations, as: 'destinations', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DestinationConfigDestination, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DestinationConfigDestination::Representation
      
          property :json_params, as: 'jsonParams'
          property :key, as: 'key'
          hash :params, as: 'params'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DestinationConfigDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host, as: 'host'
          property :port, as: 'port'
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
          property :acl_info, as: 'aclInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DocumentAclInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DocumentAclInfo::Representation
      
          property :content, as: 'content', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DocumentContent, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DocumentContent::Representation
      
          hash :derived_struct_data, as: 'derivedStructData'
          property :id, as: 'id'
          property :index_status, as: 'indexStatus', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DocumentIndexStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DocumentIndexStatus::Representation
      
          property :index_time, as: 'indexTime'
          property :json_data, as: 'jsonData'
          property :name, as: 'name'
          property :parent_document_id, as: 'parentDocumentId'
          property :schema_id, as: 'schemaId'
          hash :struct_data, as: 'structData'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DocumentAclInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :readers, as: 'readers', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DocumentAclInfoAccessRestriction, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DocumentAclInfoAccessRestriction::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1DocumentAclInfoAccessRestriction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :idp_wide, as: 'idpWide'
          collection :principals, as: 'principals', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Principal, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Principal::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1DocumentIndexStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
          property :index_time, as: 'indexTime'
          property :pending_message, as: 'pendingMessage'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DocumentInfo
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
          property :enable_get_processed_document, as: 'enableGetProcessedDocument'
          property :enable_image_annotation, as: 'enableImageAnnotation'
          property :enable_llm_layout_parsing, as: 'enableLlmLayoutParsing'
          property :enable_table_annotation, as: 'enableTableAnnotation'
          collection :exclude_html_classes, as: 'excludeHtmlClasses'
          collection :exclude_html_elements, as: 'excludeHtmlElements'
          collection :exclude_html_ids, as: 'excludeHtmlIds'
          collection :structured_content_types, as: 'structuredContentTypes'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigOcrParsingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :enhanced_document_elements, as: 'enhancedDocumentElements'
          property :use_native_text, as: 'useNativeText'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DoubleList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
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
          property :app_type, as: 'appType'
          property :chat_engine_config, as: 'chatEngineConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1EngineChatEngineConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1EngineChatEngineConfig::Representation
      
          property :chat_engine_metadata, as: 'chatEngineMetadata', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1EngineChatEngineMetadata, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1EngineChatEngineMetadata::Representation
      
          property :cmek_config, as: 'cmekConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1CmekConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1CmekConfig::Representation
      
          property :common_config, as: 'commonConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1EngineCommonConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1EngineCommonConfig::Representation
      
          property :configurable_billing_approach, as: 'configurableBillingApproach'
          property :create_time, as: 'createTime'
          collection :data_store_ids, as: 'dataStoreIds'
          property :disable_analytics, as: 'disableAnalytics'
          property :display_name, as: 'displayName'
          hash :features, as: 'features'
          property :industry_vertical, as: 'industryVertical'
          property :knowledge_graph_config, as: 'knowledgeGraphConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1EngineKnowledgeGraphConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1EngineKnowledgeGraphConfig::Representation
      
          property :media_recommendation_engine_config, as: 'mediaRecommendationEngineConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfig::Representation
      
          hash :model_configs, as: 'modelConfigs'
          property :name, as: 'name'
          property :observability_config, as: 'observabilityConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ObservabilityConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ObservabilityConfig::Representation
      
          property :search_engine_config, as: 'searchEngineConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1EngineSearchEngineConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1EngineSearchEngineConfig::Representation
      
          property :solution_type, as: 'solutionType'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1EngineChatEngineConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_creation_config, as: 'agentCreationConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1EngineChatEngineConfigAgentCreationConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1EngineChatEngineConfigAgentCreationConfig::Representation
      
          property :allow_cross_region, as: 'allowCrossRegion'
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
      
      class GoogleCloudDiscoveryengineV1EngineKnowledgeGraphConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cloud_knowledge_graph_types, as: 'cloudKnowledgeGraphTypes'
          property :enable_cloud_knowledge_graph, as: 'enableCloudKnowledgeGraph'
          property :enable_private_knowledge_graph, as: 'enablePrivateKnowledgeGraph'
          property :feature_config, as: 'featureConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1EngineKnowledgeGraphConfigFeatureConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1EngineKnowledgeGraphConfigFeatureConfig::Representation
      
          collection :private_knowledge_graph_types, as: 'privateKnowledgeGraphTypes'
        end
      end
      
      class GoogleCloudDiscoveryengineV1EngineKnowledgeGraphConfigFeatureConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_private_kg_auto_complete, as: 'disablePrivateKgAutoComplete'
          property :disable_private_kg_enrichment, as: 'disablePrivateKgEnrichment'
          property :disable_private_kg_query_ui_chips, as: 'disablePrivateKgQueryUiChips'
          property :disable_private_kg_query_understanding, as: 'disablePrivateKgQueryUnderstanding'
        end
      end
      
      class GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :engine_features_config, as: 'engineFeaturesConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigEngineFeaturesConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigEngineFeaturesConfig::Representation
      
          property :optimization_objective, as: 'optimizationObjective'
          property :optimization_objective_config, as: 'optimizationObjectiveConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigOptimizationObjectiveConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigOptimizationObjectiveConfig::Representation
      
          property :training_state, as: 'trainingState'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigEngineFeaturesConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :most_popular_config, as: 'mostPopularConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigMostPopularFeatureConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigMostPopularFeatureConfig::Representation
      
          property :recommended_for_you_config, as: 'recommendedForYouConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigRecommendedForYouFeatureConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigRecommendedForYouFeatureConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigMostPopularFeatureConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :time_window_days, :numeric_string => true, as: 'timeWindowDays'
        end
      end
      
      class GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigOptimizationObjectiveConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :target_field, as: 'targetField'
          property :target_field_value_float, as: 'targetFieldValueFloat'
        end
      end
      
      class GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigRecommendedForYouFeatureConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context_event_type, as: 'contextEventType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1EngineSearchEngineConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :required_subscription_tier, as: 'requiredSubscriptionTier'
          collection :search_add_ons, as: 'searchAddOns'
          property :search_tier, as: 'searchTier'
        end
      end
      
      class GoogleCloudDiscoveryengineV1FactChunk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk_text, as: 'chunkText'
          property :domain, as: 'domain'
          property :index, as: 'index'
          property :source, as: 'source'
          hash :source_metadata, as: 'sourceMetadata'
          property :title, as: 'title'
          property :uri, as: 'uri'
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
      
      class GoogleCloudDiscoveryengineV1FetchSitemapsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :sitemaps_metadata, as: 'sitemapsMetadata', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1FetchSitemapsResponseSitemapMetadata, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1FetchSitemapsResponseSitemapMetadata::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1FetchSitemapsResponseSitemapMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sitemap, as: 'sitemap', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Sitemap, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Sitemap::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1FhirStoreSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fhir_store, as: 'fhirStore'
          property :gcs_staging_dir, as: 'gcsStagingDir'
          collection :resource_types, as: 'resourceTypes'
          property :update_from_latest_predefined_schema, as: 'updateFromLatestPredefinedSchema'
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
      
      class GoogleCloudDiscoveryengineV1HealthcareFhirConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_configurable_schema, as: 'enableConfigurableSchema'
          property :enable_static_indexing_for_batch_ingestion, as: 'enableStaticIndexingForBatchIngestion'
          collection :initial_filter_groups, as: 'initialFilterGroups'
        end
      end
      
      class GoogleCloudDiscoveryengineV1IdentityMappingEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :external_identity, as: 'externalIdentity'
          property :external_identity_name, as: 'externalIdentityName'
          property :group_id, as: 'groupId'
          property :user_id, as: 'userId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1IdentityMappingEntryOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :total_count, :numeric_string => true, as: 'totalCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1IdentityMappingStore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cmek_config, as: 'cmekConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1CmekConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1CmekConfig::Representation
      
          property :kms_key_name, as: 'kmsKeyName'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDiscoveryengineV1IdentityScheduleConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_sync_time, as: 'nextSyncTime', class: Google::Apis::DiscoveryengineV1::GoogleTypeDateTime, decorator: Google::Apis::DiscoveryengineV1::GoogleTypeDateTime::Representation
      
          property :refresh_interval, as: 'refreshInterval'
        end
      end
      
      class GoogleCloudDiscoveryengineV1IdpConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :external_idp_config, as: 'externalIdpConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1IdpConfigExternalIdpConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1IdpConfigExternalIdpConfig::Representation
      
          property :idp_type, as: 'idpType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1IdpConfigExternalIdpConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :workforce_pool_name, as: 'workforcePoolName'
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
      
      class GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_source, as: 'bigquerySource', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1BigQuerySource, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1BigQuerySource::Representation
      
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ImportErrorConfig::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1GcsSource, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1GcsSource::Representation
      
          property :inline_source, as: 'inlineSource', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsRequestInlineSource, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsRequestInlineSource::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsRequestInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :suggestions, as: 'suggestions', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1CompletionSuggestion, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1CompletionSuggestion::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
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
      
          property :force_refresh_content, as: 'forceRefreshContent'
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
      
      class GoogleCloudDiscoveryengineV1ImportIdentityMappingsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inline_source, as: 'inlineSource', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ImportIdentityMappingsRequestInlineSource, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ImportIdentityMappingsRequestInlineSource::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1ImportIdentityMappingsRequestInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :identity_mapping_entries, as: 'identityMappingEntries', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1IdentityMappingEntry, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1IdentityMappingEntry::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1ImportIdentityMappingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1LicenseConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_renew, as: 'autoRenew'
          property :end_date, as: 'endDate', class: Google::Apis::DiscoveryengineV1::GoogleTypeDate, decorator: Google::Apis::DiscoveryengineV1::GoogleTypeDate::Representation
      
          property :free_trial, as: 'freeTrial'
          property :gemini_bundle, as: 'geminiBundle'
          property :license_count, :numeric_string => true, as: 'licenseCount'
          property :name, as: 'name'
          property :start_date, as: 'startDate', class: Google::Apis::DiscoveryengineV1::GoogleTypeDate, decorator: Google::Apis::DiscoveryengineV1::GoogleTypeDate::Representation
      
          property :state, as: 'state'
          property :subscription_term, as: 'subscriptionTerm'
          property :subscription_tier, as: 'subscriptionTier'
        end
      end
      
      class GoogleCloudDiscoveryengineV1LicenseConfigUsageStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :license_config, as: 'licenseConfig'
          property :used_license_count, :numeric_string => true, as: 'usedLicenseCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ListAssistantsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assistants, as: 'assistants', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Assistant, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Assistant::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ListCmekConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cmek_configs, as: 'cmekConfigs', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1CmekConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1CmekConfig::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1ListCustomModelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :models, as: 'models', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1CustomTuningModel, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1CustomTuningModel::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1ListIdentityMappingStoresResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :identity_mapping_stores, as: 'identityMappingStores', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1IdentityMappingStore, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1IdentityMappingStore::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ListIdentityMappingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :identity_mapping_entries, as: 'identityMappingEntries', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1IdentityMappingEntry, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1IdentityMappingEntry::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ListLicenseConfigsUsageStatsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :license_config_usage_stats, as: 'licenseConfigUsageStats', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1LicenseConfigUsageStats, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1LicenseConfigUsageStats::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1ListSchemasResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :schemas, as: 'schemas', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Schema, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Schema::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1ListServingConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :serving_configs, as: 'servingConfigs', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ServingConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ServingConfig::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1ListUserLicensesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :user_licenses, as: 'userLicenses', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1UserLicense, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1UserLicense::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1MediaInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :media_progress_duration, as: 'mediaProgressDuration'
          property :media_progress_percentage, as: 'mediaProgressPercentage'
        end
      end
      
      class GoogleCloudDiscoveryengineV1NaturalLanguageQueryUnderstandingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ObservabilityConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :observability_enabled, as: 'observabilityEnabled'
          property :sensitive_logging_enabled, as: 'sensitiveLoggingEnabled'
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
          collection :documents, as: 'documents', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DocumentInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DocumentInfo::Representation
      
          property :panel_id, as: 'panelId'
          property :panel_position, as: 'panelPosition'
          property :total_panels, as: 'totalPanels'
        end
      end
      
      class GoogleCloudDiscoveryengineV1Principal
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :external_entity_id, as: 'externalEntityId'
          property :group_id, as: 'groupId'
          property :user_id, as: 'userId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1Project
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :configurable_billing_status, as: 'configurableBillingStatus', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ProjectConfigurableBillingStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ProjectConfigurableBillingStatus::Representation
      
          property :create_time, as: 'createTime'
          property :customer_provided_config, as: 'customerProvidedConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ProjectCustomerProvidedConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ProjectCustomerProvidedConfig::Representation
      
          property :name, as: 'name'
          property :provision_completion_time, as: 'provisionCompletionTime'
          hash :service_terms_map, as: 'serviceTermsMap', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ProjectServiceTerms, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ProjectServiceTerms::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1ProjectConfigurableBillingStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :effective_indexing_core_threshold, :numeric_string => true, as: 'effectiveIndexingCoreThreshold'
          property :effective_search_qpm_threshold, :numeric_string => true, as: 'effectiveSearchQpmThreshold'
          property :indexing_core_threshold_next_update_time, as: 'indexingCoreThresholdNextUpdateTime'
          property :search_qpm_threshold_next_update_time, as: 'searchQpmThresholdNextUpdateTime'
          property :start_time, as: 'startTime'
          property :terminate_time, as: 'terminateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ProjectCustomerProvidedConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :notebooklm_config, as: 'notebooklmConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ProjectCustomerProvidedConfigNotebooklmConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ProjectCustomerProvidedConfigNotebooklmConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1ProjectCustomerProvidedConfigNotebooklmConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model_armor_config, as: 'modelArmorConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ProjectCustomerProvidedConfigNotebooklmConfigModelArmorConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ProjectCustomerProvidedConfigNotebooklmConfigModelArmorConfig::Representation
      
          property :observability_config, as: 'observabilityConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ObservabilityConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ObservabilityConfig::Representation
      
          property :opt_out_notebook_sharing, as: 'optOutNotebookSharing'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ProjectCustomerProvidedConfigNotebooklmConfigModelArmorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :response_template, as: 'responseTemplate'
          property :user_prompt_template, as: 'userPromptTemplate'
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
          property :saas_params, as: 'saasParams', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ProvisionProjectRequestSaasParams, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ProvisionProjectRequestSaasParams::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1ProvisionProjectRequestSaasParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accept_biz_qos, as: 'acceptBizQos'
          property :is_biz, as: 'isBiz'
        end
      end
      
      class GoogleCloudDiscoveryengineV1PurgeCompletionSuggestionsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1PurgeCompletionSuggestionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1PurgeCompletionSuggestionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1PurgeDocumentsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1PurgeErrorConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1PurgeErrorConfig::Representation
      
          property :filter, as: 'filter'
          property :force, as: 'force'
          property :gcs_source, as: 'gcsSource', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1GcsSource, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1GcsSource::Representation
      
          property :inline_source, as: 'inlineSource', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1PurgeDocumentsRequestInlineSource, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1PurgeDocumentsRequestInlineSource::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1PurgeDocumentsRequestInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :documents, as: 'documents'
        end
      end
      
      class GoogleCloudDiscoveryengineV1PurgeDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :purge_count, :numeric_string => true, as: 'purgeCount'
          collection :purge_sample, as: 'purgeSample'
        end
      end
      
      class GoogleCloudDiscoveryengineV1PurgeErrorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_prefix, as: 'gcsPrefix'
        end
      end
      
      class GoogleCloudDiscoveryengineV1PurgeIdentityMappingsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :force, as: 'force'
          property :inline_source, as: 'inlineSource', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1PurgeIdentityMappingsRequestInlineSource, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1PurgeIdentityMappingsRequestInlineSource::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1PurgeIdentityMappingsRequestInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :identity_mapping_entries, as: 'identityMappingEntries', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1IdentityMappingEntry, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1IdentityMappingEntry::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1PurgeUserEventsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :force, as: 'force'
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
          property :site_credential, as: 'siteCredential'
          collection :uris, as: 'uris'
        end
      end
      
      class GoogleCloudDiscoveryengineV1Reply
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :summary, as: 'summary', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseSummary, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseSummary::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1SafetyRating
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
      
      class GoogleCloudDiscoveryengineV1SearchLinkPromotion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :document, as: 'document'
          property :enabled, as: 'enabled'
          property :image_uri, as: 'imageUri'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost_spec, as: 'boostSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestBoostSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestBoostSpec::Representation
      
          property :branch, as: 'branch'
          property :canonical_filter, as: 'canonicalFilter'
          property :content_search_spec, as: 'contentSearchSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpec::Representation
      
          collection :crowding_specs, as: 'crowdingSpecs', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestCrowdingSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestCrowdingSpec::Representation
      
          collection :data_store_specs, as: 'dataStoreSpecs', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestDataStoreSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestDataStoreSpec::Representation
      
          property :display_spec, as: 'displaySpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestDisplaySpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestDisplaySpec::Representation
      
          collection :facet_specs, as: 'facetSpecs', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestFacetSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestFacetSpec::Representation
      
          property :filter, as: 'filter'
          property :image_query, as: 'imageQuery', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestImageQuery, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestImageQuery::Representation
      
          property :language_code, as: 'languageCode'
          property :natural_language_query_understanding_spec, as: 'naturalLanguageQueryUnderstandingSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestNaturalLanguageQueryUnderstandingSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestNaturalLanguageQueryUnderstandingSpec::Representation
      
          property :offset, as: 'offset'
          property :one_box_page_size, as: 'oneBoxPageSize'
          property :order_by, as: 'orderBy'
          collection :page_categories, as: 'pageCategories'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          hash :params, as: 'params'
          property :query, as: 'query'
          property :query_expansion_spec, as: 'queryExpansionSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestQueryExpansionSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestQueryExpansionSpec::Representation
      
          property :ranking_expression, as: 'rankingExpression'
          property :ranking_expression_backend, as: 'rankingExpressionBackend'
          property :relevance_score_spec, as: 'relevanceScoreSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestRelevanceScoreSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestRelevanceScoreSpec::Representation
      
          property :relevance_threshold, as: 'relevanceThreshold'
          property :safe_search, as: 'safeSearch'
          property :search_as_you_type_spec, as: 'searchAsYouTypeSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestSearchAsYouTypeSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestSearchAsYouTypeSpec::Representation
      
          property :session, as: 'session'
          property :session_spec, as: 'sessionSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestSessionSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestSessionSpec::Representation
      
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
          property :boost_control_spec, as: 'boostControlSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestBoostSpecConditionBoostSpecBoostControlSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestBoostSpecConditionBoostSpecBoostControlSpec::Representation
      
          property :condition, as: 'condition'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestBoostSpecConditionBoostSpecBoostControlSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_type, as: 'attributeType'
          collection :control_points, as: 'controlPoints', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestBoostSpecConditionBoostSpecBoostControlSpecControlPoint, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestBoostSpecConditionBoostSpecBoostControlSpecControlPoint::Representation
      
          property :field_name, as: 'fieldName'
          property :interpolation_type, as: 'interpolationType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestBoostSpecConditionBoostSpecBoostControlSpecControlPoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_value, as: 'attributeValue'
          property :boost_amount, as: 'boostAmount'
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
          property :ignore_jail_breaking_query, as: 'ignoreJailBreakingQuery'
          property :ignore_low_relevant_content, as: 'ignoreLowRelevantContent'
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
      
      class GoogleCloudDiscoveryengineV1SearchRequestCrowdingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field, as: 'field'
          property :max_count, as: 'maxCount'
          property :mode, as: 'mode'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestDataStoreSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost_spec, as: 'boostSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestBoostSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestBoostSpec::Representation
      
          property :custom_search_operators, as: 'customSearchOperators'
          property :data_store, as: 'dataStore'
          property :filter, as: 'filter'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestDisplaySpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :match_highlighting_condition, as: 'matchHighlightingCondition'
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
      
      class GoogleCloudDiscoveryengineV1SearchRequestNaturalLanguageQueryUnderstandingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_field_names, as: 'allowedFieldNames'
          property :extracted_filter_behavior, as: 'extractedFilterBehavior'
          property :filter_extraction_condition, as: 'filterExtractionCondition'
          collection :geo_search_query_detection_field_names, as: 'geoSearchQueryDetectionFieldNames'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestQueryExpansionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition'
          property :pin_unexpanded_results, as: 'pinUnexpandedResults'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestRelevanceScoreSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :return_relevance_score, as: 'returnRelevanceScore'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestSearchAsYouTypeSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestSessionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query_id, as: 'queryId'
          property :search_result_persistence_count, as: 'searchResultPersistenceCount'
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
      
          property :natural_language_query_understanding_info, as: 'naturalLanguageQueryUnderstandingInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfo::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :query_expansion_info, as: 'queryExpansionInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseQueryExpansionInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseQueryExpansionInfo::Representation
      
          property :redirect_uri, as: 'redirectUri'
          collection :results, as: 'results', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseSearchResult, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseSearchResult::Representation
      
          collection :search_link_promotions, as: 'searchLinkPromotions', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchLinkPromotion, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchLinkPromotion::Representation
      
          property :semantic_state, as: 'semanticState'
          property :session_info, as: 'sessionInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseSessionInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseSessionInfo::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :classified_intents, as: 'classifiedIntents'
          property :extracted_filters, as: 'extractedFilters'
          property :rewritten_query, as: 'rewrittenQuery'
          property :structured_extracted_filter, as: 'structuredExtractedFilter', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilter, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilter::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expression, as: 'expression', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterExpression, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterExpression::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterAndExpression
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :expressions, as: 'expressions', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterExpression, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterExpression::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterExpression
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :and_expr, as: 'andExpr', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterAndExpression, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterAndExpression::Representation
      
          property :geolocation_constraint, as: 'geolocationConstraint', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterGeolocationConstraint, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterGeolocationConstraint::Representation
      
          property :number_constraint, as: 'numberConstraint', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterNumberConstraint, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterNumberConstraint::Representation
      
          property :or_expr, as: 'orExpr', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterOrExpression, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterOrExpression::Representation
      
          property :string_constraint, as: 'stringConstraint', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterStringConstraint, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterStringConstraint::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterGeolocationConstraint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address'
          property :field_name, as: 'fieldName'
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
          property :radius_in_meters, as: 'radiusInMeters'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterNumberConstraint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :comparison, as: 'comparison'
          property :field_name, as: 'fieldName'
          property :query_segment, as: 'querySegment'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterOrExpression
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :expressions, as: 'expressions', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterExpression, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterExpression::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterStringConstraint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_name, as: 'fieldName'
          property :query_segment, as: 'querySegment'
          collection :values, as: 'values'
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
          hash :model_scores, as: 'modelScores', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DoubleList, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DoubleList::Representation
      
          property :rank_signals, as: 'rankSignals', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseSearchResultRankSignals, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseSearchResultRankSignals::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseSearchResultRankSignals
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boosting_factor, as: 'boostingFactor'
          collection :custom_signals, as: 'customSignals', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseSearchResultRankSignalsCustomSignal, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchResponseSearchResultRankSignalsCustomSignal::Representation
      
          property :default_rank, as: 'defaultRank'
          property :document_age, as: 'documentAge'
          property :keyword_similarity_score, as: 'keywordSimilarityScore'
          property :pctr_rank, as: 'pctrRank'
          property :relevance_score, as: 'relevanceScore'
          property :semantic_similarity_score, as: 'semanticSimilarityScore'
          property :topicality_rank, as: 'topicalityRank'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseSearchResultRankSignalsCustomSignal
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchResponseSessionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :query_id, as: 'queryId'
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
      
      class GoogleCloudDiscoveryengineV1ServingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer_generation_spec, as: 'answerGenerationSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerGenerationSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AnswerGenerationSpec::Representation
      
          collection :boost_control_ids, as: 'boostControlIds'
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          collection :dissociate_control_ids, as: 'dissociateControlIds'
          property :diversity_level, as: 'diversityLevel'
          collection :filter_control_ids, as: 'filterControlIds'
          property :generic_config, as: 'genericConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ServingConfigGenericConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ServingConfigGenericConfig::Representation
      
          collection :ignore_control_ids, as: 'ignoreControlIds'
          property :media_config, as: 'mediaConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ServingConfigMediaConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ServingConfigMediaConfig::Representation
      
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
          property :content_search_spec, as: 'contentSearchSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpec::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1Session
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :end_time, as: 'endTime'
          property :is_pinned, as: 'isPinned'
          collection :labels, as: 'labels'
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
          property :detailed_answer, as: 'detailedAnswer', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Answer, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Answer::Representation
      
          property :detailed_assist_answer, as: 'detailedAssistAnswer', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistAnswer, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistAnswer::Representation
      
          property :query, as: 'query', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Query, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Query::Representation
      
          hash :query_config, as: 'queryConfig'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SetUpDataConnectorMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1SetUpDataConnectorRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :collection_display_name, as: 'collectionDisplayName'
          property :collection_id, as: 'collectionId'
          property :data_connector, as: 'dataConnector', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DataConnector, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1DataConnector::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1SingleRegionKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key, as: 'kmsKey'
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
      
      class GoogleCloudDiscoveryengineV1Sitemap
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :uri, as: 'uri'
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
      
      class GoogleCloudDiscoveryengineV1StreamAssistRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generation_spec, as: 'generationSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1StreamAssistRequestGenerationSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1StreamAssistRequestGenerationSpec::Representation
      
          property :query, as: 'query', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Query, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1Query::Representation
      
          property :session, as: 'session'
          property :tools_spec, as: 'toolsSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpec::Representation
      
          property :user_metadata, as: 'userMetadata', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistUserMetadata, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistUserMetadata::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1StreamAssistRequestGenerationSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model_id, as: 'modelId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_generation_spec, as: 'imageGenerationSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpecImageGenerationSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpecImageGenerationSpec::Representation
      
          property :vertex_ai_search_spec, as: 'vertexAiSearchSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpecVertexAiSearchSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpecVertexAiSearchSpec::Representation
      
          property :video_generation_spec, as: 'videoGenerationSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpecVideoGenerationSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpecVideoGenerationSpec::Representation
      
          property :web_grounding_spec, as: 'webGroundingSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpecWebGroundingSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpecWebGroundingSpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpecImageGenerationSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpecVertexAiSearchSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_store_specs, as: 'dataStoreSpecs', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestDataStoreSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestDataStoreSpec::Representation
      
          property :filter, as: 'filter'
        end
      end
      
      class GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpecVideoGenerationSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpecWebGroundingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1StreamAssistResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer, as: 'answer', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistAnswer, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1AssistAnswer::Representation
      
          property :assist_token, as: 'assistToken'
          collection :invocation_tools, as: 'invocationTools'
          property :session_info, as: 'sessionInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1StreamAssistResponseSessionInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1StreamAssistResponseSessionInfo::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1StreamAssistResponseSessionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :session, as: 'session'
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
      
      class GoogleCloudDiscoveryengineV1Tenant
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :id, as: 'id'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1TextInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context, as: 'context', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ConversationContext, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ConversationContext::Representation
      
          property :input, as: 'input'
        end
      end
      
      class GoogleCloudDiscoveryengineV1TrainCustomModelMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1TrainCustomModelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ImportErrorConfig::Representation
      
          property :gcs_training_input, as: 'gcsTrainingInput', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1TrainCustomModelRequestGcsTrainingInput, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1TrainCustomModelRequestGcsTrainingInput::Representation
      
          property :model_id, as: 'modelId'
          property :model_type, as: 'modelType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1TrainCustomModelRequestGcsTrainingInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :corpus_data_path, as: 'corpusDataPath'
          property :query_data_path, as: 'queryDataPath'
          property :test_data_path, as: 'testDataPath'
          property :train_data_path, as: 'trainDataPath'
        end
      end
      
      class GoogleCloudDiscoveryengineV1TrainCustomModelResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1ImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
          hash :metrics, as: 'metrics'
          property :model_name, as: 'modelName'
          property :model_status, as: 'modelStatus'
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
      
      class GoogleCloudDiscoveryengineV1UserEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1CustomAttribute, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1CustomAttribute::Representation
      
          property :attribution_token, as: 'attributionToken'
          property :completion_info, as: 'completionInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1CompletionInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1CompletionInfo::Representation
      
          property :conversion_type, as: 'conversionType'
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
      
          collection :panels, as: 'panels', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1PanelInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1PanelInfo::Representation
      
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
          property :time_zone, as: 'timeZone'
          property :user_agent, as: 'userAgent'
          property :user_id, as: 'userId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1UserLicense
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :last_login_time, as: 'lastLoginTime'
          property :license_assignment_state, as: 'licenseAssignmentState'
          property :license_config, as: 'licenseConfig'
          property :update_time, as: 'updateTime'
          property :user_principal, as: 'userPrincipal'
          property :user_profile, as: 'userProfile'
        end
      end
      
      class GoogleCloudDiscoveryengineV1UserStore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_license_config, as: 'defaultLicenseConfig'
          property :display_name, as: 'displayName'
          property :enable_expired_license_auto_update, as: 'enableExpiredLicenseAutoUpdate'
          property :enable_license_auto_register, as: 'enableLicenseAutoRegister'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDiscoveryengineV1WidgetConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_settings, as: 'accessSettings', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WidgetConfigAccessSettings, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WidgetConfigAccessSettings::Representation
      
          property :allow_public_access, as: 'allowPublicAccess'
          collection :allowlisted_domains, as: 'allowlistedDomains'
          property :assistant_settings, as: 'assistantSettings', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WidgetConfigAssistantSettings, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WidgetConfigAssistantSettings::Representation
      
          collection :collection_components, as: 'collectionComponents', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WidgetConfigCollectionComponent, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WidgetConfigCollectionComponent::Representation
      
          property :config_id, as: 'configId'
          property :content_search_spec, as: 'contentSearchSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpec::Representation
      
          property :create_time, as: 'createTime'
          property :customer_provided_config, as: 'customerProvidedConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WidgetConfigCustomerProvidedConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WidgetConfigCustomerProvidedConfig::Representation
      
          property :data_store_type, as: 'dataStoreType'
          collection :data_store_ui_configs, as: 'dataStoreUiConfigs', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WidgetConfigDataStoreUiConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WidgetConfigDataStoreUiConfig::Representation
      
          property :default_search_request_order_by, as: 'defaultSearchRequestOrderBy'
          property :display_name, as: 'displayName'
          property :enable_autocomplete, as: 'enableAutocomplete'
          property :enable_conversational_search, as: 'enableConversationalSearch'
          property :enable_private_knowledge_graph, as: 'enablePrivateKnowledgeGraph'
          property :enable_quality_feedback, as: 'enableQualityFeedback'
          property :enable_result_score, as: 'enableResultScore'
          property :enable_safe_search, as: 'enableSafeSearch'
          property :enable_search_as_you_type, as: 'enableSearchAsYouType'
          property :enable_snippet_result_summary, as: 'enableSnippetResultSummary'
          property :enable_summarization, as: 'enableSummarization'
          property :enable_web_app, as: 'enableWebApp'
          collection :facet_field, as: 'facetField', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WidgetConfigFacetField, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WidgetConfigFacetField::Representation
      
          hash :fields_ui_components_map, as: 'fieldsUiComponentsMap', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WidgetConfigUiComponentField, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WidgetConfigUiComponentField::Representation
      
          property :gemini_bundle, as: 'geminiBundle'
          property :homepage_setting, as: 'homepageSetting', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WidgetConfigHomepageSetting, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WidgetConfigHomepageSetting::Representation
      
          property :industry_vertical, as: 'industryVertical'
          property :llm_enabled, as: 'llmEnabled'
          property :minimum_data_term_accepted, as: 'minimumDataTermAccepted'
          property :name, as: 'name'
          collection :nodes, as: 'nodes', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WidgetConfigNode, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WidgetConfigNode::Representation
      
          property :result_display_type, as: 'resultDisplayType'
          property :solution_type, as: 'solutionType'
          property :ui_branding, as: 'uiBranding', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WidgetConfigUiBrandingSettings, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WidgetConfigUiBrandingSettings::Representation
      
          property :ui_settings, as: 'uiSettings', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WidgetConfigUiSettings, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WidgetConfigUiSettings::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1WidgetConfigAccessSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_public_access, as: 'allowPublicAccess'
          collection :allowlisted_domains, as: 'allowlistedDomains'
          property :enable_web_app, as: 'enableWebApp'
          property :language_code, as: 'languageCode'
          property :workforce_identity_pool_provider, as: 'workforceIdentityPoolProvider'
        end
      end
      
      class GoogleCloudDiscoveryengineV1WidgetConfigAssistantSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_web_grounding_toggle_off, as: 'defaultWebGroundingToggleOff'
          property :disable_location_context, as: 'disableLocationContext'
          property :google_search_grounding_enabled, as: 'googleSearchGroundingEnabled'
          property :web_grounding_type, as: 'webGroundingType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1WidgetConfigCollectionComponent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connector_icon_link, as: 'connectorIconLink'
          property :data_source, as: 'dataSource'
          property :data_source_display_name, as: 'dataSourceDisplayName'
          collection :data_store_components, as: 'dataStoreComponents', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WidgetConfigDataStoreComponent, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WidgetConfigDataStoreComponent::Representation
      
          property :display_name, as: 'displayName'
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDiscoveryengineV1WidgetConfigCustomerProvidedConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer_type, as: 'customerType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1WidgetConfigDataStoreComponent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_store_config_type, as: 'dataStoreConfigType'
          property :display_name, as: 'displayName'
          property :entity_name, as: 'entityName'
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDiscoveryengineV1WidgetConfigDataStoreUiConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :facet_field, as: 'facetField', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WidgetConfigFacetField, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WidgetConfigFacetField::Representation
      
          hash :fields_ui_components_map, as: 'fieldsUiComponentsMap', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WidgetConfigUiComponentField, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WidgetConfigUiComponentField::Representation
      
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDiscoveryengineV1WidgetConfigFacetField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :field, as: 'field'
        end
      end
      
      class GoogleCloudDiscoveryengineV1WidgetConfigHomepageSetting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :shortcuts, as: 'shortcuts', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WidgetConfigHomepageSettingShortcut, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WidgetConfigHomepageSettingShortcut::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1WidgetConfigHomepageSettingShortcut
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_uri, as: 'destinationUri'
          property :icon, as: 'icon', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WidgetConfigImage, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WidgetConfigImage::Representation
      
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudDiscoveryengineV1WidgetConfigImage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :url, as: 'url'
        end
      end
      
      class GoogleCloudDiscoveryengineV1WidgetConfigNode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :icon_url, as: 'iconUrl'
          hash :output_schema, as: 'outputSchema'
          hash :parameter_schema, as: 'parameterSchema'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDiscoveryengineV1WidgetConfigUiComponentField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :device_visibility, as: 'deviceVisibility'
          property :display_template, as: 'displayTemplate'
          property :field, as: 'field'
        end
      end
      
      class GoogleCloudDiscoveryengineV1WidgetConfigUiBrandingSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :logo, as: 'logo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WidgetConfigImage, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WidgetConfigImage::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1WidgetConfigUiSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_store_ui_configs, as: 'dataStoreUiConfigs', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WidgetConfigDataStoreUiConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WidgetConfigDataStoreUiConfig::Representation
      
          property :default_search_request_order_by, as: 'defaultSearchRequestOrderBy'
          property :disable_user_events_collection, as: 'disableUserEventsCollection'
          property :enable_autocomplete, as: 'enableAutocomplete'
          property :enable_create_agent_button, as: 'enableCreateAgentButton'
          property :enable_people_search, as: 'enablePeopleSearch'
          property :enable_quality_feedback, as: 'enableQualityFeedback'
          property :enable_safe_search, as: 'enableSafeSearch'
          property :enable_search_as_you_type, as: 'enableSearchAsYouType'
          property :enable_visual_content_summary, as: 'enableVisualContentSummary'
          hash :features, as: 'features'
          property :generative_answer_config, as: 'generativeAnswerConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WidgetConfigUiSettingsGenerativeAnswerConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1WidgetConfigUiSettingsGenerativeAnswerConfig::Representation
      
          property :interaction_type, as: 'interactionType'
          hash :model_configs, as: 'modelConfigs'
          property :result_description_type, as: 'resultDescriptionType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1WidgetConfigUiSettingsGenerativeAnswerConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_related_questions, as: 'disableRelatedQuestions'
          property :ignore_adversarial_query, as: 'ignoreAdversarialQuery'
          property :ignore_low_relevant_content, as: 'ignoreLowRelevantContent'
          property :ignore_non_answer_seeking_query, as: 'ignoreNonAnswerSeekingQuery'
          property :image_source, as: 'imageSource'
          property :language_code, as: 'languageCode'
          property :max_rephrase_steps, as: 'maxRephraseSteps'
          property :model_prompt_preamble, as: 'modelPromptPreamble'
          property :model_version, as: 'modelVersion'
          property :result_count, as: 'resultCount'
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
          property :idp_config, as: 'idpConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaIdpConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaIdpConfig::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaActionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :action_params, as: 'actionParams'
          property :is_action_configured, as: 'isActionConfigured'
          property :json_action_params, as: 'jsonActionParams'
          property :service_name, as: 'serviceName'
          property :use_static_secrets, as: 'useStaticSecrets'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAddPatientFilterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_store, as: 'dataStore'
          collection :filter_groups, as: 'filterGroups'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAdvancedSiteSearchConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_automatic_refresh, as: 'disableAutomaticRefresh'
          property :disable_initial_index, as: 'disableInitialIndex'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAlertPolicyConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :alert_enrollments, as: 'alertEnrollments', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAlertPolicyConfigAlertEnrollment, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAlertPolicyConfigAlertEnrollment::Representation
      
          property :alert_policy_name, as: 'alertPolicyName'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAlertPolicyConfigAlertEnrollment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alert_id, as: 'alertId'
          property :enroll_state, as: 'enrollState'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAlertPolicyResourceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :alert_enrollments, as: 'alertEnrollments', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAlertPolicyResourceConfigAlertEnrollment, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAlertPolicyResourceConfigAlertEnrollment::Representation
      
          property :alert_policy, as: 'alertPolicy'
          collection :contact_details, as: 'contactDetails', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaContactDetails, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaContactDetails::Representation
      
          property :language_code, as: 'languageCode'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAlertPolicyResourceConfigAlertEnrollment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alert_id, as: 'alertId'
          property :enroll_state, as: 'enrollState'
          hash :notification_params, as: 'notificationParams'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :answer_skipped_reasons, as: 'answerSkippedReasons'
          property :answer_text, as: 'answerText'
          collection :blob_attachments, as: 'blobAttachments', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerBlobAttachment, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerBlobAttachment::Representation
      
          collection :citations, as: 'citations', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerCitation, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerCitation::Representation
      
          property :complete_time, as: 'completeTime'
          property :create_time, as: 'createTime'
          property :grounding_score, as: 'groundingScore'
          collection :grounding_supports, as: 'groundingSupports', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerGroundingSupport, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerGroundingSupport::Representation
      
          property :name, as: 'name'
          property :query_understanding_info, as: 'queryUnderstandingInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerQueryUnderstandingInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerQueryUnderstandingInfo::Representation
      
          collection :references, as: 'references', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerReference, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerReference::Representation
      
          collection :related_questions, as: 'relatedQuestions'
          collection :safety_ratings, as: 'safetyRatings', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSafetyRating, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSafetyRating::Representation
      
          property :state, as: 'state'
          collection :steps, as: 'steps', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerStep, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerStep::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerBlobAttachment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribution_type, as: 'attributionType'
          property :data, as: 'data', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerBlobAttachmentBlob, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerBlobAttachmentBlob::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerBlobAttachmentBlob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data, :base64 => true, as: 'data'
          property :mime_type, as: 'mimeType'
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
      
      class GoogleCloudDiscoveryengineV1alphaAnswerGroundingSupport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_index, :numeric_string => true, as: 'endIndex'
          property :grounding_check_required, as: 'groundingCheckRequired'
          property :grounding_score, as: 'groundingScore'
          collection :sources, as: 'sources', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerCitationSource, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerCitationSource::Representation
      
          property :start_index, :numeric_string => true, as: 'startIndex'
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
      
          property :structured_document_info, as: 'structuredDocumentInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerReferenceStructuredDocumentInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerReferenceStructuredDocumentInfo::Representation
      
          property :unstructured_document_info, as: 'unstructuredDocumentInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerReferenceUnstructuredDocumentInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswerReferenceUnstructuredDocumentInfo::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerReferenceChunkInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :blob_attachment_indexes, as: 'blobAttachmentIndexes'
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
      
      class GoogleCloudDiscoveryengineV1alphaAnswerReferenceStructuredDocumentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document'
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
          collection :blob_attachment_indexes, as: 'blobAttachmentIndexes'
          property :content, as: 'content'
          property :page_identifier, as: 'pageIdentifier'
          property :relevance_score, as: 'relevanceScore'
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
      
      class GoogleCloudDiscoveryengineV1alphaAssistAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assist_skipped_reasons, as: 'assistSkippedReasons'
          property :customer_policy_enforcement_result, as: 'customerPolicyEnforcementResult', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResult, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResult::Representation
      
          property :name, as: 'name'
          collection :replies, as: 'replies', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAssistAnswerReply, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAssistAnswerReply::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :policy_results, as: 'policyResults', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResultPolicyEnforcementResult, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResultPolicyEnforcementResult::Representation
      
          property :verdict, as: 'verdict'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResultBannedPhraseEnforcementResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :banned_phrases, as: 'bannedPhrases'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResultModelArmorEnforcementResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
          property :model_armor_violation, as: 'modelArmorViolation'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResultPolicyEnforcementResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :banned_phrase_enforcement_result, as: 'bannedPhraseEnforcementResult', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResultBannedPhraseEnforcementResult, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResultBannedPhraseEnforcementResult::Representation
      
          property :model_armor_enforcement_result, as: 'modelArmorEnforcementResult', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResultModelArmorEnforcementResult, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResultModelArmorEnforcementResult::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistAnswerReply
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :grounded_content, as: 'groundedContent', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAssistantGroundedContent, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAssistantGroundedContent::Representation
      
          property :reply_id, as: 'replyId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code_execution_result, as: 'codeExecutionResult', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAssistantContentCodeExecutionResult, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAssistantContentCodeExecutionResult::Representation
      
          property :executable_code, as: 'executableCode', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAssistantContentExecutableCode, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAssistantContentExecutableCode::Representation
      
          property :file, as: 'file', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAssistantContentFile, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAssistantContentFile::Representation
      
          property :inline_data, as: 'inlineData', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAssistantContentBlob, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAssistantContentBlob::Representation
      
          property :role, as: 'role'
          property :text, as: 'text'
          property :thought, as: 'thought'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantContentBlob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data, :base64 => true, as: 'data'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantContentCodeExecutionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :outcome, as: 'outcome'
          property :output, as: 'output'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantContentExecutableCode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantContentFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_id, as: 'fileId'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantGroundedContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :citation_metadata, as: 'citationMetadata', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaCitationMetadata, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaCitationMetadata::Representation
      
          property :content, as: 'content', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAssistantContent, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAssistantContent::Representation
      
          property :text_grounding_metadata, as: 'textGroundingMetadata', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadata, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadata::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :references, as: 'references', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadataReference, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadataReference::Representation
      
          collection :segments, as: 'segments', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadataSegment, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadataSegment::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadataReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :document_metadata, as: 'documentMetadata', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadataReferenceDocumentMetadata, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadataReferenceDocumentMetadata::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadataReferenceDocumentMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document'
          property :domain, as: 'domain'
          property :mime_type, as: 'mimeType'
          property :page_identifier, as: 'pageIdentifier'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadataSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_index, :numeric_string => true, as: 'endIndex'
          property :grounding_score, as: 'groundingScore'
          collection :reference_indices, as: 'referenceIndices'
          property :start_index, :numeric_string => true, as: 'startIndex'
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaBapConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :enabled_actions, as: 'enabledActions'
          collection :supported_connector_modes, as: 'supportedConnectorModes'
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
      
      class GoogleCloudDiscoveryengineV1alphaBatchUpdateUserLicensesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaBatchUpdateUserLicensesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
          collection :user_licenses, as: 'userLicenses', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaUserLicense, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaUserLicense::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCitation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_index, as: 'endIndex'
          property :license, as: 'license'
          property :publication_date, as: 'publicationDate', class: Google::Apis::DiscoveryengineV1::GoogleTypeDate, decorator: Google::Apis::DiscoveryengineV1::GoogleTypeDate::Representation
      
          property :start_index, as: 'startIndex'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCitationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :citations, as: 'citations', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaCitation, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaCitation::Representation
      
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
          property :notebooklm_state, as: 'notebooklmState'
          collection :single_region_keys, as: 'singleRegionKeys', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSingleRegionKey, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSingleRegionKey::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCollection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :data_connector, as: 'dataConnector', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDataConnector, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDataConnector::Representation
      
          property :display_name, as: 'displayName'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :active_time_range, as: 'activeTimeRange', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaConditionTimeRange, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaConditionTimeRange::Representation
      
          property :query_regex, as: 'queryRegex'
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
      
      class GoogleCloudDiscoveryengineV1alphaConnectorRun
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          collection :entity_runs, as: 'entityRuns', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaConnectorRunEntityRun, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaConnectorRunEntityRun::Representation
      
          collection :errors, as: 'errors', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
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
          property :deleted_record_count, :numeric_string => true, as: 'deletedRecordCount'
          property :entity_name, as: 'entityName'
          property :error_record_count, :numeric_string => true, as: 'errorRecordCount'
          collection :errors, as: 'errors', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
          property :extracted_record_count, :numeric_string => true, as: 'extractedRecordCount'
          property :indexed_record_count, :numeric_string => true, as: 'indexedRecordCount'
          property :progress, as: 'progress', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaConnectorRunEntityRunProgress, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaConnectorRunEntityRunProgress::Representation
      
          property :scheduled_record_count, :numeric_string => true, as: 'scheduledRecordCount'
          property :source_api_request_count, :numeric_string => true, as: 'sourceApiRequestCount'
          property :state, as: 'state'
          property :state_update_time, as: 'stateUpdateTime'
          property :stats_update_time, as: 'statsUpdateTime'
          property :sync_type, as: 'syncType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaConnectorRunEntityRunProgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_count, :numeric_string => true, as: 'currentCount'
          property :percentile, as: 'percentile'
          property :total_count, :numeric_string => true, as: 'totalCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaContactDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email_address, as: 'emailAddress'
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
          property :promote_action, as: 'promoteAction', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaControlPromoteAction, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaControlPromoteAction::Representation
      
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
          property :fixed_boost, as: 'fixedBoost'
          property :interpolation_boost_spec, as: 'interpolationBoostSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaControlBoostActionInterpolationBoostSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaControlBoostActionInterpolationBoostSpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaControlBoostActionInterpolationBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_type, as: 'attributeType'
          collection :control_points, as: 'controlPoints', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaControlBoostActionInterpolationBoostSpecControlPoint, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaControlBoostActionInterpolationBoostSpecControlPoint::Representation
      
          property :field_name, as: 'fieldName'
          property :interpolation_type, as: 'interpolationType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaControlBoostActionInterpolationBoostSpecControlPoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_value, as: 'attributeValue'
          property :boost_amount, as: 'boostAmount'
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
          property :search_link_promotion, as: 'searchLinkPromotion', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchLinkPromotion, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchLinkPromotion::Representation
      
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
          property :qps_time_series, as: 'qpsTimeSeries', class: Google::Apis::DiscoveryengineV1::GoogleMonitoringV3TimeSeries, decorator: Google::Apis::DiscoveryengineV1::GoogleMonitoringV3TimeSeries::Representation
      
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
          property :acl_enabled, as: 'aclEnabled'
          property :action_config, as: 'actionConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaActionConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaActionConfig::Representation
      
          property :action_state, as: 'actionState'
          collection :alert_policy_configs, as: 'alertPolicyConfigs', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAlertPolicyConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAlertPolicyConfig::Representation
      
          property :auto_run_disabled, as: 'autoRunDisabled'
          property :bap_config, as: 'bapConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaBapConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaBapConfig::Representation
      
          collection :blocking_reasons, as: 'blockingReasons'
          collection :connector_modes, as: 'connectorModes'
          property :connector_type, as: 'connectorType'
          property :create_eua_saas, as: 'createEuaSaas'
          property :create_time, as: 'createTime'
          property :data_source, as: 'dataSource'
          collection :destination_configs, as: 'destinationConfigs', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDestinationConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDestinationConfig::Representation
      
          property :end_user_config, as: 'endUserConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDataConnectorEndUserConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDataConnectorEndUserConfig::Representation
      
          collection :entities, as: 'entities', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDataConnectorSourceEntity, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDataConnectorSourceEntity::Representation
      
          collection :errors, as: 'errors', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
          property :federated_config, as: 'federatedConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDataConnectorFederatedConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDataConnectorFederatedConfig::Representation
      
          property :hybrid_ingestion_disabled, as: 'hybridIngestionDisabled'
          property :identity_refresh_interval, as: 'identityRefreshInterval'
          property :identity_schedule_config, as: 'identityScheduleConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaIdentityScheduleConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaIdentityScheduleConfig::Representation
      
          property :incremental_refresh_interval, as: 'incrementalRefreshInterval'
          property :incremental_sync_disabled, as: 'incrementalSyncDisabled'
          property :json_params, as: 'jsonParams'
          property :kms_key_name, as: 'kmsKeyName'
          property :last_sync_time, as: 'lastSyncTime'
          property :latest_pause_time, as: 'latestPauseTime'
          property :name, as: 'name'
          property :next_sync_time, as: 'nextSyncTime', class: Google::Apis::DiscoveryengineV1::GoogleTypeDateTime, decorator: Google::Apis::DiscoveryengineV1::GoogleTypeDateTime::Representation
      
          hash :params, as: 'params'
          property :private_connectivity_project_id, as: 'privateConnectivityProjectId'
          property :realtime_state, as: 'realtimeState'
          property :realtime_sync_config, as: 'realtimeSyncConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDataConnectorRealtimeSyncConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDataConnectorRealtimeSyncConfig::Representation
      
          property :refresh_interval, as: 'refreshInterval'
          collection :remove_param_keys, as: 'removeParamKeys'
          property :state, as: 'state'
          collection :static_ip_addresses, as: 'staticIpAddresses'
          property :static_ip_enabled, as: 'staticIpEnabled'
          property :sync_mode, as: 'syncMode'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataConnectorEndUserConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :additional_params, as: 'additionalParams'
          hash :auth_params, as: 'authParams'
          property :json_auth_params, as: 'jsonAuthParams'
          property :tenant, as: 'tenant', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaTenant, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaTenant::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataConnectorFederatedConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :additional_params, as: 'additionalParams'
          hash :auth_params, as: 'authParams'
          property :json_auth_params, as: 'jsonAuthParams'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataConnectorRealtimeSyncConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :realtime_sync_secret, as: 'realtimeSyncSecret'
          property :streaming_error, as: 'streamingError', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDataConnectorRealtimeSyncConfigStreamingError, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDataConnectorRealtimeSyncConfigStreamingError::Representation
      
          property :webhook_uri, as: 'webhookUri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataConnectorRealtimeSyncConfigStreamingError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
          property :streaming_error_reason, as: 'streamingErrorReason'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataConnectorSourceEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_store, as: 'dataStore'
          property :entity_name, as: 'entityName'
          property :healthcare_fhir_config, as: 'healthcareFhirConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaHealthcareFhirConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaHealthcareFhirConfig::Representation
      
          property :json_params, as: 'jsonParams'
          hash :key_property_mappings, as: 'keyPropertyMappings'
          hash :params, as: 'params'
          property :starting_schema, as: 'startingSchema', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSchema, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSchema::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataStore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acl_enabled, as: 'aclEnabled'
          property :advanced_site_search_config, as: 'advancedSiteSearchConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAdvancedSiteSearchConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAdvancedSiteSearchConfig::Representation
      
          property :billing_estimation, as: 'billingEstimation', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDataStoreBillingEstimation, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDataStoreBillingEstimation::Representation
      
          property :cmek_config, as: 'cmekConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaCmekConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaCmekConfig::Representation
      
          property :configurable_billing_approach, as: 'configurableBillingApproach'
          property :configurable_billing_approach_update_time, as: 'configurableBillingApproachUpdateTime'
          property :content_config, as: 'contentConfig'
          property :create_time, as: 'createTime'
          property :default_schema_id, as: 'defaultSchemaId'
          property :display_name, as: 'displayName'
          property :document_processing_config, as: 'documentProcessingConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig::Representation
      
          property :healthcare_fhir_config, as: 'healthcareFhirConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaHealthcareFhirConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaHealthcareFhirConfig::Representation
      
          property :identity_mapping_store, as: 'identityMappingStore'
          property :idp_config, as: 'idpConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaIdpConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaIdpConfig::Representation
      
          property :industry_vertical, as: 'industryVertical'
          property :is_infobot_faq_data_store, as: 'isInfobotFaqDataStore'
          property :kms_key_name, as: 'kmsKeyName'
          property :language_info, as: 'languageInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaLanguageInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaLanguageInfo::Representation
      
          property :name, as: 'name'
          property :natural_language_query_understanding_config, as: 'naturalLanguageQueryUnderstandingConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaNaturalLanguageQueryUnderstandingConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaNaturalLanguageQueryUnderstandingConfig::Representation
      
          property :serving_config_data_store, as: 'servingConfigDataStore', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDataStoreServingConfigDataStore, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDataStoreServingConfigDataStore::Representation
      
          collection :solution_types, as: 'solutionTypes'
          property :starting_schema, as: 'startingSchema', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSchema, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSchema::Representation
      
          property :workspace_config, as: 'workspaceConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaWorkspaceConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaWorkspaceConfig::Representation
      
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
          property :auto_refresh_crawl_error_rate, as: 'autoRefreshCrawlErrorRate', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries::Representation
      
          property :auto_refresh_crawl_rate, as: 'autoRefreshCrawlRate', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries::Representation
      
          property :user_triggered_crawl_error_rate, as: 'userTriggeredCrawlErrorRate', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries::Representation
      
          property :user_triggered_crawl_rate, as: 'userTriggeredCrawlRate', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteAgentMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteCmekConfigMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
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
      
      class GoogleCloudDiscoveryengineV1alphaDeletePatientFiltersRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_store, as: 'dataStore'
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
      
      class GoogleCloudDiscoveryengineV1alphaDeleteUserStoreMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDestinationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :destinations, as: 'destinations', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDestinationConfigDestination, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDestinationConfigDestination::Representation
      
          property :json_params, as: 'jsonParams'
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
          property :enable_get_processed_document, as: 'enableGetProcessedDocument'
          property :enable_image_annotation, as: 'enableImageAnnotation'
          property :enable_llm_layout_parsing, as: 'enableLlmLayoutParsing'
          property :enable_table_annotation, as: 'enableTableAnnotation'
          collection :exclude_html_classes, as: 'excludeHtmlClasses'
          collection :exclude_html_elements, as: 'excludeHtmlElements'
          collection :exclude_html_ids, as: 'excludeHtmlIds'
          collection :structured_content_types, as: 'structuredContentTypes'
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
          property :app_type, as: 'appType'
          property :chat_engine_config, as: 'chatEngineConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfig::Representation
      
          property :chat_engine_metadata, as: 'chatEngineMetadata', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEngineChatEngineMetadata, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEngineChatEngineMetadata::Representation
      
          property :cmek_config, as: 'cmekConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaCmekConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaCmekConfig::Representation
      
          property :common_config, as: 'commonConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEngineCommonConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEngineCommonConfig::Representation
      
          property :configurable_billing_approach, as: 'configurableBillingApproach'
          property :create_time, as: 'createTime'
          collection :data_store_ids, as: 'dataStoreIds'
          property :disable_analytics, as: 'disableAnalytics'
          property :display_name, as: 'displayName'
          hash :features, as: 'features'
          property :industry_vertical, as: 'industryVertical'
          property :knowledge_graph_config, as: 'knowledgeGraphConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEngineKnowledgeGraphConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEngineKnowledgeGraphConfig::Representation
      
          property :media_recommendation_engine_config, as: 'mediaRecommendationEngineConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig::Representation
      
          hash :model_configs, as: 'modelConfigs'
          property :name, as: 'name'
          property :observability_config, as: 'observabilityConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaObservabilityConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaObservabilityConfig::Representation
      
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
      
          property :allow_cross_region, as: 'allowCrossRegion'
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
      
      class GoogleCloudDiscoveryengineV1alphaEngineKnowledgeGraphConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cloud_knowledge_graph_types, as: 'cloudKnowledgeGraphTypes'
          property :enable_cloud_knowledge_graph, as: 'enableCloudKnowledgeGraph'
          property :enable_private_knowledge_graph, as: 'enablePrivateKnowledgeGraph'
          property :feature_config, as: 'featureConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEngineKnowledgeGraphConfigFeatureConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEngineKnowledgeGraphConfigFeatureConfig::Representation
      
          collection :private_knowledge_graph_types, as: 'privateKnowledgeGraphTypes'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineKnowledgeGraphConfigFeatureConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_private_kg_auto_complete, as: 'disablePrivateKgAutoComplete'
          property :disable_private_kg_enrichment, as: 'disablePrivateKgEnrichment'
          property :disable_private_kg_query_ui_chips, as: 'disablePrivateKgQueryUiChips'
          property :disable_private_kg_query_understanding, as: 'disablePrivateKgQueryUnderstanding'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :engine_features_config, as: 'engineFeaturesConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigEngineFeaturesConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigEngineFeaturesConfig::Representation
      
          property :optimization_objective, as: 'optimizationObjective'
          property :optimization_objective_config, as: 'optimizationObjectiveConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig::Representation
      
          property :training_state, as: 'trainingState'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigEngineFeaturesConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :most_popular_config, as: 'mostPopularConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigMostPopularFeatureConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigMostPopularFeatureConfig::Representation
      
          property :recommended_for_you_config, as: 'recommendedForYouConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigRecommendedForYouFeatureConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigRecommendedForYouFeatureConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigMostPopularFeatureConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :time_window_days, :numeric_string => true, as: 'timeWindowDays'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :target_field, as: 'targetField'
          property :target_field_value_float, as: 'targetFieldValueFloat'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigRecommendedForYouFeatureConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context_event_type, as: 'contextEventType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineRecommendationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_state, as: 'dataState'
          property :last_train_time, as: 'lastTrainTime'
          property :last_tune_time, as: 'lastTuneTime'
          property :serving_state, as: 'servingState'
          property :tuning_operation, as: 'tuningOperation'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :required_subscription_tier, as: 'requiredSubscriptionTier'
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
          property :error, as: 'error', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
          property :evaluation_spec, as: 'evaluationSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEvaluationEvaluationSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEvaluationEvaluationSpec::Representation
      
          property :name, as: 'name'
          property :quality_metrics, as: 'qualityMetrics', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaQualityMetrics, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaQualityMetrics::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEvaluationEvaluationSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query_set_spec, as: 'querySetSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEvaluationEvaluationSpecQuerySetSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaEvaluationEvaluationSpecQuerySetSpec::Representation
      
          property :search_request, as: 'searchRequest', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequest, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequest::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEvaluationEvaluationSpecQuerySetSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sample_query_set, as: 'sampleQuerySet'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaExportMetricsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaExportMetricsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
      
      class GoogleCloudDiscoveryengineV1alphaHealthcareFhirConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_configurable_schema, as: 'enableConfigurableSchema'
          property :enable_static_indexing_for_batch_ingestion, as: 'enableStaticIndexingForBatchIngestion'
          collection :initial_filter_groups, as: 'initialFilterGroups'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaIdentityMappingEntryOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :total_count, :numeric_string => true, as: 'totalCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaIdentityScheduleConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_sync_time, as: 'nextSyncTime', class: Google::Apis::DiscoveryengineV1::GoogleTypeDateTime, decorator: Google::Apis::DiscoveryengineV1::GoogleTypeDateTime::Representation
      
          property :refresh_interval, as: 'refreshInterval'
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
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1alphaImportIdentityMappingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
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
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1alphaLicenseConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alert_policy_resource_config, as: 'alertPolicyResourceConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAlertPolicyResourceConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAlertPolicyResourceConfig::Representation
      
          property :auto_renew, as: 'autoRenew'
          property :end_date, as: 'endDate', class: Google::Apis::DiscoveryengineV1::GoogleTypeDate, decorator: Google::Apis::DiscoveryengineV1::GoogleTypeDate::Representation
      
          property :free_trial, as: 'freeTrial'
          property :gemini_bundle, as: 'geminiBundle'
          property :license_count, :numeric_string => true, as: 'licenseCount'
          property :name, as: 'name'
          property :start_date, as: 'startDate', class: Google::Apis::DiscoveryengineV1::GoogleTypeDate, decorator: Google::Apis::DiscoveryengineV1::GoogleTypeDate::Representation
      
          property :state, as: 'state'
          property :subscription_term, as: 'subscriptionTerm'
          property :subscription_tier, as: 'subscriptionTier'
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
          collection :sessions, as: 'sessions', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSession, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSession::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaNaturalLanguageQueryUnderstandingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaObservabilityConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :observability_enabled, as: 'observabilityEnabled'
          property :sensitive_logging_enabled, as: 'sensitiveLoggingEnabled'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaObtainCrawlRateResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dedicated_crawl_rate_time_series, as: 'dedicatedCrawlRateTimeSeries', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDedicatedCrawlRateTimeSeries, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaDedicatedCrawlRateTimeSeries::Representation
      
          property :error, as: 'error', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
          property :organic_crawl_rate_time_series, as: 'organicCrawlRateTimeSeries', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaOrganicCrawlRateTimeSeries, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaOrganicCrawlRateTimeSeries::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaOrganicCrawlRateTimeSeries
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :google_organic_crawl_rate, as: 'googleOrganicCrawlRate', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries::Representation
      
          property :vertex_ai_organic_crawl_rate, as: 'vertexAiOrganicCrawlRate', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaPatientFilterOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :filters_added_count, :numeric_string => true, as: 'filtersAddedCount'
          property :filters_removed_count, :numeric_string => true, as: 'filtersRemovedCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaProject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :configurable_billing_status, as: 'configurableBillingStatus', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaProjectConfigurableBillingStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaProjectConfigurableBillingStatus::Representation
      
          property :create_time, as: 'createTime'
          property :customer_provided_config, as: 'customerProvidedConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaProjectCustomerProvidedConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaProjectCustomerProvidedConfig::Representation
      
          property :name, as: 'name'
          property :provision_completion_time, as: 'provisionCompletionTime'
          hash :service_terms_map, as: 'serviceTermsMap', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaProjectServiceTerms, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaProjectServiceTerms::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaProjectConfigurableBillingStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :effective_indexing_core_threshold, :numeric_string => true, as: 'effectiveIndexingCoreThreshold'
          property :effective_search_qpm_threshold, :numeric_string => true, as: 'effectiveSearchQpmThreshold'
          property :indexing_core_threshold_next_update_time, as: 'indexingCoreThresholdNextUpdateTime'
          property :search_qpm_threshold_next_update_time, as: 'searchQpmThresholdNextUpdateTime'
          property :start_time, as: 'startTime'
          property :terminate_time, as: 'terminateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaProjectCustomerProvidedConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :notebooklm_config, as: 'notebooklmConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaProjectCustomerProvidedConfigNotebooklmConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaProjectCustomerProvidedConfigNotebooklmConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaProjectCustomerProvidedConfigNotebooklmConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model_armor_config, as: 'modelArmorConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaProjectCustomerProvidedConfigNotebooklmConfigModelArmorConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaProjectCustomerProvidedConfigNotebooklmConfigModelArmorConfig::Representation
      
          property :observability_config, as: 'observabilityConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaObservabilityConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaObservabilityConfig::Representation
      
          property :opt_out_notebook_sharing, as: 'optOutNotebookSharing'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaProjectCustomerProvidedConfigNotebooklmConfigModelArmorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :response_template, as: 'responseTemplate'
          property :user_prompt_template, as: 'userPromptTemplate'
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
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1alphaQualityMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :doc_ndcg, as: 'docNdcg', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics::Representation
      
          property :doc_precision, as: 'docPrecision', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics::Representation
      
          property :doc_recall, as: 'docRecall', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics::Representation
      
          property :page_ndcg, as: 'pageNdcg', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics::Representation
      
          property :page_recall, as: 'pageRecall', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics::Representation
      
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
          collection :noindex_uris, as: 'noindexUris'
          property :noindex_uris_count, as: 'noindexUrisCount'
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
          property :error, as: 'error', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRemovePatientFilterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_store, as: 'dataStore'
          collection :filter_groups, as: 'filterGroups'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaReplacePatientFilterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_store, as: 'dataStore'
          collection :filter_groups, as: 'filterGroups'
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
          collection :field_configs, as: 'fieldConfigs', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaFieldConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaFieldConfig::Representation
      
          property :json_schema, as: 'jsonSchema'
          property :name, as: 'name'
          hash :struct_schema, as: 'structSchema'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchLinkPromotion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :document, as: 'document'
          property :enabled, as: 'enabled'
          property :image_uri, as: 'imageUri'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost_spec, as: 'boostSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpec::Representation
      
          property :branch, as: 'branch'
          property :canonical_filter, as: 'canonicalFilter'
          property :content_search_spec, as: 'contentSearchSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpec::Representation
      
          collection :crowding_specs, as: 'crowdingSpecs', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestCrowdingSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestCrowdingSpec::Representation
      
          property :custom_fine_tuning_spec, as: 'customFineTuningSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaCustomFineTuningSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaCustomFineTuningSpec::Representation
      
          collection :data_store_specs, as: 'dataStoreSpecs', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestDataStoreSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestDataStoreSpec::Representation
      
          property :display_spec, as: 'displaySpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestDisplaySpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestDisplaySpec::Representation
      
          property :embedding_spec, as: 'embeddingSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestEmbeddingSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestEmbeddingSpec::Representation
      
          collection :facet_specs, as: 'facetSpecs', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestFacetSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestFacetSpec::Representation
      
          property :filter, as: 'filter'
          property :image_query, as: 'imageQuery', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestImageQuery, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestImageQuery::Representation
      
          property :language_code, as: 'languageCode'
          property :natural_language_query_understanding_spec, as: 'naturalLanguageQueryUnderstandingSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestNaturalLanguageQueryUnderstandingSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestNaturalLanguageQueryUnderstandingSpec::Representation
      
          property :offset, as: 'offset'
          property :one_box_page_size, as: 'oneBoxPageSize'
          property :order_by, as: 'orderBy'
          collection :page_categories, as: 'pageCategories'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          hash :params, as: 'params'
          property :personalization_spec, as: 'personalizationSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestPersonalizationSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestPersonalizationSpec::Representation
      
          property :query, as: 'query'
          property :query_expansion_spec, as: 'queryExpansionSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestQueryExpansionSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestQueryExpansionSpec::Representation
      
          property :ranking_expression, as: 'rankingExpression'
          property :ranking_expression_backend, as: 'rankingExpressionBackend'
          property :region_code, as: 'regionCode'
          property :relevance_filter_spec, as: 'relevanceFilterSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestRelevanceFilterSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestRelevanceFilterSpec::Representation
      
          property :relevance_score_spec, as: 'relevanceScoreSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestRelevanceScoreSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestRelevanceScoreSpec::Representation
      
          property :relevance_threshold, as: 'relevanceThreshold'
          property :safe_search, as: 'safeSearch'
          property :search_addon_spec, as: 'searchAddonSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestSearchAddonSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestSearchAddonSpec::Representation
      
          property :search_as_you_type_spec, as: 'searchAsYouTypeSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestSearchAsYouTypeSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestSearchAsYouTypeSpec::Representation
      
          property :serving_config, as: 'servingConfig'
          property :session, as: 'session'
          property :session_spec, as: 'sessionSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestSessionSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestSessionSpec::Representation
      
          property :spell_correction_spec, as: 'spellCorrectionSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestSpellCorrectionSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestSpellCorrectionSpec::Representation
      
          property :use_latest_data, as: 'useLatestData'
          property :user_info, as: 'userInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaUserInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaUserInfo::Representation
      
          hash :user_labels, as: 'userLabels'
          property :user_pseudo_id, as: 'userPseudoId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :condition_boost_specs, as: 'conditionBoostSpecs', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost, as: 'boost'
          property :boost_control_spec, as: 'boostControlSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpecBoostControlSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpecBoostControlSpec::Representation
      
          property :condition, as: 'condition'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpecBoostControlSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_type, as: 'attributeType'
          collection :control_points, as: 'controlPoints', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpecBoostControlSpecControlPoint, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpecBoostControlSpecControlPoint::Representation
      
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
          property :chunk_spec, as: 'chunkSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecChunkSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecChunkSpec::Representation
      
          property :extractive_content_spec, as: 'extractiveContentSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecExtractiveContentSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecExtractiveContentSpec::Representation
      
          property :search_result_mode, as: 'searchResultMode'
          property :snippet_spec, as: 'snippetSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSnippetSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSnippetSpec::Representation
      
          property :summary_spec, as: 'summarySpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpec::Representation
      
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
          property :model_prompt_spec, as: 'modelPromptSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecModelPromptSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecModelPromptSpec::Representation
      
          property :model_spec, as: 'modelSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecModelSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecModelSpec::Representation
      
          property :multimodal_spec, as: 'multimodalSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecMultiModalSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecMultiModalSpec::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecMultiModalSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_source, as: 'imageSource'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestCrowdingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field, as: 'field'
          property :max_count, as: 'maxCount'
          property :mode, as: 'mode'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestDataStoreSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost_spec, as: 'boostSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpec::Representation
      
          property :custom_search_operators, as: 'customSearchOperators'
          property :data_store, as: 'dataStore'
          property :filter, as: 'filter'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestDisplaySpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :match_highlighting_condition, as: 'matchHighlightingCondition'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestEmbeddingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :embedding_vectors, as: 'embeddingVectors', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestEmbeddingSpecEmbeddingVector, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestEmbeddingSpecEmbeddingVector::Representation
      
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
          property :facet_key, as: 'facetKey', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestFacetSpecFacetKey, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestFacetSpecFacetKey::Representation
      
          property :limit, as: 'limit'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestFacetSpecFacetKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :case_insensitive, as: 'caseInsensitive'
          collection :contains, as: 'contains'
          collection :intervals, as: 'intervals', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaInterval, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaInterval::Representation
      
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
          collection :allowed_field_names, as: 'allowedFieldNames'
          property :extracted_filter_behavior, as: 'extractedFilterBehavior'
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
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestRelevanceFilterSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :keyword_search_threshold, as: 'keywordSearchThreshold', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestRelevanceFilterSpecRelevanceThresholdSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestRelevanceFilterSpecRelevanceThresholdSpec::Representation
      
          property :semantic_search_threshold, as: 'semanticSearchThreshold', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestRelevanceFilterSpecRelevanceThresholdSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSearchRequestRelevanceFilterSpecRelevanceThresholdSpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestRelevanceFilterSpecRelevanceThresholdSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :relevance_threshold, as: 'relevanceThreshold'
          property :semantic_relevance_threshold, as: 'semanticRelevanceThreshold'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestRelevanceScoreSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :return_relevance_score, as: 'returnRelevanceScore'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestSearchAddonSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_generative_answer_add_on, as: 'disableGenerativeAnswerAddOn'
          property :disable_kpi_personalization_add_on, as: 'disableKpiPersonalizationAddOn'
          property :disable_semantic_add_on, as: 'disableSemanticAddOn'
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
          collection :labels, as: 'labels'
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
          property :detailed_answer, as: 'detailedAnswer', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswer, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAnswer::Representation
      
          property :detailed_assist_answer, as: 'detailedAssistAnswer', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAssistAnswer, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaAssistAnswer::Representation
      
          property :query, as: 'query', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaQuery, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaQuery::Representation
      
          hash :query_config, as: 'queryConfig'
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
          property :error, as: 'error', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1alphaTenant
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :id, as: 'id'
          property :uri, as: 'uri'
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
          property :session, as: 'session', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSession, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1alphaSession::Representation
      
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
          property :time_zone, as: 'timeZone'
          property :user_agent, as: 'userAgent'
          property :user_id, as: 'userId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaUserLicense
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :last_login_time, as: 'lastLoginTime'
          property :license_assignment_state, as: 'licenseAssignmentState'
          property :license_config, as: 'licenseConfig'
          property :update_time, as: 'updateTime'
          property :user_principal, as: 'userPrincipal'
          property :user_profile, as: 'userProfile'
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
      
      class GoogleCloudDiscoveryengineV1betaAclConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :idp_config, as: 'idpConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaIdpConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaIdpConfig::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAdvancedSiteSearchConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_automatic_refresh, as: 'disableAutomaticRefresh'
          property :disable_initial_index, as: 'disableInitialIndex'
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
      
      class GoogleCloudDiscoveryengineV1betaBatchUpdateUserLicensesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaBatchUpdateUserLicensesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
          collection :user_licenses, as: 'userLicenses', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaUserLicense, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaUserLicense::Representation
      
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
          property :notebooklm_state, as: 'notebooklmState'
          collection :single_region_keys, as: 'singleRegionKeys', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSingleRegionKey, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSingleRegionKey::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :active_time_range, as: 'activeTimeRange', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaConditionTimeRange, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaConditionTimeRange::Representation
      
          property :query_regex, as: 'queryRegex'
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
          property :promote_action, as: 'promoteAction', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaControlPromoteAction, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaControlPromoteAction::Representation
      
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
          property :fixed_boost, as: 'fixedBoost'
          property :interpolation_boost_spec, as: 'interpolationBoostSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaControlBoostActionInterpolationBoostSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaControlBoostActionInterpolationBoostSpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaControlBoostActionInterpolationBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_type, as: 'attributeType'
          collection :control_points, as: 'controlPoints', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaControlBoostActionInterpolationBoostSpecControlPoint, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaControlBoostActionInterpolationBoostSpecControlPoint::Representation
      
          property :field_name, as: 'fieldName'
          property :interpolation_type, as: 'interpolationType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaControlBoostActionInterpolationBoostSpecControlPoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_value, as: 'attributeValue'
          property :boost_amount, as: 'boostAmount'
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
          property :search_link_promotion, as: 'searchLinkPromotion', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchLinkPromotion, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchLinkPromotion::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :qps_time_series, as: 'qpsTimeSeries', class: Google::Apis::DiscoveryengineV1::GoogleMonitoringV3TimeSeries, decorator: Google::Apis::DiscoveryengineV1::GoogleMonitoringV3TimeSeries::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1betaDataStore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acl_enabled, as: 'aclEnabled'
          property :advanced_site_search_config, as: 'advancedSiteSearchConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaAdvancedSiteSearchConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaAdvancedSiteSearchConfig::Representation
      
          property :billing_estimation, as: 'billingEstimation', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaDataStoreBillingEstimation, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaDataStoreBillingEstimation::Representation
      
          property :cmek_config, as: 'cmekConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaCmekConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaCmekConfig::Representation
      
          property :configurable_billing_approach, as: 'configurableBillingApproach'
          property :configurable_billing_approach_update_time, as: 'configurableBillingApproachUpdateTime'
          property :content_config, as: 'contentConfig'
          property :create_time, as: 'createTime'
          property :default_schema_id, as: 'defaultSchemaId'
          property :display_name, as: 'displayName'
          property :document_processing_config, as: 'documentProcessingConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfig::Representation
      
          property :healthcare_fhir_config, as: 'healthcareFhirConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaHealthcareFhirConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaHealthcareFhirConfig::Representation
      
          property :identity_mapping_store, as: 'identityMappingStore'
          property :industry_vertical, as: 'industryVertical'
          property :is_infobot_faq_data_store, as: 'isInfobotFaqDataStore'
          property :kms_key_name, as: 'kmsKeyName'
          property :language_info, as: 'languageInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaLanguageInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaLanguageInfo::Representation
      
          property :name, as: 'name'
          property :natural_language_query_understanding_config, as: 'naturalLanguageQueryUnderstandingConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaNaturalLanguageQueryUnderstandingConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaNaturalLanguageQueryUnderstandingConfig::Representation
      
          property :serving_config_data_store, as: 'servingConfigDataStore', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaDataStoreServingConfigDataStore, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaDataStoreServingConfigDataStore::Representation
      
          collection :solution_types, as: 'solutionTypes'
          property :starting_schema, as: 'startingSchema', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSchema, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSchema::Representation
      
          property :workspace_config, as: 'workspaceConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaWorkspaceConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaWorkspaceConfig::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1betaDedicatedCrawlRateTimeSeries
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_refresh_crawl_error_rate, as: 'autoRefreshCrawlErrorRate', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries::Representation
      
          property :auto_refresh_crawl_rate, as: 'autoRefreshCrawlRate', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries::Representation
      
          property :user_triggered_crawl_error_rate, as: 'userTriggeredCrawlErrorRate', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries::Representation
      
          property :user_triggered_crawl_rate, as: 'userTriggeredCrawlRate', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries::Representation
      
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
          property :enable_get_processed_document, as: 'enableGetProcessedDocument'
          property :enable_image_annotation, as: 'enableImageAnnotation'
          property :enable_llm_layout_parsing, as: 'enableLlmLayoutParsing'
          property :enable_table_annotation, as: 'enableTableAnnotation'
          collection :exclude_html_classes, as: 'excludeHtmlClasses'
          collection :exclude_html_elements, as: 'excludeHtmlElements'
          collection :exclude_html_ids, as: 'excludeHtmlIds'
          collection :structured_content_types, as: 'structuredContentTypes'
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
          property :app_type, as: 'appType'
          property :chat_engine_config, as: 'chatEngineConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaEngineChatEngineConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaEngineChatEngineConfig::Representation
      
          property :chat_engine_metadata, as: 'chatEngineMetadata', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaEngineChatEngineMetadata, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaEngineChatEngineMetadata::Representation
      
          property :cmek_config, as: 'cmekConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaCmekConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaCmekConfig::Representation
      
          property :common_config, as: 'commonConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaEngineCommonConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaEngineCommonConfig::Representation
      
          property :configurable_billing_approach, as: 'configurableBillingApproach'
          property :create_time, as: 'createTime'
          collection :data_store_ids, as: 'dataStoreIds'
          property :disable_analytics, as: 'disableAnalytics'
          property :display_name, as: 'displayName'
          hash :features, as: 'features'
          property :industry_vertical, as: 'industryVertical'
          property :knowledge_graph_config, as: 'knowledgeGraphConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaEngineKnowledgeGraphConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaEngineKnowledgeGraphConfig::Representation
      
          property :media_recommendation_engine_config, as: 'mediaRecommendationEngineConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfig::Representation
      
          hash :model_configs, as: 'modelConfigs'
          property :name, as: 'name'
          property :observability_config, as: 'observabilityConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaObservabilityConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaObservabilityConfig::Representation
      
          property :search_engine_config, as: 'searchEngineConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaEngineSearchEngineConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaEngineSearchEngineConfig::Representation
      
          property :solution_type, as: 'solutionType'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineChatEngineConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_creation_config, as: 'agentCreationConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaEngineChatEngineConfigAgentCreationConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaEngineChatEngineConfigAgentCreationConfig::Representation
      
          property :allow_cross_region, as: 'allowCrossRegion'
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
      
      class GoogleCloudDiscoveryengineV1betaEngineKnowledgeGraphConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cloud_knowledge_graph_types, as: 'cloudKnowledgeGraphTypes'
          property :enable_cloud_knowledge_graph, as: 'enableCloudKnowledgeGraph'
          property :enable_private_knowledge_graph, as: 'enablePrivateKnowledgeGraph'
          property :feature_config, as: 'featureConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaEngineKnowledgeGraphConfigFeatureConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaEngineKnowledgeGraphConfigFeatureConfig::Representation
      
          collection :private_knowledge_graph_types, as: 'privateKnowledgeGraphTypes'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineKnowledgeGraphConfigFeatureConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_private_kg_auto_complete, as: 'disablePrivateKgAutoComplete'
          property :disable_private_kg_enrichment, as: 'disablePrivateKgEnrichment'
          property :disable_private_kg_query_ui_chips, as: 'disablePrivateKgQueryUiChips'
          property :disable_private_kg_query_understanding, as: 'disablePrivateKgQueryUnderstanding'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :engine_features_config, as: 'engineFeaturesConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigEngineFeaturesConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigEngineFeaturesConfig::Representation
      
          property :optimization_objective, as: 'optimizationObjective'
          property :optimization_objective_config, as: 'optimizationObjectiveConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig::Representation
      
          property :training_state, as: 'trainingState'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigEngineFeaturesConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :most_popular_config, as: 'mostPopularConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigMostPopularFeatureConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigMostPopularFeatureConfig::Representation
      
          property :recommended_for_you_config, as: 'recommendedForYouConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigRecommendedForYouFeatureConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigRecommendedForYouFeatureConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigMostPopularFeatureConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :time_window_days, :numeric_string => true, as: 'timeWindowDays'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :target_field, as: 'targetField'
          property :target_field_value_float, as: 'targetFieldValueFloat'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigRecommendedForYouFeatureConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context_event_type, as: 'contextEventType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineSearchEngineConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :required_subscription_tier, as: 'requiredSubscriptionTier'
          collection :search_add_ons, as: 'searchAddOns'
          property :search_tier, as: 'searchTier'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEvaluation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :error, as: 'error', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
          property :evaluation_spec, as: 'evaluationSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaEvaluationEvaluationSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaEvaluationEvaluationSpec::Representation
      
          property :name, as: 'name'
          property :quality_metrics, as: 'qualityMetrics', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaQualityMetrics, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaQualityMetrics::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEvaluationEvaluationSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query_set_spec, as: 'querySetSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaEvaluationEvaluationSpecQuerySetSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaEvaluationEvaluationSpecQuerySetSpec::Representation
      
          property :search_request, as: 'searchRequest', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequest, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequest::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEvaluationEvaluationSpecQuerySetSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sample_query_set, as: 'sampleQuerySet'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaHealthcareFhirConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_configurable_schema, as: 'enableConfigurableSchema'
          property :enable_static_indexing_for_batch_ingestion, as: 'enableStaticIndexingForBatchIngestion'
          collection :initial_filter_groups, as: 'initialFilterGroups'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaIdentityMappingEntryOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :total_count, :numeric_string => true, as: 'totalCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaIdpConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :external_idp_config, as: 'externalIdpConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaIdpConfigExternalIdpConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaIdpConfigExternalIdpConfig::Representation
      
          property :idp_type, as: 'idpType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaIdpConfigExternalIdpConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :workforce_pool_name, as: 'workforcePoolName'
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
      
      class GoogleCloudDiscoveryengineV1betaImportCompletionSuggestionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1betaImportIdentityMappingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1betaImportSampleQueriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1betaLicenseConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_renew, as: 'autoRenew'
          property :end_date, as: 'endDate', class: Google::Apis::DiscoveryengineV1::GoogleTypeDate, decorator: Google::Apis::DiscoveryengineV1::GoogleTypeDate::Representation
      
          property :free_trial, as: 'freeTrial'
          property :gemini_bundle, as: 'geminiBundle'
          property :license_count, :numeric_string => true, as: 'licenseCount'
          property :name, as: 'name'
          property :start_date, as: 'startDate', class: Google::Apis::DiscoveryengineV1::GoogleTypeDate, decorator: Google::Apis::DiscoveryengineV1::GoogleTypeDate::Representation
      
          property :state, as: 'state'
          property :subscription_term, as: 'subscriptionTerm'
          property :subscription_tier, as: 'subscriptionTier'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaNaturalLanguageQueryUnderstandingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaObservabilityConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :observability_enabled, as: 'observabilityEnabled'
          property :sensitive_logging_enabled, as: 'sensitiveLoggingEnabled'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaObtainCrawlRateResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dedicated_crawl_rate_time_series, as: 'dedicatedCrawlRateTimeSeries', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaDedicatedCrawlRateTimeSeries, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaDedicatedCrawlRateTimeSeries::Representation
      
          property :error, as: 'error', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
          property :organic_crawl_rate_time_series, as: 'organicCrawlRateTimeSeries', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaOrganicCrawlRateTimeSeries, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaOrganicCrawlRateTimeSeries::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaOrganicCrawlRateTimeSeries
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :google_organic_crawl_rate, as: 'googleOrganicCrawlRate', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries::Representation
      
          property :vertex_ai_organic_crawl_rate, as: 'vertexAiOrganicCrawlRate', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaProject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :configurable_billing_status, as: 'configurableBillingStatus', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaProjectConfigurableBillingStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaProjectConfigurableBillingStatus::Representation
      
          property :create_time, as: 'createTime'
          property :customer_provided_config, as: 'customerProvidedConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaProjectCustomerProvidedConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaProjectCustomerProvidedConfig::Representation
      
          property :name, as: 'name'
          property :provision_completion_time, as: 'provisionCompletionTime'
          hash :service_terms_map, as: 'serviceTermsMap', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaProjectServiceTerms, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaProjectServiceTerms::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaProjectConfigurableBillingStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :effective_indexing_core_threshold, :numeric_string => true, as: 'effectiveIndexingCoreThreshold'
          property :effective_search_qpm_threshold, :numeric_string => true, as: 'effectiveSearchQpmThreshold'
          property :indexing_core_threshold_next_update_time, as: 'indexingCoreThresholdNextUpdateTime'
          property :search_qpm_threshold_next_update_time, as: 'searchQpmThresholdNextUpdateTime'
          property :start_time, as: 'startTime'
          property :terminate_time, as: 'terminateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaProjectCustomerProvidedConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :notebooklm_config, as: 'notebooklmConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaProjectCustomerProvidedConfigNotebooklmConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaProjectCustomerProvidedConfigNotebooklmConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaProjectCustomerProvidedConfigNotebooklmConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model_armor_config, as: 'modelArmorConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaProjectCustomerProvidedConfigNotebooklmConfigModelArmorConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaProjectCustomerProvidedConfigNotebooklmConfigModelArmorConfig::Representation
      
          property :observability_config, as: 'observabilityConfig', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaObservabilityConfig, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaObservabilityConfig::Representation
      
          property :opt_out_notebook_sharing, as: 'optOutNotebookSharing'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaProjectCustomerProvidedConfigNotebooklmConfigModelArmorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :response_template, as: 'responseTemplate'
          property :user_prompt_template, as: 'userPromptTemplate'
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
      
      class GoogleCloudDiscoveryengineV1betaQualityMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :doc_ndcg, as: 'docNdcg', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics::Representation
      
          property :doc_precision, as: 'docPrecision', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics::Representation
      
          property :doc_recall, as: 'docRecall', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics::Representation
      
          property :page_ndcg, as: 'pageNdcg', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics::Representation
      
          property :page_recall, as: 'pageRecall', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1betaRemoveDedicatedCrawlRateMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaRemoveDedicatedCrawlRateResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
          property :state, as: 'state'
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
      
      class GoogleCloudDiscoveryengineV1betaSearchLinkPromotion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :document, as: 'document'
          property :enabled, as: 'enabled'
          property :image_uri, as: 'imageUri'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost_spec, as: 'boostSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec::Representation
      
          property :branch, as: 'branch'
          property :canonical_filter, as: 'canonicalFilter'
          property :content_search_spec, as: 'contentSearchSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpec::Representation
      
          collection :crowding_specs, as: 'crowdingSpecs', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestCrowdingSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestCrowdingSpec::Representation
      
          collection :data_store_specs, as: 'dataStoreSpecs', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestDataStoreSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestDataStoreSpec::Representation
      
          property :display_spec, as: 'displaySpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestDisplaySpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestDisplaySpec::Representation
      
          property :embedding_spec, as: 'embeddingSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpec::Representation
      
          collection :facet_specs, as: 'facetSpecs', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestFacetSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestFacetSpec::Representation
      
          property :filter, as: 'filter'
          property :image_query, as: 'imageQuery', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestImageQuery, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestImageQuery::Representation
      
          property :language_code, as: 'languageCode'
          property :natural_language_query_understanding_spec, as: 'naturalLanguageQueryUnderstandingSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestNaturalLanguageQueryUnderstandingSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestNaturalLanguageQueryUnderstandingSpec::Representation
      
          property :offset, as: 'offset'
          property :one_box_page_size, as: 'oneBoxPageSize'
          property :order_by, as: 'orderBy'
          collection :page_categories, as: 'pageCategories'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          hash :params, as: 'params'
          property :personalization_spec, as: 'personalizationSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestPersonalizationSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestPersonalizationSpec::Representation
      
          property :query, as: 'query'
          property :query_expansion_spec, as: 'queryExpansionSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestQueryExpansionSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestQueryExpansionSpec::Representation
      
          property :ranking_expression, as: 'rankingExpression'
          property :ranking_expression_backend, as: 'rankingExpressionBackend'
          property :region_code, as: 'regionCode'
          property :relevance_filter_spec, as: 'relevanceFilterSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestRelevanceFilterSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestRelevanceFilterSpec::Representation
      
          property :relevance_score_spec, as: 'relevanceScoreSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestRelevanceScoreSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestRelevanceScoreSpec::Representation
      
          property :relevance_threshold, as: 'relevanceThreshold'
          property :safe_search, as: 'safeSearch'
          property :search_addon_spec, as: 'searchAddonSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestSearchAddonSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestSearchAddonSpec::Representation
      
          property :search_as_you_type_spec, as: 'searchAsYouTypeSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestSearchAsYouTypeSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestSearchAsYouTypeSpec::Representation
      
          property :serving_config, as: 'servingConfig'
          property :session, as: 'session'
          property :session_spec, as: 'sessionSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestSessionSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestSessionSpec::Representation
      
          property :spell_correction_spec, as: 'spellCorrectionSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestSpellCorrectionSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestSpellCorrectionSpec::Representation
      
          property :user_info, as: 'userInfo', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaUserInfo, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaUserInfo::Representation
      
          hash :user_labels, as: 'userLabels'
          property :user_pseudo_id, as: 'userPseudoId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :condition_boost_specs, as: 'conditionBoostSpecs', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost, as: 'boost'
          property :boost_control_spec, as: 'boostControlSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpecBoostControlSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpecBoostControlSpec::Representation
      
          property :condition, as: 'condition'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpecBoostControlSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_type, as: 'attributeType'
          collection :control_points, as: 'controlPoints', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpecBoostControlSpecControlPoint, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpecBoostControlSpecControlPoint::Representation
      
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
          property :chunk_spec, as: 'chunkSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecChunkSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecChunkSpec::Representation
      
          property :extractive_content_spec, as: 'extractiveContentSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecExtractiveContentSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecExtractiveContentSpec::Representation
      
          property :search_result_mode, as: 'searchResultMode'
          property :snippet_spec, as: 'snippetSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSnippetSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSnippetSpec::Representation
      
          property :summary_spec, as: 'summarySpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpec::Representation
      
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
          property :model_prompt_spec, as: 'modelPromptSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecModelPromptSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecModelPromptSpec::Representation
      
          property :model_spec, as: 'modelSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecModelSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecModelSpec::Representation
      
          property :multimodal_spec, as: 'multimodalSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecMultiModalSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecMultiModalSpec::Representation
      
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
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecMultiModalSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_source, as: 'imageSource'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestCrowdingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field, as: 'field'
          property :max_count, as: 'maxCount'
          property :mode, as: 'mode'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestDataStoreSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost_spec, as: 'boostSpec', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec::Representation
      
          property :custom_search_operators, as: 'customSearchOperators'
          property :data_store, as: 'dataStore'
          property :filter, as: 'filter'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestDisplaySpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :match_highlighting_condition, as: 'matchHighlightingCondition'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :embedding_vectors, as: 'embeddingVectors', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpecEmbeddingVector, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpecEmbeddingVector::Representation
      
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
          property :facet_key, as: 'facetKey', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestFacetSpecFacetKey, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestFacetSpecFacetKey::Representation
      
          property :limit, as: 'limit'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestFacetSpecFacetKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :case_insensitive, as: 'caseInsensitive'
          collection :contains, as: 'contains'
          collection :intervals, as: 'intervals', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaInterval, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaInterval::Representation
      
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
          collection :allowed_field_names, as: 'allowedFieldNames'
          property :extracted_filter_behavior, as: 'extractedFilterBehavior'
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
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestRelevanceFilterSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :keyword_search_threshold, as: 'keywordSearchThreshold', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestRelevanceFilterSpecRelevanceThresholdSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestRelevanceFilterSpecRelevanceThresholdSpec::Representation
      
          property :semantic_search_threshold, as: 'semanticSearchThreshold', class: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestRelevanceFilterSpecRelevanceThresholdSpec, decorator: Google::Apis::DiscoveryengineV1::GoogleCloudDiscoveryengineV1betaSearchRequestRelevanceFilterSpecRelevanceThresholdSpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestRelevanceFilterSpecRelevanceThresholdSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :relevance_threshold, as: 'relevanceThreshold'
          property :semantic_relevance_threshold, as: 'semanticRelevanceThreshold'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestRelevanceScoreSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :return_relevance_score, as: 'returnRelevanceScore'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestSearchAddonSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_generative_answer_add_on, as: 'disableGenerativeAnswerAddOn'
          property :disable_kpi_personalization_add_on, as: 'disableKpiPersonalizationAddOn'
          property :disable_semantic_add_on, as: 'disableSemanticAddOn'
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
      
      class GoogleCloudDiscoveryengineV1betaSetDedicatedCrawlRateMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSetDedicatedCrawlRateResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::DiscoveryengineV1::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1::GoogleRpcStatus::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSingleRegionKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key, as: 'kmsKey'
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
      
      class GoogleCloudDiscoveryengineV1betaUserInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :time_zone, as: 'timeZone'
          property :user_agent, as: 'userAgent'
          property :user_id, as: 'userId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaUserLicense
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :last_login_time, as: 'lastLoginTime'
          property :license_assignment_state, as: 'licenseAssignmentState'
          property :license_config, as: 'licenseConfig'
          property :update_time, as: 'updateTime'
          property :user_principal, as: 'userPrincipal'
          property :user_profile, as: 'userProfile'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaUserStore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_license_config, as: 'defaultLicenseConfig'
          property :display_name, as: 'displayName'
          property :enable_expired_license_auto_update, as: 'enableExpiredLicenseAutoUpdate'
          property :enable_license_auto_register, as: 'enableLicenseAutoRegister'
          property :name, as: 'name'
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
          collection :operations, as: 'operations', class: Google::Apis::DiscoveryengineV1::GoogleLongrunningOperation, decorator: Google::Apis::DiscoveryengineV1::GoogleLongrunningOperation::Representation
      
          collection :unreachable, as: 'unreachable'
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
      
      class GoogleMonitoringV3Point
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :interval, as: 'interval', class: Google::Apis::DiscoveryengineV1::GoogleMonitoringV3TimeInterval, decorator: Google::Apis::DiscoveryengineV1::GoogleMonitoringV3TimeInterval::Representation
      
          property :value, as: 'value', class: Google::Apis::DiscoveryengineV1::GoogleMonitoringV3TypedValue, decorator: Google::Apis::DiscoveryengineV1::GoogleMonitoringV3TypedValue::Representation
      
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
          property :metadata, as: 'metadata', class: Google::Apis::DiscoveryengineV1::GoogleApiMonitoredResourceMetadata, decorator: Google::Apis::DiscoveryengineV1::GoogleApiMonitoredResourceMetadata::Representation
      
          property :metric, as: 'metric', class: Google::Apis::DiscoveryengineV1::GoogleApiMetric, decorator: Google::Apis::DiscoveryengineV1::GoogleApiMetric::Representation
      
          property :metric_kind, as: 'metricKind'
          collection :points, as: 'points', class: Google::Apis::DiscoveryengineV1::GoogleMonitoringV3Point, decorator: Google::Apis::DiscoveryengineV1::GoogleMonitoringV3Point::Representation
      
          property :resource, as: 'resource', class: Google::Apis::DiscoveryengineV1::GoogleApiMonitoredResource, decorator: Google::Apis::DiscoveryengineV1::GoogleApiMonitoredResource::Representation
      
          property :unit, as: 'unit'
          property :value_type, as: 'valueType'
        end
      end
      
      class GoogleMonitoringV3TypedValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bool_value, as: 'boolValue'
          property :distribution_value, as: 'distributionValue', class: Google::Apis::DiscoveryengineV1::GoogleApiDistribution, decorator: Google::Apis::DiscoveryengineV1::GoogleApiDistribution::Representation
      
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
          property :time_zone, as: 'timeZone', class: Google::Apis::DiscoveryengineV1::GoogleTypeTimeZone, decorator: Google::Apis::DiscoveryengineV1::GoogleTypeTimeZone::Representation
      
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
