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
      
      class GoogleCloudContactcenterinsightsV1ConversationParticipant
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
      
      class GoogleCloudContactcenterinsightsV1CreateIssueMetadata
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
      
      class GoogleCloudContactcenterinsightsV1CreateIssueRequest
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
      
      class GoogleCloudContactcenterinsightsV1FaqAnswerData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1GcsSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1HoldData
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
      
      class GoogleCloudContactcenterinsightsV1RuntimeAnnotation
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
      
      class GoogleCloudContactcenterinsightsV1View
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelector
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
      
          property :medium, as: 'medium'
          property :name, as: 'name'
          property :obfuscated_user_id, as: 'obfuscatedUserId'
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
      
      class GoogleCloudContactcenterinsightsV1CreateIssueMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :request, as: 'request', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CreateIssueRequest, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CreateIssueRequest::Representation
      
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
      
      class GoogleCloudContactcenterinsightsV1CreateIssueRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :issue, as: 'issue', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Issue, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Issue::Representation
      
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
      
      class GoogleCloudContactcenterinsightsV1GcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_uri, as: 'audioUri'
          property :transcript_uri, as: 'transcriptUri'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1HoldData
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
          property :transcript_object_config, as: 'transcriptObjectConfig', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_id, as: 'agentId'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_uri, as: 'bucketUri'
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
      
      class GoogleCloudContactcenterinsightsV1RuntimeAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_id, as: 'annotationId'
          property :answer_feedback, as: 'answerFeedback', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnswerFeedback, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnswerFeedback::Representation
      
          property :article_suggestion, as: 'articleSuggestion', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ArticleSuggestionData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ArticleSuggestionData::Representation
      
          property :create_time, as: 'createTime'
          property :dialogflow_interaction, as: 'dialogflowInteraction', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DialogflowInteractionData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DialogflowInteractionData::Representation
      
          property :end_boundary, as: 'endBoundary', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotationBoundary, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotationBoundary::Representation
      
          property :faq_answer, as: 'faqAnswer', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FaqAnswerData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FaqAnswerData::Representation
      
          property :smart_compose_suggestion, as: 'smartComposeSuggestion', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SmartComposeSuggestionData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SmartComposeSuggestionData::Representation
      
          property :smart_reply, as: 'smartReply', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SmartReplyData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SmartReplyData::Representation
      
          property :start_boundary, as: 'startBoundary', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotationBoundary, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotationBoundary::Representation
      
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
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1BulkAnalyzeConversationsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :completed_analyses_count, as: 'completedAnalysesCount'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :failed_analyses_count, as: 'failedAnalysesCount'
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
          property :transcript_object_config, as: 'transcriptObjectConfig', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestTranscriptObjectConfig, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestTranscriptObjectConfig::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestConversationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_id, as: 'agentId'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestGcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_uri, as: 'bucketUri'
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
      
      class GoogleCloudContactcenterinsightsV1alpha1IssueModel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :input_data_config, as: 'inputDataConfig', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IssueModelInputDataConfig, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IssueModelInputDataConfig::Representation
      
          property :issue_count, :numeric_string => true, as: 'issueCount'
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
