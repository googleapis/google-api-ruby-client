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
    module DialogflowV3
      
      class GoogleCloudDialogflowCxV3AdvancedSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3Agent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3AgentValidationResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3AudioInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3BatchRunTestCasesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3BatchRunTestCasesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3BatchRunTestCasesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3CalculateCoverageResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3Changelog
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3CompareVersionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3CompareVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ContinuousTestResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ConversationSignals
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ConversationTurn
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ConversationTurnUserInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3CreateDocumentOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3CreateVersionOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3DeleteDocumentOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3DeployFlowMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3DeployFlowRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3DeployFlowResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3Deployment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3DeploymentResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3DetectIntentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3DetectIntentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3DtmfInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3EntityType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3EntityTypeEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3Environment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3EnvironmentVersionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3EnvironmentWebhookConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3EventHandler
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3EventInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3Experiment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ExperimentDefinition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ExperimentResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ExperimentResultMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ExportAgentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ExportAgentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ExportFlowRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ExportFlowResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ExportTestCasesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ExportTestCasesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ExportTestCasesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3Flow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3FlowValidationResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3Form
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3FormParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3FormParameterFillBehavior
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3FulfillIntentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3FulfillIntentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3Fulfillment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3FulfillmentConditionalCases
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3FulfillmentSetParameterAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ImportDocumentsOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ImportDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ImportFlowRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ImportFlowResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ImportTestCasesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ImportTestCasesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ImportTestCasesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3InputAudioConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3Intent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3IntentCoverage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3IntentCoverageIntent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3IntentInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3IntentParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3IntentTrainingPhrase
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3IntentTrainingPhrasePart
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ListAgentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ListChangelogsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ListContinuousTestResultsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ListDeploymentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ListEntityTypesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ListEnvironmentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ListExperimentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ListFlowsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ListIntentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ListPagesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ListSecuritySettingsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ListTestCaseResultsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ListTestCasesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ListVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ListWebhooksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3LoadVersionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3Match
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3MatchIntentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3MatchIntentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3NluSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3OutputAudioConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3Page
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3PageInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3PageInfoFormInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3QueryInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3QueryParameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3QueryResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ReloadDocumentOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ResourceName
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ResponseMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ResponseMessageEndInteraction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ResponseMessageMixedAudio
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ResponseMessagePlayAudio
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ResponseMessageText
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3RestoreAgentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3RolloutConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3RolloutConfigRolloutStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3RolloutState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3RunContinuousTestMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3RunContinuousTestRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3RunContinuousTestResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3RunTestCaseMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3RunTestCaseRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3RunTestCaseResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3SecuritySettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3SentimentAnalysisResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3SessionEntityType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3SessionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3SpeechToTextSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3StartExperimentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3StopExperimentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3SynthesizeSpeechConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3TestCase
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3TestCaseError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3TestCaseResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3TestConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3TestError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3TestRunDifference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3TextInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3TrainFlowRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3TransitionCoverage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3TransitionCoverageTransition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3TransitionRoute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3TransitionRouteGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3TransitionRouteGroupCoverage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3TurnSignals
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3UpdateDocumentOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ValidateAgentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ValidateFlowRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ValidationMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3VariantsHistory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3Version
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3VersionVariants
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3VersionVariantsVariant
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3VoiceSelectionParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3Webhook
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3WebhookGenericWebService
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3WebhookRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3WebhookRequestIntentInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3WebhookResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1AudioInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1BatchRunTestCasesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1BatchRunTestCasesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ContinuousTestResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ConversationSignals
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ConversationTurn
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1CreateDocumentOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1DeleteDocumentOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1DeployFlowMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1DeployFlowResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1DtmfInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1Environment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1EventHandler
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1EventInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportAgentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportFlowResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportTestCasesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportTestCasesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1Form
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1FormParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1Fulfillment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ImportDocumentsOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ImportDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ImportFlowResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ImportTestCasesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ImportTestCasesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1InputAudioConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1Intent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1IntentInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1IntentParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1Page
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1PageInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1PageInfoFormInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1QueryInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ReloadDocumentOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ResponseMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ResponseMessageText
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1RunContinuousTestMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1RunContinuousTestResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1RunTestCaseMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1RunTestCaseResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1SessionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1TestCase
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1TestCaseError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1TestCaseResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1TestConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1TestError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1TestRunDifference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1TextInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1TransitionRoute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1TurnSignals
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1UpdateDocumentOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1Webhook
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1WebhookGenericWebService
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1WebhookRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1WebhookResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2AnnotatedMessagePart
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2ArticleAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2ArticleSuggestionModelMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2BatchUpdateIntentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2Context
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2ConversationEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2ConversationModel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2CreateConversationDatasetOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2CreateConversationModelOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2DeleteConversationDatasetOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2DeleteConversationModelOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2DeployConversationModelOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2EntityType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2EntityTypeEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2EventInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2ExportAgentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2ExportOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2FaqAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2GcsDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2HumanAgentAssistantEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2ImportConversationDataOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2ImportConversationDataOperationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2ImportDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2InputDataset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2Intent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2IntentFollowupIntentInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2IntentMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2IntentMessageBasicCard
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2IntentMessageBasicCardButton
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2IntentMessageCard
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2IntentMessageCardButton
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2IntentMessageCarouselSelect
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2IntentMessageCarouselSelectItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2IntentMessageColumnProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2IntentMessageImage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2IntentMessageListSelect
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2IntentMessageListSelectItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2IntentMessageMediaContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2IntentMessageQuickReplies
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2IntentMessageSelectItemInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2IntentMessageSimpleResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2IntentMessageSimpleResponses
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2IntentMessageSuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2IntentMessageSuggestions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2IntentMessageTableCard
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2IntentMessageTableCardCell
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2IntentMessageTableCardRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2IntentMessageText
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2IntentParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2IntentTrainingPhrase
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2IntentTrainingPhrasePart
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2KnowledgeOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2Message
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2MessageAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2OriginalDetectIntentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2QueryResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2Sentiment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2SentimentAnalysisResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2SessionEntityType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2SmartReplyAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2SmartReplyModelMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2SuggestArticlesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2SuggestFaqAnswersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2SuggestSmartRepliesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2SuggestionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2UndeployConversationModelOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2WebhookRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2WebhookResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1AnnotatedMessagePart
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1ArticleAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1Context
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1ConversationEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1EntityType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1EntityTypeEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1EventInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1ExportAgentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1ExportOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1FaqAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1GcsDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1HumanAgentAssistantEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1ImportDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1Intent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageBasicCard
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageCard
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageCardButton
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageColumnProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageImage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageListSelect
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageListSelectItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageMediaContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageQuickReplies
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageRbmText
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageSuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageSuggestions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageTableCard
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageTableCardCell
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageTableCardRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageText
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentTrainingPhrase
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1KnowledgeAnswers
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1Message
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1MessageAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1QueryResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1Sentiment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1SentimentAnalysisResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1SessionEntityType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1SmartReplyAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1SuggestArticlesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1SuggestionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1WebhookRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1WebhookResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV3alpha1ConversationSignals
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV3alpha1CreateDocumentOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV3alpha1DeleteDocumentOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV3alpha1ImportDocumentsOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV3alpha1ImportDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV3alpha1ReloadDocumentOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV3alpha1TurnSignals
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV3alpha1UpdateDocumentOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudLocationListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudLocationLocation
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
      
      class GoogleTypeLatLng
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3AdvancedSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :logging_settings, as: 'loggingSettings', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_interaction_logging, as: 'enableInteractionLogging'
          property :enable_stackdriver_logging, as: 'enableStackdriverLogging'
        end
      end
      
      class GoogleCloudDialogflowCxV3Agent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advanced_settings, as: 'advancedSettings', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3AdvancedSettings, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3AdvancedSettings::Representation
      
          property :avatar_uri, as: 'avatarUri'
          property :default_language_code, as: 'defaultLanguageCode'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :enable_spell_correction, as: 'enableSpellCorrection'
          property :enable_stackdriver_logging, as: 'enableStackdriverLogging'
          property :locked, as: 'locked'
          property :name, as: 'name'
          property :security_settings, as: 'securitySettings'
          property :speech_to_text_settings, as: 'speechToTextSettings', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SpeechToTextSettings, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SpeechToTextSettings::Representation
      
          property :start_flow, as: 'startFlow'
          collection :supported_language_codes, as: 'supportedLanguageCodes'
          property :time_zone, as: 'timeZone'
        end
      end
      
      class GoogleCloudDialogflowCxV3AgentValidationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :flow_validation_results, as: 'flowValidationResults', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FlowValidationResult, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FlowValidationResult::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDialogflowCxV3AudioInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio, :base64 => true, as: 'audio'
          property :config, as: 'config', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3InputAudioConfig, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3InputAudioConfig::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :names, as: 'names'
        end
      end
      
      class GoogleCloudDialogflowCxV3BatchRunTestCasesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :errors, as: 'errors', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestError, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestError::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3BatchRunTestCasesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :environment, as: 'environment'
          collection :test_cases, as: 'testCases'
        end
      end
      
      class GoogleCloudDialogflowCxV3BatchRunTestCasesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :results, as: 'results', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCaseResult, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCaseResult::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3CalculateCoverageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent, as: 'agent'
          property :intent_coverage, as: 'intentCoverage', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3IntentCoverage, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3IntentCoverage::Representation
      
          property :route_group_coverage, as: 'routeGroupCoverage', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroupCoverage, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroupCoverage::Representation
      
          property :transition_coverage, as: 'transitionCoverage', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionCoverage, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionCoverage::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3Changelog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :resource, as: 'resource'
          property :type, as: 'type'
          property :user_email, as: 'userEmail'
        end
      end
      
      class GoogleCloudDialogflowCxV3CompareVersionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
          property :target_version, as: 'targetVersion'
        end
      end
      
      class GoogleCloudDialogflowCxV3CompareVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_version_content_json, as: 'baseVersionContentJson'
          property :compare_time, as: 'compareTime'
          property :target_version_content_json, as: 'targetVersionContentJson'
        end
      end
      
      class GoogleCloudDialogflowCxV3ContinuousTestResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :result, as: 'result'
          property :run_time, as: 'runTime'
          collection :test_case_results, as: 'testCaseResults'
        end
      end
      
      class GoogleCloudDialogflowCxV3ConversationSignals
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :turn_signals, as: 'turnSignals', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TurnSignals, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TurnSignals::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3ConversationTurn
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :user_input, as: 'userInput', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ConversationTurnUserInput, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ConversationTurnUserInput::Representation
      
          property :virtual_agent_output, as: 'virtualAgentOutput', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3ConversationTurnUserInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_sentiment_analysis, as: 'enableSentimentAnalysis'
          hash :injected_parameters, as: 'injectedParameters'
          property :input, as: 'input', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3QueryInput, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3QueryInput::Representation
      
          property :is_webhook_enabled, as: 'isWebhookEnabled'
        end
      end
      
      class GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_page, as: 'currentPage', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Page, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Page::Representation
      
          hash :diagnostic_info, as: 'diagnosticInfo'
          collection :differences, as: 'differences', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestRunDifference, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestRunDifference::Representation
      
          hash :session_parameters, as: 'sessionParameters'
          property :status, as: 'status', class: Google::Apis::DialogflowV3::GoogleRpcStatus, decorator: Google::Apis::DialogflowV3::GoogleRpcStatus::Representation
      
          collection :text_responses, as: 'textResponses', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessageText, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessageText::Representation
      
          property :triggered_intent, as: 'triggeredIntent', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Intent, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Intent::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3CreateDocumentOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3CreateVersionOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudDialogflowCxV3DeleteDocumentOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3DeployFlowMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :test_errors, as: 'testErrors', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestError, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestError::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3DeployFlowRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :flow_version, as: 'flowVersion'
        end
      end
      
      class GoogleCloudDialogflowCxV3DeployFlowResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployment, as: 'deployment'
          property :environment, as: 'environment', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Environment, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Environment::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3Deployment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :flow_version, as: 'flowVersion'
          property :name, as: 'name'
          property :result, as: 'result', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DeploymentResult, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DeploymentResult::Representation
      
          property :start_time, as: 'startTime'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDialogflowCxV3DeploymentResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :deployment_test_results, as: 'deploymentTestResults'
          property :experiment, as: 'experiment'
        end
      end
      
      class GoogleCloudDialogflowCxV3DetectIntentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :output_audio_config, as: 'outputAudioConfig', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3OutputAudioConfig, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3OutputAudioConfig::Representation
      
          property :query_input, as: 'queryInput', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3QueryInput, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3QueryInput::Representation
      
          property :query_params, as: 'queryParams', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3QueryParameters, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3QueryParameters::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3DetectIntentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_cancellation, as: 'allowCancellation'
          property :output_audio, :base64 => true, as: 'outputAudio'
          property :output_audio_config, as: 'outputAudioConfig', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3OutputAudioConfig, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3OutputAudioConfig::Representation
      
          property :query_result, as: 'queryResult', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3QueryResult, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3QueryResult::Representation
      
          property :response_id, as: 'responseId'
          property :response_type, as: 'responseType'
        end
      end
      
      class GoogleCloudDialogflowCxV3DtmfInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :digits, as: 'digits'
          property :finish_digit, as: 'finishDigit'
        end
      end
      
      class GoogleCloudDialogflowCxV3EntityType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_expansion_mode, as: 'autoExpansionMode'
          property :display_name, as: 'displayName'
          property :enable_fuzzy_extraction, as: 'enableFuzzyExtraction'
          collection :entities, as: 'entities', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EntityTypeEntity, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EntityTypeEntity::Representation
      
          collection :excluded_phrases, as: 'excludedPhrases', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase::Representation
      
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :redact, as: 'redact'
        end
      end
      
      class GoogleCloudDialogflowCxV3EntityTypeEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :synonyms, as: 'synonyms'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudDialogflowCxV3Environment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :test_cases_config, as: 'testCasesConfig', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig::Representation
      
          property :update_time, as: 'updateTime'
          collection :version_configs, as: 'versionConfigs', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EnvironmentVersionConfig, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EnvironmentVersionConfig::Representation
      
          property :webhook_config, as: 'webhookConfig', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EnvironmentWebhookConfig, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EnvironmentWebhookConfig::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_continuous_run, as: 'enableContinuousRun'
          property :enable_predeployment_run, as: 'enablePredeploymentRun'
          collection :test_cases, as: 'testCases'
        end
      end
      
      class GoogleCloudDialogflowCxV3EnvironmentVersionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudDialogflowCxV3EnvironmentWebhookConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :webhook_overrides, as: 'webhookOverrides', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Webhook, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Webhook::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3EventHandler
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event, as: 'event'
          property :name, as: 'name'
          property :target_flow, as: 'targetFlow'
          property :target_page, as: 'targetPage'
          property :trigger_fulfillment, as: 'triggerFulfillment', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Fulfillment, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Fulfillment::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3EventInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event, as: 'event'
        end
      end
      
      class GoogleCloudDialogflowCxV3Experiment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :definition, as: 'definition', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ExperimentDefinition, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ExperimentDefinition::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :end_time, as: 'endTime'
          property :experiment_length, as: 'experimentLength'
          property :last_update_time, as: 'lastUpdateTime'
          property :name, as: 'name'
          property :result, as: 'result', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ExperimentResult, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ExperimentResult::Representation
      
          property :rollout_config, as: 'rolloutConfig', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3RolloutConfig, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3RolloutConfig::Representation
      
          property :rollout_failure_reason, as: 'rolloutFailureReason'
          property :rollout_state, as: 'rolloutState', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3RolloutState, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3RolloutState::Representation
      
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          collection :variants_history, as: 'variantsHistory', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3VariantsHistory, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3VariantsHistory::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3ExperimentDefinition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition'
          property :version_variants, as: 'versionVariants', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3VersionVariants, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3VersionVariants::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3ExperimentResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_update_time, as: 'lastUpdateTime'
          collection :version_metrics, as: 'versionMetrics', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence_level, as: 'confidenceLevel'
          property :lower_bound, as: 'lowerBound'
          property :ratio, as: 'ratio'
          property :upper_bound, as: 'upperBound'
        end
      end
      
      class GoogleCloudDialogflowCxV3ExperimentResultMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence_interval, as: 'confidenceInterval', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval::Representation
      
          property :count, as: 'count'
          property :count_type, as: 'countType'
          property :ratio, as: 'ratio'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :metrics, as: 'metrics', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ExperimentResultMetric, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ExperimentResultMetric::Representation
      
          property :session_count, as: 'sessionCount'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudDialogflowCxV3ExportAgentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_uri, as: 'agentUri'
          property :data_format, as: 'dataFormat'
          property :environment, as: 'environment'
        end
      end
      
      class GoogleCloudDialogflowCxV3ExportAgentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_content, :base64 => true, as: 'agentContent'
          property :agent_uri, as: 'agentUri'
        end
      end
      
      class GoogleCloudDialogflowCxV3ExportFlowRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :flow_uri, as: 'flowUri'
          property :include_referenced_flows, as: 'includeReferencedFlows'
        end
      end
      
      class GoogleCloudDialogflowCxV3ExportFlowResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :flow_content, :base64 => true, as: 'flowContent'
          property :flow_uri, as: 'flowUri'
        end
      end
      
      class GoogleCloudDialogflowCxV3ExportTestCasesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDialogflowCxV3ExportTestCasesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_format, as: 'dataFormat'
          property :filter, as: 'filter'
          property :gcs_uri, as: 'gcsUri'
        end
      end
      
      class GoogleCloudDialogflowCxV3ExportTestCasesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, :base64 => true, as: 'content'
          property :gcs_uri, as: 'gcsUri'
        end
      end
      
      class GoogleCloudDialogflowCxV3Flow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          collection :event_handlers, as: 'eventHandlers', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EventHandler, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EventHandler::Representation
      
          property :name, as: 'name'
          property :nlu_settings, as: 'nluSettings', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3NluSettings, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3NluSettings::Representation
      
          collection :transition_route_groups, as: 'transitionRouteGroups'
          collection :transition_routes, as: 'transitionRoutes', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRoute, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRoute::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3FlowValidationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
          collection :validation_messages, as: 'validationMessages', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ValidationMessage, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ValidationMessage::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3Form
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :parameters, as: 'parameters', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FormParameter, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FormParameter::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3FormParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_value, as: 'defaultValue'
          property :display_name, as: 'displayName'
          property :entity_type, as: 'entityType'
          property :fill_behavior, as: 'fillBehavior', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FormParameterFillBehavior, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FormParameterFillBehavior::Representation
      
          property :is_list, as: 'isList'
          property :redact, as: 'redact'
          property :required, as: 'required'
        end
      end
      
      class GoogleCloudDialogflowCxV3FormParameterFillBehavior
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :initial_prompt_fulfillment, as: 'initialPromptFulfillment', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Fulfillment, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Fulfillment::Representation
      
          collection :reprompt_event_handlers, as: 'repromptEventHandlers', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EventHandler, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EventHandler::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3FulfillIntentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :match, as: 'match', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Match, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Match::Representation
      
          property :match_intent_request, as: 'matchIntentRequest', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3MatchIntentRequest, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3MatchIntentRequest::Representation
      
          property :output_audio_config, as: 'outputAudioConfig', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3OutputAudioConfig, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3OutputAudioConfig::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3FulfillIntentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :output_audio, :base64 => true, as: 'outputAudio'
          property :output_audio_config, as: 'outputAudioConfig', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3OutputAudioConfig, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3OutputAudioConfig::Representation
      
          property :query_result, as: 'queryResult', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3QueryResult, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3QueryResult::Representation
      
          property :response_id, as: 'responseId'
        end
      end
      
      class GoogleCloudDialogflowCxV3Fulfillment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conditional_cases, as: 'conditionalCases', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FulfillmentConditionalCases, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FulfillmentConditionalCases::Representation
      
          collection :messages, as: 'messages', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessage, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessage::Representation
      
          property :return_partial_responses, as: 'returnPartialResponses'
          collection :set_parameter_actions, as: 'setParameterActions', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FulfillmentSetParameterAction, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FulfillmentSetParameterAction::Representation
      
          property :tag, as: 'tag'
          property :webhook, as: 'webhook'
        end
      end
      
      class GoogleCloudDialogflowCxV3FulfillmentConditionalCases
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cases, as: 'cases', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :case_content, as: 'caseContent', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent::Representation
      
          property :condition, as: 'condition'
        end
      end
      
      class GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :additional_cases, as: 'additionalCases', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FulfillmentConditionalCases, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FulfillmentConditionalCases::Representation
      
          property :message, as: 'message', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessage, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessage::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3FulfillmentSetParameterAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parameter, as: 'parameter'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDialogflowCxV3ImportDocumentsOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3ImportDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :warnings, as: 'warnings', class: Google::Apis::DialogflowV3::GoogleRpcStatus, decorator: Google::Apis::DialogflowV3::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3ImportFlowRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :flow_content, :base64 => true, as: 'flowContent'
          property :flow_uri, as: 'flowUri'
          property :import_option, as: 'importOption'
        end
      end
      
      class GoogleCloudDialogflowCxV3ImportFlowResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :flow, as: 'flow'
        end
      end
      
      class GoogleCloudDialogflowCxV3ImportTestCasesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :errors, as: 'errors', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCaseError, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCaseError::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3ImportTestCasesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, :base64 => true, as: 'content'
          property :gcs_uri, as: 'gcsUri'
        end
      end
      
      class GoogleCloudDialogflowCxV3ImportTestCasesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :names, as: 'names'
        end
      end
      
      class GoogleCloudDialogflowCxV3InputAudioConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_encoding, as: 'audioEncoding'
          property :enable_word_info, as: 'enableWordInfo'
          property :model, as: 'model'
          property :model_variant, as: 'modelVariant'
          collection :phrase_hints, as: 'phraseHints'
          property :sample_rate_hertz, as: 'sampleRateHertz'
          property :single_utterance, as: 'singleUtterance'
        end
      end
      
      class GoogleCloudDialogflowCxV3Intent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :is_fallback, as: 'isFallback'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          collection :parameters, as: 'parameters', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3IntentParameter, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3IntentParameter::Representation
      
          property :priority, as: 'priority'
          collection :training_phrases, as: 'trainingPhrases', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3IntentTrainingPhrase, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3IntentTrainingPhrase::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3IntentCoverage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :coverage_score, as: 'coverageScore'
          collection :intents, as: 'intents', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3IntentCoverageIntent, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3IntentCoverageIntent::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3IntentCoverageIntent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :covered, as: 'covered'
          property :intent, as: 'intent'
        end
      end
      
      class GoogleCloudDialogflowCxV3IntentInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :intent, as: 'intent'
        end
      end
      
      class GoogleCloudDialogflowCxV3IntentParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity_type, as: 'entityType'
          property :id, as: 'id'
          property :is_list, as: 'isList'
          property :redact, as: 'redact'
        end
      end
      
      class GoogleCloudDialogflowCxV3IntentTrainingPhrase
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :parts, as: 'parts', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3IntentTrainingPhrasePart, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3IntentTrainingPhrasePart::Representation
      
          property :repeat_count, as: 'repeatCount'
        end
      end
      
      class GoogleCloudDialogflowCxV3IntentTrainingPhrasePart
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parameter_id, as: 'parameterId'
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDialogflowCxV3ListAgentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :agents, as: 'agents', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Agent, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Agent::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDialogflowCxV3ListChangelogsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :changelogs, as: 'changelogs', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Changelog, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Changelog::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDialogflowCxV3ListContinuousTestResultsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :continuous_test_results, as: 'continuousTestResults', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ContinuousTestResult, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ContinuousTestResult::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDialogflowCxV3ListDeploymentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :deployments, as: 'deployments', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Deployment, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Deployment::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDialogflowCxV3ListEntityTypesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entity_types, as: 'entityTypes', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EntityType, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EntityType::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDialogflowCxV3ListEnvironmentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :environments, as: 'environments', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Environment, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Environment::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDialogflowCxV3ListExperimentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :experiments, as: 'experiments', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Experiment, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Experiment::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDialogflowCxV3ListFlowsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :flows, as: 'flows', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Flow, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Flow::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDialogflowCxV3ListIntentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :intents, as: 'intents', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Intent, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Intent::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDialogflowCxV3ListPagesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :pages, as: 'pages', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Page, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Page::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3ListSecuritySettingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :security_settings, as: 'securitySettings', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SecuritySettings, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SecuritySettings::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :session_entity_types, as: 'sessionEntityTypes', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3ListTestCaseResultsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :test_case_results, as: 'testCaseResults', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCaseResult, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCaseResult::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3ListTestCasesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :test_cases, as: 'testCases', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCase, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCase::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :transition_route_groups, as: 'transitionRouteGroups', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroup, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroup::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3ListVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :versions, as: 'versions', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Version, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Version::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3ListWebhooksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :webhooks, as: 'webhooks', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Webhook, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Webhook::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3LoadVersionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_override_agent_resources, as: 'allowOverrideAgentResources'
        end
      end
      
      class GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :environments, as: 'environments', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Environment, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Environment::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDialogflowCxV3Match
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :event, as: 'event'
          property :intent, as: 'intent', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Intent, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Intent::Representation
      
          property :match_type, as: 'matchType'
          hash :parameters, as: 'parameters'
          property :resolved_input, as: 'resolvedInput'
        end
      end
      
      class GoogleCloudDialogflowCxV3MatchIntentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query_input, as: 'queryInput', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3QueryInput, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3QueryInput::Representation
      
          property :query_params, as: 'queryParams', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3QueryParameters, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3QueryParameters::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3MatchIntentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_page, as: 'currentPage', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Page, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Page::Representation
      
          collection :matches, as: 'matches', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Match, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Match::Representation
      
          property :text, as: 'text'
          property :transcript, as: 'transcript'
          property :trigger_event, as: 'triggerEvent'
          property :trigger_intent, as: 'triggerIntent'
        end
      end
      
      class GoogleCloudDialogflowCxV3NluSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :classification_threshold, as: 'classificationThreshold'
          property :model_training_mode, as: 'modelTrainingMode'
          property :model_type, as: 'modelType'
        end
      end
      
      class GoogleCloudDialogflowCxV3OutputAudioConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_encoding, as: 'audioEncoding'
          property :sample_rate_hertz, as: 'sampleRateHertz'
          property :synthesize_speech_config, as: 'synthesizeSpeechConfig', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SynthesizeSpeechConfig, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SynthesizeSpeechConfig::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3Page
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :entry_fulfillment, as: 'entryFulfillment', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Fulfillment, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Fulfillment::Representation
      
          collection :event_handlers, as: 'eventHandlers', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EventHandler, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EventHandler::Representation
      
          property :form, as: 'form', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Form, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Form::Representation
      
          property :name, as: 'name'
          collection :transition_route_groups, as: 'transitionRouteGroups'
          collection :transition_routes, as: 'transitionRoutes', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRoute, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRoute::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3PageInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_page, as: 'currentPage'
          property :display_name, as: 'displayName'
          property :form_info, as: 'formInfo', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3PageInfoFormInfo, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3PageInfoFormInfo::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3PageInfoFormInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :parameter_info, as: 'parameterInfo', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :just_collected, as: 'justCollected'
          property :required, as: 'required'
          property :state, as: 'state'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudDialogflowCxV3QueryInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio, as: 'audio', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3AudioInput, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3AudioInput::Representation
      
          property :dtmf, as: 'dtmf', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DtmfInput, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DtmfInput::Representation
      
          property :event, as: 'event', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EventInput, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EventInput::Representation
      
          property :intent, as: 'intent', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3IntentInput, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3IntentInput::Representation
      
          property :language_code, as: 'languageCode'
          property :text, as: 'text', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TextInput, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TextInput::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3QueryParameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analyze_query_text_sentiment, as: 'analyzeQueryTextSentiment'
          property :channel, as: 'channel'
          property :current_page, as: 'currentPage'
          property :disable_webhook, as: 'disableWebhook'
          collection :flow_versions, as: 'flowVersions'
          property :geo_location, as: 'geoLocation', class: Google::Apis::DialogflowV3::GoogleTypeLatLng, decorator: Google::Apis::DialogflowV3::GoogleTypeLatLng::Representation
      
          hash :parameters, as: 'parameters'
          hash :payload, as: 'payload'
          collection :session_entity_types, as: 'sessionEntityTypes', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType::Representation
      
          property :time_zone, as: 'timeZone'
          hash :webhook_headers, as: 'webhookHeaders'
        end
      end
      
      class GoogleCloudDialogflowCxV3QueryResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_page, as: 'currentPage', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Page, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Page::Representation
      
          hash :diagnostic_info, as: 'diagnosticInfo'
          property :dtmf, as: 'dtmf', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DtmfInput, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DtmfInput::Representation
      
          property :intent, as: 'intent', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Intent, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Intent::Representation
      
          property :intent_detection_confidence, as: 'intentDetectionConfidence'
          property :language_code, as: 'languageCode'
          property :match, as: 'match', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Match, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Match::Representation
      
          hash :parameters, as: 'parameters'
          collection :response_messages, as: 'responseMessages', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessage, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessage::Representation
      
          property :sentiment_analysis_result, as: 'sentimentAnalysisResult', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SentimentAnalysisResult, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SentimentAnalysisResult::Representation
      
          property :text, as: 'text'
          property :transcript, as: 'transcript'
          property :trigger_event, as: 'triggerEvent'
          property :trigger_intent, as: 'triggerIntent'
          collection :webhook_payloads, as: 'webhookPayloads'
          collection :webhook_statuses, as: 'webhookStatuses', class: Google::Apis::DialogflowV3::GoogleRpcStatus, decorator: Google::Apis::DialogflowV3::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3ReloadDocumentOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3ResourceName
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDialogflowCxV3ResponseMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel, as: 'channel'
          property :conversation_success, as: 'conversationSuccess', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess::Representation
      
          property :end_interaction, as: 'endInteraction', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessageEndInteraction, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessageEndInteraction::Representation
      
          property :live_agent_handoff, as: 'liveAgentHandoff', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff::Representation
      
          property :mixed_audio, as: 'mixedAudio', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessageMixedAudio, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessageMixedAudio::Representation
      
          property :output_audio_text, as: 'outputAudioText', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText::Representation
      
          hash :payload, as: 'payload'
          property :play_audio, as: 'playAudio', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessagePlayAudio, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessagePlayAudio::Representation
      
          property :telephony_transfer_call, as: 'telephonyTransferCall', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall::Representation
      
          property :text, as: 'text', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessageText, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessageText::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :metadata, as: 'metadata'
        end
      end
      
      class GoogleCloudDialogflowCxV3ResponseMessageEndInteraction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :metadata, as: 'metadata'
        end
      end
      
      class GoogleCloudDialogflowCxV3ResponseMessageMixedAudio
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :segments, as: 'segments', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_playback_interruption, as: 'allowPlaybackInterruption'
          property :audio, :base64 => true, as: 'audio'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_playback_interruption, as: 'allowPlaybackInterruption'
          property :ssml, as: 'ssml'
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDialogflowCxV3ResponseMessagePlayAudio
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_playback_interruption, as: 'allowPlaybackInterruption'
          property :audio_uri, as: 'audioUri'
        end
      end
      
      class GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :phone_number, as: 'phoneNumber'
        end
      end
      
      class GoogleCloudDialogflowCxV3ResponseMessageText
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_playback_interruption, as: 'allowPlaybackInterruption'
          collection :text, as: 'text'
        end
      end
      
      class GoogleCloudDialogflowCxV3RestoreAgentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_content, :base64 => true, as: 'agentContent'
          property :agent_uri, as: 'agentUri'
          property :restore_option, as: 'restoreOption'
        end
      end
      
      class GoogleCloudDialogflowCxV3RolloutConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :failure_condition, as: 'failureCondition'
          property :rollout_condition, as: 'rolloutCondition'
          collection :rollout_steps, as: 'rolloutSteps', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3RolloutConfigRolloutStep, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3RolloutConfigRolloutStep::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3RolloutConfigRolloutStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :min_duration, as: 'minDuration'
          property :traffic_percent, as: 'trafficPercent'
        end
      end
      
      class GoogleCloudDialogflowCxV3RolloutState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :start_time, as: 'startTime'
          property :step, as: 'step'
          property :step_index, as: 'stepIndex'
        end
      end
      
      class GoogleCloudDialogflowCxV3RunContinuousTestMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :errors, as: 'errors', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestError, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestError::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3RunContinuousTestRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDialogflowCxV3RunContinuousTestResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :continuous_test_result, as: 'continuousTestResult', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ContinuousTestResult, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ContinuousTestResult::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3RunTestCaseMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDialogflowCxV3RunTestCaseRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :environment, as: 'environment'
        end
      end
      
      class GoogleCloudDialogflowCxV3RunTestCaseResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :result, as: 'result', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCaseResult, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCaseResult::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3SecuritySettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_export_settings, as: 'audioExportSettings', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings::Representation
      
          property :deidentify_template, as: 'deidentifyTemplate'
          property :display_name, as: 'displayName'
          property :insights_export_settings, as: 'insightsExportSettings', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings::Representation
      
          property :inspect_template, as: 'inspectTemplate'
          property :name, as: 'name'
          collection :purge_data_types, as: 'purgeDataTypes'
          property :redaction_scope, as: 'redactionScope'
          property :redaction_strategy, as: 'redactionStrategy'
          property :retention_window_days, as: 'retentionWindowDays'
        end
      end
      
      class GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_export_pattern, as: 'audioExportPattern'
          property :audio_format, as: 'audioFormat'
          property :enable_audio_redaction, as: 'enableAudioRedaction'
          property :gcs_bucket, as: 'gcsBucket'
        end
      end
      
      class GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_insights_export, as: 'enableInsightsExport'
        end
      end
      
      class GoogleCloudDialogflowCxV3SentimentAnalysisResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :magnitude, as: 'magnitude'
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudDialogflowCxV3SessionEntityType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entities, as: 'entities', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EntityTypeEntity, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EntityTypeEntity::Representation
      
          property :entity_override_mode, as: 'entityOverrideMode'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDialogflowCxV3SessionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :parameters, as: 'parameters'
          property :session, as: 'session'
        end
      end
      
      class GoogleCloudDialogflowCxV3SpeechToTextSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_speech_adaptation, as: 'enableSpeechAdaptation'
        end
      end
      
      class GoogleCloudDialogflowCxV3StartExperimentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDialogflowCxV3StopExperimentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDialogflowCxV3SynthesizeSpeechConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :effects_profile_id, as: 'effectsProfileId'
          property :pitch, as: 'pitch'
          property :speaking_rate, as: 'speakingRate'
          property :voice, as: 'voice', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3VoiceSelectionParams, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3VoiceSelectionParams::Representation
      
          property :volume_gain_db, as: 'volumeGainDb'
        end
      end
      
      class GoogleCloudDialogflowCxV3TestCase
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_time, as: 'creationTime'
          property :display_name, as: 'displayName'
          property :last_test_result, as: 'lastTestResult', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCaseResult, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCaseResult::Representation
      
          property :name, as: 'name'
          property :notes, as: 'notes'
          collection :tags, as: 'tags'
          collection :test_case_conversation_turns, as: 'testCaseConversationTurns', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ConversationTurn, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ConversationTurn::Representation
      
          property :test_config, as: 'testConfig', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestConfig, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestConfig::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3TestCaseError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :status, as: 'status', class: Google::Apis::DialogflowV3::GoogleRpcStatus, decorator: Google::Apis::DialogflowV3::GoogleRpcStatus::Representation
      
          property :test_case, as: 'testCase', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCase, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCase::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3TestCaseResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conversation_turns, as: 'conversationTurns', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ConversationTurn, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ConversationTurn::Representation
      
          property :environment, as: 'environment'
          property :name, as: 'name'
          property :test_result, as: 'testResult'
          property :test_time, as: 'testTime'
        end
      end
      
      class GoogleCloudDialogflowCxV3TestConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :flow, as: 'flow'
          property :page, as: 'page'
          collection :tracking_parameters, as: 'trackingParameters'
        end
      end
      
      class GoogleCloudDialogflowCxV3TestError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :status, as: 'status', class: Google::Apis::DialogflowV3::GoogleRpcStatus, decorator: Google::Apis::DialogflowV3::GoogleRpcStatus::Representation
      
          property :test_case, as: 'testCase'
          property :test_time, as: 'testTime'
        end
      end
      
      class GoogleCloudDialogflowCxV3TestRunDifference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDialogflowCxV3TextInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDialogflowCxV3TrainFlowRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDialogflowCxV3TransitionCoverage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :coverage_score, as: 'coverageScore'
          collection :transitions, as: 'transitions', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionCoverageTransition, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionCoverageTransition::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3TransitionCoverageTransition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :covered, as: 'covered'
          property :event_handler, as: 'eventHandler', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EventHandler, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EventHandler::Representation
      
          property :index, as: 'index'
          property :source, as: 'source', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode::Representation
      
          property :target, as: 'target', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode::Representation
      
          property :transition_route, as: 'transitionRoute', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRoute, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRoute::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :flow, as: 'flow', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Flow, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Flow::Representation
      
          property :page, as: 'page', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Page, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Page::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3TransitionRoute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition'
          property :intent, as: 'intent'
          property :name, as: 'name'
          property :target_flow, as: 'targetFlow'
          property :target_page, as: 'targetPage'
          property :trigger_fulfillment, as: 'triggerFulfillment', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Fulfillment, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Fulfillment::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3TransitionRouteGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          collection :transition_routes, as: 'transitionRoutes', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRoute, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRoute::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3TransitionRouteGroupCoverage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :coverage_score, as: 'coverageScore'
          collection :coverages, as: 'coverages', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :coverage_score, as: 'coverageScore'
          property :route_group, as: 'routeGroup', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroup, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroup::Representation
      
          collection :transitions, as: 'transitions', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :covered, as: 'covered'
          property :transition_route, as: 'transitionRoute', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRoute, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRoute::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3TurnSignals
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_escalated, as: 'agentEscalated'
          property :dtmf_used, as: 'dtmfUsed'
          collection :failure_reasons, as: 'failureReasons'
          property :no_match, as: 'noMatch'
          property :no_user_input, as: 'noUserInput'
          property :reached_end_page, as: 'reachedEndPage'
          property :user_escalated, as: 'userEscalated'
          collection :webhook_statuses, as: 'webhookStatuses'
        end
      end
      
      class GoogleCloudDialogflowCxV3UpdateDocumentOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3ValidateAgentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
        end
      end
      
      class GoogleCloudDialogflowCxV3ValidateFlowRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
        end
      end
      
      class GoogleCloudDialogflowCxV3ValidationMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detail, as: 'detail'
          collection :resource_names, as: 'resourceNames', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResourceName, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResourceName::Representation
      
          property :resource_type, as: 'resourceType'
          collection :resources, as: 'resources'
          property :severity, as: 'severity'
        end
      end
      
      class GoogleCloudDialogflowCxV3VariantsHistory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :update_time, as: 'updateTime'
          property :version_variants, as: 'versionVariants', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3VersionVariants, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3VersionVariants::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3Version
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :nlu_settings, as: 'nluSettings', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3NluSettings, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3NluSettings::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDialogflowCxV3VersionVariants
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :variants, as: 'variants', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3VersionVariantsVariant, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3VersionVariantsVariant::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3VersionVariantsVariant
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_control_group, as: 'isControlGroup'
          property :traffic_allocation, as: 'trafficAllocation'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudDialogflowCxV3VoiceSelectionParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :ssml_gender, as: 'ssmlGender'
        end
      end
      
      class GoogleCloudDialogflowCxV3Webhook
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
          property :display_name, as: 'displayName'
          property :generic_web_service, as: 'genericWebService', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3WebhookGenericWebService, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3WebhookGenericWebService::Representation
      
          property :name, as: 'name'
          property :service_directory, as: 'serviceDirectory', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig::Representation
      
          property :timeout, as: 'timeout'
        end
      end
      
      class GoogleCloudDialogflowCxV3WebhookGenericWebService
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_ca_certs, as: 'allowedCaCerts'
          property :password, as: 'password'
          hash :request_headers, as: 'requestHeaders'
          property :uri, as: 'uri'
          property :username, as: 'username'
        end
      end
      
      class GoogleCloudDialogflowCxV3WebhookRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detect_intent_response_id, as: 'detectIntentResponseId'
          property :fulfillment_info, as: 'fulfillmentInfo', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo::Representation
      
          property :intent_info, as: 'intentInfo', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3WebhookRequestIntentInfo, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3WebhookRequestIntentInfo::Representation
      
          property :language_code, as: 'languageCode'
          collection :messages, as: 'messages', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessage, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessage::Representation
      
          property :page_info, as: 'pageInfo', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3PageInfo, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3PageInfo::Representation
      
          hash :payload, as: 'payload'
          property :sentiment_analysis_result, as: 'sentimentAnalysisResult', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult::Representation
      
          property :session_info, as: 'sessionInfo', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionInfo, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionInfo::Representation
      
          property :text, as: 'text'
          property :transcript, as: 'transcript'
          property :trigger_event, as: 'triggerEvent'
          property :trigger_intent, as: 'triggerIntent'
        end
      end
      
      class GoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tag, as: 'tag'
        end
      end
      
      class GoogleCloudDialogflowCxV3WebhookRequestIntentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :display_name, as: 'displayName'
          property :last_matched_intent, as: 'lastMatchedIntent'
          hash :parameters, as: 'parameters', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :original_value, as: 'originalValue'
          property :resolved_value, as: 'resolvedValue'
        end
      end
      
      class GoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :magnitude, as: 'magnitude'
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudDialogflowCxV3WebhookResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fulfillment_response, as: 'fulfillmentResponse', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse::Representation
      
          property :page_info, as: 'pageInfo', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3PageInfo, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3PageInfo::Representation
      
          hash :payload, as: 'payload'
          property :session_info, as: 'sessionInfo', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionInfo, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionInfo::Representation
      
          property :target_flow, as: 'targetFlow'
          property :target_page, as: 'targetPage'
        end
      end
      
      class GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :merge_behavior, as: 'mergeBehavior'
          collection :messages, as: 'messages', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessage, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessage::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_web_service, as: 'genericWebService', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3WebhookGenericWebService, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3WebhookGenericWebService::Representation
      
          property :service, as: 'service'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1AudioInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio, :base64 => true, as: 'audio'
          property :config, as: 'config', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1InputAudioConfig, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1InputAudioConfig::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1BatchRunTestCasesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :errors, as: 'errors', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TestError, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TestError::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1BatchRunTestCasesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :results, as: 'results', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TestCaseResult, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TestCaseResult::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ContinuousTestResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :result, as: 'result'
          property :run_time, as: 'runTime'
          collection :test_case_results, as: 'testCaseResults'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ConversationSignals
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :turn_signals, as: 'turnSignals', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TurnSignals, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TurnSignals::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ConversationTurn
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :user_input, as: 'userInput', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput::Representation
      
          property :virtual_agent_output, as: 'virtualAgentOutput', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_sentiment_analysis, as: 'enableSentimentAnalysis'
          hash :injected_parameters, as: 'injectedParameters'
          property :input, as: 'input', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1QueryInput, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1QueryInput::Representation
      
          property :is_webhook_enabled, as: 'isWebhookEnabled'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_page, as: 'currentPage', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1Page, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1Page::Representation
      
          hash :diagnostic_info, as: 'diagnosticInfo'
          collection :differences, as: 'differences', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TestRunDifference, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TestRunDifference::Representation
      
          hash :session_parameters, as: 'sessionParameters'
          property :status, as: 'status', class: Google::Apis::DialogflowV3::GoogleRpcStatus, decorator: Google::Apis::DialogflowV3::GoogleRpcStatus::Representation
      
          collection :text_responses, as: 'textResponses', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessageText, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessageText::Representation
      
          property :triggered_intent, as: 'triggeredIntent', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1Intent, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1Intent::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1CreateDocumentOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1DeleteDocumentOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1DeployFlowMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :test_errors, as: 'testErrors', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TestError, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TestError::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1DeployFlowResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployment, as: 'deployment'
          property :environment, as: 'environment', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1Environment, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1Environment::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1DtmfInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :digits, as: 'digits'
          property :finish_digit, as: 'finishDigit'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1Environment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :test_cases_config, as: 'testCasesConfig', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig::Representation
      
          property :update_time, as: 'updateTime'
          collection :version_configs, as: 'versionConfigs', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig::Representation
      
          property :webhook_config, as: 'webhookConfig', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_continuous_run, as: 'enableContinuousRun'
          property :enable_predeployment_run, as: 'enablePredeploymentRun'
          collection :test_cases, as: 'testCases'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :webhook_overrides, as: 'webhookOverrides', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1Webhook, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1Webhook::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1EventHandler
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event, as: 'event'
          property :name, as: 'name'
          property :target_flow, as: 'targetFlow'
          property :target_page, as: 'targetPage'
          property :trigger_fulfillment, as: 'triggerFulfillment', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1Fulfillment, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1Fulfillment::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1EventInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event, as: 'event'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportAgentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_content, :base64 => true, as: 'agentContent'
          property :agent_uri, as: 'agentUri'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportFlowResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :flow_content, :base64 => true, as: 'flowContent'
          property :flow_uri, as: 'flowUri'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportTestCasesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportTestCasesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, :base64 => true, as: 'content'
          property :gcs_uri, as: 'gcsUri'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1Form
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :parameters, as: 'parameters', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1FormParameter, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1FormParameter::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1FormParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_value, as: 'defaultValue'
          property :display_name, as: 'displayName'
          property :entity_type, as: 'entityType'
          property :fill_behavior, as: 'fillBehavior', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior::Representation
      
          property :is_list, as: 'isList'
          property :redact, as: 'redact'
          property :required, as: 'required'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :initial_prompt_fulfillment, as: 'initialPromptFulfillment', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1Fulfillment, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1Fulfillment::Representation
      
          collection :reprompt_event_handlers, as: 'repromptEventHandlers', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1EventHandler, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1EventHandler::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1Fulfillment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conditional_cases, as: 'conditionalCases', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases::Representation
      
          collection :messages, as: 'messages', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessage, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessage::Representation
      
          property :return_partial_responses, as: 'returnPartialResponses'
          collection :set_parameter_actions, as: 'setParameterActions', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction::Representation
      
          property :tag, as: 'tag'
          property :webhook, as: 'webhook'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cases, as: 'cases', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :case_content, as: 'caseContent', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent::Representation
      
          property :condition, as: 'condition'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :additional_cases, as: 'additionalCases', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases::Representation
      
          property :message, as: 'message', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessage, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessage::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parameter, as: 'parameter'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ImportDocumentsOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ImportDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :warnings, as: 'warnings', class: Google::Apis::DialogflowV3::GoogleRpcStatus, decorator: Google::Apis::DialogflowV3::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ImportFlowResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :flow, as: 'flow'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ImportTestCasesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :errors, as: 'errors', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TestCaseError, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TestCaseError::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ImportTestCasesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :names, as: 'names'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1InputAudioConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_encoding, as: 'audioEncoding'
          property :enable_word_info, as: 'enableWordInfo'
          property :model, as: 'model'
          property :model_variant, as: 'modelVariant'
          collection :phrase_hints, as: 'phraseHints'
          property :sample_rate_hertz, as: 'sampleRateHertz'
          property :single_utterance, as: 'singleUtterance'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1Intent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :is_fallback, as: 'isFallback'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          collection :parameters, as: 'parameters', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1IntentParameter, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1IntentParameter::Representation
      
          property :priority, as: 'priority'
          collection :training_phrases, as: 'trainingPhrases', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1IntentInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :intent, as: 'intent'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1IntentParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity_type, as: 'entityType'
          property :id, as: 'id'
          property :is_list, as: 'isList'
          property :redact, as: 'redact'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :parts, as: 'parts', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart::Representation
      
          property :repeat_count, as: 'repeatCount'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parameter_id, as: 'parameterId'
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1Page
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :entry_fulfillment, as: 'entryFulfillment', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1Fulfillment, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1Fulfillment::Representation
      
          collection :event_handlers, as: 'eventHandlers', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1EventHandler, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1EventHandler::Representation
      
          property :form, as: 'form', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1Form, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1Form::Representation
      
          property :name, as: 'name'
          collection :transition_route_groups, as: 'transitionRouteGroups'
          collection :transition_routes, as: 'transitionRoutes', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TransitionRoute, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TransitionRoute::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1PageInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_page, as: 'currentPage'
          property :display_name, as: 'displayName'
          property :form_info, as: 'formInfo', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1PageInfoFormInfo, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1PageInfoFormInfo::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1PageInfoFormInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :parameter_info, as: 'parameterInfo', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :just_collected, as: 'justCollected'
          property :required, as: 'required'
          property :state, as: 'state'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1QueryInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio, as: 'audio', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1AudioInput, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1AudioInput::Representation
      
          property :dtmf, as: 'dtmf', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1DtmfInput, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1DtmfInput::Representation
      
          property :event, as: 'event', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1EventInput, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1EventInput::Representation
      
          property :intent, as: 'intent', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1IntentInput, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1IntentInput::Representation
      
          property :language_code, as: 'languageCode'
          property :text, as: 'text', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TextInput, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TextInput::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ReloadDocumentOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ResponseMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel, as: 'channel'
          property :conversation_success, as: 'conversationSuccess', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess::Representation
      
          property :end_interaction, as: 'endInteraction', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction::Representation
      
          property :live_agent_handoff, as: 'liveAgentHandoff', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff::Representation
      
          property :mixed_audio, as: 'mixedAudio', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio::Representation
      
          property :output_audio_text, as: 'outputAudioText', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText::Representation
      
          hash :payload, as: 'payload'
          property :play_audio, as: 'playAudio', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio::Representation
      
          property :telephony_transfer_call, as: 'telephonyTransferCall', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall::Representation
      
          property :text, as: 'text', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessageText, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessageText::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :metadata, as: 'metadata'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :metadata, as: 'metadata'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :segments, as: 'segments', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_playback_interruption, as: 'allowPlaybackInterruption'
          property :audio, :base64 => true, as: 'audio'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_playback_interruption, as: 'allowPlaybackInterruption'
          property :ssml, as: 'ssml'
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_playback_interruption, as: 'allowPlaybackInterruption'
          property :audio_uri, as: 'audioUri'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :phone_number, as: 'phoneNumber'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ResponseMessageText
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_playback_interruption, as: 'allowPlaybackInterruption'
          collection :text, as: 'text'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1RunContinuousTestMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :errors, as: 'errors', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TestError, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TestError::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1RunContinuousTestResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :continuous_test_result, as: 'continuousTestResult', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ContinuousTestResult, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ContinuousTestResult::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1RunTestCaseMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1RunTestCaseResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :result, as: 'result', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TestCaseResult, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TestCaseResult::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1SessionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :parameters, as: 'parameters'
          property :session, as: 'session'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1TestCase
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_time, as: 'creationTime'
          property :display_name, as: 'displayName'
          property :last_test_result, as: 'lastTestResult', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TestCaseResult, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TestCaseResult::Representation
      
          property :name, as: 'name'
          property :notes, as: 'notes'
          collection :tags, as: 'tags'
          collection :test_case_conversation_turns, as: 'testCaseConversationTurns', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ConversationTurn, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ConversationTurn::Representation
      
          property :test_config, as: 'testConfig', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TestConfig, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TestConfig::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1TestCaseError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :status, as: 'status', class: Google::Apis::DialogflowV3::GoogleRpcStatus, decorator: Google::Apis::DialogflowV3::GoogleRpcStatus::Representation
      
          property :test_case, as: 'testCase', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TestCase, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TestCase::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1TestCaseResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conversation_turns, as: 'conversationTurns', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ConversationTurn, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ConversationTurn::Representation
      
          property :environment, as: 'environment'
          property :name, as: 'name'
          property :test_result, as: 'testResult'
          property :test_time, as: 'testTime'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1TestConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :flow, as: 'flow'
          property :page, as: 'page'
          collection :tracking_parameters, as: 'trackingParameters'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1TestError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :status, as: 'status', class: Google::Apis::DialogflowV3::GoogleRpcStatus, decorator: Google::Apis::DialogflowV3::GoogleRpcStatus::Representation
      
          property :test_case, as: 'testCase'
          property :test_time, as: 'testTime'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1TestRunDifference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1TextInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1TransitionRoute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition'
          property :intent, as: 'intent'
          property :name, as: 'name'
          property :target_flow, as: 'targetFlow'
          property :target_page, as: 'targetPage'
          property :trigger_fulfillment, as: 'triggerFulfillment', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1Fulfillment, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1Fulfillment::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1TurnSignals
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_escalated, as: 'agentEscalated'
          property :dtmf_used, as: 'dtmfUsed'
          collection :failure_reasons, as: 'failureReasons'
          property :no_match, as: 'noMatch'
          property :no_user_input, as: 'noUserInput'
          property :reached_end_page, as: 'reachedEndPage'
          property :user_escalated, as: 'userEscalated'
          collection :webhook_statuses, as: 'webhookStatuses'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1UpdateDocumentOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1Webhook
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
          property :display_name, as: 'displayName'
          property :generic_web_service, as: 'genericWebService', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1WebhookGenericWebService, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1WebhookGenericWebService::Representation
      
          property :name, as: 'name'
          property :service_directory, as: 'serviceDirectory', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig::Representation
      
          property :timeout, as: 'timeout'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1WebhookGenericWebService
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_ca_certs, as: 'allowedCaCerts'
          property :password, as: 'password'
          hash :request_headers, as: 'requestHeaders'
          property :uri, as: 'uri'
          property :username, as: 'username'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1WebhookRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detect_intent_response_id, as: 'detectIntentResponseId'
          property :fulfillment_info, as: 'fulfillmentInfo', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo::Representation
      
          property :intent_info, as: 'intentInfo', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo::Representation
      
          property :language_code, as: 'languageCode'
          collection :messages, as: 'messages', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessage, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessage::Representation
      
          property :page_info, as: 'pageInfo', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1PageInfo, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1PageInfo::Representation
      
          hash :payload, as: 'payload'
          property :sentiment_analysis_result, as: 'sentimentAnalysisResult', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult::Representation
      
          property :session_info, as: 'sessionInfo', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1SessionInfo, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1SessionInfo::Representation
      
          property :text, as: 'text'
          property :transcript, as: 'transcript'
          property :trigger_event, as: 'triggerEvent'
          property :trigger_intent, as: 'triggerIntent'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tag, as: 'tag'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :display_name, as: 'displayName'
          property :last_matched_intent, as: 'lastMatchedIntent'
          hash :parameters, as: 'parameters', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :original_value, as: 'originalValue'
          property :resolved_value, as: 'resolvedValue'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :magnitude, as: 'magnitude'
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1WebhookResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fulfillment_response, as: 'fulfillmentResponse', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse::Representation
      
          property :page_info, as: 'pageInfo', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1PageInfo, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1PageInfo::Representation
      
          hash :payload, as: 'payload'
          property :session_info, as: 'sessionInfo', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1SessionInfo, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1SessionInfo::Representation
      
          property :target_flow, as: 'targetFlow'
          property :target_page, as: 'targetPage'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :merge_behavior, as: 'mergeBehavior'
          collection :messages, as: 'messages', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessage, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessage::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_web_service, as: 'genericWebService', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1WebhookGenericWebService, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1WebhookGenericWebService::Representation
      
          property :service, as: 'service'
        end
      end
      
      class GoogleCloudDialogflowV2AnnotatedMessagePart
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity_type, as: 'entityType'
          property :formatted_value, as: 'formattedValue'
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDialogflowV2ArticleAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer_record, as: 'answerRecord'
          property :confidence, as: 'confidence'
          hash :metadata, as: 'metadata'
          collection :snippets, as: 'snippets'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDialogflowV2ArticleSuggestionModelMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :training_model_type, as: 'trainingModelType'
        end
      end
      
      class GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entity_types, as: 'entityTypes', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2EntityType, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2EntityType::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2BatchUpdateIntentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :intents, as: 'intents', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2Intent, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2Intent::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation_profile, as: 'conversationProfile'
          property :create_time, as: 'createTime'
          property :participant_role, as: 'participantRole'
          property :suggestion_feature_type, as: 'suggestionFeatureType'
        end
      end
      
      class GoogleCloudDialogflowV2Context
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lifespan_count, as: 'lifespanCount'
          property :name, as: 'name'
          hash :parameters, as: 'parameters'
        end
      end
      
      class GoogleCloudDialogflowV2ConversationEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation, as: 'conversation'
          property :error_status, as: 'errorStatus', class: Google::Apis::DialogflowV3::GoogleRpcStatus, decorator: Google::Apis::DialogflowV3::GoogleRpcStatus::Representation
      
          property :new_message_payload, as: 'newMessagePayload', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2Message, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2Message::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDialogflowV2ConversationModel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :article_suggestion_model_metadata, as: 'articleSuggestionModelMetadata', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2ArticleSuggestionModelMetadata, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2ArticleSuggestionModelMetadata::Representation
      
          property :create_time, as: 'createTime'
          collection :datasets, as: 'datasets', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2InputDataset, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2InputDataset::Representation
      
          property :display_name, as: 'displayName'
          property :language_code, as: 'languageCode'
          property :name, as: 'name'
          property :smart_reply_model_metadata, as: 'smartReplyModelMetadata', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2SmartReplyModelMetadata, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2SmartReplyModelMetadata::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDialogflowV2CreateConversationDatasetOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation_dataset, as: 'conversationDataset'
        end
      end
      
      class GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation_model, as: 'conversationModel'
          property :conversation_model_evaluation, as: 'conversationModelEvaluation'
          property :create_time, as: 'createTime'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDialogflowV2CreateConversationModelOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation_model, as: 'conversationModel'
          property :create_time, as: 'createTime'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDialogflowV2DeleteConversationDatasetOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDialogflowV2DeleteConversationModelOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation_model, as: 'conversationModel'
          property :create_time, as: 'createTime'
        end
      end
      
      class GoogleCloudDialogflowV2DeployConversationModelOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation_model, as: 'conversationModel'
          property :create_time, as: 'createTime'
        end
      end
      
      class GoogleCloudDialogflowV2EntityType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_expansion_mode, as: 'autoExpansionMode'
          property :display_name, as: 'displayName'
          property :enable_fuzzy_extraction, as: 'enableFuzzyExtraction'
          collection :entities, as: 'entities', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2EntityTypeEntity, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2EntityTypeEntity::Representation
      
          property :kind, as: 'kind'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDialogflowV2EntityTypeEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :synonyms, as: 'synonyms'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudDialogflowV2EventInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
          property :name, as: 'name'
          hash :parameters, as: 'parameters'
        end
      end
      
      class GoogleCloudDialogflowV2ExportAgentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_content, :base64 => true, as: 'agentContent'
          property :agent_uri, as: 'agentUri'
        end
      end
      
      class GoogleCloudDialogflowV2ExportOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exported_gcs_destination, as: 'exportedGcsDestination', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2GcsDestination, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2GcsDestination::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2FaqAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer, as: 'answer'
          property :answer_record, as: 'answerRecord'
          property :confidence, as: 'confidence'
          hash :metadata, as: 'metadata'
          property :question, as: 'question'
          property :source, as: 'source'
        end
      end
      
      class GoogleCloudDialogflowV2GcsDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDialogflowV2HumanAgentAssistantEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation, as: 'conversation'
          property :participant, as: 'participant'
          collection :suggestion_results, as: 'suggestionResults', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2SuggestionResult, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2SuggestionResult::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2ImportConversationDataOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation_dataset, as: 'conversationDataset'
          property :create_time, as: 'createTime'
          collection :partial_failures, as: 'partialFailures', class: Google::Apis::DialogflowV3::GoogleRpcStatus, decorator: Google::Apis::DialogflowV3::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2ImportConversationDataOperationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation_dataset, as: 'conversationDataset'
          property :import_count, as: 'importCount'
        end
      end
      
      class GoogleCloudDialogflowV2ImportDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :warnings, as: 'warnings', class: Google::Apis::DialogflowV3::GoogleRpcStatus, decorator: Google::Apis::DialogflowV3::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2InputDataset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset, as: 'dataset'
        end
      end
      
      class GoogleCloudDialogflowV2Intent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          collection :default_response_platforms, as: 'defaultResponsePlatforms'
          property :display_name, as: 'displayName'
          property :end_interaction, as: 'endInteraction'
          collection :events, as: 'events'
          collection :followup_intent_info, as: 'followupIntentInfo', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentFollowupIntentInfo, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentFollowupIntentInfo::Representation
      
          collection :input_context_names, as: 'inputContextNames'
          property :is_fallback, as: 'isFallback'
          property :live_agent_handoff, as: 'liveAgentHandoff'
          collection :messages, as: 'messages', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessage, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessage::Representation
      
          property :ml_disabled, as: 'mlDisabled'
          property :name, as: 'name'
          collection :output_contexts, as: 'outputContexts', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2Context, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2Context::Representation
      
          collection :parameters, as: 'parameters', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentParameter, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentParameter::Representation
      
          property :parent_followup_intent_name, as: 'parentFollowupIntentName'
          property :priority, as: 'priority'
          property :reset_contexts, as: 'resetContexts'
          property :root_followup_intent_name, as: 'rootFollowupIntentName'
          collection :training_phrases, as: 'trainingPhrases', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentTrainingPhrase, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentTrainingPhrase::Representation
      
          property :webhook_state, as: 'webhookState'
        end
      end
      
      class GoogleCloudDialogflowV2IntentFollowupIntentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :followup_intent_name, as: 'followupIntentName'
          property :parent_followup_intent_name, as: 'parentFollowupIntentName'
        end
      end
      
      class GoogleCloudDialogflowV2IntentMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_card, as: 'basicCard', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageBasicCard, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageBasicCard::Representation
      
          property :browse_carousel_card, as: 'browseCarouselCard', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard::Representation
      
          property :card, as: 'card', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageCard, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageCard::Representation
      
          property :carousel_select, as: 'carouselSelect', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageCarouselSelect, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageCarouselSelect::Representation
      
          property :image, as: 'image', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageImage, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageImage::Representation
      
          property :link_out_suggestion, as: 'linkOutSuggestion', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion::Representation
      
          property :list_select, as: 'listSelect', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageListSelect, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageListSelect::Representation
      
          property :media_content, as: 'mediaContent', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageMediaContent, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageMediaContent::Representation
      
          hash :payload, as: 'payload'
          property :platform, as: 'platform'
          property :quick_replies, as: 'quickReplies', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageQuickReplies, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageQuickReplies::Representation
      
          property :simple_responses, as: 'simpleResponses', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageSimpleResponses, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageSimpleResponses::Representation
      
          property :suggestions, as: 'suggestions', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageSuggestions, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageSuggestions::Representation
      
          property :table_card, as: 'tableCard', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageTableCard, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageTableCard::Representation
      
          property :text, as: 'text', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageText, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageText::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2IntentMessageBasicCard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :buttons, as: 'buttons', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageBasicCardButton, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageBasicCardButton::Representation
      
          property :formatted_text, as: 'formattedText'
          property :image, as: 'image', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageImage, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageImage::Representation
      
          property :subtitle, as: 'subtitle'
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudDialogflowV2IntentMessageBasicCardButton
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :open_uri_action, as: 'openUriAction', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction::Representation
      
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_display_options, as: 'imageDisplayOptions'
          collection :items, as: 'items', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :footer, as: 'footer'
          property :image, as: 'image', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageImage, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageImage::Representation
      
          property :open_uri_action, as: 'openUriAction', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction::Representation
      
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :url, as: 'url'
          property :url_type_hint, as: 'urlTypeHint'
        end
      end
      
      class GoogleCloudDialogflowV2IntentMessageCard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :buttons, as: 'buttons', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageCardButton, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageCardButton::Representation
      
          property :image_uri, as: 'imageUri'
          property :subtitle, as: 'subtitle'
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudDialogflowV2IntentMessageCardButton
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :postback, as: 'postback'
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDialogflowV2IntentMessageCarouselSelect
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageCarouselSelectItem, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageCarouselSelectItem::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2IntentMessageCarouselSelectItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :image, as: 'image', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageImage, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageImage::Representation
      
          property :info, as: 'info', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageSelectItemInfo, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageSelectItemInfo::Representation
      
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudDialogflowV2IntentMessageColumnProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header, as: 'header'
          property :horizontal_alignment, as: 'horizontalAlignment'
        end
      end
      
      class GoogleCloudDialogflowV2IntentMessageImage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accessibility_text, as: 'accessibilityText'
          property :image_uri, as: 'imageUri'
        end
      end
      
      class GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_name, as: 'destinationName'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDialogflowV2IntentMessageListSelect
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageListSelectItem, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageListSelectItem::Representation
      
          property :subtitle, as: 'subtitle'
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudDialogflowV2IntentMessageListSelectItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :image, as: 'image', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageImage, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageImage::Representation
      
          property :info, as: 'info', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageSelectItemInfo, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageSelectItemInfo::Representation
      
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudDialogflowV2IntentMessageMediaContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :media_objects, as: 'mediaObjects', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject::Representation
      
          property :media_type, as: 'mediaType'
        end
      end
      
      class GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_url, as: 'contentUrl'
          property :description, as: 'description'
          property :icon, as: 'icon', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageImage, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageImage::Representation
      
          property :large_image, as: 'largeImage', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageImage, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageImage::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDialogflowV2IntentMessageQuickReplies
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :quick_replies, as: 'quickReplies'
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudDialogflowV2IntentMessageSelectItemInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          collection :synonyms, as: 'synonyms'
        end
      end
      
      class GoogleCloudDialogflowV2IntentMessageSimpleResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_text, as: 'displayText'
          property :ssml, as: 'ssml'
          property :text_to_speech, as: 'textToSpeech'
        end
      end
      
      class GoogleCloudDialogflowV2IntentMessageSimpleResponses
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :simple_responses, as: 'simpleResponses', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageSimpleResponse, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageSimpleResponse::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2IntentMessageSuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudDialogflowV2IntentMessageSuggestions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :suggestions, as: 'suggestions', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageSuggestion, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageSuggestion::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2IntentMessageTableCard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :buttons, as: 'buttons', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageBasicCardButton, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageBasicCardButton::Representation
      
          collection :column_properties, as: 'columnProperties', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageColumnProperties, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageColumnProperties::Representation
      
          property :image, as: 'image', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageImage, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageImage::Representation
      
          collection :rows, as: 'rows', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageTableCardRow, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageTableCardRow::Representation
      
          property :subtitle, as: 'subtitle'
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudDialogflowV2IntentMessageTableCardCell
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDialogflowV2IntentMessageTableCardRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cells, as: 'cells', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageTableCardCell, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageTableCardCell::Representation
      
          property :divider_after, as: 'dividerAfter'
        end
      end
      
      class GoogleCloudDialogflowV2IntentMessageText
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :text, as: 'text'
        end
      end
      
      class GoogleCloudDialogflowV2IntentParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_value, as: 'defaultValue'
          property :display_name, as: 'displayName'
          property :entity_type_display_name, as: 'entityTypeDisplayName'
          property :is_list, as: 'isList'
          property :mandatory, as: 'mandatory'
          property :name, as: 'name'
          collection :prompts, as: 'prompts'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudDialogflowV2IntentTrainingPhrase
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          collection :parts, as: 'parts', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentTrainingPhrasePart, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentTrainingPhrasePart::Representation
      
          property :times_added_count, as: 'timesAddedCount'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDialogflowV2IntentTrainingPhrasePart
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alias, as: 'alias'
          property :entity_type, as: 'entityType'
          property :text, as: 'text'
          property :user_defined, as: 'userDefined'
        end
      end
      
      class GoogleCloudDialogflowV2KnowledgeOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :export_operation_metadata, as: 'exportOperationMetadata', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2ExportOperationMetadata, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2ExportOperationMetadata::Representation
      
          property :knowledge_base, as: 'knowledgeBase'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDialogflowV2Message
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :create_time, as: 'createTime'
          property :language_code, as: 'languageCode'
          property :message_annotation, as: 'messageAnnotation', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2MessageAnnotation, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2MessageAnnotation::Representation
      
          property :name, as: 'name'
          property :participant, as: 'participant'
          property :participant_role, as: 'participantRole'
          property :send_time, as: 'sendTime'
          property :sentiment_analysis, as: 'sentimentAnalysis', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2SentimentAnalysisResult, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2SentimentAnalysisResult::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2MessageAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contain_entities, as: 'containEntities'
          collection :parts, as: 'parts', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2AnnotatedMessagePart, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2AnnotatedMessagePart::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2OriginalDetectIntentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :payload, as: 'payload'
          property :source, as: 'source'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudDialogflowV2QueryResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :all_required_params_present, as: 'allRequiredParamsPresent'
          property :cancels_slot_filling, as: 'cancelsSlotFilling'
          hash :diagnostic_info, as: 'diagnosticInfo'
          collection :fulfillment_messages, as: 'fulfillmentMessages', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessage, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessage::Representation
      
          property :fulfillment_text, as: 'fulfillmentText'
          property :intent, as: 'intent', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2Intent, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2Intent::Representation
      
          property :intent_detection_confidence, as: 'intentDetectionConfidence'
          property :language_code, as: 'languageCode'
          collection :output_contexts, as: 'outputContexts', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2Context, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2Context::Representation
      
          hash :parameters, as: 'parameters'
          property :query_text, as: 'queryText'
          property :sentiment_analysis_result, as: 'sentimentAnalysisResult', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2SentimentAnalysisResult, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2SentimentAnalysisResult::Representation
      
          property :speech_recognition_confidence, as: 'speechRecognitionConfidence'
          hash :webhook_payload, as: 'webhookPayload'
          property :webhook_source, as: 'webhookSource'
        end
      end
      
      class GoogleCloudDialogflowV2Sentiment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :magnitude, as: 'magnitude'
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudDialogflowV2SentimentAnalysisResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query_text_sentiment, as: 'queryTextSentiment', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2Sentiment, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2Sentiment::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2SessionEntityType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entities, as: 'entities', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2EntityTypeEntity, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2EntityTypeEntity::Representation
      
          property :entity_override_mode, as: 'entityOverrideMode'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation_profile, as: 'conversationProfile'
          property :create_time, as: 'createTime'
          property :participant_role, as: 'participantRole'
          property :suggestion_feature_type, as: 'suggestionFeatureType'
        end
      end
      
      class GoogleCloudDialogflowV2SmartReplyAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer_record, as: 'answerRecord'
          property :confidence, as: 'confidence'
          property :reply, as: 'reply'
        end
      end
      
      class GoogleCloudDialogflowV2SmartReplyModelMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :training_model_type, as: 'trainingModelType'
        end
      end
      
      class GoogleCloudDialogflowV2SuggestArticlesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :article_answers, as: 'articleAnswers', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2ArticleAnswer, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2ArticleAnswer::Representation
      
          property :context_size, as: 'contextSize'
          property :latest_message, as: 'latestMessage'
        end
      end
      
      class GoogleCloudDialogflowV2SuggestFaqAnswersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context_size, as: 'contextSize'
          collection :faq_answers, as: 'faqAnswers', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2FaqAnswer, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2FaqAnswer::Representation
      
          property :latest_message, as: 'latestMessage'
        end
      end
      
      class GoogleCloudDialogflowV2SuggestSmartRepliesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context_size, as: 'contextSize'
          property :latest_message, as: 'latestMessage'
          collection :smart_reply_answers, as: 'smartReplyAnswers', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2SmartReplyAnswer, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2SmartReplyAnswer::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2SuggestionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::DialogflowV3::GoogleRpcStatus, decorator: Google::Apis::DialogflowV3::GoogleRpcStatus::Representation
      
          property :suggest_articles_response, as: 'suggestArticlesResponse', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2SuggestArticlesResponse, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2SuggestArticlesResponse::Representation
      
          property :suggest_faq_answers_response, as: 'suggestFaqAnswersResponse', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2SuggestFaqAnswersResponse, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2SuggestFaqAnswersResponse::Representation
      
          property :suggest_smart_replies_response, as: 'suggestSmartRepliesResponse', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2SuggestSmartRepliesResponse, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2SuggestSmartRepliesResponse::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2UndeployConversationModelOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation_model, as: 'conversationModel'
          property :create_time, as: 'createTime'
        end
      end
      
      class GoogleCloudDialogflowV2WebhookRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :original_detect_intent_request, as: 'originalDetectIntentRequest', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2OriginalDetectIntentRequest, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2OriginalDetectIntentRequest::Representation
      
          property :query_result, as: 'queryResult', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2QueryResult, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2QueryResult::Representation
      
          property :response_id, as: 'responseId'
          property :session, as: 'session'
        end
      end
      
      class GoogleCloudDialogflowV2WebhookResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :followup_event_input, as: 'followupEventInput', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2EventInput, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2EventInput::Representation
      
          collection :fulfillment_messages, as: 'fulfillmentMessages', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessage, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessage::Representation
      
          property :fulfillment_text, as: 'fulfillmentText'
          collection :output_contexts, as: 'outputContexts', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2Context, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2Context::Representation
      
          hash :payload, as: 'payload'
          collection :session_entity_types, as: 'sessionEntityTypes', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2SessionEntityType, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2SessionEntityType::Representation
      
          property :source, as: 'source'
        end
      end
      
      class GoogleCloudDialogflowV2beta1AnnotatedMessagePart
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity_type, as: 'entityType'
          property :formatted_value, as: 'formattedValue'
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDialogflowV2beta1ArticleAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer_record, as: 'answerRecord'
          hash :metadata, as: 'metadata'
          collection :snippets, as: 'snippets'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entity_types, as: 'entityTypes', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1EntityType, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1EntityType::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :intents, as: 'intents', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1Intent, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1Intent::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation_profile, as: 'conversationProfile'
          property :create_time, as: 'createTime'
          property :participant_role, as: 'participantRole'
          property :suggestion_feature_type, as: 'suggestionFeatureType'
        end
      end
      
      class GoogleCloudDialogflowV2beta1Context
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lifespan_count, as: 'lifespanCount'
          property :name, as: 'name'
          hash :parameters, as: 'parameters'
        end
      end
      
      class GoogleCloudDialogflowV2beta1ConversationEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation, as: 'conversation'
          property :error_status, as: 'errorStatus', class: Google::Apis::DialogflowV3::GoogleRpcStatus, decorator: Google::Apis::DialogflowV3::GoogleRpcStatus::Representation
      
          property :new_message_payload, as: 'newMessagePayload', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1Message, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1Message::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDialogflowV2beta1EntityType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_expansion_mode, as: 'autoExpansionMode'
          property :display_name, as: 'displayName'
          property :enable_fuzzy_extraction, as: 'enableFuzzyExtraction'
          collection :entities, as: 'entities', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1EntityTypeEntity, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1EntityTypeEntity::Representation
      
          property :kind, as: 'kind'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDialogflowV2beta1EntityTypeEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :synonyms, as: 'synonyms'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudDialogflowV2beta1EventInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
          property :name, as: 'name'
          hash :parameters, as: 'parameters'
        end
      end
      
      class GoogleCloudDialogflowV2beta1ExportAgentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_content, :base64 => true, as: 'agentContent'
          property :agent_uri, as: 'agentUri'
        end
      end
      
      class GoogleCloudDialogflowV2beta1ExportOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exported_gcs_destination, as: 'exportedGcsDestination', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1GcsDestination, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1GcsDestination::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1FaqAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer, as: 'answer'
          property :answer_record, as: 'answerRecord'
          property :confidence, as: 'confidence'
          hash :metadata, as: 'metadata'
          property :question, as: 'question'
          property :source, as: 'source'
        end
      end
      
      class GoogleCloudDialogflowV2beta1GcsDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDialogflowV2beta1HumanAgentAssistantEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation, as: 'conversation'
          property :participant, as: 'participant'
          collection :suggestion_results, as: 'suggestionResults', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1SuggestionResult, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1SuggestionResult::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1ImportDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :warnings, as: 'warnings', class: Google::Apis::DialogflowV3::GoogleRpcStatus, decorator: Google::Apis::DialogflowV3::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1Intent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          collection :default_response_platforms, as: 'defaultResponsePlatforms'
          property :display_name, as: 'displayName'
          property :end_interaction, as: 'endInteraction'
          collection :events, as: 'events'
          collection :followup_intent_info, as: 'followupIntentInfo', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo::Representation
      
          collection :input_context_names, as: 'inputContextNames'
          property :is_fallback, as: 'isFallback'
          property :live_agent_handoff, as: 'liveAgentHandoff'
          collection :messages, as: 'messages', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessage, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessage::Representation
      
          property :ml_disabled, as: 'mlDisabled'
          property :ml_enabled, as: 'mlEnabled'
          property :name, as: 'name'
          collection :output_contexts, as: 'outputContexts', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1Context, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1Context::Representation
      
          collection :parameters, as: 'parameters', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentParameter, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentParameter::Representation
      
          property :parent_followup_intent_name, as: 'parentFollowupIntentName'
          property :priority, as: 'priority'
          property :reset_contexts, as: 'resetContexts'
          property :root_followup_intent_name, as: 'rootFollowupIntentName'
          collection :training_phrases, as: 'trainingPhrases', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentTrainingPhrase, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentTrainingPhrase::Representation
      
          property :webhook_state, as: 'webhookState'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :followup_intent_name, as: 'followupIntentName'
          property :parent_followup_intent_name, as: 'parentFollowupIntentName'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_card, as: 'basicCard', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageBasicCard, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageBasicCard::Representation
      
          property :browse_carousel_card, as: 'browseCarouselCard', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard::Representation
      
          property :card, as: 'card', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageCard, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageCard::Representation
      
          property :carousel_select, as: 'carouselSelect', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect::Representation
      
          property :image, as: 'image', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageImage, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageImage::Representation
      
          property :link_out_suggestion, as: 'linkOutSuggestion', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion::Representation
      
          property :list_select, as: 'listSelect', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageListSelect, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageListSelect::Representation
      
          property :media_content, as: 'mediaContent', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageMediaContent, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageMediaContent::Representation
      
          hash :payload, as: 'payload'
          property :platform, as: 'platform'
          property :quick_replies, as: 'quickReplies', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageQuickReplies, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageQuickReplies::Representation
      
          property :rbm_carousel_rich_card, as: 'rbmCarouselRichCard', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard::Representation
      
          property :rbm_standalone_rich_card, as: 'rbmStandaloneRichCard', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard::Representation
      
          property :rbm_text, as: 'rbmText', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmText, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmText::Representation
      
          property :simple_responses, as: 'simpleResponses', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses::Representation
      
          property :suggestions, as: 'suggestions', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageSuggestions, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageSuggestions::Representation
      
          property :table_card, as: 'tableCard', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageTableCard, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageTableCard::Representation
      
          property :telephony_play_audio, as: 'telephonyPlayAudio', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio::Representation
      
          property :telephony_synthesize_speech, as: 'telephonySynthesizeSpeech', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech::Representation
      
          property :telephony_transfer_call, as: 'telephonyTransferCall', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall::Representation
      
          property :text, as: 'text', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageText, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageText::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageBasicCard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :buttons, as: 'buttons', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton::Representation
      
          property :formatted_text, as: 'formattedText'
          property :image, as: 'image', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageImage, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageImage::Representation
      
          property :subtitle, as: 'subtitle'
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :open_uri_action, as: 'openUriAction', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction::Representation
      
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_display_options, as: 'imageDisplayOptions'
          collection :items, as: 'items', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :footer, as: 'footer'
          property :image, as: 'image', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageImage, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageImage::Representation
      
          property :open_uri_action, as: 'openUriAction', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction::Representation
      
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :url, as: 'url'
          property :url_type_hint, as: 'urlTypeHint'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageCard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :buttons, as: 'buttons', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageCardButton, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageCardButton::Representation
      
          property :image_uri, as: 'imageUri'
          property :subtitle, as: 'subtitle'
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageCardButton
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :postback, as: 'postback'
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :image, as: 'image', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageImage, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageImage::Representation
      
          property :info, as: 'info', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo::Representation
      
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageColumnProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header, as: 'header'
          property :horizontal_alignment, as: 'horizontalAlignment'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageImage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accessibility_text, as: 'accessibilityText'
          property :image_uri, as: 'imageUri'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_name, as: 'destinationName'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageListSelect
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageListSelectItem, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageListSelectItem::Representation
      
          property :subtitle, as: 'subtitle'
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageListSelectItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :image, as: 'image', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageImage, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageImage::Representation
      
          property :info, as: 'info', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo::Representation
      
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageMediaContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :media_objects, as: 'mediaObjects', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject::Representation
      
          property :media_type, as: 'mediaType'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_url, as: 'contentUrl'
          property :description, as: 'description'
          property :icon, as: 'icon', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageImage, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageImage::Representation
      
          property :large_image, as: 'largeImage', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageImage, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageImage::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageQuickReplies
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :quick_replies, as: 'quickReplies'
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :media, as: 'media', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia::Representation
      
          collection :suggestions, as: 'suggestions', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion::Representation
      
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_uri, as: 'fileUri'
          property :height, as: 'height'
          property :thumbnail_uri, as: 'thumbnailUri'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :card_contents, as: 'cardContents', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent::Representation
      
          property :card_width, as: 'cardWidth'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :card_content, as: 'cardContent', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent::Representation
      
          property :card_orientation, as: 'cardOrientation'
          property :thumbnail_image_alignment, as: 'thumbnailImageAlignment'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dial, as: 'dial', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial::Representation
      
          property :open_url, as: 'openUrl', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri::Representation
      
          property :postback_data, as: 'postbackData'
          property :share_location, as: 'shareLocation', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation::Representation
      
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :phone_number, as: 'phoneNumber'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :postback_data, as: 'postbackData'
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction::Representation
      
          property :reply, as: 'reply', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageRbmText
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rbm_suggestion, as: 'rbmSuggestion', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion::Representation
      
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          collection :synonyms, as: 'synonyms'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_text, as: 'displayText'
          property :ssml, as: 'ssml'
          property :text_to_speech, as: 'textToSpeech'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :simple_responses, as: 'simpleResponses', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageSuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageSuggestions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :suggestions, as: 'suggestions', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageSuggestion, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageSuggestion::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageTableCard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :buttons, as: 'buttons', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton::Representation
      
          collection :column_properties, as: 'columnProperties', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageColumnProperties, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageColumnProperties::Representation
      
          property :image, as: 'image', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageImage, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageImage::Representation
      
          collection :rows, as: 'rows', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageTableCardRow, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageTableCardRow::Representation
      
          property :subtitle, as: 'subtitle'
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageTableCardCell
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageTableCardRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cells, as: 'cells', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageTableCardCell, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageTableCardCell::Representation
      
          property :divider_after, as: 'dividerAfter'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_uri, as: 'audioUri'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ssml, as: 'ssml'
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :phone_number, as: 'phoneNumber'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageText
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :text, as: 'text'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_value, as: 'defaultValue'
          property :display_name, as: 'displayName'
          property :entity_type_display_name, as: 'entityTypeDisplayName'
          property :is_list, as: 'isList'
          property :mandatory, as: 'mandatory'
          property :name, as: 'name'
          collection :prompts, as: 'prompts'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentTrainingPhrase
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          collection :parts, as: 'parts', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart::Representation
      
          property :times_added_count, as: 'timesAddedCount'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alias, as: 'alias'
          property :entity_type, as: 'entityType'
          property :text, as: 'text'
          property :user_defined, as: 'userDefined'
        end
      end
      
      class GoogleCloudDialogflowV2beta1KnowledgeAnswers
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :answers, as: 'answers', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer, as: 'answer'
          property :faq_question, as: 'faqQuestion'
          property :match_confidence, as: 'matchConfidence'
          property :match_confidence_level, as: 'matchConfidenceLevel'
          property :source, as: 'source'
        end
      end
      
      class GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :export_operation_metadata, as: 'exportOperationMetadata', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1ExportOperationMetadata, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1ExportOperationMetadata::Representation
      
          property :knowledge_base, as: 'knowledgeBase'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDialogflowV2beta1Message
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :create_time, as: 'createTime'
          property :language_code, as: 'languageCode'
          property :message_annotation, as: 'messageAnnotation', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1MessageAnnotation, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1MessageAnnotation::Representation
      
          property :name, as: 'name'
          property :participant, as: 'participant'
          property :participant_role, as: 'participantRole'
          property :send_time, as: 'sendTime'
          property :sentiment_analysis, as: 'sentimentAnalysis', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1SentimentAnalysisResult, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1SentimentAnalysisResult::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1MessageAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contain_entities, as: 'containEntities'
          collection :parts, as: 'parts', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1AnnotatedMessagePart, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1AnnotatedMessagePart::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :payload, as: 'payload'
          property :source, as: 'source'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudDialogflowV2beta1QueryResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :all_required_params_present, as: 'allRequiredParamsPresent'
          property :cancels_slot_filling, as: 'cancelsSlotFilling'
          hash :diagnostic_info, as: 'diagnosticInfo'
          collection :fulfillment_messages, as: 'fulfillmentMessages', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessage, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessage::Representation
      
          property :fulfillment_text, as: 'fulfillmentText'
          property :intent, as: 'intent', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1Intent, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1Intent::Representation
      
          property :intent_detection_confidence, as: 'intentDetectionConfidence'
          property :knowledge_answers, as: 'knowledgeAnswers', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1KnowledgeAnswers, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1KnowledgeAnswers::Representation
      
          property :language_code, as: 'languageCode'
          collection :output_contexts, as: 'outputContexts', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1Context, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1Context::Representation
      
          hash :parameters, as: 'parameters'
          property :query_text, as: 'queryText'
          property :sentiment_analysis_result, as: 'sentimentAnalysisResult', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1SentimentAnalysisResult, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1SentimentAnalysisResult::Representation
      
          property :speech_recognition_confidence, as: 'speechRecognitionConfidence'
          hash :webhook_payload, as: 'webhookPayload'
          property :webhook_source, as: 'webhookSource'
        end
      end
      
      class GoogleCloudDialogflowV2beta1Sentiment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :magnitude, as: 'magnitude'
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudDialogflowV2beta1SentimentAnalysisResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query_text_sentiment, as: 'queryTextSentiment', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1Sentiment, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1Sentiment::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1SessionEntityType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entities, as: 'entities', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1EntityTypeEntity, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1EntityTypeEntity::Representation
      
          property :entity_override_mode, as: 'entityOverrideMode'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation_profile, as: 'conversationProfile'
          property :create_time, as: 'createTime'
          property :participant_role, as: 'participantRole'
          property :suggestion_feature_type, as: 'suggestionFeatureType'
        end
      end
      
      class GoogleCloudDialogflowV2beta1SmartReplyAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer_record, as: 'answerRecord'
          property :confidence, as: 'confidence'
          property :reply, as: 'reply'
        end
      end
      
      class GoogleCloudDialogflowV2beta1SuggestArticlesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :article_answers, as: 'articleAnswers', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1ArticleAnswer, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1ArticleAnswer::Representation
      
          property :context_size, as: 'contextSize'
          property :latest_message, as: 'latestMessage'
        end
      end
      
      class GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context_size, as: 'contextSize'
          collection :faq_answers, as: 'faqAnswers', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1FaqAnswer, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1FaqAnswer::Representation
      
          property :latest_message, as: 'latestMessage'
        end
      end
      
      class GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context_size, as: 'contextSize'
          property :latest_message, as: 'latestMessage'
          collection :smart_reply_answers, as: 'smartReplyAnswers', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1SmartReplyAnswer, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1SmartReplyAnswer::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1SuggestionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::DialogflowV3::GoogleRpcStatus, decorator: Google::Apis::DialogflowV3::GoogleRpcStatus::Representation
      
          property :suggest_articles_response, as: 'suggestArticlesResponse', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1SuggestArticlesResponse, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1SuggestArticlesResponse::Representation
      
          property :suggest_faq_answers_response, as: 'suggestFaqAnswersResponse', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse::Representation
      
          property :suggest_smart_replies_response, as: 'suggestSmartRepliesResponse', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1WebhookRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :alternative_query_results, as: 'alternativeQueryResults', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1QueryResult, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1QueryResult::Representation
      
          property :original_detect_intent_request, as: 'originalDetectIntentRequest', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest::Representation
      
          property :query_result, as: 'queryResult', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1QueryResult, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1QueryResult::Representation
      
          property :response_id, as: 'responseId'
          property :session, as: 'session'
        end
      end
      
      class GoogleCloudDialogflowV2beta1WebhookResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_interaction, as: 'endInteraction'
          property :followup_event_input, as: 'followupEventInput', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1EventInput, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1EventInput::Representation
      
          collection :fulfillment_messages, as: 'fulfillmentMessages', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessage, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessage::Representation
      
          property :fulfillment_text, as: 'fulfillmentText'
          property :live_agent_handoff, as: 'liveAgentHandoff'
          collection :output_contexts, as: 'outputContexts', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1Context, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1Context::Representation
      
          hash :payload, as: 'payload'
          collection :session_entity_types, as: 'sessionEntityTypes', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1SessionEntityType, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1SessionEntityType::Representation
      
          property :source, as: 'source'
        end
      end
      
      class GoogleCloudDialogflowV3alpha1ConversationSignals
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :turn_signals, as: 'turnSignals', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV3alpha1TurnSignals, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV3alpha1TurnSignals::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV3alpha1CreateDocumentOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV3alpha1DeleteDocumentOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDialogflowV3alpha1ImportDocumentsOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV3alpha1ImportDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :warnings, as: 'warnings', class: Google::Apis::DialogflowV3::GoogleRpcStatus, decorator: Google::Apis::DialogflowV3::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV3alpha1ReloadDocumentOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV3alpha1TurnSignals
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_escalated, as: 'agentEscalated'
          property :dtmf_used, as: 'dtmfUsed'
          collection :failure_reasons, as: 'failureReasons'
          property :no_match, as: 'noMatch'
          property :no_user_input, as: 'noUserInput'
          property :reached_end_page, as: 'reachedEndPage'
          property :triggered_abandonment_event, as: 'triggeredAbandonmentEvent'
          property :user_escalated, as: 'userEscalated'
          collection :webhook_statuses, as: 'webhookStatuses'
        end
      end
      
      class GoogleCloudDialogflowV3alpha1UpdateDocumentOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::DialogflowV3::GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata, decorator: Google::Apis::DialogflowV3::GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudLocationListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::DialogflowV3::GoogleCloudLocationLocation, decorator: Google::Apis::DialogflowV3::GoogleCloudLocationLocation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudLocationLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :location_id, as: 'locationId'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::DialogflowV3::GoogleLongrunningOperation, decorator: Google::Apis::DialogflowV3::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::DialogflowV3::GoogleRpcStatus, decorator: Google::Apis::DialogflowV3::GoogleRpcStatus::Representation
      
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
      
      class GoogleTypeLatLng
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
        end
      end
    end
  end
end
