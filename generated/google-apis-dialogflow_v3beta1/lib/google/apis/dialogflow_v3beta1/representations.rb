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
    module DialogflowV3beta1
      
      class GoogleCloudDialogflowCxV3AdvancedSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3AdvancedSettingsSpeechSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3AudioInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3BargeInConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3BatchRunTestCasesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3BatchRunTestCasesResponse
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
      
      class GoogleCloudDialogflowCxV3CreateVersionOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3DataStoreConnection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3DeployFlowMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3DeployFlowResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3DtmfInput
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
      
      class GoogleCloudDialogflowCxV3ExportAgentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ExportEntityTypesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ExportEntityTypesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ExportFlowResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ExportIntentsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ExportIntentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ExportTestCasesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ExportTestCasesResponse
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
      
      class GoogleCloudDialogflowCxV3FulfillmentGeneratorSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3FulfillmentSetParameterAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3GcsDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ImportEntityTypesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ImportEntityTypesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ImportEntityTypesResponseConflictingResources
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ImportFlowResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ImportIntentsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ImportIntentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ImportIntentsResponseConflictingResources
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ImportTestCasesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ImportTestCasesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3InlineDestination
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
      
      class GoogleCloudDialogflowCxV3KnowledgeConnectorSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3LanguageInfo
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
      
      class GoogleCloudDialogflowCxV3ResponseMessageKnowledgeInfoCard
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
      
      class GoogleCloudDialogflowCxV3RunContinuousTestMetadata
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
      
      class GoogleCloudDialogflowCxV3RunTestCaseResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3SessionInfo
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
      
      class GoogleCloudDialogflowCxV3ToolCall
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ToolCallResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3ToolCallResultError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3TransitionRoute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3TurnSignals
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
      
      class GoogleCloudDialogflowCxV3WebhookGenericWebServiceOAuthConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3WebhookGenericWebServiceSecretVersionHeaderValue
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
      
      class GoogleCloudDialogflowCxV3beta1Action
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdateFunctionCall
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdatePageState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ActionIntentMatch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ActionIntentMatchMatchedIntent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ActionStt
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ActionTts
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1AdvancedSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1AdvancedSettingsDtmfSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1Agent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1AgentAnswerFeedbackSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1AgentClientCertificateSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGitConnectionSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1AgentPersonalizationSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1AgentUtterance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1AgentValidationResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1AnswerFeedback
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1AnswerFeedbackRatingReason
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1AudioInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1BargeInConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1BatchDeleteTestCasesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1BatchRunTestCasesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1BatchRunTestCasesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1BatchRunTestCasesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1BigQueryExportSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1BoostSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpecControlPoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1BoostSpecs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1CalculateCoverageResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1Changelog
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1CompareVersionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1CompareVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ContinuousTestResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1Conversation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ConversationInteraction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ConversationInteractionMissingTransition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ConversationInteractionStepMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ConversationMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ConversationMetricsMatchTypeCount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ConversationMetricsQueryInputCount
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
      
      class GoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1DataStoreConnection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignals
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerGenerationModelCallSignals
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerPart
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsCitedSnippet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsGroundingSignals
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsRewriterModelCallSignals
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSafetySignals
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSearchSnippet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1DeployFlowMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1DeployFlowRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1DeployFlowResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1Deployment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1DeploymentResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1DetectIntentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1DetectIntentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1DtmfInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1EntityType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1EntityTypeEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase
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
      
      class GoogleCloudDialogflowCxV3beta1Event
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
      
      class GoogleCloudDialogflowCxV3beta1Example
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ExceptionDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1Experiment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ExperimentDefinition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ExperimentResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceInterval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ExperimentResultMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportAgentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportAgentRequestGitDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportAgentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportEntityTypesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportEntityTypesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportEntityTypesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportFlowRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportFlowResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportIntentsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportIntentsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportIntentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportPlaybookRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportTestCasesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportTestCasesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportTestCasesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportToolsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1FilterSpecs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1Flow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1FlowImportStrategy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1FlowInvocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1FlowMultiLanguageSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1FlowTransition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1FlowValidationResult
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
      
      class GoogleCloudDialogflowCxV3beta1FulfillIntentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1FulfillIntentResponse
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
      
      class GoogleCloudDialogflowCxV3beta1FulfillmentGeneratorSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1GcsDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1GenerativeInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1GenerativeSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettingsPromptTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1GenerativeSettingsKnowledgeConnectorSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1Generator
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1GeneratorModelParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1GeneratorPlaceholder
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1Handler
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1HandlerEventHandler
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1HandlerLifecycleHandler
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ImportEntityTypesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ImportEntityTypesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ImportEntityTypesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ImportEntityTypesResponseConflictingResources
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ImportFlowRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ImportFlowResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ImportIntentsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ImportIntentsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ImportIntentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ImportIntentsResponseConflictingResources
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ImportPlaybookRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ImportTestCasesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ImportTestCasesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ImportTestCasesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1InlineDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1InlineSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1InlineSource
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
      
      class GoogleCloudDialogflowCxV3beta1IntentCoverage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1IntentCoverageIntent
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
      
      class GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1LanguageInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ListAgentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ListChangelogsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ListContinuousTestResultsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ListConversationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ListDeploymentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ListEntityTypesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ListExamplesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ListExperimentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ListFlowsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ListGeneratorsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ListIntentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ListPagesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ListPlaybookVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ListPlaybooksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ListSecuritySettingsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ListTestCaseResultsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ListTestCasesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ListToolVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ListToolsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ListVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ListWebhooksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1LlmCall
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1LlmCallRetrievedExample
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1LlmCallTokenCount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1LlmModelSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1LoadVersionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1Match
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1MatchIntentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1MatchIntentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1NamedMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1NluSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1OutputAudioConfig
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
      
      class GoogleCloudDialogflowCxV3beta1ParameterDefinition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1Phrase
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1Playbook
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1PlaybookImportStrategy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1PlaybookInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1PlaybookInstruction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1PlaybookInvocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1PlaybookOutput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1PlaybookStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1PlaybookTransition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1PlaybookVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1QueryInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1QueryParameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1QueryResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ResourceName
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
      
      class GoogleCloudDialogflowCxV3beta1ResponseMessageKnowledgeInfoCard
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
      
      class GoogleCloudDialogflowCxV3beta1RestoreAgentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1RestoreAgentRequestGitSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1RestorePlaybookVersionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1RestorePlaybookVersionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1RestoreToolVersionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1RestoreToolVersionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1RolloutConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1RolloutState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1RunContinuousTestMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1RunContinuousTestRequest
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
      
      class GoogleCloudDialogflowCxV3beta1RunTestCaseRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1RunTestCaseResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1SafetySettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1SafetySettingsPhrase
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1SafetySettingsPromptSecuritySettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1SearchConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1SecuritySettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1SentimentAnalysisResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1SessionEntityType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1SessionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1Span
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1SpeechToTextSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1StartExperimentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1StopExperimentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1SubmitAnswerFeedbackRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig
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
      
      class GoogleCloudDialogflowCxV3beta1TextToSpeechSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1Tool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolAuthentication
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolAuthenticationApiKeyConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolAuthenticationBearerTokenConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolAuthenticationOAuthConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolAuthenticationServiceAgentAuthConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolCall
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolCallResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolCallResultError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolConnectorTool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolConnectorToolAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolConnectorToolActionEntityOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolDataStoreTool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolDataStoreToolFallbackPrompt
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2AuthCodeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2JwtBearerConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolExtensionTool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolFunctionTool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolOpenApiTool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolServiceDirectoryConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolTlsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolTlsConfigCaCert
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolUse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolUseDataStoreToolTrace
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolUseWebhookToolTrace
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1TrainFlowRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1TransitionCoverage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1TransitionCoverageTransition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1TransitionCoverageTransitionNode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1TransitionRoute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1TransitionRouteGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverageTransition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1TurnSignals
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1TypeSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1TypeSchemaSchemaReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1UserUtterance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ValidateAgentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ValidateFlowRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1ValidationMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1VariantsHistory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1Version
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1VersionVariants
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1VersionVariantsVariant
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1VoiceSelectionParams
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
      
      class GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceOAuthConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceSecretVersionHeaderValue
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
      
      class GoogleCloudDialogflowV2EncryptionSpec
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
      
      class GoogleCloudDialogflowV2FreeFormSuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2GcsDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2GenerateSuggestionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2GenerateSuggestionsResponseGeneratorSuggestionAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2GeneratorSuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2GeneratorSuggestionToolCallInfo
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
      
      class GoogleCloudDialogflowV2InitializeEncryptionSpecMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2InitializeEncryptionSpecRequest
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
      
      class GoogleCloudDialogflowV2KnowledgeAssistAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerFaqSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerGenerativeSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerGenerativeSourceSnippet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2KnowledgeAssistAnswerSuggestedQuery
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
      
      class GoogleCloudDialogflowV2SpeechWordInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2StreamingRecognitionResult
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
      
      class GoogleCloudDialogflowV2SuggestKnowledgeAssistResponse
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
      
      class GoogleCloudDialogflowV2SummarySuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2SummarySuggestionSummarySection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2ToolCall
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2ToolCallResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2ToolCallResultError
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
      
      class GoogleCloudDialogflowV2beta1DialogflowAssistAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1EncryptionSpec
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
      
      class GoogleCloudDialogflowV2beta1FreeFormSuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1GcsDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1GenerateSuggestionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1GenerateSuggestionsResponseGeneratorSuggestionAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1GeneratorSuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1GeneratorSuggestionToolCallInfo
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
      
      class GoogleCloudDialogflowV2beta1InitializeEncryptionSpecMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1InitializeEncryptionSpecRequest
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
      
      class GoogleCloudDialogflowV2beta1IntentSuggestion
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
      
      class GoogleCloudDialogflowV2beta1KnowledgeAssistAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswerFaqSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswerGenerativeSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswerGenerativeSourceSnippet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerSuggestedQuery
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
      
      class GoogleCloudDialogflowV2beta1ResponseMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1ResponseMessageEndInteraction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1ResponseMessageLiveAgentHandoff
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1ResponseMessageMixedAudio
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1ResponseMessageMixedAudioSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1ResponseMessageTelephonyTransferCall
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1ResponseMessageText
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
      
      class GoogleCloudDialogflowV2beta1SpeechWordInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1StreamingRecognitionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1SuggestArticlesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1SuggestDialogflowAssistsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1SuggestKnowledgeAssistResponse
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
      
      class GoogleCloudDialogflowV2beta1SummarySuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1SummarySuggestionSummarySection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1TelephonyDtmfEvents
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1ToolCall
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1ToolCallResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDialogflowV2beta1ToolCallResultError
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
      
      class GoogleCloudDialogflowV3alpha1TurnSignals
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
          property :audio_export_gcs_destination, as: 'audioExportGcsDestination', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3GcsDestination, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3GcsDestination::Representation
      
          property :dtmf_settings, as: 'dtmfSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings::Representation
      
          property :logging_settings, as: 'loggingSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings::Representation
      
          property :speech_settings, as: 'speechSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3AdvancedSettingsSpeechSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3AdvancedSettingsSpeechSettings::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :endpointing_timeout_duration, as: 'endpointingTimeoutDuration'
          property :finish_digit, as: 'finishDigit'
          property :interdigit_timeout_duration, as: 'interdigitTimeoutDuration'
          property :max_digits, as: 'maxDigits'
        end
      end
      
      class GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_consent_based_redaction, as: 'enableConsentBasedRedaction'
          property :enable_interaction_logging, as: 'enableInteractionLogging'
          property :enable_stackdriver_logging, as: 'enableStackdriverLogging'
        end
      end
      
      class GoogleCloudDialogflowCxV3AdvancedSettingsSpeechSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :endpointer_sensitivity, as: 'endpointerSensitivity'
          hash :models, as: 'models'
          property :no_speech_timeout, as: 'noSpeechTimeout'
          property :use_timeout_based_endpointing, as: 'useTimeoutBasedEndpointing'
        end
      end
      
      class GoogleCloudDialogflowCxV3AudioInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio, :base64 => true, as: 'audio'
          property :config, as: 'config', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3InputAudioConfig, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3InputAudioConfig::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3BargeInConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :no_barge_in_duration, as: 'noBargeInDuration'
          property :total_duration, as: 'totalDuration'
        end
      end
      
      class GoogleCloudDialogflowCxV3BatchRunTestCasesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :errors, as: 'errors', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TestError, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TestError::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3BatchRunTestCasesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :results, as: 'results', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TestCaseResult, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TestCaseResult::Representation
      
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
          property :turn_signals, as: 'turnSignals', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TurnSignals, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TurnSignals::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3ConversationTurn
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :user_input, as: 'userInput', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ConversationTurnUserInput, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ConversationTurnUserInput::Representation
      
          property :virtual_agent_output, as: 'virtualAgentOutput', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3ConversationTurnUserInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_sentiment_analysis, as: 'enableSentimentAnalysis'
          hash :injected_parameters, as: 'injectedParameters'
          property :input, as: 'input', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3QueryInput, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3QueryInput::Representation
      
          property :is_webhook_enabled, as: 'isWebhookEnabled'
        end
      end
      
      class GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_page, as: 'currentPage', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3Page, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3Page::Representation
      
          hash :diagnostic_info, as: 'diagnosticInfo'
          collection :differences, as: 'differences', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TestRunDifference, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TestRunDifference::Representation
      
          hash :session_parameters, as: 'sessionParameters'
          property :status, as: 'status', class: Google::Apis::DialogflowV3beta1::GoogleRpcStatus, decorator: Google::Apis::DialogflowV3beta1::GoogleRpcStatus::Representation
      
          collection :text_responses, as: 'textResponses', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessageText, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessageText::Representation
      
          property :triggered_intent, as: 'triggeredIntent', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3Intent, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3Intent::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3CreateVersionOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudDialogflowCxV3DataStoreConnection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_store, as: 'dataStore'
          property :data_store_type, as: 'dataStoreType'
          property :document_processing_mode, as: 'documentProcessingMode'
        end
      end
      
      class GoogleCloudDialogflowCxV3DeployFlowMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :test_errors, as: 'testErrors', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TestError, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TestError::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3DeployFlowResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployment, as: 'deployment'
          property :environment, as: 'environment', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3Environment, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3Environment::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3DtmfInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :digits, as: 'digits'
          property :finish_digit, as: 'finishDigit'
        end
      end
      
      class GoogleCloudDialogflowCxV3Environment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :test_cases_config, as: 'testCasesConfig', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig::Representation
      
          property :update_time, as: 'updateTime'
          collection :version_configs, as: 'versionConfigs', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3EnvironmentVersionConfig, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3EnvironmentVersionConfig::Representation
      
          property :webhook_config, as: 'webhookConfig', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3EnvironmentWebhookConfig, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3EnvironmentWebhookConfig::Representation
      
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
          collection :webhook_overrides, as: 'webhookOverrides', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3Webhook, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3Webhook::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3EventHandler
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event, as: 'event'
          property :name, as: 'name'
          property :target_flow, as: 'targetFlow'
          property :target_page, as: 'targetPage'
          property :target_playbook, as: 'targetPlaybook'
          property :trigger_fulfillment, as: 'triggerFulfillment', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3Fulfillment, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3Fulfillment::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3EventInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event, as: 'event'
        end
      end
      
      class GoogleCloudDialogflowCxV3ExportAgentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_content, :base64 => true, as: 'agentContent'
          property :agent_uri, as: 'agentUri'
          property :commit_sha, as: 'commitSha'
        end
      end
      
      class GoogleCloudDialogflowCxV3ExportEntityTypesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDialogflowCxV3ExportEntityTypesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity_types_content, as: 'entityTypesContent', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3InlineDestination, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3InlineDestination::Representation
      
          property :entity_types_uri, as: 'entityTypesUri'
        end
      end
      
      class GoogleCloudDialogflowCxV3ExportFlowResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :flow_content, :base64 => true, as: 'flowContent'
          property :flow_uri, as: 'flowUri'
        end
      end
      
      class GoogleCloudDialogflowCxV3ExportIntentsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDialogflowCxV3ExportIntentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :intents_content, as: 'intentsContent', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3InlineDestination, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3InlineDestination::Representation
      
          property :intents_uri, as: 'intentsUri'
        end
      end
      
      class GoogleCloudDialogflowCxV3ExportTestCasesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDialogflowCxV3ExportTestCasesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, :base64 => true, as: 'content'
          property :gcs_uri, as: 'gcsUri'
        end
      end
      
      class GoogleCloudDialogflowCxV3Form
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :parameters, as: 'parameters', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3FormParameter, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3FormParameter::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3FormParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advanced_settings, as: 'advancedSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3AdvancedSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3AdvancedSettings::Representation
      
          property :default_value, as: 'defaultValue'
          property :display_name, as: 'displayName'
          property :entity_type, as: 'entityType'
          property :fill_behavior, as: 'fillBehavior', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3FormParameterFillBehavior, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3FormParameterFillBehavior::Representation
      
          property :is_list, as: 'isList'
          property :redact, as: 'redact'
          property :required, as: 'required'
        end
      end
      
      class GoogleCloudDialogflowCxV3FormParameterFillBehavior
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :initial_prompt_fulfillment, as: 'initialPromptFulfillment', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3Fulfillment, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3Fulfillment::Representation
      
          collection :reprompt_event_handlers, as: 'repromptEventHandlers', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3EventHandler, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3EventHandler::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3Fulfillment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advanced_settings, as: 'advancedSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3AdvancedSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3AdvancedSettings::Representation
      
          collection :conditional_cases, as: 'conditionalCases', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3FulfillmentConditionalCases, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3FulfillmentConditionalCases::Representation
      
          property :enable_generative_fallback, as: 'enableGenerativeFallback'
          collection :generators, as: 'generators', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3FulfillmentGeneratorSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3FulfillmentGeneratorSettings::Representation
      
          collection :messages, as: 'messages', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessage, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessage::Representation
      
          property :return_partial_responses, as: 'returnPartialResponses'
          collection :set_parameter_actions, as: 'setParameterActions', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3FulfillmentSetParameterAction, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3FulfillmentSetParameterAction::Representation
      
          property :tag, as: 'tag'
          property :webhook, as: 'webhook'
        end
      end
      
      class GoogleCloudDialogflowCxV3FulfillmentConditionalCases
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cases, as: 'cases', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :case_content, as: 'caseContent', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent::Representation
      
          property :condition, as: 'condition'
        end
      end
      
      class GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :additional_cases, as: 'additionalCases', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3FulfillmentConditionalCases, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3FulfillmentConditionalCases::Representation
      
          property :message, as: 'message', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessage, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessage::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3FulfillmentGeneratorSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generator, as: 'generator'
          hash :input_parameters, as: 'inputParameters'
          property :output_parameter, as: 'outputParameter'
        end
      end
      
      class GoogleCloudDialogflowCxV3FulfillmentSetParameterAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parameter, as: 'parameter'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudDialogflowCxV3GcsDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDialogflowCxV3ImportEntityTypesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDialogflowCxV3ImportEntityTypesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conflicting_resources, as: 'conflictingResources', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ImportEntityTypesResponseConflictingResources, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ImportEntityTypesResponseConflictingResources::Representation
      
          collection :entity_types, as: 'entityTypes'
        end
      end
      
      class GoogleCloudDialogflowCxV3ImportEntityTypesResponseConflictingResources
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entity_display_names, as: 'entityDisplayNames'
          collection :entity_type_display_names, as: 'entityTypeDisplayNames'
        end
      end
      
      class GoogleCloudDialogflowCxV3ImportFlowResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :flow, as: 'flow'
        end
      end
      
      class GoogleCloudDialogflowCxV3ImportIntentsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDialogflowCxV3ImportIntentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conflicting_resources, as: 'conflictingResources', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ImportIntentsResponseConflictingResources, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ImportIntentsResponseConflictingResources::Representation
      
          collection :intents, as: 'intents'
        end
      end
      
      class GoogleCloudDialogflowCxV3ImportIntentsResponseConflictingResources
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entity_display_names, as: 'entityDisplayNames'
          collection :intent_display_names, as: 'intentDisplayNames'
        end
      end
      
      class GoogleCloudDialogflowCxV3ImportTestCasesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :errors, as: 'errors', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TestCaseError, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TestCaseError::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3ImportTestCasesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :names, as: 'names'
        end
      end
      
      class GoogleCloudDialogflowCxV3InlineDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, :base64 => true, as: 'content'
        end
      end
      
      class GoogleCloudDialogflowCxV3InputAudioConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_encoding, as: 'audioEncoding'
          property :barge_in_config, as: 'bargeInConfig', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3BargeInConfig, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3BargeInConfig::Representation
      
          property :enable_word_info, as: 'enableWordInfo'
          property :model, as: 'model'
          property :model_variant, as: 'modelVariant'
          property :opt_out_conformer_model_migration, as: 'optOutConformerModelMigration'
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
          collection :parameters, as: 'parameters', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3IntentParameter, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3IntentParameter::Representation
      
          property :priority, as: 'priority'
          collection :training_phrases, as: 'trainingPhrases', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3IntentTrainingPhrase, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3IntentTrainingPhrase::Representation
      
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
          collection :parts, as: 'parts', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3IntentTrainingPhrasePart, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3IntentTrainingPhrasePart::Representation
      
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
      
      class GoogleCloudDialogflowCxV3KnowledgeConnectorSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_store_connections, as: 'dataStoreConnections', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3DataStoreConnection, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3DataStoreConnection::Representation
      
          property :enabled, as: 'enabled'
          property :target_flow, as: 'targetFlow'
          property :target_page, as: 'targetPage'
          property :trigger_fulfillment, as: 'triggerFulfillment', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3Fulfillment, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3Fulfillment::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3LanguageInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence_score, as: 'confidenceScore'
          property :input_language_code, as: 'inputLanguageCode'
          property :resolved_language_code, as: 'resolvedLanguageCode'
        end
      end
      
      class GoogleCloudDialogflowCxV3Page
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advanced_settings, as: 'advancedSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3AdvancedSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3AdvancedSettings::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :entry_fulfillment, as: 'entryFulfillment', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3Fulfillment, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3Fulfillment::Representation
      
          collection :event_handlers, as: 'eventHandlers', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3EventHandler, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3EventHandler::Representation
      
          property :form, as: 'form', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3Form, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3Form::Representation
      
          property :knowledge_connector_settings, as: 'knowledgeConnectorSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3KnowledgeConnectorSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3KnowledgeConnectorSettings::Representation
      
          property :name, as: 'name'
          collection :transition_route_groups, as: 'transitionRouteGroups'
          collection :transition_routes, as: 'transitionRoutes', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TransitionRoute, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TransitionRoute::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3PageInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_page, as: 'currentPage'
          property :display_name, as: 'displayName'
          property :form_info, as: 'formInfo', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3PageInfoFormInfo, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3PageInfoFormInfo::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3PageInfoFormInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :parameter_info, as: 'parameterInfo', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo::Representation
      
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
          property :audio, as: 'audio', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3AudioInput, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3AudioInput::Representation
      
          property :dtmf, as: 'dtmf', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3DtmfInput, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3DtmfInput::Representation
      
          property :event, as: 'event', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3EventInput, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3EventInput::Representation
      
          property :intent, as: 'intent', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3IntentInput, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3IntentInput::Representation
      
          property :language_code, as: 'languageCode'
          property :text, as: 'text', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TextInput, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TextInput::Representation
      
          property :tool_call_result, as: 'toolCallResult', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ToolCallResult, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ToolCallResult::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3ResponseMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel, as: 'channel'
          property :conversation_success, as: 'conversationSuccess', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess::Representation
      
          property :end_interaction, as: 'endInteraction', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessageEndInteraction, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessageEndInteraction::Representation
      
          property :knowledge_info_card, as: 'knowledgeInfoCard', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessageKnowledgeInfoCard, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessageKnowledgeInfoCard::Representation
      
          property :live_agent_handoff, as: 'liveAgentHandoff', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff::Representation
      
          property :mixed_audio, as: 'mixedAudio', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessageMixedAudio, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessageMixedAudio::Representation
      
          property :output_audio_text, as: 'outputAudioText', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText::Representation
      
          hash :payload, as: 'payload'
          property :play_audio, as: 'playAudio', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessagePlayAudio, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessagePlayAudio::Representation
      
          property :response_type, as: 'responseType'
          property :telephony_transfer_call, as: 'telephonyTransferCall', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall::Representation
      
          property :text, as: 'text', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessageText, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessageText::Representation
      
          property :tool_call, as: 'toolCall', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ToolCall, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ToolCall::Representation
      
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
      
      class GoogleCloudDialogflowCxV3ResponseMessageKnowledgeInfoCard
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
          collection :segments, as: 'segments', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment::Representation
      
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
      
      class GoogleCloudDialogflowCxV3RunContinuousTestMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :errors, as: 'errors', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TestError, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TestError::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3RunContinuousTestResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :continuous_test_result, as: 'continuousTestResult', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ContinuousTestResult, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ContinuousTestResult::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3RunTestCaseMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDialogflowCxV3RunTestCaseResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :result, as: 'result', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TestCaseResult, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TestCaseResult::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3SessionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :parameters, as: 'parameters'
          property :session, as: 'session'
        end
      end
      
      class GoogleCloudDialogflowCxV3TestCase
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_time, as: 'creationTime'
          property :display_name, as: 'displayName'
          property :last_test_result, as: 'lastTestResult', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TestCaseResult, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TestCaseResult::Representation
      
          property :name, as: 'name'
          property :notes, as: 'notes'
          collection :tags, as: 'tags'
          collection :test_case_conversation_turns, as: 'testCaseConversationTurns', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ConversationTurn, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ConversationTurn::Representation
      
          property :test_config, as: 'testConfig', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TestConfig, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TestConfig::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3TestCaseError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :status, as: 'status', class: Google::Apis::DialogflowV3beta1::GoogleRpcStatus, decorator: Google::Apis::DialogflowV3beta1::GoogleRpcStatus::Representation
      
          property :test_case, as: 'testCase', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TestCase, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TestCase::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3TestCaseResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conversation_turns, as: 'conversationTurns', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ConversationTurn, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ConversationTurn::Representation
      
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
          property :status, as: 'status', class: Google::Apis::DialogflowV3beta1::GoogleRpcStatus, decorator: Google::Apis::DialogflowV3beta1::GoogleRpcStatus::Representation
      
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
      
      class GoogleCloudDialogflowCxV3ToolCall
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          hash :input_parameters, as: 'inputParameters'
          property :tool, as: 'tool'
        end
      end
      
      class GoogleCloudDialogflowCxV3ToolCallResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :error, as: 'error', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ToolCallResultError, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ToolCallResultError::Representation
      
          hash :output_parameters, as: 'outputParameters'
          property :tool, as: 'tool'
        end
      end
      
      class GoogleCloudDialogflowCxV3ToolCallResultError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
        end
      end
      
      class GoogleCloudDialogflowCxV3TransitionRoute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition'
          property :description, as: 'description'
          property :intent, as: 'intent'
          property :name, as: 'name'
          property :target_flow, as: 'targetFlow'
          property :target_page, as: 'targetPage'
          property :trigger_fulfillment, as: 'triggerFulfillment', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3Fulfillment, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3Fulfillment::Representation
      
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
          property :sentiment_magnitude, as: 'sentimentMagnitude'
          property :sentiment_score, as: 'sentimentScore'
          property :user_escalated, as: 'userEscalated'
          collection :webhook_statuses, as: 'webhookStatuses'
        end
      end
      
      class GoogleCloudDialogflowCxV3Webhook
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
          property :display_name, as: 'displayName'
          property :generic_web_service, as: 'genericWebService', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3WebhookGenericWebService, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3WebhookGenericWebService::Representation
      
          property :name, as: 'name'
          property :service_directory, as: 'serviceDirectory', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig::Representation
      
          property :timeout, as: 'timeout'
        end
      end
      
      class GoogleCloudDialogflowCxV3WebhookGenericWebService
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_ca_certs, as: 'allowedCaCerts'
          property :http_method, as: 'httpMethod'
          property :oauth_config, as: 'oauthConfig', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3WebhookGenericWebServiceOAuthConfig, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3WebhookGenericWebServiceOAuthConfig::Representation
      
          hash :parameter_mapping, as: 'parameterMapping'
          property :password, as: 'password'
          property :request_body, as: 'requestBody'
          hash :request_headers, as: 'requestHeaders'
          property :secret_version_for_username_password, as: 'secretVersionForUsernamePassword'
          hash :secret_versions_for_request_headers, as: 'secretVersionsForRequestHeaders', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3WebhookGenericWebServiceSecretVersionHeaderValue, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3WebhookGenericWebServiceSecretVersionHeaderValue::Representation
      
          property :service_agent_auth, as: 'serviceAgentAuth'
          property :uri, as: 'uri'
          property :username, as: 'username'
          property :webhook_type, as: 'webhookType'
        end
      end
      
      class GoogleCloudDialogflowCxV3WebhookGenericWebServiceOAuthConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_id, as: 'clientId'
          property :client_secret, as: 'clientSecret'
          collection :scopes, as: 'scopes'
          property :secret_version_for_client_secret, as: 'secretVersionForClientSecret'
          property :token_endpoint, as: 'tokenEndpoint'
        end
      end
      
      class GoogleCloudDialogflowCxV3WebhookGenericWebServiceSecretVersionHeaderValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :secret_version, as: 'secretVersion'
        end
      end
      
      class GoogleCloudDialogflowCxV3WebhookRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detect_intent_response_id, as: 'detectIntentResponseId'
          property :dtmf_digits, as: 'dtmfDigits'
          property :fulfillment_info, as: 'fulfillmentInfo', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo::Representation
      
          property :intent_info, as: 'intentInfo', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3WebhookRequestIntentInfo, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3WebhookRequestIntentInfo::Representation
      
          property :language_code, as: 'languageCode'
          property :language_info, as: 'languageInfo', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3LanguageInfo, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3LanguageInfo::Representation
      
          collection :messages, as: 'messages', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessage, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessage::Representation
      
          property :page_info, as: 'pageInfo', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3PageInfo, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3PageInfo::Representation
      
          hash :payload, as: 'payload'
          property :sentiment_analysis_result, as: 'sentimentAnalysisResult', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult::Representation
      
          property :session_info, as: 'sessionInfo', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3SessionInfo, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3SessionInfo::Representation
      
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
          hash :parameters, as: 'parameters', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue::Representation
      
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
          property :fulfillment_response, as: 'fulfillmentResponse', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse::Representation
      
          property :page_info, as: 'pageInfo', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3PageInfo, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3PageInfo::Representation
      
          hash :payload, as: 'payload'
          property :session_info, as: 'sessionInfo', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3SessionInfo, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3SessionInfo::Representation
      
          property :target_flow, as: 'targetFlow'
          property :target_page, as: 'targetPage'
        end
      end
      
      class GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :merge_behavior, as: 'mergeBehavior'
          collection :messages, as: 'messages', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessage, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessage::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_web_service, as: 'genericWebService', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3WebhookGenericWebService, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3WebhookGenericWebService::Representation
      
          property :service, as: 'service'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1Action
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_utterance, as: 'agentUtterance', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AgentUtterance, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AgentUtterance::Representation
      
          property :complete_time, as: 'completeTime'
          property :display_name, as: 'displayName'
          property :event, as: 'event', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Event, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Event::Representation
      
          property :flow_invocation, as: 'flowInvocation', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FlowInvocation, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FlowInvocation::Representation
      
          property :flow_state_update, as: 'flowStateUpdate', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdate, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdate::Representation
      
          property :flow_transition, as: 'flowTransition', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FlowTransition, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FlowTransition::Representation
      
          property :intent_match, as: 'intentMatch', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ActionIntentMatch, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ActionIntentMatch::Representation
      
          property :llm_call, as: 'llmCall', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1LlmCall, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1LlmCall::Representation
      
          property :playbook_invocation, as: 'playbookInvocation', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookInvocation, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookInvocation::Representation
      
          property :playbook_transition, as: 'playbookTransition', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookTransition, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookTransition::Representation
      
          property :start_time, as: 'startTime'
          property :status, as: 'status', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Status, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Status::Representation
      
          property :stt, as: 'stt', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ActionStt, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ActionStt::Representation
      
          collection :sub_execution_steps, as: 'subExecutionSteps', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Span, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Span::Representation
      
          property :tool_use, as: 'toolUse', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolUse, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolUse::Representation
      
          property :tts, as: 'tts', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ActionTts, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ActionTts::Representation
      
          property :user_utterance, as: 'userUtterance', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1UserUtterance, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1UserUtterance::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination, as: 'destination'
          property :event_type, as: 'eventType'
          property :function_call, as: 'functionCall', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdateFunctionCall, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdateFunctionCall::Representation
      
          property :page_state, as: 'pageState', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdatePageState, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdatePageState::Representation
      
          hash :updated_parameters, as: 'updatedParameters'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdateFunctionCall
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdatePageState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :page, as: 'page'
          property :status, as: 'status'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ActionIntentMatch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :matched_intents, as: 'matchedIntents', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ActionIntentMatchMatchedIntent, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ActionIntentMatchMatchedIntent::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ActionIntentMatchMatchedIntent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :generative_fallback, as: 'generativeFallback'
          property :intent_id, as: 'intentId'
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ActionStt
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ActionTts
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1AdvancedSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_export_gcs_destination, as: 'audioExportGcsDestination', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GcsDestination, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GcsDestination::Representation
      
          property :dtmf_settings, as: 'dtmfSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AdvancedSettingsDtmfSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AdvancedSettingsDtmfSettings::Representation
      
          property :logging_settings, as: 'loggingSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettings::Representation
      
          property :speech_settings, as: 'speechSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1AdvancedSettingsDtmfSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :endpointing_timeout_duration, as: 'endpointingTimeoutDuration'
          property :finish_digit, as: 'finishDigit'
          property :interdigit_timeout_duration, as: 'interdigitTimeoutDuration'
          property :max_digits, as: 'maxDigits'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_consent_based_redaction, as: 'enableConsentBasedRedaction'
          property :enable_interaction_logging, as: 'enableInteractionLogging'
          property :enable_stackdriver_logging, as: 'enableStackdriverLogging'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :endpointer_sensitivity, as: 'endpointerSensitivity'
          hash :models, as: 'models'
          property :no_speech_timeout, as: 'noSpeechTimeout'
          property :use_timeout_based_endpointing, as: 'useTimeoutBasedEndpointing'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1Agent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advanced_settings, as: 'advancedSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AdvancedSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AdvancedSettings::Representation
      
          property :answer_feedback_settings, as: 'answerFeedbackSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AgentAnswerFeedbackSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AgentAnswerFeedbackSettings::Representation
      
          property :avatar_uri, as: 'avatarUri'
          property :bigquery_export_settings, as: 'bigqueryExportSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1BigQueryExportSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1BigQueryExportSettings::Representation
      
          property :client_certificate_settings, as: 'clientCertificateSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AgentClientCertificateSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AgentClientCertificateSettings::Representation
      
          property :default_language_code, as: 'defaultLanguageCode'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :enable_multi_language_training, as: 'enableMultiLanguageTraining'
          property :enable_spell_correction, as: 'enableSpellCorrection'
          property :enable_stackdriver_logging, as: 'enableStackdriverLogging'
          property :gen_app_builder_settings, as: 'genAppBuilderSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettings::Representation
      
          property :git_integration_settings, as: 'gitIntegrationSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettings::Representation
      
          property :locked, as: 'locked'
          property :name, as: 'name'
          property :personalization_settings, as: 'personalizationSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AgentPersonalizationSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AgentPersonalizationSettings::Representation
      
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :security_settings, as: 'securitySettings'
          property :speech_to_text_settings, as: 'speechToTextSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SpeechToTextSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SpeechToTextSettings::Representation
      
          property :start_flow, as: 'startFlow'
          property :start_playbook, as: 'startPlaybook'
          collection :supported_language_codes, as: 'supportedLanguageCodes'
          property :text_to_speech_settings, as: 'textToSpeechSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TextToSpeechSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TextToSpeechSettings::Representation
      
          property :time_zone, as: 'timeZone'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1AgentAnswerFeedbackSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_answer_feedback, as: 'enableAnswerFeedback'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1AgentClientCertificateSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :passphrase, as: 'passphrase'
          property :private_key, as: 'privateKey'
          property :ssl_certificate, as: 'sslCertificate'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :engine, as: 'engine'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :git_connection_settings, as: 'gitConnectionSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGitConnectionSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGitConnectionSettings::Representation
      
          property :github_settings, as: 'githubSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettings::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGitConnectionSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_token_secret, as: 'accessTokenSecret'
          collection :branches, as: 'branches'
          property :display_name, as: 'displayName'
          property :repository_uri, as: 'repositoryUri'
          property :tracking_branch, as: 'trackingBranch'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_token, as: 'accessToken'
          collection :branches, as: 'branches'
          property :display_name, as: 'displayName'
          property :repository_uri, as: 'repositoryUri'
          property :tracking_branch, as: 'trackingBranch'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1AgentPersonalizationSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :default_end_user_metadata, as: 'defaultEndUserMetadata'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1AgentUtterance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :require_generation, as: 'requireGeneration'
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1AgentValidationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :flow_validation_results, as: 'flowValidationResults', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FlowValidationResult, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FlowValidationResult::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1AnswerFeedback
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_rating, as: 'customRating'
          property :rating, as: 'rating'
          property :rating_reason, as: 'ratingReason', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AnswerFeedbackRatingReason, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AnswerFeedbackRatingReason::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1AnswerFeedbackRatingReason
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :feedback, as: 'feedback'
          collection :reason_labels, as: 'reasonLabels'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1AudioInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio, :base64 => true, as: 'audio'
          property :config, as: 'config', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1InputAudioConfig, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1InputAudioConfig::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1BargeInConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :no_barge_in_duration, as: 'noBargeInDuration'
          property :total_duration, as: 'totalDuration'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1BatchDeleteTestCasesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :names, as: 'names'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1BatchRunTestCasesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :errors, as: 'errors', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestError, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestError::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1BatchRunTestCasesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :environment, as: 'environment'
          collection :test_cases, as: 'testCases'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1BatchRunTestCasesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :results, as: 'results', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCaseResult, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCaseResult::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1BigQueryExportSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_table, as: 'bigqueryTable'
          property :enabled, as: 'enabled'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1BoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :condition_boost_specs, as: 'conditionBoostSpecs', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpec, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpec::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost, as: 'boost'
          property :boost_control_spec, as: 'boostControlSpec', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpec, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpec::Representation
      
          property :condition, as: 'condition'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_type, as: 'attributeType'
          collection :control_points, as: 'controlPoints', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpecControlPoint, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpecControlPoint::Representation
      
          property :field_name, as: 'fieldName'
          property :interpolation_type, as: 'interpolationType'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpecControlPoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_value, as: 'attributeValue'
          property :boost_amount, as: 'boostAmount'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1BoostSpecs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_stores, as: 'dataStores'
          collection :spec, as: 'spec', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1BoostSpec, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1BoostSpec::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1CalculateCoverageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent, as: 'agent'
          property :intent_coverage, as: 'intentCoverage', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1IntentCoverage, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1IntentCoverage::Representation
      
          property :route_group_coverage, as: 'routeGroupCoverage', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverage, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverage::Representation
      
          property :transition_coverage, as: 'transitionCoverage', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionCoverage, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionCoverage::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1Changelog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :language_code, as: 'languageCode'
          property :name, as: 'name'
          property :resource, as: 'resource'
          property :type, as: 'type'
          property :user_email, as: 'userEmail'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1CompareVersionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
          property :target_version, as: 'targetVersion'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1CompareVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_version_content_json, as: 'baseVersionContentJson'
          property :compare_time, as: 'compareTime'
          property :target_version_content_json, as: 'targetVersionContentJson'
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
      
      class GoogleCloudDialogflowCxV3beta1Conversation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration, as: 'duration'
          property :environment, as: 'environment', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Environment, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Environment::Representation
      
          hash :flow_versions, as: 'flowVersions'
          collection :flows, as: 'flows', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow::Representation
      
          collection :intents, as: 'intents', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent::Representation
      
          collection :interactions, as: 'interactions', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ConversationInteraction, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ConversationInteraction::Representation
      
          property :language_code, as: 'languageCode'
          property :metrics, as: 'metrics', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ConversationMetrics, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ConversationMetrics::Representation
      
          property :name, as: 'name'
          collection :pages, as: 'pages', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page::Representation
      
          property :start_time, as: 'startTime'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ConversationInteraction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer_feedback, as: 'answerFeedback', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AnswerFeedback, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AnswerFeedback::Representation
      
          property :create_time, as: 'createTime'
          property :missing_transition, as: 'missingTransition', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ConversationInteractionMissingTransition, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ConversationInteractionMissingTransition::Representation
      
          collection :partial_responses, as: 'partialResponses', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentResponse, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentResponse::Representation
      
          property :request, as: 'request', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentRequest, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentRequest::Representation
      
          property :request_utterances, as: 'requestUtterances'
          property :response, as: 'response', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentResponse, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentResponse::Representation
      
          property :response_utterances, as: 'responseUtterances'
          collection :step_metrics, as: 'stepMetrics', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ConversationInteractionStepMetrics, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ConversationInteractionStepMetrics::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ConversationInteractionMissingTransition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :intent_display_name, as: 'intentDisplayName'
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ConversationInteractionStepMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latency, as: 'latency'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ConversationMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :average_match_confidence, as: 'averageMatchConfidence'
          property :has_end_interaction, as: 'hasEndInteraction'
          property :has_live_agent_handoff, as: 'hasLiveAgentHandoff'
          property :input_audio_duration, as: 'inputAudioDuration'
          property :interaction_count, as: 'interactionCount'
          property :match_type_count, as: 'matchTypeCount', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ConversationMetricsMatchTypeCount, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ConversationMetricsMatchTypeCount::Representation
      
          property :max_webhook_latency, as: 'maxWebhookLatency'
          property :output_audio_duration, as: 'outputAudioDuration'
          property :query_input_count, as: 'queryInputCount', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ConversationMetricsQueryInputCount, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ConversationMetricsQueryInputCount::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ConversationMetricsMatchTypeCount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :direct_intent_count, as: 'directIntentCount'
          property :event_count, as: 'eventCount'
          property :intent_count, as: 'intentCount'
          property :no_input_count, as: 'noInputCount'
          property :no_match_count, as: 'noMatchCount'
          property :parameter_filling_count, as: 'parameterFillingCount'
          property :unspecified_count, as: 'unspecifiedCount'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ConversationMetricsQueryInputCount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_count, as: 'audioCount'
          property :dtmf_count, as: 'dtmfCount'
          property :event_count, as: 'eventCount'
          property :intent_count, as: 'intentCount'
          property :text_count, as: 'textCount'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ConversationSignals
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :turn_signals, as: 'turnSignals', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TurnSignals, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TurnSignals::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ConversationTurn
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :user_input, as: 'userInput', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput::Representation
      
          property :virtual_agent_output, as: 'virtualAgentOutput', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_sentiment_analysis, as: 'enableSentimentAnalysis'
          hash :injected_parameters, as: 'injectedParameters'
          property :input, as: 'input', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1QueryInput, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1QueryInput::Representation
      
          property :is_webhook_enabled, as: 'isWebhookEnabled'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_page, as: 'currentPage', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page::Representation
      
          hash :diagnostic_info, as: 'diagnosticInfo'
          collection :differences, as: 'differences', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestRunDifference, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestRunDifference::Representation
      
          hash :session_parameters, as: 'sessionParameters'
          property :status, as: 'status', class: Google::Apis::DialogflowV3beta1::GoogleRpcStatus, decorator: Google::Apis::DialogflowV3beta1::GoogleRpcStatus::Representation
      
          collection :text_responses, as: 'textResponses', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessageText, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessageText::Representation
      
          property :triggered_intent, as: 'triggeredIntent', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1DataStoreConnection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_store, as: 'dataStore'
          property :data_store_type, as: 'dataStoreType'
          property :document_processing_mode, as: 'documentProcessingMode'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignals
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer, as: 'answer'
          property :answer_generation_model_call_signals, as: 'answerGenerationModelCallSignals', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerGenerationModelCallSignals, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerGenerationModelCallSignals::Representation
      
          collection :answer_parts, as: 'answerParts', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerPart, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerPart::Representation
      
          collection :cited_snippets, as: 'citedSnippets', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsCitedSnippet, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsCitedSnippet::Representation
      
          property :grounding_signals, as: 'groundingSignals', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsGroundingSignals, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsGroundingSignals::Representation
      
          property :rewriter_model_call_signals, as: 'rewriterModelCallSignals', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsRewriterModelCallSignals, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsRewriterModelCallSignals::Representation
      
          property :rewritten_query, as: 'rewrittenQuery'
          property :safety_signals, as: 'safetySignals', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSafetySignals, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSafetySignals::Representation
      
          collection :search_snippets, as: 'searchSnippets', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSearchSnippet, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSearchSnippet::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerGenerationModelCallSignals
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model, as: 'model'
          property :model_output, as: 'modelOutput'
          property :rendered_prompt, as: 'renderedPrompt'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerPart
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :supporting_indices, as: 'supportingIndices'
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsCitedSnippet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :search_snippet, as: 'searchSnippet', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSearchSnippet, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSearchSnippet::Representation
      
          property :snippet_index, as: 'snippetIndex'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsGroundingSignals
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :decision, as: 'decision'
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsRewriterModelCallSignals
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model, as: 'model'
          property :model_output, as: 'modelOutput'
          property :rendered_prompt, as: 'renderedPrompt'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSafetySignals
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :banned_phrase_match, as: 'bannedPhraseMatch'
          property :decision, as: 'decision'
          property :matched_banned_phrase, as: 'matchedBannedPhrase'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSearchSnippet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document_title, as: 'documentTitle'
          property :document_uri, as: 'documentUri'
          hash :metadata, as: 'metadata'
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1DeployFlowMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :test_errors, as: 'testErrors', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestError, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestError::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1DeployFlowRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :flow_version, as: 'flowVersion'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1DeployFlowResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployment, as: 'deployment'
          property :environment, as: 'environment', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Environment, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Environment::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1Deployment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :flow_version, as: 'flowVersion'
          property :name, as: 'name'
          property :result, as: 'result', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DeploymentResult, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DeploymentResult::Representation
      
          property :start_time, as: 'startTime'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1DeploymentResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :deployment_test_results, as: 'deploymentTestResults'
          property :experiment, as: 'experiment'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1DetectIntentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :output_audio_config, as: 'outputAudioConfig', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1OutputAudioConfig, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1OutputAudioConfig::Representation
      
          property :query_input, as: 'queryInput', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1QueryInput, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1QueryInput::Representation
      
          property :query_params, as: 'queryParams', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1QueryParameters, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1QueryParameters::Representation
      
          property :session, as: 'session'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1DetectIntentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_cancellation, as: 'allowCancellation'
          property :output_audio, :base64 => true, as: 'outputAudio'
          property :output_audio_config, as: 'outputAudioConfig', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1OutputAudioConfig, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1OutputAudioConfig::Representation
      
          property :query_result, as: 'queryResult', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1QueryResult, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1QueryResult::Representation
      
          property :response_id, as: 'responseId'
          property :response_type, as: 'responseType'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1DtmfInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :digits, as: 'digits'
          property :finish_digit, as: 'finishDigit'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1EntityType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_expansion_mode, as: 'autoExpansionMode'
          property :display_name, as: 'displayName'
          property :enable_fuzzy_extraction, as: 'enableFuzzyExtraction'
          collection :entities, as: 'entities', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityTypeEntity, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityTypeEntity::Representation
      
          collection :excluded_phrases, as: 'excludedPhrases', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase::Representation
      
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :redact, as: 'redact'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1EntityTypeEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :synonyms, as: 'synonyms'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1Environment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :test_cases_config, as: 'testCasesConfig', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig::Representation
      
          property :update_time, as: 'updateTime'
          collection :version_configs, as: 'versionConfigs', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig::Representation
      
          property :webhook_config, as: 'webhookConfig', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig::Representation
      
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
          collection :webhook_overrides, as: 'webhookOverrides', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1Event
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event, as: 'event'
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1EventHandler
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event, as: 'event'
          property :name, as: 'name'
          property :target_flow, as: 'targetFlow'
          property :target_page, as: 'targetPage'
          property :target_playbook, as: 'targetPlaybook'
          property :trigger_fulfillment, as: 'triggerFulfillment', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Fulfillment, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Fulfillment::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1EventInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event, as: 'event'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1Example
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :actions, as: 'actions', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Action, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Action::Representation
      
          property :conversation_state, as: 'conversationState'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :language_code, as: 'languageCode'
          property :name, as: 'name'
          property :playbook_input, as: 'playbookInput', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookInput, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookInput::Representation
      
          property :playbook_output, as: 'playbookOutput', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookOutput, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookOutput::Representation
      
          property :token_count, :numeric_string => true, as: 'tokenCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ExceptionDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_message, as: 'errorMessage'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1Experiment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :definition, as: 'definition', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExperimentDefinition, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExperimentDefinition::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :end_time, as: 'endTime'
          property :experiment_length, as: 'experimentLength'
          property :last_update_time, as: 'lastUpdateTime'
          property :name, as: 'name'
          property :result, as: 'result', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExperimentResult, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExperimentResult::Representation
      
          property :rollout_config, as: 'rolloutConfig', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RolloutConfig, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RolloutConfig::Representation
      
          property :rollout_failure_reason, as: 'rolloutFailureReason'
          property :rollout_state, as: 'rolloutState', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RolloutState, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RolloutState::Representation
      
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          collection :variants_history, as: 'variantsHistory', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1VariantsHistory, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1VariantsHistory::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ExperimentDefinition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition'
          property :version_variants, as: 'versionVariants', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1VersionVariants, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1VersionVariants::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ExperimentResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_update_time, as: 'lastUpdateTime'
          collection :version_metrics, as: 'versionMetrics', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceInterval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence_level, as: 'confidenceLevel'
          property :lower_bound, as: 'lowerBound'
          property :ratio, as: 'ratio'
          property :upper_bound, as: 'upperBound'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ExperimentResultMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence_interval, as: 'confidenceInterval', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceInterval, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceInterval::Representation
      
          property :count, as: 'count'
          property :count_type, as: 'countType'
          property :ratio, as: 'ratio'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :metrics, as: 'metrics', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExperimentResultMetric, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExperimentResultMetric::Representation
      
          property :session_count, as: 'sessionCount'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportAgentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_uri, as: 'agentUri'
          property :data_format, as: 'dataFormat'
          property :environment, as: 'environment'
          property :git_destination, as: 'gitDestination', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExportAgentRequestGitDestination, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExportAgentRequestGitDestination::Representation
      
          property :include_bigquery_export_settings, as: 'includeBigqueryExportSettings'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportAgentRequestGitDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :commit_message, as: 'commitMessage'
          property :tracking_branch, as: 'trackingBranch'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportAgentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_content, :base64 => true, as: 'agentContent'
          property :agent_uri, as: 'agentUri'
          property :commit_sha, as: 'commitSha'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportEntityTypesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportEntityTypesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_format, as: 'dataFormat'
          collection :entity_types, as: 'entityTypes'
          property :entity_types_content_inline, as: 'entityTypesContentInline'
          property :entity_types_uri, as: 'entityTypesUri'
          property :language_code, as: 'languageCode'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportEntityTypesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity_types_content, as: 'entityTypesContent', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1InlineDestination, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1InlineDestination::Representation
      
          property :entity_types_uri, as: 'entityTypesUri'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportFlowRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :flow_uri, as: 'flowUri'
          property :include_referenced_flows, as: 'includeReferencedFlows'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportFlowResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :flow_content, :base64 => true, as: 'flowContent'
          property :flow_uri, as: 'flowUri'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportIntentsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportIntentsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_format, as: 'dataFormat'
          collection :intents, as: 'intents'
          property :intents_content_inline, as: 'intentsContentInline'
          property :intents_uri, as: 'intentsUri'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportIntentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :intents_content, as: 'intentsContent', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1InlineDestination, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1InlineDestination::Representation
      
          property :intents_uri, as: 'intentsUri'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportPlaybookRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_format, as: 'dataFormat'
          property :playbook_uri, as: 'playbookUri'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportTestCasesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportTestCasesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_format, as: 'dataFormat'
          property :filter, as: 'filter'
          property :gcs_uri, as: 'gcsUri'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportTestCasesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, :base64 => true, as: 'content'
          property :gcs_uri, as: 'gcsUri'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ExportToolsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_format, as: 'dataFormat'
          collection :tools, as: 'tools'
          property :tools_content_inline, as: 'toolsContentInline'
          property :tools_uri, as: 'toolsUri'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1FilterSpecs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_stores, as: 'dataStores'
          property :filter, as: 'filter'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1Flow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advanced_settings, as: 'advancedSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AdvancedSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AdvancedSettings::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          collection :event_handlers, as: 'eventHandlers', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EventHandler, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EventHandler::Representation
      
          property :knowledge_connector_settings, as: 'knowledgeConnectorSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings::Representation
      
          property :locked, as: 'locked'
          property :multi_language_settings, as: 'multiLanguageSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FlowMultiLanguageSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FlowMultiLanguageSettings::Representation
      
          property :name, as: 'name'
          property :nlu_settings, as: 'nluSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1NluSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1NluSettings::Representation
      
          collection :transition_route_groups, as: 'transitionRouteGroups'
          collection :transition_routes, as: 'transitionRoutes', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRoute, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRoute::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1FlowImportStrategy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :global_import_strategy, as: 'globalImportStrategy'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1FlowInvocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :flow, as: 'flow'
          property :flow_state, as: 'flowState'
          hash :input_action_parameters, as: 'inputActionParameters'
          hash :output_action_parameters, as: 'outputActionParameters'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1FlowMultiLanguageSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_multi_language_detection, as: 'enableMultiLanguageDetection'
          collection :supported_response_language_codes, as: 'supportedResponseLanguageCodes'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1FlowTransition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :flow, as: 'flow'
          hash :input_action_parameters, as: 'inputActionParameters'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1FlowValidationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
          collection :validation_messages, as: 'validationMessages', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ValidationMessage, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ValidationMessage::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1Form
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :parameters, as: 'parameters', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FormParameter, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FormParameter::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1FormParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advanced_settings, as: 'advancedSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AdvancedSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AdvancedSettings::Representation
      
          property :default_value, as: 'defaultValue'
          property :display_name, as: 'displayName'
          property :entity_type, as: 'entityType'
          property :fill_behavior, as: 'fillBehavior', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior::Representation
      
          property :is_list, as: 'isList'
          property :redact, as: 'redact'
          property :required, as: 'required'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :initial_prompt_fulfillment, as: 'initialPromptFulfillment', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Fulfillment, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Fulfillment::Representation
      
          collection :reprompt_event_handlers, as: 'repromptEventHandlers', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EventHandler, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EventHandler::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1FulfillIntentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :match, as: 'match', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Match, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Match::Representation
      
          property :match_intent_request, as: 'matchIntentRequest', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1MatchIntentRequest, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1MatchIntentRequest::Representation
      
          property :output_audio_config, as: 'outputAudioConfig', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1OutputAudioConfig, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1OutputAudioConfig::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1FulfillIntentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :output_audio, :base64 => true, as: 'outputAudio'
          property :output_audio_config, as: 'outputAudioConfig', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1OutputAudioConfig, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1OutputAudioConfig::Representation
      
          property :query_result, as: 'queryResult', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1QueryResult, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1QueryResult::Representation
      
          property :response_id, as: 'responseId'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1Fulfillment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advanced_settings, as: 'advancedSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AdvancedSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AdvancedSettings::Representation
      
          collection :conditional_cases, as: 'conditionalCases', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases::Representation
      
          property :enable_generative_fallback, as: 'enableGenerativeFallback'
          collection :generators, as: 'generators', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillmentGeneratorSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillmentGeneratorSettings::Representation
      
          collection :messages, as: 'messages', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessage, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessage::Representation
      
          property :return_partial_responses, as: 'returnPartialResponses'
          collection :set_parameter_actions, as: 'setParameterActions', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction::Representation
      
          property :tag, as: 'tag'
          property :webhook, as: 'webhook'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cases, as: 'cases', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :case_content, as: 'caseContent', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent::Representation
      
          property :condition, as: 'condition'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :additional_cases, as: 'additionalCases', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases::Representation
      
          property :message, as: 'message', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessage, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessage::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1FulfillmentGeneratorSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generator, as: 'generator'
          hash :input_parameters, as: 'inputParameters'
          property :output_parameter, as: 'outputParameter'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parameter, as: 'parameter'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1GcsDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1GenerativeInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_tracing_info, as: 'actionTracingInfo', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Example, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Example::Representation
      
          collection :current_playbooks, as: 'currentPlaybooks'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1GenerativeSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fallback_settings, as: 'fallbackSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettings::Representation
      
          property :generative_safety_settings, as: 'generativeSafetySettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SafetySettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SafetySettings::Representation
      
          property :knowledge_connector_settings, as: 'knowledgeConnectorSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GenerativeSettingsKnowledgeConnectorSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GenerativeSettingsKnowledgeConnectorSettings::Representation
      
          property :language_code, as: 'languageCode'
          property :llm_model_settings, as: 'llmModelSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1LlmModelSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1LlmModelSettings::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :prompt_templates, as: 'promptTemplates', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettingsPromptTemplate, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettingsPromptTemplate::Representation
      
          property :selected_prompt, as: 'selectedPrompt'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettingsPromptTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :frozen, as: 'frozen'
          property :prompt_text, as: 'promptText'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1GenerativeSettingsKnowledgeConnectorSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent, as: 'agent'
          property :agent_identity, as: 'agentIdentity'
          property :agent_scope, as: 'agentScope'
          property :business, as: 'business'
          property :business_description, as: 'businessDescription'
          property :disable_data_store_fallback, as: 'disableDataStoreFallback'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1Generator
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :llm_model_settings, as: 'llmModelSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1LlmModelSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1LlmModelSettings::Representation
      
          property :model_parameter, as: 'modelParameter', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GeneratorModelParameter, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GeneratorModelParameter::Representation
      
          property :name, as: 'name'
          collection :placeholders, as: 'placeholders', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GeneratorPlaceholder, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GeneratorPlaceholder::Representation
      
          property :prompt_text, as: 'promptText', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Phrase, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Phrase::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1GeneratorModelParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_decode_steps, as: 'maxDecodeSteps'
          property :temperature, as: 'temperature'
          property :top_k, as: 'topK'
          property :top_p, as: 'topP'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1GeneratorPlaceholder
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1Handler
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event_handler, as: 'eventHandler', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1HandlerEventHandler, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1HandlerEventHandler::Representation
      
          property :lifecycle_handler, as: 'lifecycleHandler', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1HandlerLifecycleHandler, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1HandlerLifecycleHandler::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1HandlerEventHandler
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition'
          property :event, as: 'event'
          property :fulfillment, as: 'fulfillment', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Fulfillment, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Fulfillment::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1HandlerLifecycleHandler
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition'
          property :fulfillment, as: 'fulfillment', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Fulfillment, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Fulfillment::Representation
      
          property :lifecycle_stage, as: 'lifecycleStage'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ImportEntityTypesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ImportEntityTypesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity_types_content, as: 'entityTypesContent', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1InlineSource, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1InlineSource::Representation
      
          property :entity_types_uri, as: 'entityTypesUri'
          property :merge_option, as: 'mergeOption'
          property :target_entity_type, as: 'targetEntityType'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ImportEntityTypesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conflicting_resources, as: 'conflictingResources', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ImportEntityTypesResponseConflictingResources, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ImportEntityTypesResponseConflictingResources::Representation
      
          collection :entity_types, as: 'entityTypes'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ImportEntityTypesResponseConflictingResources
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entity_display_names, as: 'entityDisplayNames'
          collection :entity_type_display_names, as: 'entityTypeDisplayNames'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ImportFlowRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :flow_content, :base64 => true, as: 'flowContent'
          property :flow_import_strategy, as: 'flowImportStrategy', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FlowImportStrategy, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FlowImportStrategy::Representation
      
          property :flow_uri, as: 'flowUri'
          property :import_option, as: 'importOption'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ImportFlowResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :flow, as: 'flow'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ImportIntentsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ImportIntentsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :intents_content, as: 'intentsContent', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1InlineSource, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1InlineSource::Representation
      
          property :intents_uri, as: 'intentsUri'
          property :merge_option, as: 'mergeOption'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ImportIntentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conflicting_resources, as: 'conflictingResources', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ImportIntentsResponseConflictingResources, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ImportIntentsResponseConflictingResources::Representation
      
          collection :intents, as: 'intents'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ImportIntentsResponseConflictingResources
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entity_display_names, as: 'entityDisplayNames'
          collection :intent_display_names, as: 'intentDisplayNames'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ImportPlaybookRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :import_strategy, as: 'importStrategy', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookImportStrategy, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookImportStrategy::Representation
      
          property :playbook_content, :base64 => true, as: 'playbookContent'
          property :playbook_uri, as: 'playbookUri'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ImportTestCasesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :errors, as: 'errors', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCaseError, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCaseError::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ImportTestCasesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, :base64 => true, as: 'content'
          property :gcs_uri, as: 'gcsUri'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ImportTestCasesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :names, as: 'names'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1InlineDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, :base64 => true, as: 'content'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1InlineSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :items, as: 'items', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TypeSchema, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TypeSchema::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1InlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, :base64 => true, as: 'content'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1InputAudioConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_encoding, as: 'audioEncoding'
          property :barge_in_config, as: 'bargeInConfig', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1BargeInConfig, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1BargeInConfig::Representation
      
          property :enable_word_info, as: 'enableWordInfo'
          property :model, as: 'model'
          property :model_variant, as: 'modelVariant'
          property :opt_out_conformer_model_migration, as: 'optOutConformerModelMigration'
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
          collection :parameters, as: 'parameters', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1IntentParameter, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1IntentParameter::Representation
      
          property :priority, as: 'priority'
          collection :training_phrases, as: 'trainingPhrases', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1IntentCoverage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :coverage_score, as: 'coverageScore'
          collection :intents, as: 'intents', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1IntentCoverageIntent, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1IntentCoverageIntent::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1IntentCoverageIntent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :covered, as: 'covered'
          property :intent, as: 'intent'
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
          collection :parts, as: 'parts', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart::Representation
      
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
      
      class GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_store_connections, as: 'dataStoreConnections', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DataStoreConnection, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DataStoreConnection::Representation
      
          property :enabled, as: 'enabled'
          property :target_flow, as: 'targetFlow'
          property :target_page, as: 'targetPage'
          property :trigger_fulfillment, as: 'triggerFulfillment', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Fulfillment, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Fulfillment::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1LanguageInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence_score, as: 'confidenceScore'
          property :input_language_code, as: 'inputLanguageCode'
          property :resolved_language_code, as: 'resolvedLanguageCode'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ListAgentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :agents, as: 'agents', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Agent, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Agent::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ListChangelogsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :changelogs, as: 'changelogs', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Changelog, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Changelog::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ListContinuousTestResultsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :continuous_test_results, as: 'continuousTestResults', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ContinuousTestResult, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ContinuousTestResult::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ListConversationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conversations, as: 'conversations', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Conversation, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Conversation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ListDeploymentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :deployments, as: 'deployments', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Deployment, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Deployment::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ListEntityTypesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entity_types, as: 'entityTypes', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityType, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityType::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :environments, as: 'environments', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Environment, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Environment::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ListExamplesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :examples, as: 'examples', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Example, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Example::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ListExperimentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :experiments, as: 'experiments', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ListFlowsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :flows, as: 'flows', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ListGeneratorsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :generators, as: 'generators', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Generator, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Generator::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ListIntentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :intents, as: 'intents', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ListPagesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :pages, as: 'pages', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ListPlaybookVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :playbook_versions, as: 'playbookVersions', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookVersion, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookVersion::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ListPlaybooksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :playbooks, as: 'playbooks', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Playbook, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Playbook::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ListSecuritySettingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :security_settings, as: 'securitySettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettings::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :session_entity_types, as: 'sessionEntityTypes', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ListTestCaseResultsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :test_case_results, as: 'testCaseResults', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCaseResult, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCaseResult::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ListTestCasesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :test_cases, as: 'testCases', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCase, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCase::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ListToolVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :tool_versions, as: 'toolVersions', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolVersion, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolVersion::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ListToolsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :tools, as: 'tools', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Tool, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Tool::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :transition_route_groups, as: 'transitionRouteGroups', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ListVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :versions, as: 'versions', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Version, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Version::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ListWebhooksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :webhooks, as: 'webhooks', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1LlmCall
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model, as: 'model'
          collection :retrieved_examples, as: 'retrievedExamples', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1LlmCallRetrievedExample, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1LlmCallRetrievedExample::Representation
      
          property :temperature, as: 'temperature'
          property :token_count, as: 'tokenCount', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1LlmCallTokenCount, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1LlmCallTokenCount::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1LlmCallRetrievedExample
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :example_display_name, as: 'exampleDisplayName'
          property :example_id, as: 'exampleId'
          property :matched_retrieval_label, as: 'matchedRetrievalLabel'
          property :retrieval_strategy, as: 'retrievalStrategy'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1LlmCallTokenCount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation_context_token_count, :numeric_string => true, as: 'conversationContextTokenCount'
          property :example_token_count, :numeric_string => true, as: 'exampleTokenCount'
          property :total_input_token_count, :numeric_string => true, as: 'totalInputTokenCount'
          property :total_output_token_count, :numeric_string => true, as: 'totalOutputTokenCount'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1LlmModelSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model, as: 'model'
          property :prompt_text, as: 'promptText'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1LoadVersionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_override_agent_resources, as: 'allowOverrideAgentResources'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :environments, as: 'environments', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Environment, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Environment::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1Match
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :event, as: 'event'
          property :intent, as: 'intent', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent::Representation
      
          property :match_type, as: 'matchType'
          hash :parameters, as: 'parameters'
          property :resolved_input, as: 'resolvedInput'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1MatchIntentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :persist_parameter_changes, as: 'persistParameterChanges'
          property :query_input, as: 'queryInput', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1QueryInput, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1QueryInput::Representation
      
          property :query_params, as: 'queryParams', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1QueryParameters, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1QueryParameters::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1MatchIntentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_page, as: 'currentPage', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page::Representation
      
          collection :matches, as: 'matches', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Match, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Match::Representation
      
          property :text, as: 'text'
          property :transcript, as: 'transcript'
          property :trigger_event, as: 'triggerEvent'
          property :trigger_intent, as: 'triggerIntent'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1NamedMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :unit, as: 'unit'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1NluSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :classification_threshold, as: 'classificationThreshold'
          property :model_training_mode, as: 'modelTrainingMode'
          property :model_type, as: 'modelType'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1OutputAudioConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_encoding, as: 'audioEncoding'
          property :sample_rate_hertz, as: 'sampleRateHertz'
          property :synthesize_speech_config, as: 'synthesizeSpeechConfig', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1Page
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advanced_settings, as: 'advancedSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AdvancedSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AdvancedSettings::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :entry_fulfillment, as: 'entryFulfillment', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Fulfillment, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Fulfillment::Representation
      
          collection :event_handlers, as: 'eventHandlers', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EventHandler, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EventHandler::Representation
      
          property :form, as: 'form', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Form, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Form::Representation
      
          property :knowledge_connector_settings, as: 'knowledgeConnectorSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings::Representation
      
          property :name, as: 'name'
          collection :transition_route_groups, as: 'transitionRouteGroups'
          collection :transition_routes, as: 'transitionRoutes', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRoute, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRoute::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1PageInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_page, as: 'currentPage'
          property :display_name, as: 'displayName'
          property :form_info, as: 'formInfo', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PageInfoFormInfo, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PageInfoFormInfo::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1PageInfoFormInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :parameter_info, as: 'parameterInfo', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo::Representation
      
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
      
      class GoogleCloudDialogflowCxV3beta1ParameterDefinition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :name, as: 'name'
          property :type, as: 'type'
          property :type_schema, as: 'typeSchema', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TypeSchema, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TypeSchema::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1Phrase
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1Playbook
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :goal, as: 'goal'
          collection :handlers, as: 'handlers', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Handler, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Handler::Representation
      
          collection :input_parameter_definitions, as: 'inputParameterDefinitions', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ParameterDefinition, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ParameterDefinition::Representation
      
          property :instruction, as: 'instruction', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookInstruction, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookInstruction::Representation
      
          property :llm_model_settings, as: 'llmModelSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1LlmModelSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1LlmModelSettings::Representation
      
          property :name, as: 'name'
          collection :output_parameter_definitions, as: 'outputParameterDefinitions', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ParameterDefinition, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ParameterDefinition::Representation
      
          property :playbook_type, as: 'playbookType'
          collection :referenced_flows, as: 'referencedFlows'
          collection :referenced_playbooks, as: 'referencedPlaybooks'
          collection :referenced_tools, as: 'referencedTools'
          property :speech_settings, as: 'speechSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings::Representation
      
          property :token_count, :numeric_string => true, as: 'tokenCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1PlaybookImportStrategy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :main_playbook_import_strategy, as: 'mainPlaybookImportStrategy'
          property :nested_resource_import_strategy, as: 'nestedResourceImportStrategy'
          property :tool_import_strategy, as: 'toolImportStrategy'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1PlaybookInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :action_parameters, as: 'actionParameters'
          property :preceding_conversation_summary, as: 'precedingConversationSummary'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1PlaybookInstruction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :guidelines, as: 'guidelines'
          collection :steps, as: 'steps', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookStep, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookStep::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1PlaybookInvocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :playbook, as: 'playbook'
          property :playbook_input, as: 'playbookInput', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookInput, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookInput::Representation
      
          property :playbook_output, as: 'playbookOutput', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookOutput, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookOutput::Representation
      
          property :playbook_state, as: 'playbookState'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1PlaybookOutput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :action_parameters, as: 'actionParameters'
          property :execution_summary, as: 'executionSummary'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1PlaybookStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :steps, as: 'steps', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookStep, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookStep::Representation
      
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1PlaybookTransition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :input_action_parameters, as: 'inputActionParameters'
          property :playbook, as: 'playbook'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1PlaybookVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          collection :examples, as: 'examples', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Example, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Example::Representation
      
          property :name, as: 'name'
          property :playbook, as: 'playbook', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Playbook, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Playbook::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1QueryInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio, as: 'audio', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AudioInput, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AudioInput::Representation
      
          property :dtmf, as: 'dtmf', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DtmfInput, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DtmfInput::Representation
      
          property :event, as: 'event', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EventInput, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EventInput::Representation
      
          property :intent, as: 'intent', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1IntentInput, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1IntentInput::Representation
      
          property :language_code, as: 'languageCode'
          property :text, as: 'text', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TextInput, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TextInput::Representation
      
          property :tool_call_result, as: 'toolCallResult', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolCallResult, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolCallResult::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1QueryParameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analyze_query_text_sentiment, as: 'analyzeQueryTextSentiment'
          property :channel, as: 'channel'
          property :current_page, as: 'currentPage'
          property :current_playbook, as: 'currentPlaybook'
          property :disable_webhook, as: 'disableWebhook'
          hash :end_user_metadata, as: 'endUserMetadata'
          collection :flow_versions, as: 'flowVersions'
          property :geo_location, as: 'geoLocation', class: Google::Apis::DialogflowV3beta1::GoogleTypeLatLng, decorator: Google::Apis::DialogflowV3beta1::GoogleTypeLatLng::Representation
      
          property :llm_model_settings, as: 'llmModelSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1LlmModelSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1LlmModelSettings::Representation
      
          property :parameter_scope, as: 'parameterScope'
          hash :parameters, as: 'parameters'
          hash :payload, as: 'payload'
          property :populate_data_store_connection_signals, as: 'populateDataStoreConnectionSignals'
          property :search_config, as: 'searchConfig', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SearchConfig, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SearchConfig::Representation
      
          collection :session_entity_types, as: 'sessionEntityTypes', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType::Representation
      
          property :session_ttl, as: 'sessionTtl'
          property :time_zone, as: 'timeZone'
          hash :webhook_headers, as: 'webhookHeaders'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1QueryResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advanced_settings, as: 'advancedSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AdvancedSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AdvancedSettings::Representation
      
          property :allow_answer_feedback, as: 'allowAnswerFeedback'
          property :current_flow, as: 'currentFlow', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow::Representation
      
          property :current_page, as: 'currentPage', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page::Representation
      
          property :data_store_connection_signals, as: 'dataStoreConnectionSignals', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignals, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignals::Representation
      
          hash :diagnostic_info, as: 'diagnosticInfo'
          property :dtmf, as: 'dtmf', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DtmfInput, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DtmfInput::Representation
      
          property :generative_info, as: 'generativeInfo', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GenerativeInfo, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GenerativeInfo::Representation
      
          property :intent, as: 'intent', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent::Representation
      
          property :intent_detection_confidence, as: 'intentDetectionConfidence'
          property :language_code, as: 'languageCode'
          property :match, as: 'match', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Match, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Match::Representation
      
          hash :parameters, as: 'parameters'
          collection :response_messages, as: 'responseMessages', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessage, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessage::Representation
      
          property :sentiment_analysis_result, as: 'sentimentAnalysisResult', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SentimentAnalysisResult, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SentimentAnalysisResult::Representation
      
          property :text, as: 'text'
          property :transcript, as: 'transcript'
          property :trigger_event, as: 'triggerEvent'
          property :trigger_intent, as: 'triggerIntent'
          collection :webhook_display_names, as: 'webhookDisplayNames'
          collection :webhook_ids, as: 'webhookIds'
          collection :webhook_latencies, as: 'webhookLatencies'
          collection :webhook_payloads, as: 'webhookPayloads'
          collection :webhook_statuses, as: 'webhookStatuses', class: Google::Apis::DialogflowV3beta1::GoogleRpcStatus, decorator: Google::Apis::DialogflowV3beta1::GoogleRpcStatus::Representation
      
          collection :webhook_tags, as: 'webhookTags'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ResourceName
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ResponseMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel, as: 'channel'
          property :conversation_success, as: 'conversationSuccess', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess::Representation
      
          property :end_interaction, as: 'endInteraction', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction::Representation
      
          property :knowledge_info_card, as: 'knowledgeInfoCard', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessageKnowledgeInfoCard, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessageKnowledgeInfoCard::Representation
      
          property :live_agent_handoff, as: 'liveAgentHandoff', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff::Representation
      
          property :mixed_audio, as: 'mixedAudio', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio::Representation
      
          property :output_audio_text, as: 'outputAudioText', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText::Representation
      
          hash :payload, as: 'payload'
          property :play_audio, as: 'playAudio', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio::Representation
      
          property :telephony_transfer_call, as: 'telephonyTransferCall', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall::Representation
      
          property :text, as: 'text', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessageText, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessageText::Representation
      
          property :tool_call, as: 'toolCall', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolCall, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolCall::Representation
      
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
      
      class GoogleCloudDialogflowCxV3beta1ResponseMessageKnowledgeInfoCard
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
          collection :segments, as: 'segments', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment::Representation
      
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
      
      class GoogleCloudDialogflowCxV3beta1RestoreAgentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_content, :base64 => true, as: 'agentContent'
          property :agent_uri, as: 'agentUri'
          property :git_source, as: 'gitSource', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RestoreAgentRequestGitSource, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RestoreAgentRequestGitSource::Representation
      
          property :restore_option, as: 'restoreOption'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1RestoreAgentRequestGitSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tracking_branch, as: 'trackingBranch'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1RestorePlaybookVersionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1RestorePlaybookVersionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :playbook, as: 'playbook', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Playbook, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Playbook::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1RestoreToolVersionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1RestoreToolVersionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tool, as: 'tool', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Tool, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Tool::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1RolloutConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :failure_condition, as: 'failureCondition'
          property :rollout_condition, as: 'rolloutCondition'
          collection :rollout_steps, as: 'rolloutSteps', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :min_duration, as: 'minDuration'
          property :traffic_percent, as: 'trafficPercent'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1RolloutState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :start_time, as: 'startTime'
          property :step, as: 'step'
          property :step_index, as: 'stepIndex'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1RunContinuousTestMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :errors, as: 'errors', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestError, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestError::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1RunContinuousTestRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1RunContinuousTestResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :continuous_test_result, as: 'continuousTestResult', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ContinuousTestResult, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ContinuousTestResult::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1RunTestCaseMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1RunTestCaseRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :environment, as: 'environment'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1RunTestCaseResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :result, as: 'result', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCaseResult, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCaseResult::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1SafetySettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :banned_phrases, as: 'bannedPhrases', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SafetySettingsPhrase, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SafetySettingsPhrase::Representation
      
          property :default_banned_phrase_match_strategy, as: 'defaultBannedPhraseMatchStrategy'
          property :prompt_security_settings, as: 'promptSecuritySettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SafetySettingsPromptSecuritySettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SafetySettingsPromptSecuritySettings::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1SafetySettingsPhrase
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1SafetySettingsPromptSecuritySettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_prompt_security, as: 'enablePromptSecurity'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1SearchConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :boost_specs, as: 'boostSpecs', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1BoostSpecs, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1BoostSpecs::Representation
      
          collection :filter_specs, as: 'filterSpecs', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FilterSpecs, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FilterSpecs::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1SecuritySettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_export_settings, as: 'audioExportSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettings::Representation
      
          property :deidentify_template, as: 'deidentifyTemplate'
          property :display_name, as: 'displayName'
          property :insights_export_settings, as: 'insightsExportSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings::Representation
      
          property :inspect_template, as: 'inspectTemplate'
          property :name, as: 'name'
          collection :purge_data_types, as: 'purgeDataTypes'
          property :redaction_scope, as: 'redactionScope'
          property :redaction_strategy, as: 'redactionStrategy'
          property :retention_strategy, as: 'retentionStrategy'
          property :retention_window_days, as: 'retentionWindowDays'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_export_pattern, as: 'audioExportPattern'
          property :audio_format, as: 'audioFormat'
          property :enable_audio_redaction, as: 'enableAudioRedaction'
          property :gcs_bucket, as: 'gcsBucket'
          property :store_tts_audio, as: 'storeTtsAudio'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_insights_export, as: 'enableInsightsExport'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1SentimentAnalysisResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :magnitude, as: 'magnitude'
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1SessionEntityType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entities, as: 'entities', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityTypeEntity, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityTypeEntity::Representation
      
          property :entity_override_mode, as: 'entityOverrideMode'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1SessionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :parameters, as: 'parameters'
          property :session, as: 'session'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1Span
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :complete_time, as: 'completeTime'
          collection :metrics, as: 'metrics', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1NamedMetric, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1NamedMetric::Representation
      
          property :name, as: 'name'
          property :start_time, as: 'startTime'
          collection :tags, as: 'tags'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1SpeechToTextSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_speech_adaptation, as: 'enableSpeechAdaptation'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1StartExperimentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exception, as: 'exception', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExceptionDetail, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExceptionDetail::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1StopExperimentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1SubmitAnswerFeedbackRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer_feedback, as: 'answerFeedback', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AnswerFeedback, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AnswerFeedback::Representation
      
          property :response_id, as: 'responseId'
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :effects_profile_id, as: 'effectsProfileId'
          property :pitch, as: 'pitch'
          property :speaking_rate, as: 'speakingRate'
          property :voice, as: 'voice', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1VoiceSelectionParams, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1VoiceSelectionParams::Representation
      
          property :volume_gain_db, as: 'volumeGainDb'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1TestCase
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_time, as: 'creationTime'
          property :display_name, as: 'displayName'
          property :last_test_result, as: 'lastTestResult', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCaseResult, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCaseResult::Representation
      
          property :name, as: 'name'
          property :notes, as: 'notes'
          collection :tags, as: 'tags'
          collection :test_case_conversation_turns, as: 'testCaseConversationTurns', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ConversationTurn, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ConversationTurn::Representation
      
          property :test_config, as: 'testConfig', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestConfig, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestConfig::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1TestCaseError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :status, as: 'status', class: Google::Apis::DialogflowV3beta1::GoogleRpcStatus, decorator: Google::Apis::DialogflowV3beta1::GoogleRpcStatus::Representation
      
          property :test_case, as: 'testCase', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCase, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCase::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1TestCaseResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conversation_turns, as: 'conversationTurns', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ConversationTurn, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ConversationTurn::Representation
      
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
          property :status, as: 'status', class: Google::Apis::DialogflowV3beta1::GoogleRpcStatus, decorator: Google::Apis::DialogflowV3beta1::GoogleRpcStatus::Representation
      
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
      
      class GoogleCloudDialogflowCxV3beta1TextToSpeechSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :synthesize_speech_configs, as: 'synthesizeSpeechConfigs', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1Tool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connector_spec, as: 'connectorSpec', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolConnectorTool, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolConnectorTool::Representation
      
          property :data_store_spec, as: 'dataStoreSpec', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolDataStoreTool, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolDataStoreTool::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :extension_spec, as: 'extensionSpec', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolExtensionTool, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolExtensionTool::Representation
      
          property :function_spec, as: 'functionSpec', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolFunctionTool, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolFunctionTool::Representation
      
          property :name, as: 'name'
          property :open_api_spec, as: 'openApiSpec', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolOpenApiTool, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolOpenApiTool::Representation
      
          property :tool_type, as: 'toolType'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolAuthentication
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_key_config, as: 'apiKeyConfig', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolAuthenticationApiKeyConfig, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolAuthenticationApiKeyConfig::Representation
      
          property :bearer_token_config, as: 'bearerTokenConfig', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolAuthenticationBearerTokenConfig, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolAuthenticationBearerTokenConfig::Representation
      
          property :oauth_config, as: 'oauthConfig', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolAuthenticationOAuthConfig, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolAuthenticationOAuthConfig::Representation
      
          property :service_agent_auth_config, as: 'serviceAgentAuthConfig', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolAuthenticationServiceAgentAuthConfig, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolAuthenticationServiceAgentAuthConfig::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolAuthenticationApiKeyConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_key, as: 'apiKey'
          property :key_name, as: 'keyName'
          property :request_location, as: 'requestLocation'
          property :secret_version_for_api_key, as: 'secretVersionForApiKey'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolAuthenticationBearerTokenConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :secret_version_for_token, as: 'secretVersionForToken'
          property :token, as: 'token'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolAuthenticationOAuthConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_id, as: 'clientId'
          property :client_secret, as: 'clientSecret'
          property :oauth_grant_type, as: 'oauthGrantType'
          collection :scopes, as: 'scopes'
          property :secret_version_for_client_secret, as: 'secretVersionForClientSecret'
          property :token_endpoint, as: 'tokenEndpoint'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolAuthenticationServiceAgentAuthConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service_agent_auth, as: 'serviceAgentAuth'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolCall
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          hash :input_parameters, as: 'inputParameters'
          property :tool, as: 'tool'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolCallResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :error, as: 'error', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolCallResultError, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolCallResultError::Representation
      
          hash :output_parameters, as: 'outputParameters'
          property :tool, as: 'tool'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolCallResultError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolConnectorTool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :actions, as: 'actions', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolConnectorToolAction, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolConnectorToolAction::Representation
      
          property :end_user_auth_config, as: 'endUserAuthConfig', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfig, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfig::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolConnectorToolAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connection_action_id, as: 'connectionActionId'
          property :entity_operation, as: 'entityOperation', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolConnectorToolActionEntityOperation, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolConnectorToolActionEntityOperation::Representation
      
          collection :input_fields, as: 'inputFields'
          collection :output_fields, as: 'outputFields'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolConnectorToolActionEntityOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity_id, as: 'entityId'
          property :operation, as: 'operation'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolDataStoreTool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_store_connections, as: 'dataStoreConnections', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DataStoreConnection, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DataStoreConnection::Representation
      
          property :fallback_prompt, as: 'fallbackPrompt', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolDataStoreToolFallbackPrompt, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolDataStoreToolFallbackPrompt::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolDataStoreToolFallbackPrompt
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :oauth2_auth_code_config, as: 'oauth2AuthCodeConfig', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2AuthCodeConfig, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2AuthCodeConfig::Representation
      
          property :oauth2_jwt_bearer_config, as: 'oauth2JwtBearerConfig', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2JwtBearerConfig, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2JwtBearerConfig::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2AuthCodeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :oauth_token, as: 'oauthToken'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2JwtBearerConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_key, as: 'clientKey'
          property :issuer, as: 'issuer'
          property :subject, as: 'subject'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolExtensionTool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolFunctionTool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :input_schema, as: 'inputSchema'
          hash :output_schema, as: 'outputSchema'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolOpenApiTool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authentication, as: 'authentication', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolAuthentication, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolAuthentication::Representation
      
          property :service_directory_config, as: 'serviceDirectoryConfig', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolServiceDirectoryConfig, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolServiceDirectoryConfig::Representation
      
          property :text_schema, as: 'textSchema'
          property :tls_config, as: 'tlsConfig', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolTlsConfig, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolTlsConfig::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolServiceDirectoryConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service, as: 'service'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolTlsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ca_certs, as: 'caCerts', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolTlsConfigCaCert, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolTlsConfigCaCert::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolTlsConfigCaCert
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cert, :base64 => true, as: 'cert'
          property :display_name, as: 'displayName'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolUse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :data_store_tool_trace, as: 'dataStoreToolTrace', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolUseDataStoreToolTrace, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolUseDataStoreToolTrace::Representation
      
          property :display_name, as: 'displayName'
          hash :input_action_parameters, as: 'inputActionParameters'
          hash :output_action_parameters, as: 'outputActionParameters'
          property :tool, as: 'tool'
          property :webhook_tool_trace, as: 'webhookToolTrace', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolUseWebhookToolTrace, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolUseWebhookToolTrace::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolUseDataStoreToolTrace
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_store_connection_signals, as: 'dataStoreConnectionSignals', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignals, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignals::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolUseWebhookToolTrace
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :webhook_tag, as: 'webhookTag'
          property :webhook_uri, as: 'webhookUri'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ToolVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :tool, as: 'tool', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Tool, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Tool::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1TrainFlowRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1TransitionCoverage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :coverage_score, as: 'coverageScore'
          collection :transitions, as: 'transitions', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionCoverageTransition, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionCoverageTransition::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1TransitionCoverageTransition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :covered, as: 'covered'
          property :event_handler, as: 'eventHandler', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EventHandler, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EventHandler::Representation
      
          property :index, as: 'index'
          property :source, as: 'source', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionCoverageTransitionNode, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionCoverageTransitionNode::Representation
      
          property :target, as: 'target', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionCoverageTransitionNode, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionCoverageTransitionNode::Representation
      
          property :transition_route, as: 'transitionRoute', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRoute, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRoute::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1TransitionCoverageTransitionNode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :flow, as: 'flow', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow::Representation
      
          property :page, as: 'page', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1TransitionRoute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition'
          property :description, as: 'description'
          property :intent, as: 'intent'
          property :name, as: 'name'
          property :target_flow, as: 'targetFlow'
          property :target_page, as: 'targetPage'
          property :trigger_fulfillment, as: 'triggerFulfillment', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Fulfillment, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Fulfillment::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1TransitionRouteGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          collection :transition_routes, as: 'transitionRoutes', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRoute, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRoute::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :coverage_score, as: 'coverageScore'
          collection :coverages, as: 'coverages', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverage, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverage::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :coverage_score, as: 'coverageScore'
          property :route_group, as: 'routeGroup', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup::Representation
      
          collection :transitions, as: 'transitions', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverageTransition, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverageTransition::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverageTransition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :covered, as: 'covered'
          property :transition_route, as: 'transitionRoute', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRoute, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRoute::Representation
      
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
          property :sentiment_magnitude, as: 'sentimentMagnitude'
          property :sentiment_score, as: 'sentimentScore'
          property :user_escalated, as: 'userEscalated'
          collection :webhook_statuses, as: 'webhookStatuses'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1TypeSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inline_schema, as: 'inlineSchema', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1InlineSchema, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1InlineSchema::Representation
      
          property :schema_reference, as: 'schemaReference', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TypeSchemaSchemaReference, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TypeSchemaSchemaReference::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1TypeSchemaSchemaReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :schema, as: 'schema'
          property :tool, as: 'tool'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1UserUtterance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio, :base64 => true, as: 'audio'
          collection :audio_tokens, as: 'audioTokens'
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ValidateAgentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ValidateFlowRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1ValidationMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detail, as: 'detail'
          collection :resource_names, as: 'resourceNames', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResourceName, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResourceName::Representation
      
          property :resource_type, as: 'resourceType'
          collection :resources, as: 'resources'
          property :severity, as: 'severity'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1VariantsHistory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :update_time, as: 'updateTime'
          property :version_variants, as: 'versionVariants', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1VersionVariants, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1VersionVariants::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1Version
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :nlu_settings, as: 'nluSettings', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1NluSettings, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1NluSettings::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1VersionVariants
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :variants, as: 'variants', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1VersionVariantsVariant, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1VersionVariantsVariant::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1VersionVariantsVariant
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_control_group, as: 'isControlGroup'
          property :traffic_allocation, as: 'trafficAllocation'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1VoiceSelectionParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :ssml_gender, as: 'ssmlGender'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1Webhook
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
          property :display_name, as: 'displayName'
          property :generic_web_service, as: 'genericWebService', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1WebhookGenericWebService, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1WebhookGenericWebService::Representation
      
          property :name, as: 'name'
          property :service_directory, as: 'serviceDirectory', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig::Representation
      
          property :timeout, as: 'timeout'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1WebhookGenericWebService
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_ca_certs, as: 'allowedCaCerts'
          property :http_method, as: 'httpMethod'
          property :oauth_config, as: 'oauthConfig', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceOAuthConfig, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceOAuthConfig::Representation
      
          hash :parameter_mapping, as: 'parameterMapping'
          property :password, as: 'password'
          property :request_body, as: 'requestBody'
          hash :request_headers, as: 'requestHeaders'
          property :secret_version_for_username_password, as: 'secretVersionForUsernamePassword'
          hash :secret_versions_for_request_headers, as: 'secretVersionsForRequestHeaders', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceSecretVersionHeaderValue, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceSecretVersionHeaderValue::Representation
      
          property :service_agent_auth, as: 'serviceAgentAuth'
          property :uri, as: 'uri'
          property :username, as: 'username'
          property :webhook_type, as: 'webhookType'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceOAuthConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_id, as: 'clientId'
          property :client_secret, as: 'clientSecret'
          collection :scopes, as: 'scopes'
          property :secret_version_for_client_secret, as: 'secretVersionForClientSecret'
          property :token_endpoint, as: 'tokenEndpoint'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceSecretVersionHeaderValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :secret_version, as: 'secretVersion'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1WebhookRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detect_intent_response_id, as: 'detectIntentResponseId'
          property :dtmf_digits, as: 'dtmfDigits'
          property :fulfillment_info, as: 'fulfillmentInfo', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo::Representation
      
          property :intent_info, as: 'intentInfo', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo::Representation
      
          property :language_code, as: 'languageCode'
          property :language_info, as: 'languageInfo', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1LanguageInfo, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1LanguageInfo::Representation
      
          collection :messages, as: 'messages', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessage, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessage::Representation
      
          property :page_info, as: 'pageInfo', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PageInfo, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PageInfo::Representation
      
          hash :payload, as: 'payload'
          property :sentiment_analysis_result, as: 'sentimentAnalysisResult', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult::Representation
      
          property :session_info, as: 'sessionInfo', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionInfo, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionInfo::Representation
      
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
          hash :parameters, as: 'parameters', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue::Representation
      
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
          property :fulfillment_response, as: 'fulfillmentResponse', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse::Representation
      
          property :page_info, as: 'pageInfo', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PageInfo, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PageInfo::Representation
      
          hash :payload, as: 'payload'
          property :session_info, as: 'sessionInfo', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionInfo, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionInfo::Representation
      
          property :target_flow, as: 'targetFlow'
          property :target_page, as: 'targetPage'
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :merge_behavior, as: 'mergeBehavior'
          collection :messages, as: 'messages', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessage, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessage::Representation
      
        end
      end
      
      class GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_web_service, as: 'genericWebService', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1WebhookGenericWebService, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1WebhookGenericWebService::Representation
      
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
          collection :entity_types, as: 'entityTypes', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2EntityType, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2EntityType::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2BatchUpdateIntentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :intents, as: 'intents', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2Intent, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2Intent::Representation
      
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
          property :error_status, as: 'errorStatus', class: Google::Apis::DialogflowV3beta1::GoogleRpcStatus, decorator: Google::Apis::DialogflowV3beta1::GoogleRpcStatus::Representation
      
          property :new_message_payload, as: 'newMessagePayload', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2Message, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2Message::Representation
      
          property :new_recognition_result_payload, as: 'newRecognitionResultPayload', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2StreamingRecognitionResult, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2StreamingRecognitionResult::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDialogflowV2ConversationModel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :article_suggestion_model_metadata, as: 'articleSuggestionModelMetadata', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2ArticleSuggestionModelMetadata, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2ArticleSuggestionModelMetadata::Representation
      
          property :create_time, as: 'createTime'
          collection :datasets, as: 'datasets', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2InputDataset, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2InputDataset::Representation
      
          property :display_name, as: 'displayName'
          property :language_code, as: 'languageCode'
          property :name, as: 'name'
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :smart_reply_model_metadata, as: 'smartReplyModelMetadata', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2SmartReplyModelMetadata, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2SmartReplyModelMetadata::Representation
      
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
          property :done_time, as: 'doneTime'
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
          property :done_time, as: 'doneTime'
        end
      end
      
      class GoogleCloudDialogflowV2DeployConversationModelOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation_model, as: 'conversationModel'
          property :create_time, as: 'createTime'
          property :done_time, as: 'doneTime'
        end
      end
      
      class GoogleCloudDialogflowV2EncryptionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key, as: 'kmsKey'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDialogflowV2EntityType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_expansion_mode, as: 'autoExpansionMode'
          property :display_name, as: 'displayName'
          property :enable_fuzzy_extraction, as: 'enableFuzzyExtraction'
          collection :entities, as: 'entities', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2EntityTypeEntity, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2EntityTypeEntity::Representation
      
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
          property :exported_gcs_destination, as: 'exportedGcsDestination', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2GcsDestination, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2GcsDestination::Representation
      
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
      
      class GoogleCloudDialogflowV2FreeFormSuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :response, as: 'response'
        end
      end
      
      class GoogleCloudDialogflowV2GcsDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDialogflowV2GenerateSuggestionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :generator_suggestion_answers, as: 'generatorSuggestionAnswers', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2GenerateSuggestionsResponseGeneratorSuggestionAnswer, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2GenerateSuggestionsResponseGeneratorSuggestionAnswer::Representation
      
          property :latest_message, as: 'latestMessage'
        end
      end
      
      class GoogleCloudDialogflowV2GenerateSuggestionsResponseGeneratorSuggestionAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer_record, as: 'answerRecord'
          property :generator_suggestion, as: 'generatorSuggestion', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2GeneratorSuggestion, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2GeneratorSuggestion::Representation
      
          property :source_generator, as: 'sourceGenerator'
        end
      end
      
      class GoogleCloudDialogflowV2GeneratorSuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :free_form_suggestion, as: 'freeFormSuggestion', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2FreeFormSuggestion, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2FreeFormSuggestion::Representation
      
          property :summary_suggestion, as: 'summarySuggestion', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2SummarySuggestion, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2SummarySuggestion::Representation
      
          collection :tool_call_info, as: 'toolCallInfo', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2GeneratorSuggestionToolCallInfo, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2GeneratorSuggestionToolCallInfo::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2GeneratorSuggestionToolCallInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tool_call, as: 'toolCall', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2ToolCall, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2ToolCall::Representation
      
          property :tool_call_result, as: 'toolCallResult', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2ToolCallResult, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2ToolCallResult::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2HumanAgentAssistantEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation, as: 'conversation'
          property :participant, as: 'participant'
          collection :suggestion_results, as: 'suggestionResults', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2SuggestionResult, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2SuggestionResult::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2ImportConversationDataOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation_dataset, as: 'conversationDataset'
          property :create_time, as: 'createTime'
          collection :partial_failures, as: 'partialFailures', class: Google::Apis::DialogflowV3beta1::GoogleRpcStatus, decorator: Google::Apis::DialogflowV3beta1::GoogleRpcStatus::Representation
      
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
          collection :warnings, as: 'warnings', class: Google::Apis::DialogflowV3beta1::GoogleRpcStatus, decorator: Google::Apis::DialogflowV3beta1::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2InitializeEncryptionSpecMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request, as: 'request', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2InitializeEncryptionSpecRequest, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2InitializeEncryptionSpecRequest::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2InitializeEncryptionSpecRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encryption_spec, as: 'encryptionSpec', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2EncryptionSpec, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2EncryptionSpec::Representation
      
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
          collection :followup_intent_info, as: 'followupIntentInfo', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentFollowupIntentInfo, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentFollowupIntentInfo::Representation
      
          collection :input_context_names, as: 'inputContextNames'
          property :is_fallback, as: 'isFallback'
          property :live_agent_handoff, as: 'liveAgentHandoff'
          collection :messages, as: 'messages', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessage, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessage::Representation
      
          property :ml_disabled, as: 'mlDisabled'
          property :name, as: 'name'
          collection :output_contexts, as: 'outputContexts', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2Context, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2Context::Representation
      
          collection :parameters, as: 'parameters', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentParameter, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentParameter::Representation
      
          property :parent_followup_intent_name, as: 'parentFollowupIntentName'
          property :priority, as: 'priority'
          property :reset_contexts, as: 'resetContexts'
          property :root_followup_intent_name, as: 'rootFollowupIntentName'
          collection :training_phrases, as: 'trainingPhrases', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentTrainingPhrase, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentTrainingPhrase::Representation
      
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
          property :basic_card, as: 'basicCard', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageBasicCard, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageBasicCard::Representation
      
          property :browse_carousel_card, as: 'browseCarouselCard', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard::Representation
      
          property :card, as: 'card', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageCard, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageCard::Representation
      
          property :carousel_select, as: 'carouselSelect', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageCarouselSelect, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageCarouselSelect::Representation
      
          property :image, as: 'image', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageImage, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageImage::Representation
      
          property :link_out_suggestion, as: 'linkOutSuggestion', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion::Representation
      
          property :list_select, as: 'listSelect', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageListSelect, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageListSelect::Representation
      
          property :media_content, as: 'mediaContent', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageMediaContent, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageMediaContent::Representation
      
          hash :payload, as: 'payload'
          property :platform, as: 'platform'
          property :quick_replies, as: 'quickReplies', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageQuickReplies, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageQuickReplies::Representation
      
          property :simple_responses, as: 'simpleResponses', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageSimpleResponses, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageSimpleResponses::Representation
      
          property :suggestions, as: 'suggestions', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageSuggestions, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageSuggestions::Representation
      
          property :table_card, as: 'tableCard', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageTableCard, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageTableCard::Representation
      
          property :text, as: 'text', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageText, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageText::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2IntentMessageBasicCard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :buttons, as: 'buttons', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageBasicCardButton, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageBasicCardButton::Representation
      
          property :formatted_text, as: 'formattedText'
          property :image, as: 'image', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageImage, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageImage::Representation
      
          property :subtitle, as: 'subtitle'
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudDialogflowV2IntentMessageBasicCardButton
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :open_uri_action, as: 'openUriAction', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction::Representation
      
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
          collection :items, as: 'items', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :footer, as: 'footer'
          property :image, as: 'image', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageImage, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageImage::Representation
      
          property :open_uri_action, as: 'openUriAction', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction::Representation
      
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
          collection :buttons, as: 'buttons', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageCardButton, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageCardButton::Representation
      
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
          collection :items, as: 'items', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageCarouselSelectItem, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageCarouselSelectItem::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2IntentMessageCarouselSelectItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :image, as: 'image', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageImage, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageImage::Representation
      
          property :info, as: 'info', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageSelectItemInfo, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageSelectItemInfo::Representation
      
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
          collection :items, as: 'items', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageListSelectItem, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageListSelectItem::Representation
      
          property :subtitle, as: 'subtitle'
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudDialogflowV2IntentMessageListSelectItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :image, as: 'image', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageImage, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageImage::Representation
      
          property :info, as: 'info', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageSelectItemInfo, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageSelectItemInfo::Representation
      
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudDialogflowV2IntentMessageMediaContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :media_objects, as: 'mediaObjects', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject::Representation
      
          property :media_type, as: 'mediaType'
        end
      end
      
      class GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_url, as: 'contentUrl'
          property :description, as: 'description'
          property :icon, as: 'icon', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageImage, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageImage::Representation
      
          property :large_image, as: 'largeImage', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageImage, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageImage::Representation
      
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
          collection :simple_responses, as: 'simpleResponses', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageSimpleResponse, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageSimpleResponse::Representation
      
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
          collection :suggestions, as: 'suggestions', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageSuggestion, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageSuggestion::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2IntentMessageTableCard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :buttons, as: 'buttons', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageBasicCardButton, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageBasicCardButton::Representation
      
          collection :column_properties, as: 'columnProperties', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageColumnProperties, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageColumnProperties::Representation
      
          property :image, as: 'image', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageImage, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageImage::Representation
      
          collection :rows, as: 'rows', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageTableCardRow, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageTableCardRow::Representation
      
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
          collection :cells, as: 'cells', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageTableCardCell, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageTableCardCell::Representation
      
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
          collection :parts, as: 'parts', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentTrainingPhrasePart, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentTrainingPhrasePart::Representation
      
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
      
      class GoogleCloudDialogflowV2KnowledgeAssistAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer_record, as: 'answerRecord'
          property :suggested_query, as: 'suggestedQuery', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2KnowledgeAssistAnswerSuggestedQuery, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2KnowledgeAssistAnswerSuggestedQuery::Representation
      
          property :suggested_query_answer, as: 'suggestedQueryAnswer', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswer, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswer::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer_text, as: 'answerText'
          property :faq_source, as: 'faqSource', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerFaqSource, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerFaqSource::Representation
      
          property :generative_source, as: 'generativeSource', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerGenerativeSource, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerGenerativeSource::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerFaqSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :question, as: 'question'
        end
      end
      
      class GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerGenerativeSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :snippets, as: 'snippets', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerGenerativeSourceSnippet, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerGenerativeSourceSnippet::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerGenerativeSourceSnippet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :metadata, as: 'metadata'
          property :text, as: 'text'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDialogflowV2KnowledgeAssistAnswerSuggestedQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query_text, as: 'queryText'
        end
      end
      
      class GoogleCloudDialogflowV2KnowledgeOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done_time, as: 'doneTime'
          property :export_operation_metadata, as: 'exportOperationMetadata', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2ExportOperationMetadata, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2ExportOperationMetadata::Representation
      
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
          property :message_annotation, as: 'messageAnnotation', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2MessageAnnotation, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2MessageAnnotation::Representation
      
          property :name, as: 'name'
          property :participant, as: 'participant'
          property :participant_role, as: 'participantRole'
          property :send_time, as: 'sendTime'
          property :sentiment_analysis, as: 'sentimentAnalysis', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2SentimentAnalysisResult, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2SentimentAnalysisResult::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2MessageAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contain_entities, as: 'containEntities'
          collection :parts, as: 'parts', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2AnnotatedMessagePart, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2AnnotatedMessagePart::Representation
      
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
          collection :fulfillment_messages, as: 'fulfillmentMessages', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessage, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessage::Representation
      
          property :fulfillment_text, as: 'fulfillmentText'
          property :intent, as: 'intent', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2Intent, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2Intent::Representation
      
          property :intent_detection_confidence, as: 'intentDetectionConfidence'
          property :language_code, as: 'languageCode'
          collection :output_contexts, as: 'outputContexts', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2Context, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2Context::Representation
      
          hash :parameters, as: 'parameters'
          property :query_text, as: 'queryText'
          property :sentiment_analysis_result, as: 'sentimentAnalysisResult', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2SentimentAnalysisResult, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2SentimentAnalysisResult::Representation
      
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
          property :query_text_sentiment, as: 'queryTextSentiment', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2Sentiment, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2Sentiment::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2SessionEntityType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entities, as: 'entities', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2EntityTypeEntity, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2EntityTypeEntity::Representation
      
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
      
      class GoogleCloudDialogflowV2SpeechWordInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :end_offset, as: 'endOffset'
          property :start_offset, as: 'startOffset'
          property :word, as: 'word'
        end
      end
      
      class GoogleCloudDialogflowV2StreamingRecognitionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :is_final, as: 'isFinal'
          property :language_code, as: 'languageCode'
          property :message_type, as: 'messageType'
          property :speech_end_offset, as: 'speechEndOffset'
          collection :speech_word_info, as: 'speechWordInfo', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2SpeechWordInfo, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2SpeechWordInfo::Representation
      
          property :transcript, as: 'transcript'
        end
      end
      
      class GoogleCloudDialogflowV2SuggestArticlesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :article_answers, as: 'articleAnswers', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2ArticleAnswer, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2ArticleAnswer::Representation
      
          property :context_size, as: 'contextSize'
          property :latest_message, as: 'latestMessage'
        end
      end
      
      class GoogleCloudDialogflowV2SuggestFaqAnswersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context_size, as: 'contextSize'
          collection :faq_answers, as: 'faqAnswers', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2FaqAnswer, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2FaqAnswer::Representation
      
          property :latest_message, as: 'latestMessage'
        end
      end
      
      class GoogleCloudDialogflowV2SuggestKnowledgeAssistResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context_size, as: 'contextSize'
          property :knowledge_assist_answer, as: 'knowledgeAssistAnswer', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2KnowledgeAssistAnswer, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2KnowledgeAssistAnswer::Representation
      
          property :latest_message, as: 'latestMessage'
        end
      end
      
      class GoogleCloudDialogflowV2SuggestSmartRepliesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context_size, as: 'contextSize'
          property :latest_message, as: 'latestMessage'
          collection :smart_reply_answers, as: 'smartReplyAnswers', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2SmartReplyAnswer, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2SmartReplyAnswer::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2SuggestionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::DialogflowV3beta1::GoogleRpcStatus, decorator: Google::Apis::DialogflowV3beta1::GoogleRpcStatus::Representation
      
          property :generate_suggestions_response, as: 'generateSuggestionsResponse', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2GenerateSuggestionsResponse, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2GenerateSuggestionsResponse::Representation
      
          property :suggest_articles_response, as: 'suggestArticlesResponse', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2SuggestArticlesResponse, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2SuggestArticlesResponse::Representation
      
          property :suggest_faq_answers_response, as: 'suggestFaqAnswersResponse', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2SuggestFaqAnswersResponse, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2SuggestFaqAnswersResponse::Representation
      
          property :suggest_knowledge_assist_response, as: 'suggestKnowledgeAssistResponse', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2SuggestKnowledgeAssistResponse, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2SuggestKnowledgeAssistResponse::Representation
      
          property :suggest_smart_replies_response, as: 'suggestSmartRepliesResponse', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2SuggestSmartRepliesResponse, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2SuggestSmartRepliesResponse::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2SummarySuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :summary_sections, as: 'summarySections', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2SummarySuggestionSummarySection, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2SummarySuggestionSummarySection::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2SummarySuggestionSummarySection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :section, as: 'section'
          property :summary, as: 'summary'
        end
      end
      
      class GoogleCloudDialogflowV2ToolCall
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :create_time, as: 'createTime'
          hash :input_parameters, as: 'inputParameters'
          property :tool, as: 'tool'
        end
      end
      
      class GoogleCloudDialogflowV2ToolCallResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :content, as: 'content'
          property :create_time, as: 'createTime'
          property :error, as: 'error', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2ToolCallResultError, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2ToolCallResultError::Representation
      
          property :raw_content, :base64 => true, as: 'rawContent'
          property :tool, as: 'tool'
        end
      end
      
      class GoogleCloudDialogflowV2ToolCallResultError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
        end
      end
      
      class GoogleCloudDialogflowV2UndeployConversationModelOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation_model, as: 'conversationModel'
          property :create_time, as: 'createTime'
          property :done_time, as: 'doneTime'
        end
      end
      
      class GoogleCloudDialogflowV2WebhookRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :original_detect_intent_request, as: 'originalDetectIntentRequest', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2OriginalDetectIntentRequest, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2OriginalDetectIntentRequest::Representation
      
          property :query_result, as: 'queryResult', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2QueryResult, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2QueryResult::Representation
      
          property :response_id, as: 'responseId'
          property :session, as: 'session'
        end
      end
      
      class GoogleCloudDialogflowV2WebhookResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :followup_event_input, as: 'followupEventInput', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2EventInput, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2EventInput::Representation
      
          collection :fulfillment_messages, as: 'fulfillmentMessages', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessage, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessage::Representation
      
          property :fulfillment_text, as: 'fulfillmentText'
          collection :output_contexts, as: 'outputContexts', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2Context, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2Context::Representation
      
          hash :payload, as: 'payload'
          collection :session_entity_types, as: 'sessionEntityTypes', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2SessionEntityType, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2SessionEntityType::Representation
      
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
          collection :entity_types, as: 'entityTypes', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1EntityType, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1EntityType::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :intents, as: 'intents', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1Intent, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1Intent::Representation
      
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
          property :error_status, as: 'errorStatus', class: Google::Apis::DialogflowV3beta1::GoogleRpcStatus, decorator: Google::Apis::DialogflowV3beta1::GoogleRpcStatus::Representation
      
          property :new_message_payload, as: 'newMessagePayload', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1Message, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1Message::Representation
      
          property :new_recognition_result_payload, as: 'newRecognitionResultPayload', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1StreamingRecognitionResult, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1StreamingRecognitionResult::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDialogflowV2beta1DialogflowAssistAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer_record, as: 'answerRecord'
          property :intent_suggestion, as: 'intentSuggestion', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentSuggestion, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentSuggestion::Representation
      
          property :query_result, as: 'queryResult', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1QueryResult, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1QueryResult::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1EncryptionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key, as: 'kmsKey'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDialogflowV2beta1EntityType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_expansion_mode, as: 'autoExpansionMode'
          property :display_name, as: 'displayName'
          property :enable_fuzzy_extraction, as: 'enableFuzzyExtraction'
          collection :entities, as: 'entities', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1EntityTypeEntity, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1EntityTypeEntity::Representation
      
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
          property :exported_gcs_destination, as: 'exportedGcsDestination', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1GcsDestination, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1GcsDestination::Representation
      
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
      
      class GoogleCloudDialogflowV2beta1FreeFormSuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :response, as: 'response'
        end
      end
      
      class GoogleCloudDialogflowV2beta1GcsDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDialogflowV2beta1GenerateSuggestionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :generator_suggestion_answers, as: 'generatorSuggestionAnswers', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1GenerateSuggestionsResponseGeneratorSuggestionAnswer, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1GenerateSuggestionsResponseGeneratorSuggestionAnswer::Representation
      
          property :latest_message, as: 'latestMessage'
        end
      end
      
      class GoogleCloudDialogflowV2beta1GenerateSuggestionsResponseGeneratorSuggestionAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer_record, as: 'answerRecord'
          property :generator_suggestion, as: 'generatorSuggestion', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1GeneratorSuggestion, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1GeneratorSuggestion::Representation
      
          property :source_generator, as: 'sourceGenerator'
        end
      end
      
      class GoogleCloudDialogflowV2beta1GeneratorSuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :free_form_suggestion, as: 'freeFormSuggestion', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1FreeFormSuggestion, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1FreeFormSuggestion::Representation
      
          property :summary_suggestion, as: 'summarySuggestion', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1SummarySuggestion, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1SummarySuggestion::Representation
      
          collection :tool_call_info, as: 'toolCallInfo', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1GeneratorSuggestionToolCallInfo, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1GeneratorSuggestionToolCallInfo::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1GeneratorSuggestionToolCallInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tool_call, as: 'toolCall', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1ToolCall, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1ToolCall::Representation
      
          property :tool_call_result, as: 'toolCallResult', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1ToolCallResult, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1ToolCallResult::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1HumanAgentAssistantEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation, as: 'conversation'
          property :participant, as: 'participant'
          collection :suggestion_results, as: 'suggestionResults', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1SuggestionResult, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1SuggestionResult::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1ImportDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :warnings, as: 'warnings', class: Google::Apis::DialogflowV3beta1::GoogleRpcStatus, decorator: Google::Apis::DialogflowV3beta1::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1InitializeEncryptionSpecMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request, as: 'request', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1InitializeEncryptionSpecRequest, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1InitializeEncryptionSpecRequest::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1InitializeEncryptionSpecRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encryption_spec, as: 'encryptionSpec', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1EncryptionSpec, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1EncryptionSpec::Representation
      
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
          collection :followup_intent_info, as: 'followupIntentInfo', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo::Representation
      
          collection :input_context_names, as: 'inputContextNames'
          property :is_fallback, as: 'isFallback'
          property :live_agent_handoff, as: 'liveAgentHandoff'
          collection :messages, as: 'messages', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessage, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessage::Representation
      
          property :ml_disabled, as: 'mlDisabled'
          property :ml_enabled, as: 'mlEnabled'
          property :name, as: 'name'
          collection :output_contexts, as: 'outputContexts', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1Context, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1Context::Representation
      
          collection :parameters, as: 'parameters', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentParameter, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentParameter::Representation
      
          property :parent_followup_intent_name, as: 'parentFollowupIntentName'
          property :priority, as: 'priority'
          property :reset_contexts, as: 'resetContexts'
          property :root_followup_intent_name, as: 'rootFollowupIntentName'
          collection :training_phrases, as: 'trainingPhrases', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentTrainingPhrase, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentTrainingPhrase::Representation
      
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
          property :basic_card, as: 'basicCard', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageBasicCard, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageBasicCard::Representation
      
          property :browse_carousel_card, as: 'browseCarouselCard', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard::Representation
      
          property :card, as: 'card', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageCard, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageCard::Representation
      
          property :carousel_select, as: 'carouselSelect', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect::Representation
      
          property :image, as: 'image', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageImage, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageImage::Representation
      
          property :link_out_suggestion, as: 'linkOutSuggestion', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion::Representation
      
          property :list_select, as: 'listSelect', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageListSelect, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageListSelect::Representation
      
          property :media_content, as: 'mediaContent', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageMediaContent, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageMediaContent::Representation
      
          hash :payload, as: 'payload'
          property :platform, as: 'platform'
          property :quick_replies, as: 'quickReplies', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageQuickReplies, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageQuickReplies::Representation
      
          property :rbm_carousel_rich_card, as: 'rbmCarouselRichCard', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard::Representation
      
          property :rbm_standalone_rich_card, as: 'rbmStandaloneRichCard', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard::Representation
      
          property :rbm_text, as: 'rbmText', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmText, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmText::Representation
      
          property :simple_responses, as: 'simpleResponses', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses::Representation
      
          property :suggestions, as: 'suggestions', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageSuggestions, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageSuggestions::Representation
      
          property :table_card, as: 'tableCard', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageTableCard, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageTableCard::Representation
      
          property :telephony_play_audio, as: 'telephonyPlayAudio', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio::Representation
      
          property :telephony_synthesize_speech, as: 'telephonySynthesizeSpeech', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech::Representation
      
          property :telephony_transfer_call, as: 'telephonyTransferCall', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall::Representation
      
          property :text, as: 'text', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageText, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageText::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageBasicCard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :buttons, as: 'buttons', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton::Representation
      
          property :formatted_text, as: 'formattedText'
          property :image, as: 'image', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageImage, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageImage::Representation
      
          property :subtitle, as: 'subtitle'
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :open_uri_action, as: 'openUriAction', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction::Representation
      
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
          collection :items, as: 'items', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :footer, as: 'footer'
          property :image, as: 'image', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageImage, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageImage::Representation
      
          property :open_uri_action, as: 'openUriAction', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction::Representation
      
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
          collection :buttons, as: 'buttons', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageCardButton, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageCardButton::Representation
      
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
          collection :items, as: 'items', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :image, as: 'image', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageImage, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageImage::Representation
      
          property :info, as: 'info', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo::Representation
      
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
          collection :items, as: 'items', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageListSelectItem, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageListSelectItem::Representation
      
          property :subtitle, as: 'subtitle'
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageListSelectItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :image, as: 'image', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageImage, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageImage::Representation
      
          property :info, as: 'info', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo::Representation
      
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageMediaContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :media_objects, as: 'mediaObjects', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject::Representation
      
          property :media_type, as: 'mediaType'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_url, as: 'contentUrl'
          property :description, as: 'description'
          property :icon, as: 'icon', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageImage, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageImage::Representation
      
          property :large_image, as: 'largeImage', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageImage, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageImage::Representation
      
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
          property :media, as: 'media', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia::Representation
      
          collection :suggestions, as: 'suggestions', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion::Representation
      
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
          collection :card_contents, as: 'cardContents', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent::Representation
      
          property :card_width, as: 'cardWidth'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :card_content, as: 'cardContent', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent::Representation
      
          property :card_orientation, as: 'cardOrientation'
          property :thumbnail_image_alignment, as: 'thumbnailImageAlignment'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dial, as: 'dial', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial::Representation
      
          property :open_url, as: 'openUrl', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri::Representation
      
          property :postback_data, as: 'postbackData'
          property :share_location, as: 'shareLocation', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation::Representation
      
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
          property :action, as: 'action', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction::Representation
      
          property :reply, as: 'reply', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageRbmText
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rbm_suggestion, as: 'rbmSuggestion', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion::Representation
      
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
          collection :simple_responses, as: 'simpleResponses', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse::Representation
      
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
          collection :suggestions, as: 'suggestions', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageSuggestion, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageSuggestion::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentMessageTableCard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :buttons, as: 'buttons', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton::Representation
      
          collection :column_properties, as: 'columnProperties', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageColumnProperties, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageColumnProperties::Representation
      
          property :image, as: 'image', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageImage, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageImage::Representation
      
          collection :rows, as: 'rows', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageTableCardRow, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageTableCardRow::Representation
      
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
          collection :cells, as: 'cells', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageTableCardCell, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageTableCardCell::Representation
      
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
      
      class GoogleCloudDialogflowV2beta1IntentSuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :intent_v2, as: 'intentV2'
        end
      end
      
      class GoogleCloudDialogflowV2beta1IntentTrainingPhrase
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          collection :parts, as: 'parts', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart::Representation
      
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
          collection :answers, as: 'answers', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer::Representation
      
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
      
      class GoogleCloudDialogflowV2beta1KnowledgeAssistAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer_record, as: 'answerRecord'
          property :suggested_query, as: 'suggestedQuery', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerSuggestedQuery, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerSuggestedQuery::Representation
      
          property :suggested_query_answer, as: 'suggestedQueryAnswer', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswer, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswer::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer_text, as: 'answerText'
          property :faq_source, as: 'faqSource', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswerFaqSource, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswerFaqSource::Representation
      
          property :generative_source, as: 'generativeSource', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswerGenerativeSource, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswerGenerativeSource::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswerFaqSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :question, as: 'question'
        end
      end
      
      class GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswerGenerativeSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :snippets, as: 'snippets', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswerGenerativeSourceSnippet, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswerGenerativeSourceSnippet::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswerGenerativeSourceSnippet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :metadata, as: 'metadata'
          property :text, as: 'text'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerSuggestedQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query_text, as: 'queryText'
        end
      end
      
      class GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done_time, as: 'doneTime'
          property :export_operation_metadata, as: 'exportOperationMetadata', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1ExportOperationMetadata, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1ExportOperationMetadata::Representation
      
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
          property :message_annotation, as: 'messageAnnotation', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1MessageAnnotation, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1MessageAnnotation::Representation
      
          property :name, as: 'name'
          property :participant, as: 'participant'
          property :participant_role, as: 'participantRole'
          collection :response_messages, as: 'responseMessages', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1ResponseMessage, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1ResponseMessage::Representation
      
          property :send_time, as: 'sendTime'
          property :sentiment_analysis, as: 'sentimentAnalysis', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1SentimentAnalysisResult, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1SentimentAnalysisResult::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1MessageAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contain_entities, as: 'containEntities'
          collection :parts, as: 'parts', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1AnnotatedMessagePart, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1AnnotatedMessagePart::Representation
      
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
          collection :fulfillment_messages, as: 'fulfillmentMessages', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessage, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessage::Representation
      
          property :fulfillment_text, as: 'fulfillmentText'
          property :intent, as: 'intent', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1Intent, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1Intent::Representation
      
          property :intent_detection_confidence, as: 'intentDetectionConfidence'
          property :knowledge_answers, as: 'knowledgeAnswers', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1KnowledgeAnswers, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1KnowledgeAnswers::Representation
      
          property :language_code, as: 'languageCode'
          collection :output_contexts, as: 'outputContexts', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1Context, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1Context::Representation
      
          hash :parameters, as: 'parameters'
          property :query_text, as: 'queryText'
          property :sentiment_analysis_result, as: 'sentimentAnalysisResult', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1SentimentAnalysisResult, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1SentimentAnalysisResult::Representation
      
          property :speech_recognition_confidence, as: 'speechRecognitionConfidence'
          hash :webhook_payload, as: 'webhookPayload'
          property :webhook_source, as: 'webhookSource'
        end
      end
      
      class GoogleCloudDialogflowV2beta1ResponseMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_interaction, as: 'endInteraction', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1ResponseMessageEndInteraction, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1ResponseMessageEndInteraction::Representation
      
          property :live_agent_handoff, as: 'liveAgentHandoff', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1ResponseMessageLiveAgentHandoff, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1ResponseMessageLiveAgentHandoff::Representation
      
          property :mixed_audio, as: 'mixedAudio', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1ResponseMessageMixedAudio, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1ResponseMessageMixedAudio::Representation
      
          hash :payload, as: 'payload'
          property :telephony_transfer_call, as: 'telephonyTransferCall', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1ResponseMessageTelephonyTransferCall, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1ResponseMessageTelephonyTransferCall::Representation
      
          property :text, as: 'text', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1ResponseMessageText, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1ResponseMessageText::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1ResponseMessageEndInteraction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDialogflowV2beta1ResponseMessageLiveAgentHandoff
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :metadata, as: 'metadata'
        end
      end
      
      class GoogleCloudDialogflowV2beta1ResponseMessageMixedAudio
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :segments, as: 'segments', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1ResponseMessageMixedAudioSegment, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1ResponseMessageMixedAudioSegment::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1ResponseMessageMixedAudioSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_playback_interruption, as: 'allowPlaybackInterruption'
          property :audio, :base64 => true, as: 'audio'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDialogflowV2beta1ResponseMessageTelephonyTransferCall
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :phone_number, as: 'phoneNumber'
          property :sip_uri, as: 'sipUri'
        end
      end
      
      class GoogleCloudDialogflowV2beta1ResponseMessageText
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :text, as: 'text'
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
          property :query_text_sentiment, as: 'queryTextSentiment', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1Sentiment, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1Sentiment::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1SessionEntityType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entities, as: 'entities', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1EntityTypeEntity, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1EntityTypeEntity::Representation
      
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
      
      class GoogleCloudDialogflowV2beta1SpeechWordInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :end_offset, as: 'endOffset'
          property :start_offset, as: 'startOffset'
          property :word, as: 'word'
        end
      end
      
      class GoogleCloudDialogflowV2beta1StreamingRecognitionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :dtmf_digits, as: 'dtmfDigits', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1TelephonyDtmfEvents, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1TelephonyDtmfEvents::Representation
      
          property :is_final, as: 'isFinal'
          property :language_code, as: 'languageCode'
          property :message_type, as: 'messageType'
          property :speech_end_offset, as: 'speechEndOffset'
          collection :speech_word_info, as: 'speechWordInfo', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1SpeechWordInfo, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1SpeechWordInfo::Representation
      
          property :stability, as: 'stability'
          property :transcript, as: 'transcript'
        end
      end
      
      class GoogleCloudDialogflowV2beta1SuggestArticlesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :article_answers, as: 'articleAnswers', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1ArticleAnswer, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1ArticleAnswer::Representation
      
          property :context_size, as: 'contextSize'
          property :latest_message, as: 'latestMessage'
        end
      end
      
      class GoogleCloudDialogflowV2beta1SuggestDialogflowAssistsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context_size, as: 'contextSize'
          collection :dialogflow_assist_answers, as: 'dialogflowAssistAnswers', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1DialogflowAssistAnswer, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1DialogflowAssistAnswer::Representation
      
          property :latest_message, as: 'latestMessage'
        end
      end
      
      class GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context_size, as: 'contextSize'
          collection :faq_answers, as: 'faqAnswers', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1FaqAnswer, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1FaqAnswer::Representation
      
          property :latest_message, as: 'latestMessage'
        end
      end
      
      class GoogleCloudDialogflowV2beta1SuggestKnowledgeAssistResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context_size, as: 'contextSize'
          property :knowledge_assist_answer, as: 'knowledgeAssistAnswer', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1KnowledgeAssistAnswer, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1KnowledgeAssistAnswer::Representation
      
          property :latest_message, as: 'latestMessage'
        end
      end
      
      class GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context_size, as: 'contextSize'
          property :latest_message, as: 'latestMessage'
          collection :smart_reply_answers, as: 'smartReplyAnswers', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1SmartReplyAnswer, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1SmartReplyAnswer::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1SuggestionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::DialogflowV3beta1::GoogleRpcStatus, decorator: Google::Apis::DialogflowV3beta1::GoogleRpcStatus::Representation
      
          property :generate_suggestions_response, as: 'generateSuggestionsResponse', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1GenerateSuggestionsResponse, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1GenerateSuggestionsResponse::Representation
      
          property :suggest_articles_response, as: 'suggestArticlesResponse', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1SuggestArticlesResponse, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1SuggestArticlesResponse::Representation
      
          property :suggest_dialogflow_assists_response, as: 'suggestDialogflowAssistsResponse', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1SuggestDialogflowAssistsResponse, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1SuggestDialogflowAssistsResponse::Representation
      
          property :suggest_entity_extraction_response, as: 'suggestEntityExtractionResponse', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1SuggestDialogflowAssistsResponse, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1SuggestDialogflowAssistsResponse::Representation
      
          property :suggest_faq_answers_response, as: 'suggestFaqAnswersResponse', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse::Representation
      
          property :suggest_knowledge_assist_response, as: 'suggestKnowledgeAssistResponse', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1SuggestKnowledgeAssistResponse, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1SuggestKnowledgeAssistResponse::Representation
      
          property :suggest_smart_replies_response, as: 'suggestSmartRepliesResponse', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1SummarySuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :summary_sections, as: 'summarySections', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1SummarySuggestionSummarySection, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1SummarySuggestionSummarySection::Representation
      
        end
      end
      
      class GoogleCloudDialogflowV2beta1SummarySuggestionSummarySection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :section, as: 'section'
          property :summary, as: 'summary'
        end
      end
      
      class GoogleCloudDialogflowV2beta1TelephonyDtmfEvents
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dtmf_events, as: 'dtmfEvents'
        end
      end
      
      class GoogleCloudDialogflowV2beta1ToolCall
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :create_time, as: 'createTime'
          hash :input_parameters, as: 'inputParameters'
          property :tool, as: 'tool'
        end
      end
      
      class GoogleCloudDialogflowV2beta1ToolCallResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :content, as: 'content'
          property :create_time, as: 'createTime'
          property :error, as: 'error', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1ToolCallResultError, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1ToolCallResultError::Representation
      
          property :raw_content, :base64 => true, as: 'rawContent'
          property :tool, as: 'tool'
        end
      end
      
      class GoogleCloudDialogflowV2beta1ToolCallResultError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
        end
      end
      
      class GoogleCloudDialogflowV2beta1WebhookRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :alternative_query_results, as: 'alternativeQueryResults', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1QueryResult, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1QueryResult::Representation
      
          property :original_detect_intent_request, as: 'originalDetectIntentRequest', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest::Representation
      
          property :query_result, as: 'queryResult', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1QueryResult, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1QueryResult::Representation
      
          property :response_id, as: 'responseId'
          property :session, as: 'session'
        end
      end
      
      class GoogleCloudDialogflowV2beta1WebhookResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_interaction, as: 'endInteraction'
          property :followup_event_input, as: 'followupEventInput', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1EventInput, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1EventInput::Representation
      
          collection :fulfillment_messages, as: 'fulfillmentMessages', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessage, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessage::Representation
      
          property :fulfillment_text, as: 'fulfillmentText'
          property :live_agent_handoff, as: 'liveAgentHandoff'
          collection :output_contexts, as: 'outputContexts', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1Context, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1Context::Representation
      
          hash :payload, as: 'payload'
          collection :session_entity_types, as: 'sessionEntityTypes', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1SessionEntityType, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1SessionEntityType::Representation
      
          property :source, as: 'source'
        end
      end
      
      class GoogleCloudDialogflowV3alpha1ConversationSignals
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :turn_signals, as: 'turnSignals', class: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV3alpha1TurnSignals, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV3alpha1TurnSignals::Representation
      
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
          property :sentiment_magnitude, as: 'sentimentMagnitude'
          property :sentiment_score, as: 'sentimentScore'
          property :triggered_abandonment_event, as: 'triggeredAbandonmentEvent'
          property :user_escalated, as: 'userEscalated'
          collection :webhook_statuses, as: 'webhookStatuses'
        end
      end
      
      class GoogleCloudLocationListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::DialogflowV3beta1::GoogleCloudLocationLocation, decorator: Google::Apis::DialogflowV3beta1::GoogleCloudLocationLocation::Representation
      
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
          collection :operations, as: 'operations', class: Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation, decorator: Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::DialogflowV3beta1::GoogleRpcStatus, decorator: Google::Apis::DialogflowV3beta1::GoogleRpcStatus::Representation
      
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
