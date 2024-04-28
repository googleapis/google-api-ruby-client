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
    module ContactcenterinsightsV1
      
      class GoogleCloudContactcenterinsightsV1AgentCoachingInstruction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1AgentCoachingSuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1AgentCoachingSuggestionAgentActionSuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1AgentCoachingSuggestionAgentCoachingSuggestionEval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1AgentCoachingSuggestionAgentCoachingSuggestionReasoning
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1AgentCoachingSuggestionSampleResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1Analysis
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1AnalysisResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1AnnotationBoundary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1AnnotatorSelector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1AnswerFeedback
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ArticleSuggestionData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1BulkDeleteConversationsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1BulkDeleteConversationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1CalculateStatsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1CallAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1Conversation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ConversationCallMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ConversationDataSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ConversationLevelSentiment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ConversationLevelSilence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ConversationParticipant
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ConversationQualityMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ConversationTranscript
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1CreateAnalysisOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1CreateIssueModelMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1CreateIssueModelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1DeleteIssueModelMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1DeleteIssueModelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1DeployIssueModelMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1DeployIssueModelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1DeployIssueModelResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1DialogflowIntent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1DialogflowInteractionData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1DialogflowSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1Entity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1EntityMentionData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ExactMatchConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ExportInsightsDataMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ExportInsightsDataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ExportIssueModelMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ExportIssueModelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ExportIssueModelResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1FaqAnswerData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1FreeFormSuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1GcsSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1GeneratorSuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1GetGeneratorSuggestionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1GetKnowledgeAssistResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1GetKnowledgeAssistResponseKnowledgeAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1GetKnowledgeAssistResponseKnowledgeAnswerFaqSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1GetKnowledgeAssistResponseKnowledgeAnswerGenerativeSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1GetKnowledgeAssistResponseKnowledgeAnswerGenerativeSourceSnippet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1GetKnowledgeAssistResponseKnowledgeAnswerIntentMatchingSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1GetKnowledgeAssistResponseSuggestedQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1HoldData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ImportIssueModelMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ImportIssueModelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ImportIssueModelResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1IngestConversationsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1IngestConversationsMetadataIngestConversationsStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1IngestConversationsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1IngestConversationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1Intent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1IntentMatchData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1InterruptionData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1Issue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1IssueAssignment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1IssueMatchData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1IssueModel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1IssueModelLabelStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1IssueModelResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ListAnalysesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ListConversationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ListIssueModelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ListIssuesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ListViewsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1PhraseMatchData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1PhraseMatchRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1PhraseMatcher
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1RedactionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1RuntimeAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1SearchKnowledgeAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1SearchKnowledgeAnswerAnswerSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1SentimentData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1Settings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1SettingsAnalysisConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1SilenceData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1SmartComposeSuggestionData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1SmartReplyData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1SpeechConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1SummarySuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1SummarySuggestionSummarySection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1UndeployIssueModelMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1UndeployIssueModelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1UndeployIssueModelResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1UploadConversationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1UploadConversationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1View
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1AgentCoachingInstruction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1AgentCoachingSuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1AgentCoachingSuggestionAgentActionSuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1AgentCoachingSuggestionAgentCoachingSuggestionEval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1AgentCoachingSuggestionAgentCoachingSuggestionReasoning
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1AgentCoachingSuggestionSampleResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1Analysis
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1AnalysisResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1AnalysisResultCallAnalysisMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1AnnotationBoundary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelectorSummarizationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1AnswerFeedback
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ArticleSuggestionData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1BulkAnalyzeConversationsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1BulkAnalyzeConversationsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1BulkAnalyzeConversationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1BulkDeleteConversationsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1BulkDeleteConversationsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1BulkDeleteConversationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1CallAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1Conversation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ConversationCallMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ConversationDataSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ConversationLevelSentiment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ConversationLevelSilence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ConversationParticipant
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ConversationQualityMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ConversationQualityMetadataAgentInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ConversationSummarizationSuggestionData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ConversationTranscript
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ConversationTranscriptTranscriptSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ConversationTranscriptTranscriptSegmentWordInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1CreateAnalysisOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1CreateIssueModelMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1CreateIssueModelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DeleteIssueModelMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DeleteIssueModelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DeployIssueModelMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DeployIssueModelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DeployIssueModelResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DialogflowIntent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DialogflowInteractionData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DialogflowSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1Entity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1EntityMentionData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataRequestBigQueryDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ExportIssueModelMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ExportIssueModelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ExportIssueModelRequestGcsDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ExportIssueModelResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1FaqAnswerData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1FreeFormSuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1GcsSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1GeneratorSuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1GetGeneratorSuggestionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswerFaqSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswerGenerativeSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswerGenerativeSourceSnippet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswerIntentMatchingSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseSuggestedQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1HoldData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ImportIssueModelMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ImportIssueModelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ImportIssueModelRequestGcsSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ImportIssueModelResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1IngestConversationsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1IngestConversationsMetadataIngestConversationsStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestConversationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestGcsSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestTranscriptObjectConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1IngestConversationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1Intent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1IntentMatchData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1InterruptionData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1IssueAssignment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1IssueMatchData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1IssueModel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1IssueModelInputDataConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1IssueModelLabelStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1IssueModelLabelStatsIssueStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1IssueModelResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1PhraseMatchData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1RedactionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1RuntimeAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1SearchKnowledgeAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1SearchKnowledgeAnswerAnswerSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1SentimentData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1SilenceData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1SmartComposeSuggestionData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1SmartReplyData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1SpeechConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1SummarySuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1SummarySuggestionSummarySection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1UndeployIssueModelMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1UndeployIssueModelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1UndeployIssueModelResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1UploadConversationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1UploadConversationRequest
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
      
      class GoogleCloudContactcenterinsightsV1AgentCoachingInstruction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_action, as: 'agentAction'
          property :condition, as: 'condition'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          hash :metadata, as: 'metadata'
          property :system_action, as: 'systemAction'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1AgentCoachingSuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :agent_action_suggestions, as: 'agentActionSuggestions', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AgentCoachingSuggestionAgentActionSuggestion, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AgentCoachingSuggestionAgentActionSuggestion::Representation
      
          collection :applicable_instructions, as: 'applicableInstructions', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AgentCoachingInstruction, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AgentCoachingInstruction::Representation
      
          collection :sample_responses, as: 'sampleResponses', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AgentCoachingSuggestionSampleResponse, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AgentCoachingSuggestionSampleResponse::Representation
      
          property :suggestion_eval, as: 'suggestionEval', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AgentCoachingSuggestionAgentCoachingSuggestionEval, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AgentCoachingSuggestionAgentCoachingSuggestionEval::Representation
      
          property :suggestion_reasoning, as: 'suggestionReasoning', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AgentCoachingSuggestionAgentCoachingSuggestionReasoning, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AgentCoachingSuggestionAgentCoachingSuggestionReasoning::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1AgentCoachingSuggestionAgentActionSuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_action, as: 'agentAction'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1AgentCoachingSuggestionAgentCoachingSuggestionEval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_action_suggestion_eval, as: 'actionActionSuggestionEval'
          property :sample_response_eval, as: 'sampleResponseEval'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1AgentCoachingSuggestionAgentCoachingSuggestionReasoning
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_action_taken, as: 'agentActionTaken'
          property :issue_summary, as: 'issueSummary'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1AgentCoachingSuggestionSampleResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :response_text, as: 'responseText'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1Analysis
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analysis_result, as: 'analysisResult', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnalysisResult, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnalysisResult::Representation
      
          property :annotator_selector, as: 'annotatorSelector', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotatorSelector, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotatorSelector::Representation
      
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :request_time, as: 'requestTime'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1AnalysisResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :call_analysis_metadata, as: 'callAnalysisMetadata', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata::Representation
      
          property :end_time, as: 'endTime'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotations, as: 'annotations', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CallAnnotation, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CallAnnotation::Representation
      
          hash :entities, as: 'entities', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Entity, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Entity::Representation
      
          hash :intents, as: 'intents', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Intent, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Intent::Representation
      
          property :issue_model_result, as: 'issueModelResult', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModelResult, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModelResult::Representation
      
          hash :phrase_matchers, as: 'phraseMatchers', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatchData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatchData::Representation
      
          collection :sentiments, as: 'sentiments', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationLevelSentiment, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationLevelSentiment::Representation
      
          property :silence, as: 'silence', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationLevelSilence, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationLevelSilence::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1AnnotationBoundary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :transcript_index, as: 'transcriptIndex'
          property :word_index, as: 'wordIndex'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1AnnotatorSelector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :issue_models, as: 'issueModels'
          collection :phrase_matchers, as: 'phraseMatchers'
          property :run_entity_annotator, as: 'runEntityAnnotator'
          property :run_intent_annotator, as: 'runIntentAnnotator'
          property :run_interruption_annotator, as: 'runInterruptionAnnotator'
          property :run_issue_model_annotator, as: 'runIssueModelAnnotator'
          property :run_phrase_matcher_annotator, as: 'runPhraseMatcherAnnotator'
          property :run_sentiment_annotator, as: 'runSentimentAnnotator'
          property :run_silence_annotator, as: 'runSilenceAnnotator'
          property :run_summarization_annotator, as: 'runSummarizationAnnotator'
          property :summarization_config, as: 'summarizationConfig', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation_profile, as: 'conversationProfile'
          property :summarization_model, as: 'summarizationModel'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1AnswerFeedback
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :clicked, as: 'clicked'
          property :correctness_level, as: 'correctnessLevel'
          property :displayed, as: 'displayed'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ArticleSuggestionData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence_score, as: 'confidenceScore'
          hash :metadata, as: 'metadata'
          property :query_record, as: 'queryRecord'
          property :source, as: 'source'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :completed_analyses_count, as: 'completedAnalysesCount'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :failed_analyses_count, as: 'failedAnalysesCount'
          collection :partial_errors, as: 'partialErrors', class: Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus, decorator: Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus::Representation
      
          property :request, as: 'request', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest::Representation
      
          property :total_requested_analyses_count, as: 'totalRequestedAnalysesCount'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analysis_percentage, as: 'analysisPercentage'
          property :annotator_selector, as: 'annotatorSelector', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotatorSelector, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotatorSelector::Representation
      
          property :filter, as: 'filter'
          property :parent, as: 'parent'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :failed_analysis_count, as: 'failedAnalysisCount'
          property :successful_analysis_count, as: 'successfulAnalysisCount'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1BulkDeleteConversationsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          collection :partial_errors, as: 'partialErrors', class: Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus, decorator: Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus::Representation
      
          property :request, as: 'request', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :force, as: 'force'
          property :max_delete_count, as: 'maxDeleteCount'
          property :parent, as: 'parent'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1BulkDeleteConversationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_stats, as: 'currentStats', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModelLabelStats, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModelLabelStats::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1CalculateStatsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :average_duration, as: 'averageDuration'
          property :average_turn_count, as: 'averageTurnCount'
          property :conversation_count, as: 'conversationCount'
          property :conversation_count_time_series, as: 'conversationCountTimeSeries', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries::Representation
      
          hash :custom_highlighter_matches, as: 'customHighlighterMatches'
          hash :issue_matches, as: 'issueMatches'
          hash :issue_matches_stats, as: 'issueMatchesStats', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats::Representation
      
          hash :smart_highlighter_matches, as: 'smartHighlighterMatches'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :interval_duration, as: 'intervalDuration'
          collection :points, as: 'points', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation_count, as: 'conversationCount'
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1CallAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_end_boundary, as: 'annotationEndBoundary', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotationBoundary, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotationBoundary::Representation
      
          property :annotation_start_boundary, as: 'annotationStartBoundary', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotationBoundary, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotationBoundary::Representation
      
          property :channel_tag, as: 'channelTag'
          property :entity_mention_data, as: 'entityMentionData', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1EntityMentionData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1EntityMentionData::Representation
      
          property :hold_data, as: 'holdData', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1HoldData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1HoldData::Representation
      
          property :intent_match_data, as: 'intentMatchData', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IntentMatchData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IntentMatchData::Representation
      
          property :interruption_data, as: 'interruptionData', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1InterruptionData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1InterruptionData::Representation
      
          property :issue_match_data, as: 'issueMatchData', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueMatchData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueMatchData::Representation
      
          property :phrase_match_data, as: 'phraseMatchData', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatchData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatchData::Representation
      
          property :sentiment_data, as: 'sentimentData', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SentimentData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SentimentData::Representation
      
          property :silence_data, as: 'silenceData', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SilenceData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SilenceData::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1Conversation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_id, as: 'agentId'
          property :call_metadata, as: 'callMetadata', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationCallMetadata, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationCallMetadata::Representation
      
          property :create_time, as: 'createTime'
          property :data_source, as: 'dataSource', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationDataSource, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationDataSource::Representation
      
          hash :dialogflow_intents, as: 'dialogflowIntents', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DialogflowIntent, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DialogflowIntent::Representation
      
          property :duration, as: 'duration'
          property :expire_time, as: 'expireTime'
          hash :labels, as: 'labels'
          property :language_code, as: 'languageCode'
          property :latest_analysis, as: 'latestAnalysis', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Analysis, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Analysis::Representation
      
          property :latest_summary, as: 'latestSummary', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData::Representation
      
          property :medium, as: 'medium'
          property :name, as: 'name'
          property :obfuscated_user_id, as: 'obfuscatedUserId'
          property :quality_metadata, as: 'qualityMetadata', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationQualityMetadata, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationQualityMetadata::Representation
      
          collection :runtime_annotations, as: 'runtimeAnnotations', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1RuntimeAnnotation, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1RuntimeAnnotation::Representation
      
          property :start_time, as: 'startTime'
          property :transcript, as: 'transcript', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationTranscript, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationTranscript::Representation
      
          property :ttl, as: 'ttl'
          property :turn_count, as: 'turnCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ConversationCallMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_channel, as: 'agentChannel'
          property :customer_channel, as: 'customerChannel'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ConversationDataSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dialogflow_source, as: 'dialogflowSource', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DialogflowSource, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DialogflowSource::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1GcsSource, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1GcsSource::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ConversationLevelSentiment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel_tag, as: 'channelTag'
          property :sentiment_data, as: 'sentimentData', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SentimentData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SentimentData::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ConversationLevelSilence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :silence_duration, as: 'silenceDuration'
          property :silence_percentage, as: 'silencePercentage'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ConversationParticipant
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dialogflow_participant, as: 'dialogflowParticipant'
          property :dialogflow_participant_name, as: 'dialogflowParticipantName'
          property :obfuscated_external_user_id, as: 'obfuscatedExternalUserId'
          property :role, as: 'role'
          property :user_id, as: 'userId'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ConversationQualityMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :agent_info, as: 'agentInfo', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo::Representation
      
          property :customer_satisfaction_rating, as: 'customerSatisfactionRating'
          property :menu_path, as: 'menuPath'
          property :wait_duration, as: 'waitDuration'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_id, as: 'agentId'
          property :display_name, as: 'displayName'
          property :disposition_code, as: 'dispositionCode'
          property :team, as: 'team'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer_record, as: 'answerRecord'
          property :confidence, as: 'confidence'
          property :conversation_model, as: 'conversationModel'
          hash :metadata, as: 'metadata'
          property :text, as: 'text'
          hash :text_sections, as: 'textSections'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ConversationTranscript
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :transcript_segments, as: 'transcriptSegments', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel_tag, as: 'channelTag'
          property :confidence, as: 'confidence'
          property :dialogflow_segment_metadata, as: 'dialogflowSegmentMetadata', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata::Representation
      
          property :language_code, as: 'languageCode'
          property :message_time, as: 'messageTime'
          property :segment_participant, as: 'segmentParticipant', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationParticipant, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationParticipant::Representation
      
          property :sentiment, as: 'sentiment', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SentimentData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SentimentData::Representation
      
          property :text, as: 'text'
          collection :words, as: 'words', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :smart_reply_allowlist_covered, as: 'smartReplyAllowlistCovered'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :end_offset, as: 'endOffset'
          property :start_offset, as: 'startOffset'
          property :word, as: 'word'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1CreateAnalysisOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotator_selector, as: 'annotatorSelector', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotatorSelector, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotatorSelector::Representation
      
          property :conversation, as: 'conversation'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1CreateIssueModelMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :request, as: 'request', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CreateIssueModelRequest, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CreateIssueModelRequest::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1CreateIssueModelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :issue_model, as: 'issueModel', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModel, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModel::Representation
      
          property :parent, as: 'parent'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1DeleteIssueModelMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :request, as: 'request', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DeleteIssueModelRequest, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DeleteIssueModelRequest::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1DeleteIssueModelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1DeployIssueModelMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :request, as: 'request', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DeployIssueModelRequest, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DeployIssueModelRequest::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1DeployIssueModelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1DeployIssueModelResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudContactcenterinsightsV1DialogflowIntent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1DialogflowInteractionData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :dialogflow_intent_id, as: 'dialogflowIntentId'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1DialogflowSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_uri, as: 'audioUri'
          property :dialogflow_conversation, as: 'dialogflowConversation'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1Entity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :metadata, as: 'metadata'
          property :salience, as: 'salience'
          property :sentiment, as: 'sentiment', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SentimentData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SentimentData::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1EntityMentionData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity_unique_id, as: 'entityUniqueId'
          property :sentiment, as: 'sentiment', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SentimentData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SentimentData::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ExactMatchConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :case_sensitive, as: 'caseSensitive'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ExportInsightsDataMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          collection :partial_errors, as: 'partialErrors', class: Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus, decorator: Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus::Representation
      
          property :request, as: 'request', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :big_query_destination, as: 'bigQueryDestination', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination::Representation
      
          property :filter, as: 'filter'
          property :kms_key, as: 'kmsKey'
          property :parent, as: 'parent'
          property :write_disposition, as: 'writeDisposition'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset, as: 'dataset'
          property :project_id, as: 'projectId'
          property :table, as: 'table'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ExportInsightsDataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ExportIssueModelMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :request, as: 'request', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ExportIssueModelRequest, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ExportIssueModelRequest::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ExportIssueModelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_destination, as: 'gcsDestination', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :object_uri, as: 'objectUri'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ExportIssueModelResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudContactcenterinsightsV1FaqAnswerData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer, as: 'answer'
          property :confidence_score, as: 'confidenceScore'
          hash :metadata, as: 'metadata'
          property :query_record, as: 'queryRecord'
          property :question, as: 'question'
          property :source, as: 'source'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1FreeFormSuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :labels, as: 'labels'
          property :response, as: 'response'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1GcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_uri, as: 'audioUri'
          property :transcript_uri, as: 'transcriptUri'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1GeneratorSuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_coaching_suggestion, as: 'agentCoachingSuggestion', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AgentCoachingSuggestion, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AgentCoachingSuggestion::Representation
      
          property :free_form_suggestion, as: 'freeFormSuggestion', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FreeFormSuggestion, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FreeFormSuggestion::Representation
      
          property :summary_suggestion, as: 'summarySuggestion', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SummarySuggestion, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SummarySuggestion::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1GetGeneratorSuggestionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generator_suggestion, as: 'generatorSuggestion', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1GeneratorSuggestion, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1GeneratorSuggestion::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1GetKnowledgeAssistResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :suggested_query, as: 'suggestedQuery', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1GetKnowledgeAssistResponseSuggestedQuery, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1GetKnowledgeAssistResponseSuggestedQuery::Representation
      
          property :suggested_query_answer, as: 'suggestedQueryAnswer', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1GetKnowledgeAssistResponseKnowledgeAnswer, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1GetKnowledgeAssistResponseKnowledgeAnswer::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1GetKnowledgeAssistResponseKnowledgeAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer_text, as: 'answerText'
          property :faq_source, as: 'faqSource', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1GetKnowledgeAssistResponseKnowledgeAnswerFaqSource, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1GetKnowledgeAssistResponseKnowledgeAnswerFaqSource::Representation
      
          property :generative_source, as: 'generativeSource', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1GetKnowledgeAssistResponseKnowledgeAnswerGenerativeSource, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1GetKnowledgeAssistResponseKnowledgeAnswerGenerativeSource::Representation
      
          property :intent_matching_source, as: 'intentMatchingSource', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1GetKnowledgeAssistResponseKnowledgeAnswerIntentMatchingSource, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1GetKnowledgeAssistResponseKnowledgeAnswerIntentMatchingSource::Representation
      
          property :match_confidence, as: 'matchConfidence'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1GetKnowledgeAssistResponseKnowledgeAnswerFaqSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document'
          property :question, as: 'question'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1GetKnowledgeAssistResponseKnowledgeAnswerGenerativeSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :snippets, as: 'snippets', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1GetKnowledgeAssistResponseKnowledgeAnswerGenerativeSourceSnippet, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1GetKnowledgeAssistResponseKnowledgeAnswerGenerativeSourceSnippet::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1GetKnowledgeAssistResponseKnowledgeAnswerGenerativeSourceSnippet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document'
          property :text, as: 'text'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1GetKnowledgeAssistResponseKnowledgeAnswerIntentMatchingSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1GetKnowledgeAssistResponseSuggestedQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query_text, as: 'queryText'
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1HoldData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ImportIssueModelMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :request, as: 'request', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ImportIssueModelRequest, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ImportIssueModelRequest::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ImportIssueModelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_new_model, as: 'createNewModel'
          property :gcs_source, as: 'gcsSource', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource::Representation
      
          property :parent, as: 'parent'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :object_uri, as: 'objectUri'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ImportIssueModelResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudContactcenterinsightsV1IngestConversationsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :ingest_conversations_stats, as: 'ingestConversationsStats', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IngestConversationsMetadataIngestConversationsStats, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IngestConversationsMetadataIngestConversationsStats::Representation
      
          collection :partial_errors, as: 'partialErrors', class: Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus, decorator: Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus::Representation
      
          property :request, as: 'request', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IngestConversationsRequest, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IngestConversationsRequest::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1IngestConversationsMetadataIngestConversationsStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duplicates_skipped_count, as: 'duplicatesSkippedCount'
          property :failed_ingest_count, as: 'failedIngestCount'
          property :processed_object_count, as: 'processedObjectCount'
          property :successful_ingest_count, as: 'successfulIngestCount'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1IngestConversationsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation_config, as: 'conversationConfig', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource::Representation
      
          property :parent, as: 'parent'
          property :redaction_config, as: 'redactionConfig', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1RedactionConfig, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1RedactionConfig::Representation
      
          property :speech_config, as: 'speechConfig', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SpeechConfig, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SpeechConfig::Representation
      
          property :transcript_object_config, as: 'transcriptObjectConfig', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_channel, as: 'agentChannel'
          property :agent_id, as: 'agentId'
          property :customer_channel, as: 'customerChannel'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_object_type, as: 'bucketObjectType'
          property :bucket_uri, as: 'bucketUri'
          collection :custom_metadata_keys, as: 'customMetadataKeys'
          property :metadata_bucket_uri, as: 'metadataBucketUri'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :medium, as: 'medium'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1IngestConversationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudContactcenterinsightsV1Intent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :id, as: 'id'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1IntentMatchData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :intent_unique_id, as: 'intentUniqueId'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1InterruptionData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudContactcenterinsightsV1Issue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          collection :sample_utterances, as: 'sampleUtterances'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1IssueAssignment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :issue, as: 'issue'
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1IssueMatchData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :issue_assignment, as: 'issueAssignment', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueAssignment, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueAssignment::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1IssueModel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :input_data_config, as: 'inputDataConfig', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig::Representation
      
          property :issue_count, :numeric_string => true, as: 'issueCount'
          property :language_code, as: 'languageCode'
          property :model_type, as: 'modelType'
          property :name, as: 'name'
          property :state, as: 'state'
          property :training_stats, as: 'trainingStats', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModelLabelStats, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModelLabelStats::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :medium, as: 'medium'
          property :training_conversations_count, :numeric_string => true, as: 'trainingConversationsCount'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1IssueModelLabelStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analyzed_conversations_count, :numeric_string => true, as: 'analyzedConversationsCount'
          hash :issue_stats, as: 'issueStats', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats::Representation
      
          property :unclassified_conversations_count, :numeric_string => true, as: 'unclassifiedConversationsCount'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :issue, as: 'issue'
          property :labeled_conversations_count, :numeric_string => true, as: 'labeledConversationsCount'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1IssueModelResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :issue_model, as: 'issueModel'
          collection :issues, as: 'issues', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueAssignment, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueAssignment::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ListAnalysesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :analyses, as: 'analyses', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Analysis, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Analysis::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ListConversationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conversations, as: 'conversations', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ListIssueModelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :issue_models, as: 'issueModels', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModel, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModel::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ListIssuesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :issues, as: 'issues', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Issue, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Issue::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :phrase_matchers, as: 'phraseMatchers', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatcher, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatcher::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ListViewsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :views, as: 'views', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1View, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1View::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1PhraseMatchData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :phrase_matcher, as: 'phraseMatcher'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1PhraseMatchRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig::Representation
      
          property :negated, as: 'negated'
          property :query, as: 'query'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exact_match_config, as: 'exactMatchConfig', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ExactMatchConfig, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ExactMatchConfig::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :phrase_match_rules, as: 'phraseMatchRules', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatchRule, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatchRule::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1PhraseMatcher
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :activation_update_time, as: 'activationUpdateTime'
          property :active, as: 'active'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          collection :phrase_match_rule_groups, as: 'phraseMatchRuleGroups', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup::Representation
      
          property :revision_create_time, as: 'revisionCreateTime'
          property :revision_id, as: 'revisionId'
          property :role_match, as: 'roleMatch'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
          property :version_tag, as: 'versionTag'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1RedactionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deidentify_template, as: 'deidentifyTemplate'
          property :inspect_template, as: 'inspectTemplate'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1RuntimeAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_id, as: 'annotationId'
          property :answer_feedback, as: 'answerFeedback', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnswerFeedback, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnswerFeedback::Representation
      
          property :article_suggestion, as: 'articleSuggestion', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ArticleSuggestionData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ArticleSuggestionData::Representation
      
          property :conversation_summarization_suggestion, as: 'conversationSummarizationSuggestion', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData::Representation
      
          property :create_time, as: 'createTime'
          property :dialogflow_interaction, as: 'dialogflowInteraction', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DialogflowInteractionData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DialogflowInteractionData::Representation
      
          property :end_boundary, as: 'endBoundary', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotationBoundary, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotationBoundary::Representation
      
          property :faq_answer, as: 'faqAnswer', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FaqAnswerData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FaqAnswerData::Representation
      
          property :generator_suggestion_result, as: 'generatorSuggestionResult', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1GetGeneratorSuggestionResponse, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1GetGeneratorSuggestionResponse::Representation
      
          property :knowledge_assist_result, as: 'knowledgeAssistResult', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1GetKnowledgeAssistResponse, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1GetKnowledgeAssistResponse::Representation
      
          property :knowledge_search_result, as: 'knowledgeSearchResult', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SearchKnowledgeAnswer, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SearchKnowledgeAnswer::Representation
      
          property :smart_compose_suggestion, as: 'smartComposeSuggestion', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SmartComposeSuggestionData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SmartComposeSuggestionData::Representation
      
          property :smart_reply, as: 'smartReply', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SmartReplyData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SmartReplyData::Representation
      
          property :start_boundary, as: 'startBoundary', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotationBoundary, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotationBoundary::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1SearchKnowledgeAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer, as: 'answer'
          property :answer_record, as: 'answerRecord'
          collection :answer_sources, as: 'answerSources', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SearchKnowledgeAnswerAnswerSource, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SearchKnowledgeAnswerAnswerSource::Representation
      
          property :answer_type, as: 'answerType'
          property :confidence_score, as: 'confidenceScore'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1SearchKnowledgeAnswerAnswerSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document'
          property :snippet, as: 'snippet'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1SentimentData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :magnitude, as: 'magnitude'
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1Settings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analysis_config, as: 'analysisConfig', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SettingsAnalysisConfig, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SettingsAnalysisConfig::Representation
      
          property :conversation_ttl, as: 'conversationTtl'
          property :create_time, as: 'createTime'
          property :language_code, as: 'languageCode'
          property :name, as: 'name'
          hash :pubsub_notification_settings, as: 'pubsubNotificationSettings'
          property :redaction_config, as: 'redactionConfig', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1RedactionConfig, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1RedactionConfig::Representation
      
          property :speech_config, as: 'speechConfig', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SpeechConfig, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SpeechConfig::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1SettingsAnalysisConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotator_selector, as: 'annotatorSelector', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotatorSelector, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotatorSelector::Representation
      
          property :runtime_integration_analysis_percentage, as: 'runtimeIntegrationAnalysisPercentage'
          property :upload_conversation_analysis_percentage, as: 'uploadConversationAnalysisPercentage'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1SilenceData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudContactcenterinsightsV1SmartComposeSuggestionData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence_score, as: 'confidenceScore'
          hash :metadata, as: 'metadata'
          property :query_record, as: 'queryRecord'
          property :suggestion, as: 'suggestion'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1SmartReplyData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence_score, as: 'confidenceScore'
          hash :metadata, as: 'metadata'
          property :query_record, as: 'queryRecord'
          property :reply, as: 'reply'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1SpeechConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :speech_recognizer, as: 'speechRecognizer'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1SummarySuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :summary_sections, as: 'summarySections', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SummarySuggestionSummarySection, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SummarySuggestionSummarySection::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1SummarySuggestionSummarySection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :section, as: 'section'
          property :summary, as: 'summary'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1UndeployIssueModelMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :request, as: 'request', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1UndeployIssueModelRequest, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1UndeployIssueModelRequest::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1UndeployIssueModelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1UndeployIssueModelResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudContactcenterinsightsV1UploadConversationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analysis_operation, as: 'analysisOperation'
          property :applied_redaction_config, as: 'appliedRedactionConfig', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1RedactionConfig, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1RedactionConfig::Representation
      
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :request, as: 'request', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1UploadConversationRequest, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1UploadConversationRequest::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1UploadConversationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation, as: 'conversation', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation::Representation
      
          property :conversation_id, as: 'conversationId'
          property :parent, as: 'parent'
          property :redaction_config, as: 'redactionConfig', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1RedactionConfig, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1RedactionConfig::Representation
      
          property :speech_config, as: 'speechConfig', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SpeechConfig, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SpeechConfig::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1View
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1AgentCoachingInstruction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_action, as: 'agentAction'
          property :condition, as: 'condition'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          hash :metadata, as: 'metadata'
          property :system_action, as: 'systemAction'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1AgentCoachingSuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :agent_action_suggestions, as: 'agentActionSuggestions', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AgentCoachingSuggestionAgentActionSuggestion, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AgentCoachingSuggestionAgentActionSuggestion::Representation
      
          collection :applicable_instructions, as: 'applicableInstructions', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AgentCoachingInstruction, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AgentCoachingInstruction::Representation
      
          collection :sample_responses, as: 'sampleResponses', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AgentCoachingSuggestionSampleResponse, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AgentCoachingSuggestionSampleResponse::Representation
      
          property :suggestion_eval, as: 'suggestionEval', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AgentCoachingSuggestionAgentCoachingSuggestionEval, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AgentCoachingSuggestionAgentCoachingSuggestionEval::Representation
      
          property :suggestion_reasoning, as: 'suggestionReasoning', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AgentCoachingSuggestionAgentCoachingSuggestionReasoning, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AgentCoachingSuggestionAgentCoachingSuggestionReasoning::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1AgentCoachingSuggestionAgentActionSuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_action, as: 'agentAction'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1AgentCoachingSuggestionAgentCoachingSuggestionEval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_action_suggestion_eval, as: 'actionActionSuggestionEval'
          property :sample_response_eval, as: 'sampleResponseEval'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1AgentCoachingSuggestionAgentCoachingSuggestionReasoning
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_action_taken, as: 'agentActionTaken'
          property :issue_summary, as: 'issueSummary'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1AgentCoachingSuggestionSampleResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :response_text, as: 'responseText'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1Analysis
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analysis_result, as: 'analysisResult', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnalysisResult, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnalysisResult::Representation
      
          property :annotator_selector, as: 'annotatorSelector', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelector, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelector::Representation
      
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :request_time, as: 'requestTime'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1AnalysisResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :call_analysis_metadata, as: 'callAnalysisMetadata', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnalysisResultCallAnalysisMetadata, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnalysisResultCallAnalysisMetadata::Representation
      
          property :end_time, as: 'endTime'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1AnalysisResultCallAnalysisMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotations, as: 'annotations', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1CallAnnotation, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1CallAnnotation::Representation
      
          hash :entities, as: 'entities', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1Entity, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1Entity::Representation
      
          hash :intents, as: 'intents', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1Intent, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1Intent::Representation
      
          property :issue_model_result, as: 'issueModelResult', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IssueModelResult, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IssueModelResult::Representation
      
          hash :phrase_matchers, as: 'phraseMatchers', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1PhraseMatchData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1PhraseMatchData::Representation
      
          collection :sentiments, as: 'sentiments', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationLevelSentiment, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationLevelSentiment::Representation
      
          property :silence, as: 'silence', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationLevelSilence, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationLevelSilence::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1AnnotationBoundary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :transcript_index, as: 'transcriptIndex'
          property :word_index, as: 'wordIndex'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :issue_models, as: 'issueModels'
          collection :phrase_matchers, as: 'phraseMatchers'
          property :run_entity_annotator, as: 'runEntityAnnotator'
          property :run_intent_annotator, as: 'runIntentAnnotator'
          property :run_interruption_annotator, as: 'runInterruptionAnnotator'
          property :run_issue_model_annotator, as: 'runIssueModelAnnotator'
          property :run_phrase_matcher_annotator, as: 'runPhraseMatcherAnnotator'
          property :run_sentiment_annotator, as: 'runSentimentAnnotator'
          property :run_silence_annotator, as: 'runSilenceAnnotator'
          property :run_summarization_annotator, as: 'runSummarizationAnnotator'
          property :summarization_config, as: 'summarizationConfig', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelectorSummarizationConfig, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelectorSummarizationConfig::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelectorSummarizationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation_profile, as: 'conversationProfile'
          property :summarization_model, as: 'summarizationModel'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1AnswerFeedback
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :clicked, as: 'clicked'
          property :correctness_level, as: 'correctnessLevel'
          property :displayed, as: 'displayed'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ArticleSuggestionData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence_score, as: 'confidenceScore'
          hash :metadata, as: 'metadata'
          property :query_record, as: 'queryRecord'
          property :source, as: 'source'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1BulkAnalyzeConversationsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :completed_analyses_count, as: 'completedAnalysesCount'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :failed_analyses_count, as: 'failedAnalysesCount'
          collection :partial_errors, as: 'partialErrors', class: Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus, decorator: Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus::Representation
      
          property :request, as: 'request', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1BulkAnalyzeConversationsRequest, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1BulkAnalyzeConversationsRequest::Representation
      
          property :total_requested_analyses_count, as: 'totalRequestedAnalysesCount'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1BulkAnalyzeConversationsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analysis_percentage, as: 'analysisPercentage'
          property :annotator_selector, as: 'annotatorSelector', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelector, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelector::Representation
      
          property :filter, as: 'filter'
          property :parent, as: 'parent'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1BulkAnalyzeConversationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :failed_analysis_count, as: 'failedAnalysisCount'
          property :successful_analysis_count, as: 'successfulAnalysisCount'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1BulkDeleteConversationsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          collection :partial_errors, as: 'partialErrors', class: Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus, decorator: Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus::Representation
      
          property :request, as: 'request', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1BulkDeleteConversationsRequest, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1BulkDeleteConversationsRequest::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1BulkDeleteConversationsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :force, as: 'force'
          property :max_delete_count, as: 'maxDeleteCount'
          property :parent, as: 'parent'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1BulkDeleteConversationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1CallAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_end_boundary, as: 'annotationEndBoundary', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnnotationBoundary, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnnotationBoundary::Representation
      
          property :annotation_start_boundary, as: 'annotationStartBoundary', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnnotationBoundary, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnnotationBoundary::Representation
      
          property :channel_tag, as: 'channelTag'
          property :entity_mention_data, as: 'entityMentionData', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1EntityMentionData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1EntityMentionData::Representation
      
          property :hold_data, as: 'holdData', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1HoldData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1HoldData::Representation
      
          property :intent_match_data, as: 'intentMatchData', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IntentMatchData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IntentMatchData::Representation
      
          property :interruption_data, as: 'interruptionData', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1InterruptionData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1InterruptionData::Representation
      
          property :issue_match_data, as: 'issueMatchData', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IssueMatchData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IssueMatchData::Representation
      
          property :phrase_match_data, as: 'phraseMatchData', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1PhraseMatchData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1PhraseMatchData::Representation
      
          property :sentiment_data, as: 'sentimentData', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SentimentData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SentimentData::Representation
      
          property :silence_data, as: 'silenceData', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SilenceData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SilenceData::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1Conversation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_id, as: 'agentId'
          property :call_metadata, as: 'callMetadata', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationCallMetadata, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationCallMetadata::Representation
      
          property :create_time, as: 'createTime'
          property :data_source, as: 'dataSource', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationDataSource, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationDataSource::Representation
      
          hash :dialogflow_intents, as: 'dialogflowIntents', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DialogflowIntent, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DialogflowIntent::Representation
      
          property :duration, as: 'duration'
          property :expire_time, as: 'expireTime'
          hash :labels, as: 'labels'
          property :language_code, as: 'languageCode'
          property :latest_analysis, as: 'latestAnalysis', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1Analysis, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1Analysis::Representation
      
          property :latest_summary, as: 'latestSummary', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationSummarizationSuggestionData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationSummarizationSuggestionData::Representation
      
          property :medium, as: 'medium'
          property :name, as: 'name'
          property :obfuscated_user_id, as: 'obfuscatedUserId'
          property :quality_metadata, as: 'qualityMetadata', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationQualityMetadata, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationQualityMetadata::Representation
      
          collection :runtime_annotations, as: 'runtimeAnnotations', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1RuntimeAnnotation, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1RuntimeAnnotation::Representation
      
          property :start_time, as: 'startTime'
          property :transcript, as: 'transcript', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationTranscript, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationTranscript::Representation
      
          property :ttl, as: 'ttl'
          property :turn_count, as: 'turnCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ConversationCallMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_channel, as: 'agentChannel'
          property :customer_channel, as: 'customerChannel'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ConversationDataSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dialogflow_source, as: 'dialogflowSource', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DialogflowSource, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DialogflowSource::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1GcsSource, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1GcsSource::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ConversationLevelSentiment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel_tag, as: 'channelTag'
          property :sentiment_data, as: 'sentimentData', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SentimentData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SentimentData::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ConversationLevelSilence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :silence_duration, as: 'silenceDuration'
          property :silence_percentage, as: 'silencePercentage'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ConversationParticipant
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dialogflow_participant, as: 'dialogflowParticipant'
          property :dialogflow_participant_name, as: 'dialogflowParticipantName'
          property :obfuscated_external_user_id, as: 'obfuscatedExternalUserId'
          property :role, as: 'role'
          property :user_id, as: 'userId'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ConversationQualityMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :agent_info, as: 'agentInfo', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationQualityMetadataAgentInfo, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationQualityMetadataAgentInfo::Representation
      
          property :customer_satisfaction_rating, as: 'customerSatisfactionRating'
          property :menu_path, as: 'menuPath'
          property :wait_duration, as: 'waitDuration'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ConversationQualityMetadataAgentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_id, as: 'agentId'
          property :display_name, as: 'displayName'
          property :disposition_code, as: 'dispositionCode'
          property :team, as: 'team'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ConversationSummarizationSuggestionData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer_record, as: 'answerRecord'
          property :confidence, as: 'confidence'
          property :conversation_model, as: 'conversationModel'
          hash :metadata, as: 'metadata'
          property :text, as: 'text'
          hash :text_sections, as: 'textSections'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ConversationTranscript
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :transcript_segments, as: 'transcriptSegments', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationTranscriptTranscriptSegment, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationTranscriptTranscriptSegment::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ConversationTranscriptTranscriptSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel_tag, as: 'channelTag'
          property :confidence, as: 'confidence'
          property :dialogflow_segment_metadata, as: 'dialogflowSegmentMetadata', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata::Representation
      
          property :language_code, as: 'languageCode'
          property :message_time, as: 'messageTime'
          property :segment_participant, as: 'segmentParticipant', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationParticipant, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationParticipant::Representation
      
          property :sentiment, as: 'sentiment', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SentimentData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SentimentData::Representation
      
          property :text, as: 'text'
          collection :words, as: 'words', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationTranscriptTranscriptSegmentWordInfo, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationTranscriptTranscriptSegmentWordInfo::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :smart_reply_allowlist_covered, as: 'smartReplyAllowlistCovered'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ConversationTranscriptTranscriptSegmentWordInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :end_offset, as: 'endOffset'
          property :start_offset, as: 'startOffset'
          property :word, as: 'word'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1CreateAnalysisOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotator_selector, as: 'annotatorSelector', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelector, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelector::Representation
      
          property :conversation, as: 'conversation'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1CreateIssueModelMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :request, as: 'request', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1CreateIssueModelRequest, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1CreateIssueModelRequest::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1CreateIssueModelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :issue_model, as: 'issueModel', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IssueModel, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IssueModel::Representation
      
          property :parent, as: 'parent'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DeleteIssueModelMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :request, as: 'request', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DeleteIssueModelRequest, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DeleteIssueModelRequest::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DeleteIssueModelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DeployIssueModelMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :request, as: 'request', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DeployIssueModelRequest, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DeployIssueModelRequest::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DeployIssueModelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DeployIssueModelResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DialogflowIntent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DialogflowInteractionData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :dialogflow_intent_id, as: 'dialogflowIntentId'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DialogflowSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_uri, as: 'audioUri'
          property :dialogflow_conversation, as: 'dialogflowConversation'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1Entity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :metadata, as: 'metadata'
          property :salience, as: 'salience'
          property :sentiment, as: 'sentiment', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SentimentData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SentimentData::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1EntityMentionData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity_unique_id, as: 'entityUniqueId'
          property :sentiment, as: 'sentiment', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SentimentData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SentimentData::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          collection :partial_errors, as: 'partialErrors', class: Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus, decorator: Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus::Representation
      
          property :request, as: 'request', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataRequest, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataRequest::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :big_query_destination, as: 'bigQueryDestination', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataRequestBigQueryDestination, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataRequestBigQueryDestination::Representation
      
          property :filter, as: 'filter'
          property :kms_key, as: 'kmsKey'
          property :parent, as: 'parent'
          property :write_disposition, as: 'writeDisposition'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataRequestBigQueryDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset, as: 'dataset'
          property :project_id, as: 'projectId'
          property :table, as: 'table'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ExportIssueModelMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :request, as: 'request', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ExportIssueModelRequest, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ExportIssueModelRequest::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ExportIssueModelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_destination, as: 'gcsDestination', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ExportIssueModelRequestGcsDestination, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ExportIssueModelRequestGcsDestination::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ExportIssueModelRequestGcsDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :object_uri, as: 'objectUri'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ExportIssueModelResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1FaqAnswerData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer, as: 'answer'
          property :confidence_score, as: 'confidenceScore'
          hash :metadata, as: 'metadata'
          property :query_record, as: 'queryRecord'
          property :question, as: 'question'
          property :source, as: 'source'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1FreeFormSuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :labels, as: 'labels'
          property :response, as: 'response'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1GcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_uri, as: 'audioUri'
          property :transcript_uri, as: 'transcriptUri'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1GeneratorSuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_coaching_suggestion, as: 'agentCoachingSuggestion', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AgentCoachingSuggestion, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AgentCoachingSuggestion::Representation
      
          property :free_form_suggestion, as: 'freeFormSuggestion', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1FreeFormSuggestion, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1FreeFormSuggestion::Representation
      
          property :summary_suggestion, as: 'summarySuggestion', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SummarySuggestion, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SummarySuggestion::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1GetGeneratorSuggestionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generator_suggestion, as: 'generatorSuggestion', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1GeneratorSuggestion, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1GeneratorSuggestion::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :suggested_query, as: 'suggestedQuery', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseSuggestedQuery, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseSuggestedQuery::Representation
      
          property :suggested_query_answer, as: 'suggestedQueryAnswer', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswer, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswer::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer_text, as: 'answerText'
          property :faq_source, as: 'faqSource', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswerFaqSource, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswerFaqSource::Representation
      
          property :generative_source, as: 'generativeSource', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswerGenerativeSource, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswerGenerativeSource::Representation
      
          property :intent_matching_source, as: 'intentMatchingSource', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswerIntentMatchingSource, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswerIntentMatchingSource::Representation
      
          property :match_confidence, as: 'matchConfidence'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswerFaqSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document'
          property :question, as: 'question'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswerGenerativeSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :snippets, as: 'snippets', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswerGenerativeSourceSnippet, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswerGenerativeSourceSnippet::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswerGenerativeSourceSnippet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document'
          property :text, as: 'text'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswerIntentMatchingSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseSuggestedQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query_text, as: 'queryText'
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1HoldData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ImportIssueModelMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :request, as: 'request', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ImportIssueModelRequest, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ImportIssueModelRequest::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ImportIssueModelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_new_model, as: 'createNewModel'
          property :gcs_source, as: 'gcsSource', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ImportIssueModelRequestGcsSource, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ImportIssueModelRequestGcsSource::Representation
      
          property :parent, as: 'parent'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ImportIssueModelRequestGcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :object_uri, as: 'objectUri'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ImportIssueModelResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1IngestConversationsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :ingest_conversations_stats, as: 'ingestConversationsStats', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IngestConversationsMetadataIngestConversationsStats, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IngestConversationsMetadataIngestConversationsStats::Representation
      
          collection :partial_errors, as: 'partialErrors', class: Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus, decorator: Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus::Representation
      
          property :request, as: 'request', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequest, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequest::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1IngestConversationsMetadataIngestConversationsStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duplicates_skipped_count, as: 'duplicatesSkippedCount'
          property :failed_ingest_count, as: 'failedIngestCount'
          property :processed_object_count, as: 'processedObjectCount'
          property :successful_ingest_count, as: 'successfulIngestCount'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation_config, as: 'conversationConfig', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestConversationConfig, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestConversationConfig::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestGcsSource, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestGcsSource::Representation
      
          property :parent, as: 'parent'
          property :redaction_config, as: 'redactionConfig', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1RedactionConfig, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1RedactionConfig::Representation
      
          property :speech_config, as: 'speechConfig', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SpeechConfig, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SpeechConfig::Representation
      
          property :transcript_object_config, as: 'transcriptObjectConfig', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestTranscriptObjectConfig, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestTranscriptObjectConfig::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestConversationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_channel, as: 'agentChannel'
          property :agent_id, as: 'agentId'
          property :customer_channel, as: 'customerChannel'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestGcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_object_type, as: 'bucketObjectType'
          property :bucket_uri, as: 'bucketUri'
          collection :custom_metadata_keys, as: 'customMetadataKeys'
          property :metadata_bucket_uri, as: 'metadataBucketUri'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestTranscriptObjectConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :medium, as: 'medium'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1IngestConversationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1Intent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :id, as: 'id'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1IntentMatchData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :intent_unique_id, as: 'intentUniqueId'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1InterruptionData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1IssueAssignment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :issue, as: 'issue'
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1IssueMatchData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :issue_assignment, as: 'issueAssignment', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IssueAssignment, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IssueAssignment::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1IssueModel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :input_data_config, as: 'inputDataConfig', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IssueModelInputDataConfig, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IssueModelInputDataConfig::Representation
      
          property :issue_count, :numeric_string => true, as: 'issueCount'
          property :language_code, as: 'languageCode'
          property :model_type, as: 'modelType'
          property :name, as: 'name'
          property :state, as: 'state'
          property :training_stats, as: 'trainingStats', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IssueModelLabelStats, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IssueModelLabelStats::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1IssueModelInputDataConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :medium, as: 'medium'
          property :training_conversations_count, :numeric_string => true, as: 'trainingConversationsCount'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1IssueModelLabelStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analyzed_conversations_count, :numeric_string => true, as: 'analyzedConversationsCount'
          hash :issue_stats, as: 'issueStats', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IssueModelLabelStatsIssueStats, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IssueModelLabelStatsIssueStats::Representation
      
          property :unclassified_conversations_count, :numeric_string => true, as: 'unclassifiedConversationsCount'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1IssueModelLabelStatsIssueStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :issue, as: 'issue'
          property :labeled_conversations_count, :numeric_string => true, as: 'labeledConversationsCount'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1IssueModelResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :issue_model, as: 'issueModel'
          collection :issues, as: 'issues', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IssueAssignment, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IssueAssignment::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1PhraseMatchData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :phrase_matcher, as: 'phraseMatcher'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1RedactionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deidentify_template, as: 'deidentifyTemplate'
          property :inspect_template, as: 'inspectTemplate'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1RuntimeAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_id, as: 'annotationId'
          property :answer_feedback, as: 'answerFeedback', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnswerFeedback, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnswerFeedback::Representation
      
          property :article_suggestion, as: 'articleSuggestion', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ArticleSuggestionData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ArticleSuggestionData::Representation
      
          property :conversation_summarization_suggestion, as: 'conversationSummarizationSuggestion', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationSummarizationSuggestionData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationSummarizationSuggestionData::Representation
      
          property :create_time, as: 'createTime'
          property :dialogflow_interaction, as: 'dialogflowInteraction', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DialogflowInteractionData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DialogflowInteractionData::Representation
      
          property :end_boundary, as: 'endBoundary', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnnotationBoundary, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnnotationBoundary::Representation
      
          property :faq_answer, as: 'faqAnswer', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1FaqAnswerData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1FaqAnswerData::Representation
      
          property :generator_suggestion_result, as: 'generatorSuggestionResult', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1GetGeneratorSuggestionResponse, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1GetGeneratorSuggestionResponse::Representation
      
          property :knowledge_assist_result, as: 'knowledgeAssistResult', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponse, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponse::Representation
      
          property :knowledge_search_result, as: 'knowledgeSearchResult', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SearchKnowledgeAnswer, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SearchKnowledgeAnswer::Representation
      
          property :smart_compose_suggestion, as: 'smartComposeSuggestion', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SmartComposeSuggestionData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SmartComposeSuggestionData::Representation
      
          property :smart_reply, as: 'smartReply', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SmartReplyData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SmartReplyData::Representation
      
          property :start_boundary, as: 'startBoundary', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnnotationBoundary, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnnotationBoundary::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1SearchKnowledgeAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer, as: 'answer'
          property :answer_record, as: 'answerRecord'
          collection :answer_sources, as: 'answerSources', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SearchKnowledgeAnswerAnswerSource, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SearchKnowledgeAnswerAnswerSource::Representation
      
          property :answer_type, as: 'answerType'
          property :confidence_score, as: 'confidenceScore'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1SearchKnowledgeAnswerAnswerSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document'
          property :snippet, as: 'snippet'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1SentimentData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :magnitude, as: 'magnitude'
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1SilenceData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1SmartComposeSuggestionData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence_score, as: 'confidenceScore'
          hash :metadata, as: 'metadata'
          property :query_record, as: 'queryRecord'
          property :suggestion, as: 'suggestion'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1SmartReplyData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence_score, as: 'confidenceScore'
          hash :metadata, as: 'metadata'
          property :query_record, as: 'queryRecord'
          property :reply, as: 'reply'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1SpeechConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :speech_recognizer, as: 'speechRecognizer'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1SummarySuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :summary_sections, as: 'summarySections', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SummarySuggestionSummarySection, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SummarySuggestionSummarySection::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1SummarySuggestionSummarySection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :section, as: 'section'
          property :summary, as: 'summary'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1UndeployIssueModelMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :request, as: 'request', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1UndeployIssueModelRequest, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1UndeployIssueModelRequest::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1UndeployIssueModelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1UndeployIssueModelResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1UploadConversationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analysis_operation, as: 'analysisOperation'
          property :applied_redaction_config, as: 'appliedRedactionConfig', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1RedactionConfig, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1RedactionConfig::Representation
      
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :request, as: 'request', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1UploadConversationRequest, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1UploadConversationRequest::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1UploadConversationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation, as: 'conversation', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1Conversation, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1Conversation::Representation
      
          property :conversation_id, as: 'conversationId'
          property :parent, as: 'parent'
          property :redaction_config, as: 'redactionConfig', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1RedactionConfig, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1RedactionConfig::Representation
      
          property :speech_config, as: 'speechConfig', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SpeechConfig, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SpeechConfig::Representation
      
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation, decorator: Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus, decorator: Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus::Representation
      
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
