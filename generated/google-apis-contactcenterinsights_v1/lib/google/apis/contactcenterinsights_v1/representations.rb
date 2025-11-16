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
      
      class GoogleCloudContactcenterinsightsV1AnalysisRule
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
      
      class GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList
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
      
      class GoogleCloudContactcenterinsightsV1AppealAssessmentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ArticleSuggestionData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1Assessment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1AssessmentRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1AuthorizedView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1AuthorizedViewSet
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
      
      class GoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsMetadataDownloadStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestSheetsDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestSheetsSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1CalculateStatsRequest
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
      
      class GoogleCloudContactcenterinsightsV1Dataset
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
      
      class GoogleCloudContactcenterinsightsV1DeleteQaQuestionTagMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1DeleteQaQuestionTagRequest
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
      
      class GoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest
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
      
      class GoogleCloudContactcenterinsightsV1Dimension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1DimensionClientSentimentCategoryDimensionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1DimensionConversationProfileDimensionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1DimensionConversationalAgentsPlaybookDimensionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1DimensionConversationalAgentsToolDimensionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1DimensionLabelDimensionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1DimensionMediumDimensionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1DimensionQaScorecardDimensionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1EncryptionSpec
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
      
      class GoogleCloudContactcenterinsightsV1FeedbackLabel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1FinalizeAssessmentRequest
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
      
      class GoogleCloudContactcenterinsightsV1InitializeEncryptionSpecMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1InitializeEncryptionSpecResponse
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
      
      class GoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ListAnalysesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ListAssessmentRulesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ListAssessmentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ListAuthorizedViewSetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ListAuthorizedViewsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ListConversationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ListDatasetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse
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
      
      class GoogleCloudContactcenterinsightsV1ListNotesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ListQaQuestionTagsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ListQaQuestionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ListQaScorecardsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ListViewsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1Note
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1NoteAssessmentNote
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1NoteConversationTurnNote
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1NoteQaQuestionNote
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
      
      class GoogleCloudContactcenterinsightsV1PublishAssessmentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1QaAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1QaAnswerAnswerSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1QaQuestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1QaQuestionMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1QaQuestionPredefinedQuestionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1QaQuestionTag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1QaScorecard
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1QaScorecardResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1QaScorecardRevision
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1QueryInterval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1QueryMetricsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1QueryMetricsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1QueryMetricsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1QueryMetricsResponseSlice
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceDataPoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceDataPointConversationMeasure
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceDataPointConversationMeasureQaTagScore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceTimeSeries
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1QueryPerformanceOverviewMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequestAgentSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1QueryPerformanceOverviewResponse
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
      
      class GoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1SampleConversationsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1SampleConversationsMetadataSampleConversationsStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1SampleConversationsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1SampleConversationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1SampleRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1ScheduleInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1SearchAuthorizedViewsResponse
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
      
      class GoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest
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
      
      class GoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1UpdateQaQuestionTagMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1UpdateQaQuestionTagRequest
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
      
      class GoogleCloudContactcenterinsightsV1UserInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1View
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
      
      class GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelectorQaConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelectorQaConfigScorecardList
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
      
      class GoogleCloudContactcenterinsightsV1alpha1BulkDeleteFeedbackLabelsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1BulkDeleteFeedbackLabelsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1BulkDeleteFeedbackLabelsResponse
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
      
      class GoogleCloudContactcenterinsightsV1alpha1CreateIssueMetadata
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
      
      class GoogleCloudContactcenterinsightsV1alpha1CreateIssueRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1Dataset
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
      
      class GoogleCloudContactcenterinsightsV1alpha1DeleteQaQuestionTagMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DeleteQaQuestionTagRequest
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
      
      class GoogleCloudContactcenterinsightsV1alpha1Dimension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DimensionAgentDimensionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DimensionClientSentimentCategoryDimensionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DimensionConversationProfileDimensionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DimensionConversationalAgentsPlaybookDimensionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DimensionConversationalAgentsToolDimensionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DimensionIssueDimensionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DimensionLabelDimensionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DimensionMediumDimensionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DimensionQaQuestionAnswerDimensionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DimensionQaQuestionDimensionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DimensionQaScorecardDimensionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1EncryptionSpec
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
      
      class GoogleCloudContactcenterinsightsV1alpha1FeedbackLabel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1GcsSource
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
      
      class GoogleCloudContactcenterinsightsV1alpha1InitializeEncryptionSpecMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1InitializeEncryptionSpecRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1InitializeEncryptionSpecResponse
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
      
      class GoogleCloudContactcenterinsightsV1alpha1Issue
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
      
      class GoogleCloudContactcenterinsightsV1alpha1ListAllFeedbackLabelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ListFeedbackLabelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1PhraseMatchData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1QaAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1QaAnswerAnswerSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1QaAnswerAnswerValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1QaQuestionTag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1QaScorecardResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1QaScorecardResultQaTagResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1QaScorecardResultScoreSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1QueryMetricsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSlice
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceDataPoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceDataPointConversationMeasure
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceDataPointConversationMeasureQaTagScore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceTimeSeries
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1QueryPerformanceOverviewMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1QueryPerformanceOverviewResponse
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
      
      class GoogleCloudContactcenterinsightsV1alpha1RuntimeAnnotationUserInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1SampleConversationsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1SampleConversationsMetadataSampleConversationsStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1SampleConversationsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1SampleConversationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1SampleRule
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
      
      class GoogleCloudContactcenterinsightsV1alpha1UpdateQaQuestionTagMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1UpdateQaQuestionTagRequest
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
      
      class GoogleIamV1AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1AuditLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1TestIamPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1TestIamPermissionsResponse
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
      
      class GoogleTypeExpr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeInterval
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
      
          collection :qa_scorecard_results, as: 'qaScorecardResults', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecardResult, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecardResult::Representation
      
          collection :sentiments, as: 'sentiments', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationLevelSentiment, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationLevelSentiment::Representation
      
          property :silence, as: 'silence', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationLevelSilence, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationLevelSilence::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1AnalysisRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active, as: 'active'
          property :analysis_percentage, as: 'analysisPercentage'
          property :annotator_selector, as: 'annotatorSelector', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotatorSelector, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotatorSelector::Representation
      
          property :conversation_filter, as: 'conversationFilter'
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
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
          property :qa_config, as: 'qaConfig', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig::Representation
      
          property :run_entity_annotator, as: 'runEntityAnnotator'
          property :run_intent_annotator, as: 'runIntentAnnotator'
          property :run_interruption_annotator, as: 'runInterruptionAnnotator'
          property :run_issue_model_annotator, as: 'runIssueModelAnnotator'
          property :run_phrase_matcher_annotator, as: 'runPhraseMatcherAnnotator'
          property :run_qa_annotator, as: 'runQaAnnotator'
          property :run_sentiment_annotator, as: 'runSentimentAnnotator'
          property :run_silence_annotator, as: 'runSilenceAnnotator'
          property :run_summarization_annotator, as: 'runSummarizationAnnotator'
          property :summarization_config, as: 'summarizationConfig', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :scorecard_list, as: 'scorecardList', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :qa_scorecard_revisions, as: 'qaScorecardRevisions'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation_profile, as: 'conversationProfile'
          property :generator, as: 'generator'
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
      
      class GoogleCloudContactcenterinsightsV1AppealAssessmentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
      
      class GoogleCloudContactcenterinsightsV1Assessment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_info, as: 'agentInfo', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo::Representation
      
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1AssessmentRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active, as: 'active'
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :sample_rule, as: 'sampleRule', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SampleRule, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SampleRule::Representation
      
          property :schedule_info, as: 'scheduleInfo', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ScheduleInfo, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ScheduleInfo::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1AuthorizedView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation_filter, as: 'conversationFilter'
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1AuthorizedViewSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
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
      
      class GoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :partial_errors, as: 'partialErrors', class: Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus, decorator: Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus::Representation
      
          property :request, as: 'request', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsRequest, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsRequest::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :parent, as: 'parent'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :download_stats, as: 'downloadStats', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsMetadataDownloadStats, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsMetadataDownloadStats::Representation
      
          property :end_time, as: 'endTime'
          collection :partial_errors, as: 'partialErrors', class: Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus, decorator: Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus::Representation
      
          property :request, as: 'request', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsMetadataDownloadStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :file_names, as: 'fileNames'
          property :processed_object_count, as: 'processedObjectCount'
          property :successful_download_count, as: 'successfulDownloadCount'
          property :total_files_written, as: 'totalFilesWritten'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation_filter, as: 'conversationFilter'
          property :feedback_label_type, as: 'feedbackLabelType'
          property :filter, as: 'filter'
          property :gcs_destination, as: 'gcsDestination', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination::Representation
      
          property :max_download_count, as: 'maxDownloadCount'
          property :parent, as: 'parent'
          property :sheets_destination, as: 'sheetsDestination', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestSheetsDestination, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestSheetsDestination::Representation
      
          collection :template_qa_scorecard_id, as: 'templateQaScorecardId'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :add_whitespace, as: 'addWhitespace'
          property :always_print_empty_fields, as: 'alwaysPrintEmptyFields'
          property :format, as: 'format'
          property :object_uri, as: 'objectUri'
          property :records_per_file_count, :numeric_string => true, as: 'recordsPerFileCount'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestSheetsDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sheet_title, as: 'sheetTitle'
          property :spreadsheet_uri, as: 'spreadsheetUri'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_source, as: 'gcsSource', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource::Representation
      
          property :sheets_source, as: 'sheetsSource', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestSheetsSource, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestSheetsSource::Representation
      
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :format, as: 'format'
          property :object_uri, as: 'objectUri'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestSheetsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :spreadsheet_uri, as: 'spreadsheetUri'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_stats, as: 'currentStats', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModelLabelStats, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModelLabelStats::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1CalculateStatsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
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
          property :metadata_json, as: 'metadataJson'
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
      
          property :metadata_uri, as: 'metadataUri'
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
          collection :feedback_labels, as: 'feedbackLabels', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel::Representation
      
          property :menu_path, as: 'menuPath'
          property :wait_duration, as: 'waitDuration'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_id, as: 'agentId'
          property :agent_type, as: 'agentType'
          property :deployment_display_name, as: 'deploymentDisplayName'
          property :deployment_id, as: 'deploymentId'
          property :display_name, as: 'displayName'
          property :disposition_code, as: 'dispositionCode'
          property :location, as: 'location'
          property :team, as: 'team'
          collection :teams, as: 'teams'
          property :version_display_name, as: 'versionDisplayName'
          property :version_id, as: 'versionId'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer_record, as: 'answerRecord'
          property :confidence, as: 'confidence'
          property :conversation_model, as: 'conversationModel'
          property :generator_id, as: 'generatorId'
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
      
      class GoogleCloudContactcenterinsightsV1Dataset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :ttl, as: 'ttl'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
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
      
      class GoogleCloudContactcenterinsightsV1DeleteQaQuestionTagMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :request, as: 'request', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DeleteQaQuestionTagRequest, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DeleteQaQuestionTagRequest::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1DeleteQaQuestionTagRequest
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
      
      class GoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest
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
      
      class GoogleCloudContactcenterinsightsV1Dimension
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_dimension_metadata, as: 'agentDimensionMetadata', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata::Representation
      
          property :client_sentiment_category_dimension_metadata, as: 'clientSentimentCategoryDimensionMetadata', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DimensionClientSentimentCategoryDimensionMetadata, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DimensionClientSentimentCategoryDimensionMetadata::Representation
      
          property :conversation_profile_dimension_metadata, as: 'conversationProfileDimensionMetadata', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DimensionConversationProfileDimensionMetadata, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DimensionConversationProfileDimensionMetadata::Representation
      
          property :conversational_agents_playbook_dimension_metadata, as: 'conversationalAgentsPlaybookDimensionMetadata', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DimensionConversationalAgentsPlaybookDimensionMetadata, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DimensionConversationalAgentsPlaybookDimensionMetadata::Representation
      
          property :conversational_agents_tool_dimension_metadata, as: 'conversationalAgentsToolDimensionMetadata', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DimensionConversationalAgentsToolDimensionMetadata, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DimensionConversationalAgentsToolDimensionMetadata::Representation
      
          property :dimension_key, as: 'dimensionKey'
          property :issue_dimension_metadata, as: 'issueDimensionMetadata', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata::Representation
      
          property :label_dimension_metadata, as: 'labelDimensionMetadata', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DimensionLabelDimensionMetadata, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DimensionLabelDimensionMetadata::Representation
      
          property :medium_dimension_metadata, as: 'mediumDimensionMetadata', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DimensionMediumDimensionMetadata, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DimensionMediumDimensionMetadata::Representation
      
          property :qa_question_answer_dimension_metadata, as: 'qaQuestionAnswerDimensionMetadata', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata::Representation
      
          property :qa_question_dimension_metadata, as: 'qaQuestionDimensionMetadata', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata::Representation
      
          property :qa_scorecard_dimension_metadata, as: 'qaScorecardDimensionMetadata', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DimensionQaScorecardDimensionMetadata, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DimensionQaScorecardDimensionMetadata::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_deployment_display_name, as: 'agentDeploymentDisplayName'
          property :agent_deployment_id, as: 'agentDeploymentId'
          property :agent_display_name, as: 'agentDisplayName'
          property :agent_id, as: 'agentId'
          property :agent_team, as: 'agentTeam'
          property :agent_version_display_name, as: 'agentVersionDisplayName'
          property :agent_version_id, as: 'agentVersionId'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1DimensionClientSentimentCategoryDimensionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sentiment_category, as: 'sentimentCategory'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1DimensionConversationProfileDimensionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation_profile_id, as: 'conversationProfileId'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1DimensionConversationalAgentsPlaybookDimensionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :playbook_display_name, as: 'playbookDisplayName'
          property :playbook_id, as: 'playbookId'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1DimensionConversationalAgentsToolDimensionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tool_display_name, as: 'toolDisplayName'
          property :tool_id, as: 'toolId'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :issue_display_name, as: 'issueDisplayName'
          property :issue_id, as: 'issueId'
          property :issue_model_id, as: 'issueModelId'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1DimensionLabelDimensionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label_key, as: 'labelKey'
          property :label_value, as: 'labelValue'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1DimensionMediumDimensionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :medium, as: 'medium'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer_value, as: 'answerValue'
          property :qa_question_id, as: 'qaQuestionId'
          property :qa_scorecard_id, as: 'qaScorecardId'
          property :question_body, as: 'questionBody'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :qa_question_id, as: 'qaQuestionId'
          property :qa_scorecard_id, as: 'qaScorecardId'
          property :question_body, as: 'questionBody'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1DimensionQaScorecardDimensionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :qa_scorecard_id, as: 'qaScorecardId'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1EncryptionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key, as: 'kmsKey'
          property :name, as: 'name'
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
          property :completed_export_count, as: 'completedExportCount'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :failed_export_count, as: 'failedExportCount'
          collection :partial_errors, as: 'partialErrors', class: Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus, decorator: Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus::Representation
      
          property :request, as: 'request', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :big_query_destination, as: 'bigQueryDestination', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination::Representation
      
          property :export_schema_version, as: 'exportSchemaVersion'
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
      
      class GoogleCloudContactcenterinsightsV1FeedbackLabel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :label, as: 'label'
          property :labeled_resource, as: 'labeledResource'
          property :name, as: 'name'
          property :qa_answer_label, as: 'qaAnswerLabel', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1FinalizeAssessmentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
          property :issue_model, as: 'issueModel', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModel, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModel::Representation
      
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
      
          collection :sampled_conversations, as: 'sampledConversations'
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
      
          property :sample_size, as: 'sampleSize'
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
          property :audio_bucket_uri, as: 'audioBucketUri'
          property :bucket_object_type, as: 'bucketObjectType'
          property :bucket_uri, as: 'bucketUri'
          collection :custom_metadata_keys, as: 'customMetadataKeys'
          property :metadata_bucket_uri, as: 'metadataBucketUri'
          property :transcript_bucket_uri, as: 'transcriptBucketUri'
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
      
      class GoogleCloudContactcenterinsightsV1InitializeEncryptionSpecMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          collection :partial_errors, as: 'partialErrors', class: Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus, decorator: Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus::Representation
      
          property :request, as: 'request', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encryption_spec, as: 'encryptionSpec', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1EncryptionSpec, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1EncryptionSpec::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1InitializeEncryptionSpecResponse
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
          property :display_description, as: 'displayDescription'
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
      
      class GoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :feedback_labels, as: 'feedbackLabels', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ListAnalysesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :analyses, as: 'analyses', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Analysis, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Analysis::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :analysis_rules, as: 'analysisRules', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnalysisRule, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnalysisRule::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ListAssessmentRulesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assessment_rules, as: 'assessmentRules', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AssessmentRule, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AssessmentRule::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ListAssessmentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assessments, as: 'assessments', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ListAuthorizedViewSetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :authorized_view_sets, as: 'authorizedViewSets', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedViewSet, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedViewSet::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ListAuthorizedViewsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :authorized_views, as: 'authorizedViews', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedView, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedView::Representation
      
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
      
      class GoogleCloudContactcenterinsightsV1ListDatasetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :datasets, as: 'datasets', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dataset, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dataset::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :feedback_labels, as: 'feedbackLabels', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel::Representation
      
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
      
      class GoogleCloudContactcenterinsightsV1ListNotesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :notes, as: 'notes', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Note, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Note::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :phrase_matchers, as: 'phraseMatchers', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatcher, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatcher::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ListQaQuestionTagsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :qa_question_tags, as: 'qaQuestionTags', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestionTag, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestionTag::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ListQaQuestionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :qa_questions, as: 'qaQuestions', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestion, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestion::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :qa_scorecard_revisions, as: 'qaScorecardRevisions', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecardRevision, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecardRevision::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ListQaScorecardsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :qa_scorecards, as: 'qaScorecards', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecard, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecard::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ListViewsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :views, as: 'views', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1View, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1View::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1Note
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :assessment_note, as: 'assessmentNote', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1NoteAssessmentNote, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1NoteAssessmentNote::Representation
      
          property :content, as: 'content'
          property :conversation_turn_note, as: 'conversationTurnNote', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1NoteConversationTurnNote, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1NoteConversationTurnNote::Representation
      
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :note_creator, as: 'noteCreator', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1UserInfo, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1UserInfo::Representation
      
          property :qa_question_note, as: 'qaQuestionNote', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1NoteQaQuestionNote, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1NoteQaQuestionNote::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1NoteAssessmentNote
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudContactcenterinsightsV1NoteConversationTurnNote
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :turn_index, as: 'turnIndex'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1NoteQaQuestionNote
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :qa_question, as: 'qaQuestion'
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
      
      class GoogleCloudContactcenterinsightsV1PublishAssessmentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudContactcenterinsightsV1QaAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :answer_sources, as: 'answerSources', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaAnswerAnswerSource, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaAnswerAnswerSource::Representation
      
          property :answer_value, as: 'answerValue', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue::Representation
      
          property :conversation, as: 'conversation'
          property :qa_question, as: 'qaQuestion'
          property :question_body, as: 'questionBody'
          collection :tags, as: 'tags'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1QaAnswerAnswerSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer_value, as: 'answerValue', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue::Representation
      
          property :source_type, as: 'sourceType'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bool_value, as: 'boolValue'
          property :key, as: 'key'
          property :na_value, as: 'naValue'
          property :normalized_score, as: 'normalizedScore'
          property :num_value, as: 'numValue'
          property :potential_score, as: 'potentialScore'
          property :score, as: 'score'
          property :skip_value, as: 'skipValue'
          property :str_value, as: 'strValue'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1QaQuestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :abbreviation, as: 'abbreviation'
          collection :answer_choices, as: 'answerChoices', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice::Representation
      
          property :answer_instructions, as: 'answerInstructions'
          property :create_time, as: 'createTime'
          property :metrics, as: 'metrics', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestionMetrics, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestionMetrics::Representation
      
          property :name, as: 'name'
          property :order, as: 'order'
          property :predefined_question_config, as: 'predefinedQuestionConfig', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestionPredefinedQuestionConfig, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestionPredefinedQuestionConfig::Representation
      
          property :question_body, as: 'questionBody'
          property :question_type, as: 'questionType'
          collection :tags, as: 'tags'
          property :tuning_metadata, as: 'tuningMetadata', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bool_value, as: 'boolValue'
          property :key, as: 'key'
          property :na_value, as: 'naValue'
          property :num_value, as: 'numValue'
          property :score, as: 'score'
          property :str_value, as: 'strValue'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1QaQuestionMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accuracy, as: 'accuracy'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1QaQuestionPredefinedQuestionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1QaQuestionTag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          collection :qa_question_ids, as: 'qaQuestionIds'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dataset_validation_warnings, as: 'datasetValidationWarnings'
          property :total_valid_label_count, :numeric_string => true, as: 'totalValidLabelCount'
          property :tuning_error, as: 'tuningError'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1QaScorecard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :is_default, as: 'isDefault'
          property :name, as: 'name'
          property :source, as: 'source'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1QaScorecardResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_id, as: 'agentId'
          property :conversation, as: 'conversation'
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :normalized_score, as: 'normalizedScore'
          property :potential_score, as: 'potentialScore'
          collection :qa_answers, as: 'qaAnswers', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaAnswer, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaAnswer::Representation
      
          property :qa_scorecard_revision, as: 'qaScorecardRevision'
          collection :qa_tag_results, as: 'qaTagResults', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult::Representation
      
          property :score, as: 'score'
          collection :score_sources, as: 'scoreSources', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :normalized_score, as: 'normalizedScore'
          property :potential_score, as: 'potentialScore'
          property :score, as: 'score'
          property :tag, as: 'tag'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :normalized_score, as: 'normalizedScore'
          property :potential_score, as: 'potentialScore'
          collection :qa_tag_results, as: 'qaTagResults', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult::Representation
      
          property :score, as: 'score'
          property :source_type, as: 'sourceType'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1QaScorecardRevision
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :alternate_ids, as: 'alternateIds'
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :snapshot, as: 'snapshot', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecard, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecard::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1QueryInterval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1QueryMetricsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :result_is_truncated, as: 'resultIsTruncated'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1QueryMetricsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dimensions, as: 'dimensions', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dimension, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dimension::Representation
      
          property :filter, as: 'filter'
          property :measure_mask, as: 'measureMask'
          property :time_granularity, as: 'timeGranularity'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1QueryMetricsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location'
          property :macro_average_slice, as: 'macroAverageSlice', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QueryMetricsResponseSlice, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QueryMetricsResponseSlice::Representation
      
          collection :slices, as: 'slices', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QueryMetricsResponseSlice, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QueryMetricsResponseSlice::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1QueryMetricsResponseSlice
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dimensions, as: 'dimensions', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dimension, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dimension::Representation
      
          property :time_series, as: 'timeSeries', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceTimeSeries, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceTimeSeries::Representation
      
          property :total, as: 'total', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceDataPoint, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceDataPoint::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceDataPoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation_measure, as: 'conversationMeasure', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceDataPointConversationMeasure, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceDataPointConversationMeasure::Representation
      
          property :interval, as: 'interval', class: Google::Apis::ContactcenterinsightsV1::GoogleTypeInterval, decorator: Google::Apis::ContactcenterinsightsV1::GoogleTypeInterval::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceDataPointConversationMeasure
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :average_agent_sentiment_score, as: 'averageAgentSentimentScore'
          property :average_client_sentiment_score, as: 'averageClientSentimentScore'
          property :average_customer_satisfaction_rating, as: 'averageCustomerSatisfactionRating'
          property :average_duration, as: 'averageDuration'
          property :average_qa_normalized_score, as: 'averageQaNormalizedScore'
          property :average_qa_question_normalized_score, as: 'averageQaQuestionNormalizedScore'
          property :average_silence_percentage, as: 'averageSilencePercentage'
          property :average_turn_count, as: 'averageTurnCount'
          property :conversation_count, as: 'conversationCount'
          collection :qa_tag_scores, as: 'qaTagScores', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceDataPointConversationMeasureQaTagScore, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceDataPointConversationMeasureQaTagScore::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceDataPointConversationMeasureQaTagScore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :average_tag_normalized_score, as: 'averageTagNormalizedScore'
          property :tag, as: 'tag'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceTimeSeries
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_points, as: 'dataPoints', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceDataPoint, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceDataPoint::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1QueryPerformanceOverviewMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_performance_source, as: 'agentPerformanceSource', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequestAgentSource, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequestAgentSource::Representation
      
          property :comparison_query_interval, as: 'comparisonQueryInterval', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QueryInterval, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QueryInterval::Representation
      
          property :filter, as: 'filter'
          property :query_interval, as: 'queryInterval', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QueryInterval, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QueryInterval::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequestAgentSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_id, as: 'agentId'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1QueryPerformanceOverviewResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :summary_text, as: 'summaryText'
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
      
          property :smart_compose_suggestion, as: 'smartComposeSuggestion', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SmartComposeSuggestionData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SmartComposeSuggestionData::Representation
      
          property :smart_reply, as: 'smartReply', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SmartReplyData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SmartReplyData::Representation
      
          property :start_boundary, as: 'startBoundary', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotationBoundary, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotationBoundary::Representation
      
          property :user_input, as: 'userInput', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generator_name, as: 'generatorName'
          property :query, as: 'query'
          property :query_source, as: 'querySource'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1SampleConversationsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          collection :partial_errors, as: 'partialErrors', class: Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus, decorator: Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus::Representation
      
          property :request, as: 'request', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SampleConversationsRequest, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SampleConversationsRequest::Representation
      
          property :sample_conversations_stats, as: 'sampleConversationsStats', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SampleConversationsMetadataSampleConversationsStats, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SampleConversationsMetadataSampleConversationsStats::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1SampleConversationsMetadataSampleConversationsStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :failed_sample_count, as: 'failedSampleCount'
          property :successful_sample_count, as: 'successfulSampleCount'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1SampleConversationsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_dataset, as: 'destinationDataset', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dataset, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dataset::Representation
      
          property :parent, as: 'parent'
          property :sample_rule, as: 'sampleRule', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SampleRule, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SampleRule::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1SampleConversationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudContactcenterinsightsV1SampleRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation_filter, as: 'conversationFilter'
          property :dimension, as: 'dimension'
          property :sample_percentage, as: 'samplePercentage'
          property :sample_row, :numeric_string => true, as: 'sampleRow'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1ScheduleInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :schedule, as: 'schedule'
          property :start_time, as: 'startTime'
          property :time_zone, as: 'timeZone'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1SearchAuthorizedViewsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :authorized_views, as: 'authorizedViews', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedView, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedView::Representation
      
          property :next_page_token, as: 'nextPageToken'
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
      
          property :screen_recording_bucket_uri, as: 'screenRecordingBucketUri'
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
      
      class GoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :validate_only, as: 'validateOnly'
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
      
      class GoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudContactcenterinsightsV1UpdateQaQuestionTagMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :request, as: 'request', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1UpdateQaQuestionTagRequest, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1UpdateQaQuestionTagRequest::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1UpdateQaQuestionTagRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :qa_question_tag, as: 'qaQuestionTag', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestionTag, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestionTag::Representation
      
          property :update_mask, as: 'updateMask'
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
      
      class GoogleCloudContactcenterinsightsV1UserInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :username, as: 'username'
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
      
          collection :qa_scorecard_results, as: 'qaScorecardResults', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QaScorecardResult, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QaScorecardResult::Representation
      
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
          property :qa_config, as: 'qaConfig', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelectorQaConfig, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelectorQaConfig::Representation
      
          property :run_entity_annotator, as: 'runEntityAnnotator'
          property :run_intent_annotator, as: 'runIntentAnnotator'
          property :run_interruption_annotator, as: 'runInterruptionAnnotator'
          property :run_issue_model_annotator, as: 'runIssueModelAnnotator'
          property :run_phrase_matcher_annotator, as: 'runPhraseMatcherAnnotator'
          property :run_qa_annotator, as: 'runQaAnnotator'
          property :run_sentiment_annotator, as: 'runSentimentAnnotator'
          property :run_silence_annotator, as: 'runSilenceAnnotator'
          property :run_summarization_annotator, as: 'runSummarizationAnnotator'
          property :summarization_config, as: 'summarizationConfig', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelectorSummarizationConfig, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelectorSummarizationConfig::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelectorQaConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :scorecard_list, as: 'scorecardList', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelectorQaConfigScorecardList, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelectorQaConfigScorecardList::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelectorQaConfigScorecardList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :qa_scorecard_revisions, as: 'qaScorecardRevisions'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelectorSummarizationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation_profile, as: 'conversationProfile'
          property :generator, as: 'generator'
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
      
      class GoogleCloudContactcenterinsightsV1alpha1BulkDeleteFeedbackLabelsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :partial_errors, as: 'partialErrors', class: Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus, decorator: Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus::Representation
      
          property :request, as: 'request', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1BulkDeleteFeedbackLabelsRequest, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1BulkDeleteFeedbackLabelsRequest::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1BulkDeleteFeedbackLabelsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :parent, as: 'parent'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1BulkDeleteFeedbackLabelsResponse
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
          property :metadata_json, as: 'metadataJson'
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
      
          property :metadata_uri, as: 'metadataUri'
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
          collection :feedback_labels, as: 'feedbackLabels', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1FeedbackLabel, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1FeedbackLabel::Representation
      
          property :menu_path, as: 'menuPath'
          property :wait_duration, as: 'waitDuration'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ConversationQualityMetadataAgentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_id, as: 'agentId'
          property :agent_type, as: 'agentType'
          property :deployment_display_name, as: 'deploymentDisplayName'
          property :deployment_id, as: 'deploymentId'
          property :display_name, as: 'displayName'
          property :disposition_code, as: 'dispositionCode'
          property :location, as: 'location'
          property :team, as: 'team'
          collection :teams, as: 'teams'
          property :version_display_name, as: 'versionDisplayName'
          property :version_id, as: 'versionId'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ConversationSummarizationSuggestionData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer_record, as: 'answerRecord'
          property :confidence, as: 'confidence'
          property :conversation_model, as: 'conversationModel'
          property :generator_id, as: 'generatorId'
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
      
      class GoogleCloudContactcenterinsightsV1alpha1CreateIssueMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :request, as: 'request', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1CreateIssueRequest, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1CreateIssueRequest::Representation
      
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
      
      class GoogleCloudContactcenterinsightsV1alpha1CreateIssueRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :issue, as: 'issue', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1Issue, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1Issue::Representation
      
          property :parent, as: 'parent'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1Dataset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :ttl, as: 'ttl'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
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
      
      class GoogleCloudContactcenterinsightsV1alpha1DeleteQaQuestionTagMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :request, as: 'request', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DeleteQaQuestionTagRequest, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DeleteQaQuestionTagRequest::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DeleteQaQuestionTagRequest
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
      
      class GoogleCloudContactcenterinsightsV1alpha1Dimension
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_dimension_metadata, as: 'agentDimensionMetadata', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DimensionAgentDimensionMetadata, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DimensionAgentDimensionMetadata::Representation
      
          property :client_sentiment_category_dimension_metadata, as: 'clientSentimentCategoryDimensionMetadata', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DimensionClientSentimentCategoryDimensionMetadata, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DimensionClientSentimentCategoryDimensionMetadata::Representation
      
          property :conversation_profile_dimension_metadata, as: 'conversationProfileDimensionMetadata', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DimensionConversationProfileDimensionMetadata, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DimensionConversationProfileDimensionMetadata::Representation
      
          property :conversational_agents_playbook_dimension_metadata, as: 'conversationalAgentsPlaybookDimensionMetadata', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DimensionConversationalAgentsPlaybookDimensionMetadata, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DimensionConversationalAgentsPlaybookDimensionMetadata::Representation
      
          property :conversational_agents_tool_dimension_metadata, as: 'conversationalAgentsToolDimensionMetadata', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DimensionConversationalAgentsToolDimensionMetadata, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DimensionConversationalAgentsToolDimensionMetadata::Representation
      
          property :dimension_key, as: 'dimensionKey'
          property :issue_dimension_metadata, as: 'issueDimensionMetadata', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DimensionIssueDimensionMetadata, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DimensionIssueDimensionMetadata::Representation
      
          property :label_dimension_metadata, as: 'labelDimensionMetadata', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DimensionLabelDimensionMetadata, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DimensionLabelDimensionMetadata::Representation
      
          property :medium_dimension_metadata, as: 'mediumDimensionMetadata', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DimensionMediumDimensionMetadata, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DimensionMediumDimensionMetadata::Representation
      
          property :qa_question_answer_dimension_metadata, as: 'qaQuestionAnswerDimensionMetadata', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DimensionQaQuestionAnswerDimensionMetadata, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DimensionQaQuestionAnswerDimensionMetadata::Representation
      
          property :qa_question_dimension_metadata, as: 'qaQuestionDimensionMetadata', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DimensionQaQuestionDimensionMetadata, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DimensionQaQuestionDimensionMetadata::Representation
      
          property :qa_scorecard_dimension_metadata, as: 'qaScorecardDimensionMetadata', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DimensionQaScorecardDimensionMetadata, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DimensionQaScorecardDimensionMetadata::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DimensionAgentDimensionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_deployment_display_name, as: 'agentDeploymentDisplayName'
          property :agent_deployment_id, as: 'agentDeploymentId'
          property :agent_display_name, as: 'agentDisplayName'
          property :agent_id, as: 'agentId'
          property :agent_team, as: 'agentTeam'
          property :agent_version_display_name, as: 'agentVersionDisplayName'
          property :agent_version_id, as: 'agentVersionId'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DimensionClientSentimentCategoryDimensionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sentiment_category, as: 'sentimentCategory'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DimensionConversationProfileDimensionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation_profile_id, as: 'conversationProfileId'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DimensionConversationalAgentsPlaybookDimensionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :playbook_display_name, as: 'playbookDisplayName'
          property :playbook_id, as: 'playbookId'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DimensionConversationalAgentsToolDimensionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tool_display_name, as: 'toolDisplayName'
          property :tool_id, as: 'toolId'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DimensionIssueDimensionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :issue_display_name, as: 'issueDisplayName'
          property :issue_id, as: 'issueId'
          property :issue_model_id, as: 'issueModelId'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DimensionLabelDimensionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label_key, as: 'labelKey'
          property :label_value, as: 'labelValue'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DimensionMediumDimensionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :medium, as: 'medium'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DimensionQaQuestionAnswerDimensionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer_value, as: 'answerValue'
          property :qa_question_id, as: 'qaQuestionId'
          property :qa_scorecard_id, as: 'qaScorecardId'
          property :question_body, as: 'questionBody'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DimensionQaQuestionDimensionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :qa_question_id, as: 'qaQuestionId'
          property :qa_scorecard_id, as: 'qaScorecardId'
          property :question_body, as: 'questionBody'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1DimensionQaScorecardDimensionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :qa_scorecard_id, as: 'qaScorecardId'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1EncryptionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key, as: 'kmsKey'
          property :name, as: 'name'
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
          property :completed_export_count, as: 'completedExportCount'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :failed_export_count, as: 'failedExportCount'
          collection :partial_errors, as: 'partialErrors', class: Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus, decorator: Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus::Representation
      
          property :request, as: 'request', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataRequest, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataRequest::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :big_query_destination, as: 'bigQueryDestination', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataRequestBigQueryDestination, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataRequestBigQueryDestination::Representation
      
          property :export_schema_version, as: 'exportSchemaVersion'
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
      
      class GoogleCloudContactcenterinsightsV1alpha1FeedbackLabel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :label, as: 'label'
          property :labeled_resource, as: 'labeledResource'
          property :name, as: 'name'
          property :qa_answer_label, as: 'qaAnswerLabel', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QaAnswerAnswerValue, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QaAnswerAnswerValue::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1GcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_uri, as: 'audioUri'
          property :transcript_uri, as: 'transcriptUri'
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
          property :issue_model, as: 'issueModel', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IssueModel, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IssueModel::Representation
      
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
      
          collection :sampled_conversations, as: 'sampledConversations'
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
      
          property :sample_size, as: 'sampleSize'
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
          property :audio_bucket_uri, as: 'audioBucketUri'
          property :bucket_object_type, as: 'bucketObjectType'
          property :bucket_uri, as: 'bucketUri'
          collection :custom_metadata_keys, as: 'customMetadataKeys'
          property :metadata_bucket_uri, as: 'metadataBucketUri'
          property :transcript_bucket_uri, as: 'transcriptBucketUri'
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
      
      class GoogleCloudContactcenterinsightsV1alpha1InitializeEncryptionSpecMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          collection :partial_errors, as: 'partialErrors', class: Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus, decorator: Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus::Representation
      
          property :request, as: 'request', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1InitializeEncryptionSpecRequest, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1InitializeEncryptionSpecRequest::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1InitializeEncryptionSpecRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encryption_spec, as: 'encryptionSpec', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1EncryptionSpec, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1EncryptionSpec::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1InitializeEncryptionSpecResponse
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
      
      class GoogleCloudContactcenterinsightsV1alpha1Issue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_description, as: 'displayDescription'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          collection :sample_utterances, as: 'sampleUtterances'
          property :update_time, as: 'updateTime'
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
      
      class GoogleCloudContactcenterinsightsV1alpha1ListAllFeedbackLabelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :feedback_labels, as: 'feedbackLabels', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1FeedbackLabel, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1FeedbackLabel::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1ListFeedbackLabelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :feedback_labels, as: 'feedbackLabels', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1FeedbackLabel, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1FeedbackLabel::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1PhraseMatchData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :phrase_matcher, as: 'phraseMatcher'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1QaAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :answer_sources, as: 'answerSources', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QaAnswerAnswerSource, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QaAnswerAnswerSource::Representation
      
          property :answer_value, as: 'answerValue', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QaAnswerAnswerValue, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QaAnswerAnswerValue::Representation
      
          property :conversation, as: 'conversation'
          property :qa_question, as: 'qaQuestion'
          property :question_body, as: 'questionBody'
          collection :tags, as: 'tags'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1QaAnswerAnswerSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer_value, as: 'answerValue', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QaAnswerAnswerValue, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QaAnswerAnswerValue::Representation
      
          property :source_type, as: 'sourceType'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1QaAnswerAnswerValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bool_value, as: 'boolValue'
          property :key, as: 'key'
          property :na_value, as: 'naValue'
          property :normalized_score, as: 'normalizedScore'
          property :num_value, as: 'numValue'
          property :potential_score, as: 'potentialScore'
          property :score, as: 'score'
          property :skip_value, as: 'skipValue'
          property :str_value, as: 'strValue'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1QaQuestionTag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          collection :qa_question_ids, as: 'qaQuestionIds'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1QaScorecardResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_id, as: 'agentId'
          property :conversation, as: 'conversation'
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :normalized_score, as: 'normalizedScore'
          property :potential_score, as: 'potentialScore'
          collection :qa_answers, as: 'qaAnswers', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QaAnswer, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QaAnswer::Representation
      
          property :qa_scorecard_revision, as: 'qaScorecardRevision'
          collection :qa_tag_results, as: 'qaTagResults', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QaScorecardResultQaTagResult, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QaScorecardResultQaTagResult::Representation
      
          property :score, as: 'score'
          collection :score_sources, as: 'scoreSources', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QaScorecardResultScoreSource, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QaScorecardResultScoreSource::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1QaScorecardResultQaTagResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :normalized_score, as: 'normalizedScore'
          property :potential_score, as: 'potentialScore'
          property :score, as: 'score'
          property :tag, as: 'tag'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1QaScorecardResultScoreSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :normalized_score, as: 'normalizedScore'
          property :potential_score, as: 'potentialScore'
          collection :qa_tag_results, as: 'qaTagResults', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QaScorecardResultQaTagResult, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QaScorecardResultQaTagResult::Representation
      
          property :score, as: 'score'
          property :source_type, as: 'sourceType'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1QueryMetricsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :result_is_truncated, as: 'resultIsTruncated'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location'
          property :macro_average_slice, as: 'macroAverageSlice', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSlice, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSlice::Representation
      
          collection :slices, as: 'slices', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSlice, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSlice::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSlice
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dimensions, as: 'dimensions', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1Dimension, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1Dimension::Representation
      
          property :time_series, as: 'timeSeries', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceTimeSeries, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceTimeSeries::Representation
      
          property :total, as: 'total', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceDataPoint, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceDataPoint::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceDataPoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation_measure, as: 'conversationMeasure', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceDataPointConversationMeasure, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceDataPointConversationMeasure::Representation
      
          property :interval, as: 'interval', class: Google::Apis::ContactcenterinsightsV1::GoogleTypeInterval, decorator: Google::Apis::ContactcenterinsightsV1::GoogleTypeInterval::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceDataPointConversationMeasure
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :average_agent_sentiment_score, as: 'averageAgentSentimentScore'
          property :average_client_sentiment_score, as: 'averageClientSentimentScore'
          property :average_customer_satisfaction_rating, as: 'averageCustomerSatisfactionRating'
          property :average_duration, as: 'averageDuration'
          property :average_qa_normalized_score, as: 'averageQaNormalizedScore'
          property :average_qa_question_normalized_score, as: 'averageQaQuestionNormalizedScore'
          property :average_silence_percentage, as: 'averageSilencePercentage'
          property :average_turn_count, as: 'averageTurnCount'
          property :conversation_count, as: 'conversationCount'
          collection :qa_tag_scores, as: 'qaTagScores', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceDataPointConversationMeasureQaTagScore, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceDataPointConversationMeasureQaTagScore::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceDataPointConversationMeasureQaTagScore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :average_tag_normalized_score, as: 'averageTagNormalizedScore'
          property :tag, as: 'tag'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceTimeSeries
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_points, as: 'dataPoints', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceDataPoint, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceDataPoint::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1QueryPerformanceOverviewMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1QueryPerformanceOverviewResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :summary_text, as: 'summaryText'
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
      
          property :smart_compose_suggestion, as: 'smartComposeSuggestion', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SmartComposeSuggestionData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SmartComposeSuggestionData::Representation
      
          property :smart_reply, as: 'smartReply', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SmartReplyData, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SmartReplyData::Representation
      
          property :start_boundary, as: 'startBoundary', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnnotationBoundary, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnnotationBoundary::Representation
      
          property :user_input, as: 'userInput', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1RuntimeAnnotationUserInput, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1RuntimeAnnotationUserInput::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1RuntimeAnnotationUserInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generator_name, as: 'generatorName'
          property :query, as: 'query'
          property :query_source, as: 'querySource'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1SampleConversationsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          collection :partial_errors, as: 'partialErrors', class: Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus, decorator: Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus::Representation
      
          property :request, as: 'request', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SampleConversationsRequest, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SampleConversationsRequest::Representation
      
          property :sample_conversations_stats, as: 'sampleConversationsStats', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SampleConversationsMetadataSampleConversationsStats, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SampleConversationsMetadataSampleConversationsStats::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1SampleConversationsMetadataSampleConversationsStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :failed_sample_count, as: 'failedSampleCount'
          property :successful_sample_count, as: 'successfulSampleCount'
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1SampleConversationsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_dataset, as: 'destinationDataset', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1Dataset, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1Dataset::Representation
      
          property :parent, as: 'parent'
          property :sample_rule, as: 'sampleRule', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SampleRule, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SampleRule::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1SampleConversationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1SampleRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation_filter, as: 'conversationFilter'
          property :dimension, as: 'dimension'
          property :sample_percentage, as: 'samplePercentage'
          property :sample_row, :numeric_string => true, as: 'sampleRow'
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
      
      class GoogleCloudContactcenterinsightsV1alpha1UpdateQaQuestionTagMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :request, as: 'request', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1UpdateQaQuestionTagRequest, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1UpdateQaQuestionTagRequest::Representation
      
        end
      end
      
      class GoogleCloudContactcenterinsightsV1alpha1UpdateQaQuestionTagRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :qa_question_tag, as: 'qaQuestionTag', class: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QaQuestionTag, decorator: Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QaQuestionTag::Representation
      
          property :update_mask, as: 'updateMask'
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
      
      class GoogleIamV1AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::ContactcenterinsightsV1::GoogleIamV1AuditLogConfig, decorator: Google::Apis::ContactcenterinsightsV1::GoogleIamV1AuditLogConfig::Representation
      
          property :service, as: 'service'
        end
      end
      
      class GoogleIamV1AuditLogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exempted_members, as: 'exemptedMembers'
          property :log_type, as: 'logType'
        end
      end
      
      class GoogleIamV1Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::ContactcenterinsightsV1::GoogleTypeExpr, decorator: Google::Apis::ContactcenterinsightsV1::GoogleTypeExpr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class GoogleIamV1Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::ContactcenterinsightsV1::GoogleIamV1AuditConfig, decorator: Google::Apis::ContactcenterinsightsV1::GoogleIamV1AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::ContactcenterinsightsV1::GoogleIamV1Binding, decorator: Google::Apis::ContactcenterinsightsV1::GoogleIamV1Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class GoogleIamV1SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::ContactcenterinsightsV1::GoogleIamV1Policy, decorator: Google::Apis::ContactcenterinsightsV1::GoogleIamV1Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleIamV1TestIamPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class GoogleIamV1TestIamPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation, decorator: Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
      
          collection :unreachable, as: 'unreachable'
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
      
      class GoogleTypeExpr
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :expression, as: 'expression'
          property :location, as: 'location'
          property :title, as: 'title'
        end
      end
      
      class GoogleTypeInterval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
    end
  end
end
