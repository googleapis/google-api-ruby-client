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
    module CesV1
      
      class Action
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActionEntityOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Agent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AgentAgentToolset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AgentLlmAgent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AgentRemoteDialogflowAgent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AgentTransfer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AmbientSoundConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApiAuthentication
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApiKeyConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class App
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppSnapshot
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppVariableDeclaration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AudioProcessingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AudioRecordingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BargeInConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchDeleteConversationsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BearerTokenConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BigQueryExportSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Blob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Callback
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Changelog
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChannelProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChannelProfilePersonaProperty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChannelProfileWebWidgetConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChannelProfileWebWidgetConfigSecuritySettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Chunk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Citations
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CitationsCitedChunk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClientCertificateSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClientFunction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudLoggingSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CodeBlock
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectorTool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectorToolset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Conversation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConversationLoggingSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConversationTurn
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataStore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataStoreConnectorConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataStoreSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataStoreSettingsEngine
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataStoreTool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataStoreToolBoostSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataStoreToolBoostSpecConditionBoostSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataStoreToolBoostSpecConditionBoostSpecBoostControlSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataStoreToolBoostSpecConditionBoostSpecBoostControlSpecControlPoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataStoreToolBoostSpecs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataStoreToolDataStoreSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataStoreToolEngineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataStoreToolGroundingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataStoreToolModalityConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataStoreToolRewriterConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataStoreToolSummarizationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Deployment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EndSession
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EndUserAuthConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EndUserAuthConfigOauth2AuthCodeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EndUserAuthConfigOauth2JwtBearerConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EvaluationMetricsThresholds
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Event
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Example
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecuteToolRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecuteToolResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportAppRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportAppResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExpressionCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FileSearchTool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateChatTokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateChatTokenResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSearchSuggestions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSearchTool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSearchToolPromptConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Guardrail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GuardrailCodeCallback
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GuardrailContentFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GuardrailLlmPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GuardrailLlmPromptSecurity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GuardrailLlmPromptSecurityDefaultSecuritySettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GuardrailModelSafety
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GuardrailModelSafetySafetySetting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Image
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportAppRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportAppRequestImportOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportAppResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InputAudioConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LanguageSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAgentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAppVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAppsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListChangelogsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListConversationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDeploymentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListExamplesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGuardrailsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListToolsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListToolsetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoggingSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class McpTool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class McpToolset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Message
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricAnalysisSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ModelSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OAuthConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Omnichannel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OmnichannelIntegrationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OmnichannelIntegrationConfigCesAppConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OmnichannelIntegrationConfigChannelConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OmnichannelIntegrationConfigRoutingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OmnichannelIntegrationConfigSubscriberConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OmnichannelIntegrationConfigWhatsappConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OmnichannelOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OpenApiTool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OpenApiToolset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OutputAudioConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PythonCodeCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PythonFunction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RedactionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestoreAppVersionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RetrieveToolSchemaRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RetrieveToolSchemaResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RetrieveToolsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RetrieveToolsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunSessionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunSessionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Schema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceAccountAuthConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceAgentIdTokenAuthConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceDirectoryConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SessionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SessionConfigRemoteDialogflowQueryParameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SessionInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SessionOutput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SessionOutputDiagnosticInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Span
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SynthesizeSpeechConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SystemTool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeZoneSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TlsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TlsConfigCaCert
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Tool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ToolCall
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ToolCalls
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ToolFakeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ToolResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ToolResponses
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Toolset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ToolsetTool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransferRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransferRuleDeterministicTransfer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransferRuleDisablePlannerTransfer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TriggerAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TriggerActionGenerativeAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TriggerActionRespondImmediately
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TriggerActionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TriggerActionTransferAgent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WebSearchQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WidgetTool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Action
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connection_action_id, as: 'connectionActionId'
          property :entity_operation, as: 'entityOperation', class: Google::Apis::CesV1::ActionEntityOperation, decorator: Google::Apis::CesV1::ActionEntityOperation::Representation
      
          collection :input_fields, as: 'inputFields'
          collection :output_fields, as: 'outputFields'
        end
      end
      
      class ActionEntityOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity_id, as: 'entityId'
          property :operation, as: 'operation'
        end
      end
      
      class Agent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :after_agent_callbacks, as: 'afterAgentCallbacks', class: Google::Apis::CesV1::Callback, decorator: Google::Apis::CesV1::Callback::Representation
      
          collection :after_model_callbacks, as: 'afterModelCallbacks', class: Google::Apis::CesV1::Callback, decorator: Google::Apis::CesV1::Callback::Representation
      
          collection :after_tool_callbacks, as: 'afterToolCallbacks', class: Google::Apis::CesV1::Callback, decorator: Google::Apis::CesV1::Callback::Representation
      
          collection :before_agent_callbacks, as: 'beforeAgentCallbacks', class: Google::Apis::CesV1::Callback, decorator: Google::Apis::CesV1::Callback::Representation
      
          collection :before_model_callbacks, as: 'beforeModelCallbacks', class: Google::Apis::CesV1::Callback, decorator: Google::Apis::CesV1::Callback::Representation
      
          collection :before_tool_callbacks, as: 'beforeToolCallbacks', class: Google::Apis::CesV1::Callback, decorator: Google::Apis::CesV1::Callback::Representation
      
          collection :child_agents, as: 'childAgents'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          property :generated_summary, as: 'generatedSummary'
          collection :guardrails, as: 'guardrails'
          property :instruction, as: 'instruction'
          property :llm_agent, as: 'llmAgent', class: Google::Apis::CesV1::AgentLlmAgent, decorator: Google::Apis::CesV1::AgentLlmAgent::Representation
      
          property :model_settings, as: 'modelSettings', class: Google::Apis::CesV1::ModelSettings, decorator: Google::Apis::CesV1::ModelSettings::Representation
      
          property :name, as: 'name'
          property :remote_dialogflow_agent, as: 'remoteDialogflowAgent', class: Google::Apis::CesV1::AgentRemoteDialogflowAgent, decorator: Google::Apis::CesV1::AgentRemoteDialogflowAgent::Representation
      
          collection :tools, as: 'tools'
          collection :toolsets, as: 'toolsets', class: Google::Apis::CesV1::AgentAgentToolset, decorator: Google::Apis::CesV1::AgentAgentToolset::Representation
      
          collection :transfer_rules, as: 'transferRules', class: Google::Apis::CesV1::TransferRule, decorator: Google::Apis::CesV1::TransferRule::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class AgentAgentToolset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :tool_ids, as: 'toolIds'
          property :toolset, as: 'toolset'
        end
      end
      
      class AgentLlmAgent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AgentRemoteDialogflowAgent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent, as: 'agent'
          property :environment_id, as: 'environmentId'
          property :flow_id, as: 'flowId'
          hash :input_variable_mapping, as: 'inputVariableMapping'
          hash :output_variable_mapping, as: 'outputVariableMapping'
          property :respect_response_interruption_settings, as: 'respectResponseInterruptionSettings'
        end
      end
      
      class AgentTransfer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :target_agent, as: 'targetAgent'
        end
      end
      
      class AmbientSoundConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_uri, as: 'gcsUri'
          property :prebuilt_ambient_noise, as: 'prebuiltAmbientNoise'
          property :prebuilt_ambient_sound, as: 'prebuiltAmbientSound'
          property :volume_gain_db, as: 'volumeGainDb'
        end
      end
      
      class ApiAuthentication
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_key_config, as: 'apiKeyConfig', class: Google::Apis::CesV1::ApiKeyConfig, decorator: Google::Apis::CesV1::ApiKeyConfig::Representation
      
          property :bearer_token_config, as: 'bearerTokenConfig', class: Google::Apis::CesV1::BearerTokenConfig, decorator: Google::Apis::CesV1::BearerTokenConfig::Representation
      
          property :oauth_config, as: 'oauthConfig', class: Google::Apis::CesV1::OAuthConfig, decorator: Google::Apis::CesV1::OAuthConfig::Representation
      
          property :service_account_auth_config, as: 'serviceAccountAuthConfig', class: Google::Apis::CesV1::ServiceAccountAuthConfig, decorator: Google::Apis::CesV1::ServiceAccountAuthConfig::Representation
      
          property :service_agent_id_token_auth_config, as: 'serviceAgentIdTokenAuthConfig', class: Google::Apis::CesV1::ServiceAgentIdTokenAuthConfig, decorator: Google::Apis::CesV1::ServiceAgentIdTokenAuthConfig::Representation
      
        end
      end
      
      class ApiKeyConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_key_secret_version, as: 'apiKeySecretVersion'
          property :key_name, as: 'keyName'
          property :request_location, as: 'requestLocation'
        end
      end
      
      class App
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_processing_config, as: 'audioProcessingConfig', class: Google::Apis::CesV1::AudioProcessingConfig, decorator: Google::Apis::CesV1::AudioProcessingConfig::Representation
      
          property :client_certificate_settings, as: 'clientCertificateSettings', class: Google::Apis::CesV1::ClientCertificateSettings, decorator: Google::Apis::CesV1::ClientCertificateSettings::Representation
      
          property :create_time, as: 'createTime'
          property :data_store_settings, as: 'dataStoreSettings', class: Google::Apis::CesV1::DataStoreSettings, decorator: Google::Apis::CesV1::DataStoreSettings::Representation
      
          property :default_channel_profile, as: 'defaultChannelProfile', class: Google::Apis::CesV1::ChannelProfile, decorator: Google::Apis::CesV1::ChannelProfile::Representation
      
          property :deployment_count, as: 'deploymentCount'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          property :evaluation_metrics_thresholds, as: 'evaluationMetricsThresholds', class: Google::Apis::CesV1::EvaluationMetricsThresholds, decorator: Google::Apis::CesV1::EvaluationMetricsThresholds::Representation
      
          property :global_instruction, as: 'globalInstruction'
          collection :guardrails, as: 'guardrails'
          property :language_settings, as: 'languageSettings', class: Google::Apis::CesV1::LanguageSettings, decorator: Google::Apis::CesV1::LanguageSettings::Representation
      
          property :locked, as: 'locked'
          property :logging_settings, as: 'loggingSettings', class: Google::Apis::CesV1::LoggingSettings, decorator: Google::Apis::CesV1::LoggingSettings::Representation
      
          hash :metadata, as: 'metadata'
          property :model_settings, as: 'modelSettings', class: Google::Apis::CesV1::ModelSettings, decorator: Google::Apis::CesV1::ModelSettings::Representation
      
          property :name, as: 'name'
          property :pinned, as: 'pinned'
          collection :predefined_variable_declarations, as: 'predefinedVariableDeclarations', class: Google::Apis::CesV1::AppVariableDeclaration, decorator: Google::Apis::CesV1::AppVariableDeclaration::Representation
      
          property :root_agent, as: 'rootAgent'
          property :time_zone_settings, as: 'timeZoneSettings', class: Google::Apis::CesV1::TimeZoneSettings, decorator: Google::Apis::CesV1::TimeZoneSettings::Representation
      
          property :tool_execution_mode, as: 'toolExecutionMode'
          property :update_time, as: 'updateTime'
          collection :variable_declarations, as: 'variableDeclarations', class: Google::Apis::CesV1::AppVariableDeclaration, decorator: Google::Apis::CesV1::AppVariableDeclaration::Representation
      
        end
      end
      
      class AppSnapshot
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :agents, as: 'agents', class: Google::Apis::CesV1::Agent, decorator: Google::Apis::CesV1::Agent::Representation
      
          property :app, as: 'app', class: Google::Apis::CesV1::App, decorator: Google::Apis::CesV1::App::Representation
      
          collection :examples, as: 'examples', class: Google::Apis::CesV1::Example, decorator: Google::Apis::CesV1::Example::Representation
      
          collection :guardrails, as: 'guardrails', class: Google::Apis::CesV1::Guardrail, decorator: Google::Apis::CesV1::Guardrail::Representation
      
          collection :tools, as: 'tools', class: Google::Apis::CesV1::Tool, decorator: Google::Apis::CesV1::Tool::Representation
      
          collection :toolsets, as: 'toolsets', class: Google::Apis::CesV1::Toolset, decorator: Google::Apis::CesV1::Toolset::Representation
      
        end
      end
      
      class AppVariableDeclaration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :name, as: 'name'
          property :schema, as: 'schema', class: Google::Apis::CesV1::Schema, decorator: Google::Apis::CesV1::Schema::Representation
      
        end
      end
      
      class AppVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :creator, as: 'creator'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          property :name, as: 'name'
          property :snapshot, as: 'snapshot', class: Google::Apis::CesV1::AppSnapshot, decorator: Google::Apis::CesV1::AppSnapshot::Representation
      
        end
      end
      
      class AudioProcessingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ambient_sound_config, as: 'ambientSoundConfig', class: Google::Apis::CesV1::AmbientSoundConfig, decorator: Google::Apis::CesV1::AmbientSoundConfig::Representation
      
          property :barge_in_config, as: 'bargeInConfig', class: Google::Apis::CesV1::BargeInConfig, decorator: Google::Apis::CesV1::BargeInConfig::Representation
      
          property :inactivity_timeout, as: 'inactivityTimeout'
          hash :synthesize_speech_configs, as: 'synthesizeSpeechConfigs', class: Google::Apis::CesV1::SynthesizeSpeechConfig, decorator: Google::Apis::CesV1::SynthesizeSpeechConfig::Representation
      
        end
      end
      
      class AudioRecordingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_bucket, as: 'gcsBucket'
          property :gcs_path_prefix, as: 'gcsPathPrefix'
        end
      end
      
      class BargeInConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :barge_in_awareness, as: 'bargeInAwareness'
          property :disable_barge_in, as: 'disableBargeIn'
        end
      end
      
      class BatchDeleteConversationsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conversations, as: 'conversations'
        end
      end
      
      class BearerTokenConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :token, as: 'token'
        end
      end
      
      class BigQueryExportSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset, as: 'dataset'
          property :enabled, as: 'enabled'
          property :project, as: 'project'
        end
      end
      
      class Blob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data, :base64 => true, as: 'data'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class Callback
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :disabled, as: 'disabled'
          property :proactive_execution_enabled, as: 'proactiveExecutionEnabled'
          property :python_code, as: 'pythonCode'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Changelog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :author, as: 'author'
          property :create_time, as: 'createTime'
          collection :dependent_resources, as: 'dependentResources'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          hash :new_resource, as: 'newResource'
          hash :original_resource, as: 'originalResource'
          property :resource, as: 'resource'
          property :resource_type, as: 'resourceType'
          property :sequence_number, :numeric_string => true, as: 'sequenceNumber'
        end
      end
      
      class ChannelProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel_type, as: 'channelType'
          property :disable_barge_in_control, as: 'disableBargeInControl'
          property :disable_dtmf, as: 'disableDtmf'
          property :noise_suppression_level, as: 'noiseSuppressionLevel'
          property :persona_property, as: 'personaProperty', class: Google::Apis::CesV1::ChannelProfilePersonaProperty, decorator: Google::Apis::CesV1::ChannelProfilePersonaProperty::Representation
      
          property :profile_id, as: 'profileId'
          property :web_widget_config, as: 'webWidgetConfig', class: Google::Apis::CesV1::ChannelProfileWebWidgetConfig, decorator: Google::Apis::CesV1::ChannelProfileWebWidgetConfig::Representation
      
        end
      end
      
      class ChannelProfilePersonaProperty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :persona, as: 'persona'
        end
      end
      
      class ChannelProfileWebWidgetConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :modality, as: 'modality'
          property :security_settings, as: 'securitySettings', class: Google::Apis::CesV1::ChannelProfileWebWidgetConfigSecuritySettings, decorator: Google::Apis::CesV1::ChannelProfileWebWidgetConfigSecuritySettings::Representation
      
          property :theme, as: 'theme'
          property :web_widget_title, as: 'webWidgetTitle'
        end
      end
      
      class ChannelProfileWebWidgetConfigSecuritySettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_origins, as: 'allowedOrigins'
          property :enable_origin_check, as: 'enableOriginCheck'
          property :enable_public_access, as: 'enablePublicAccess'
          property :enable_recaptcha, as: 'enableRecaptcha'
        end
      end
      
      class Chunk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_transfer, as: 'agentTransfer', class: Google::Apis::CesV1::AgentTransfer, decorator: Google::Apis::CesV1::AgentTransfer::Representation
      
          hash :default_variables, as: 'defaultVariables'
          property :image, as: 'image', class: Google::Apis::CesV1::Image, decorator: Google::Apis::CesV1::Image::Representation
      
          hash :payload, as: 'payload'
          property :text, as: 'text'
          property :tool_call, as: 'toolCall', class: Google::Apis::CesV1::ToolCall, decorator: Google::Apis::CesV1::ToolCall::Representation
      
          property :tool_response, as: 'toolResponse', class: Google::Apis::CesV1::ToolResponse, decorator: Google::Apis::CesV1::ToolResponse::Representation
      
          property :transcript, as: 'transcript'
          hash :updated_variables, as: 'updatedVariables'
        end
      end
      
      class Citations
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cited_chunks, as: 'citedChunks', class: Google::Apis::CesV1::CitationsCitedChunk, decorator: Google::Apis::CesV1::CitationsCitedChunk::Representation
      
        end
      end
      
      class CitationsCitedChunk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text, as: 'text'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class ClientCertificateSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :passphrase, as: 'passphrase'
          property :private_key, as: 'privateKey'
          property :tls_certificate, as: 'tlsCertificate'
        end
      end
      
      class ClientFunction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :name, as: 'name'
          property :parameters, as: 'parameters', class: Google::Apis::CesV1::Schema, decorator: Google::Apis::CesV1::Schema::Representation
      
          property :response, as: 'response', class: Google::Apis::CesV1::Schema, decorator: Google::Apis::CesV1::Schema::Representation
      
        end
      end
      
      class CloudLoggingSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_cloud_logging, as: 'enableCloudLogging'
        end
      end
      
      class CodeBlock
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :python_code, as: 'pythonCode'
        end
      end
      
      class ConnectorTool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action', class: Google::Apis::CesV1::Action, decorator: Google::Apis::CesV1::Action::Representation
      
          property :auth_config, as: 'authConfig', class: Google::Apis::CesV1::EndUserAuthConfig, decorator: Google::Apis::CesV1::EndUserAuthConfig::Representation
      
          property :connection, as: 'connection'
          property :description, as: 'description'
          property :name, as: 'name'
        end
      end
      
      class ConnectorToolset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auth_config, as: 'authConfig', class: Google::Apis::CesV1::EndUserAuthConfig, decorator: Google::Apis::CesV1::EndUserAuthConfig::Representation
      
          property :connection, as: 'connection'
          collection :connector_actions, as: 'connectorActions', class: Google::Apis::CesV1::Action, decorator: Google::Apis::CesV1::Action::Representation
      
        end
      end
      
      class Conversation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_version, as: 'appVersion'
          property :channel_type, as: 'channelType'
          property :deployment, as: 'deployment'
          property :end_time, as: 'endTime'
          property :entry_agent, as: 'entryAgent'
          collection :input_types, as: 'inputTypes'
          property :language_code, as: 'languageCode'
          collection :messages, as: 'messages', class: Google::Apis::CesV1::Message, decorator: Google::Apis::CesV1::Message::Representation
      
          property :name, as: 'name'
          property :source, as: 'source'
          property :start_time, as: 'startTime'
          property :turn_count, as: 'turnCount'
          collection :turns, as: 'turns', class: Google::Apis::CesV1::ConversationTurn, decorator: Google::Apis::CesV1::ConversationTurn::Representation
      
        end
      end
      
      class ConversationLoggingSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_conversation_logging, as: 'disableConversationLogging'
        end
      end
      
      class ConversationTurn
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :messages, as: 'messages', class: Google::Apis::CesV1::Message, decorator: Google::Apis::CesV1::Message::Representation
      
          property :root_span, as: 'rootSpan', class: Google::Apis::CesV1::Span, decorator: Google::Apis::CesV1::Span::Representation
      
        end
      end
      
      class DataStore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connector_config, as: 'connectorConfig', class: Google::Apis::CesV1::DataStoreConnectorConfig, decorator: Google::Apis::CesV1::DataStoreConnectorConfig::Representation
      
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :document_processing_mode, as: 'documentProcessingMode'
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class DataStoreConnectorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :collection, as: 'collection'
          property :collection_display_name, as: 'collectionDisplayName'
          property :data_source, as: 'dataSource'
        end
      end
      
      class DataStoreSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :engines, as: 'engines', class: Google::Apis::CesV1::DataStoreSettingsEngine, decorator: Google::Apis::CesV1::DataStoreSettingsEngine::Representation
      
        end
      end
      
      class DataStoreSettingsEngine
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class DataStoreTool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :boost_specs, as: 'boostSpecs', class: Google::Apis::CesV1::DataStoreToolBoostSpecs, decorator: Google::Apis::CesV1::DataStoreToolBoostSpecs::Representation
      
          property :data_store_source, as: 'dataStoreSource', class: Google::Apis::CesV1::DataStoreToolDataStoreSource, decorator: Google::Apis::CesV1::DataStoreToolDataStoreSource::Representation
      
          property :description, as: 'description'
          property :engine_source, as: 'engineSource', class: Google::Apis::CesV1::DataStoreToolEngineSource, decorator: Google::Apis::CesV1::DataStoreToolEngineSource::Representation
      
          property :filter_parameter_behavior, as: 'filterParameterBehavior'
          collection :modality_configs, as: 'modalityConfigs', class: Google::Apis::CesV1::DataStoreToolModalityConfig, decorator: Google::Apis::CesV1::DataStoreToolModalityConfig::Representation
      
          property :name, as: 'name'
        end
      end
      
      class DataStoreToolBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :condition_boost_specs, as: 'conditionBoostSpecs', class: Google::Apis::CesV1::DataStoreToolBoostSpecConditionBoostSpec, decorator: Google::Apis::CesV1::DataStoreToolBoostSpecConditionBoostSpec::Representation
      
        end
      end
      
      class DataStoreToolBoostSpecConditionBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost, as: 'boost'
          property :boost_control_spec, as: 'boostControlSpec', class: Google::Apis::CesV1::DataStoreToolBoostSpecConditionBoostSpecBoostControlSpec, decorator: Google::Apis::CesV1::DataStoreToolBoostSpecConditionBoostSpecBoostControlSpec::Representation
      
          property :condition, as: 'condition'
        end
      end
      
      class DataStoreToolBoostSpecConditionBoostSpecBoostControlSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_type, as: 'attributeType'
          collection :control_points, as: 'controlPoints', class: Google::Apis::CesV1::DataStoreToolBoostSpecConditionBoostSpecBoostControlSpecControlPoint, decorator: Google::Apis::CesV1::DataStoreToolBoostSpecConditionBoostSpecBoostControlSpecControlPoint::Representation
      
          property :field_name, as: 'fieldName'
          property :interpolation_type, as: 'interpolationType'
        end
      end
      
      class DataStoreToolBoostSpecConditionBoostSpecBoostControlSpecControlPoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_value, as: 'attributeValue'
          property :boost_amount, as: 'boostAmount'
        end
      end
      
      class DataStoreToolBoostSpecs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_stores, as: 'dataStores'
          collection :spec, as: 'spec', class: Google::Apis::CesV1::DataStoreToolBoostSpec, decorator: Google::Apis::CesV1::DataStoreToolBoostSpec::Representation
      
        end
      end
      
      class DataStoreToolDataStoreSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_store, as: 'dataStore', class: Google::Apis::CesV1::DataStore, decorator: Google::Apis::CesV1::DataStore::Representation
      
          property :filter, as: 'filter'
        end
      end
      
      class DataStoreToolEngineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_store_sources, as: 'dataStoreSources', class: Google::Apis::CesV1::DataStoreToolDataStoreSource, decorator: Google::Apis::CesV1::DataStoreToolDataStoreSource::Representation
      
          property :engine, as: 'engine'
          property :filter, as: 'filter'
        end
      end
      
      class DataStoreToolGroundingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
          property :grounding_level, as: 'groundingLevel'
        end
      end
      
      class DataStoreToolModalityConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :grounding_config, as: 'groundingConfig', class: Google::Apis::CesV1::DataStoreToolGroundingConfig, decorator: Google::Apis::CesV1::DataStoreToolGroundingConfig::Representation
      
          property :modality_type, as: 'modalityType'
          property :rewriter_config, as: 'rewriterConfig', class: Google::Apis::CesV1::DataStoreToolRewriterConfig, decorator: Google::Apis::CesV1::DataStoreToolRewriterConfig::Representation
      
          property :summarization_config, as: 'summarizationConfig', class: Google::Apis::CesV1::DataStoreToolSummarizationConfig, decorator: Google::Apis::CesV1::DataStoreToolSummarizationConfig::Representation
      
        end
      end
      
      class DataStoreToolRewriterConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
          property :model_settings, as: 'modelSettings', class: Google::Apis::CesV1::ModelSettings, decorator: Google::Apis::CesV1::ModelSettings::Representation
      
          property :prompt, as: 'prompt'
        end
      end
      
      class DataStoreToolSummarizationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
          property :model_settings, as: 'modelSettings', class: Google::Apis::CesV1::ModelSettings, decorator: Google::Apis::CesV1::ModelSettings::Representation
      
          property :prompt, as: 'prompt'
        end
      end
      
      class Deployment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_version, as: 'appVersion'
          property :channel_profile, as: 'channelProfile', class: Google::Apis::CesV1::ChannelProfile, decorator: Google::Apis::CesV1::ChannelProfile::Representation
      
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EndSession
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :metadata, as: 'metadata'
        end
      end
      
      class EndUserAuthConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :oauth2_auth_code_config, as: 'oauth2AuthCodeConfig', class: Google::Apis::CesV1::EndUserAuthConfigOauth2AuthCodeConfig, decorator: Google::Apis::CesV1::EndUserAuthConfigOauth2AuthCodeConfig::Representation
      
          property :oauth2_jwt_bearer_config, as: 'oauth2JwtBearerConfig', class: Google::Apis::CesV1::EndUserAuthConfigOauth2JwtBearerConfig, decorator: Google::Apis::CesV1::EndUserAuthConfigOauth2JwtBearerConfig::Representation
      
        end
      end
      
      class EndUserAuthConfigOauth2AuthCodeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :oauth_token, as: 'oauthToken'
        end
      end
      
      class EndUserAuthConfigOauth2JwtBearerConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_key, as: 'clientKey'
          property :issuer, as: 'issuer'
          property :subject, as: 'subject'
        end
      end
      
      class EvaluationMetricsThresholds
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :golden_evaluation_metrics_thresholds, as: 'goldenEvaluationMetricsThresholds', class: Google::Apis::CesV1::EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds, decorator: Google::Apis::CesV1::EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds::Representation
      
          property :golden_hallucination_metric_behavior, as: 'goldenHallucinationMetricBehavior'
          property :hallucination_metric_behavior, as: 'hallucinationMetricBehavior'
          property :scenario_hallucination_metric_behavior, as: 'scenarioHallucinationMetricBehavior'
        end
      end
      
      class EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expectation_level_metrics_thresholds, as: 'expectationLevelMetricsThresholds', class: Google::Apis::CesV1::EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds, decorator: Google::Apis::CesV1::EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds::Representation
      
          property :turn_level_metrics_thresholds, as: 'turnLevelMetricsThresholds', class: Google::Apis::CesV1::EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds, decorator: Google::Apis::CesV1::EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds::Representation
      
        end
      end
      
      class EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tool_invocation_parameter_correctness_threshold, as: 'toolInvocationParameterCorrectnessThreshold'
        end
      end
      
      class EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :overall_tool_invocation_correctness_threshold, as: 'overallToolInvocationCorrectnessThreshold'
          property :semantic_similarity_channel, as: 'semanticSimilarityChannel'
          property :semantic_similarity_success_threshold, as: 'semanticSimilaritySuccessThreshold'
        end
      end
      
      class Event
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event, as: 'event'
        end
      end
      
      class Example
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :entry_agent, as: 'entryAgent'
          property :etag, as: 'etag'
          property :invalid, as: 'invalid'
          collection :messages, as: 'messages', class: Google::Apis::CesV1::Message, decorator: Google::Apis::CesV1::Message::Representation
      
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ExecuteToolRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :args, as: 'args'
          property :tool, as: 'tool'
          property :toolset_tool, as: 'toolsetTool', class: Google::Apis::CesV1::ToolsetTool, decorator: Google::Apis::CesV1::ToolsetTool::Representation
      
        end
      end
      
      class ExecuteToolResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :response, as: 'response'
          property :tool, as: 'tool'
          property :toolset_tool, as: 'toolsetTool', class: Google::Apis::CesV1::ToolsetTool, decorator: Google::Apis::CesV1::ToolsetTool::Representation
      
        end
      end
      
      class ExportAppRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :export_format, as: 'exportFormat'
          property :gcs_uri, as: 'gcsUri'
        end
      end
      
      class ExportAppResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_content, :base64 => true, as: 'appContent'
          property :app_uri, as: 'appUri'
        end
      end
      
      class ExpressionCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expression, as: 'expression'
        end
      end
      
      class FileSearchTool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :corpus_type, as: 'corpusType'
          property :description, as: 'description'
          property :file_corpus, as: 'fileCorpus'
          property :name, as: 'name'
        end
      end
      
      class GenerateChatTokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployment, as: 'deployment'
          property :recaptcha_token, as: 'recaptchaToken'
        end
      end
      
      class GenerateChatTokenResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chat_token, as: 'chatToken'
          property :expire_time, as: 'expireTime'
        end
      end
      
      class GoogleSearchSuggestions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :htmls, as: 'htmls'
          collection :web_search_queries, as: 'webSearchQueries', class: Google::Apis::CesV1::WebSearchQuery, decorator: Google::Apis::CesV1::WebSearchQuery::Representation
      
        end
      end
      
      class GoogleSearchTool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :context_urls, as: 'contextUrls'
          property :description, as: 'description'
          collection :exclude_domains, as: 'excludeDomains'
          property :name, as: 'name'
          collection :preferred_domains, as: 'preferredDomains'
          property :prompt_config, as: 'promptConfig', class: Google::Apis::CesV1::GoogleSearchToolPromptConfig, decorator: Google::Apis::CesV1::GoogleSearchToolPromptConfig::Representation
      
        end
      end
      
      class GoogleSearchToolPromptConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text_prompt, as: 'textPrompt'
          property :voice_prompt, as: 'voicePrompt'
        end
      end
      
      class Guardrail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action', class: Google::Apis::CesV1::TriggerAction, decorator: Google::Apis::CesV1::TriggerAction::Representation
      
          property :code_callback, as: 'codeCallback', class: Google::Apis::CesV1::GuardrailCodeCallback, decorator: Google::Apis::CesV1::GuardrailCodeCallback::Representation
      
          property :content_filter, as: 'contentFilter', class: Google::Apis::CesV1::GuardrailContentFilter, decorator: Google::Apis::CesV1::GuardrailContentFilter::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :enabled, as: 'enabled'
          property :etag, as: 'etag'
          property :llm_policy, as: 'llmPolicy', class: Google::Apis::CesV1::GuardrailLlmPolicy, decorator: Google::Apis::CesV1::GuardrailLlmPolicy::Representation
      
          property :llm_prompt_security, as: 'llmPromptSecurity', class: Google::Apis::CesV1::GuardrailLlmPromptSecurity, decorator: Google::Apis::CesV1::GuardrailLlmPromptSecurity::Representation
      
          property :model_safety, as: 'modelSafety', class: Google::Apis::CesV1::GuardrailModelSafety, decorator: Google::Apis::CesV1::GuardrailModelSafety::Representation
      
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GuardrailCodeCallback
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :after_agent_callback, as: 'afterAgentCallback', class: Google::Apis::CesV1::Callback, decorator: Google::Apis::CesV1::Callback::Representation
      
          property :after_model_callback, as: 'afterModelCallback', class: Google::Apis::CesV1::Callback, decorator: Google::Apis::CesV1::Callback::Representation
      
          property :before_agent_callback, as: 'beforeAgentCallback', class: Google::Apis::CesV1::Callback, decorator: Google::Apis::CesV1::Callback::Representation
      
          property :before_model_callback, as: 'beforeModelCallback', class: Google::Apis::CesV1::Callback, decorator: Google::Apis::CesV1::Callback::Representation
      
        end
      end
      
      class GuardrailContentFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :banned_contents, as: 'bannedContents'
          collection :banned_contents_in_agent_response, as: 'bannedContentsInAgentResponse'
          collection :banned_contents_in_user_input, as: 'bannedContentsInUserInput'
          property :disregard_diacritics, as: 'disregardDiacritics'
          property :match_type, as: 'matchType'
        end
      end
      
      class GuardrailLlmPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_short_utterance, as: 'allowShortUtterance'
          property :fail_open, as: 'failOpen'
          property :max_conversation_messages, as: 'maxConversationMessages'
          property :model_settings, as: 'modelSettings', class: Google::Apis::CesV1::ModelSettings, decorator: Google::Apis::CesV1::ModelSettings::Representation
      
          property :policy_scope, as: 'policyScope'
          property :prompt, as: 'prompt'
        end
      end
      
      class GuardrailLlmPromptSecurity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_policy, as: 'customPolicy', class: Google::Apis::CesV1::GuardrailLlmPolicy, decorator: Google::Apis::CesV1::GuardrailLlmPolicy::Representation
      
          property :default_settings, as: 'defaultSettings', class: Google::Apis::CesV1::GuardrailLlmPromptSecurityDefaultSecuritySettings, decorator: Google::Apis::CesV1::GuardrailLlmPromptSecurityDefaultSecuritySettings::Representation
      
          property :fail_open, as: 'failOpen'
        end
      end
      
      class GuardrailLlmPromptSecurityDefaultSecuritySettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_prompt_template, as: 'defaultPromptTemplate'
        end
      end
      
      class GuardrailModelSafety
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :safety_settings, as: 'safetySettings', class: Google::Apis::CesV1::GuardrailModelSafetySafetySetting, decorator: Google::Apis::CesV1::GuardrailModelSafetySafetySetting::Representation
      
        end
      end
      
      class GuardrailModelSafetySafetySetting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category, as: 'category'
          property :threshold, as: 'threshold'
        end
      end
      
      class Image
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data, :base64 => true, as: 'data'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class ImportAppRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_content, :base64 => true, as: 'appContent'
          property :app_id, as: 'appId'
          property :display_name, as: 'displayName'
          property :gcs_uri, as: 'gcsUri'
          property :ignore_app_lock, as: 'ignoreAppLock'
          property :import_options, as: 'importOptions', class: Google::Apis::CesV1::ImportAppRequestImportOptions, decorator: Google::Apis::CesV1::ImportAppRequestImportOptions::Representation
      
        end
      end
      
      class ImportAppRequestImportOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conflict_resolution_strategy, as: 'conflictResolutionStrategy'
        end
      end
      
      class ImportAppResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          collection :warnings, as: 'warnings'
        end
      end
      
      class InputAudioConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_encoding, as: 'audioEncoding'
          property :noise_suppression_level, as: 'noiseSuppressionLevel'
          property :sample_rate_hertz, as: 'sampleRateHertz'
        end
      end
      
      class LanguageSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_language_code, as: 'defaultLanguageCode'
          property :enable_multilingual_support, as: 'enableMultilingualSupport'
          property :fallback_action, as: 'fallbackAction'
          collection :supported_language_codes, as: 'supportedLanguageCodes'
        end
      end
      
      class ListAgentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :agents, as: 'agents', class: Google::Apis::CesV1::Agent, decorator: Google::Apis::CesV1::Agent::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListAppVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :app_versions, as: 'appVersions', class: Google::Apis::CesV1::AppVersion, decorator: Google::Apis::CesV1::AppVersion::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListAppsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :apps, as: 'apps', class: Google::Apis::CesV1::App, decorator: Google::Apis::CesV1::App::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListChangelogsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :changelogs, as: 'changelogs', class: Google::Apis::CesV1::Changelog, decorator: Google::Apis::CesV1::Changelog::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListConversationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conversations, as: 'conversations', class: Google::Apis::CesV1::Conversation, decorator: Google::Apis::CesV1::Conversation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListDeploymentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :deployments, as: 'deployments', class: Google::Apis::CesV1::Deployment, decorator: Google::Apis::CesV1::Deployment::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListExamplesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :examples, as: 'examples', class: Google::Apis::CesV1::Example, decorator: Google::Apis::CesV1::Example::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListGuardrailsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :guardrails, as: 'guardrails', class: Google::Apis::CesV1::Guardrail, decorator: Google::Apis::CesV1::Guardrail::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::CesV1::Location, decorator: Google::Apis::CesV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::CesV1::Operation, decorator: Google::Apis::CesV1::Operation::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListToolsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :tools, as: 'tools', class: Google::Apis::CesV1::Tool, decorator: Google::Apis::CesV1::Tool::Representation
      
        end
      end
      
      class ListToolsetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :toolsets, as: 'toolsets', class: Google::Apis::CesV1::Toolset, decorator: Google::Apis::CesV1::Toolset::Representation
      
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :location_id, as: 'locationId'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
        end
      end
      
      class LoggingSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_recording_config, as: 'audioRecordingConfig', class: Google::Apis::CesV1::AudioRecordingConfig, decorator: Google::Apis::CesV1::AudioRecordingConfig::Representation
      
          property :bigquery_export_settings, as: 'bigqueryExportSettings', class: Google::Apis::CesV1::BigQueryExportSettings, decorator: Google::Apis::CesV1::BigQueryExportSettings::Representation
      
          property :cloud_logging_settings, as: 'cloudLoggingSettings', class: Google::Apis::CesV1::CloudLoggingSettings, decorator: Google::Apis::CesV1::CloudLoggingSettings::Representation
      
          property :conversation_logging_settings, as: 'conversationLoggingSettings', class: Google::Apis::CesV1::ConversationLoggingSettings, decorator: Google::Apis::CesV1::ConversationLoggingSettings::Representation
      
          property :evaluation_audio_recording_config, as: 'evaluationAudioRecordingConfig', class: Google::Apis::CesV1::AudioRecordingConfig, decorator: Google::Apis::CesV1::AudioRecordingConfig::Representation
      
          property :metric_analysis_settings, as: 'metricAnalysisSettings', class: Google::Apis::CesV1::MetricAnalysisSettings, decorator: Google::Apis::CesV1::MetricAnalysisSettings::Representation
      
          property :redaction_config, as: 'redactionConfig', class: Google::Apis::CesV1::RedactionConfig, decorator: Google::Apis::CesV1::RedactionConfig::Representation
      
        end
      end
      
      class McpTool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_authentication, as: 'apiAuthentication', class: Google::Apis::CesV1::ApiAuthentication, decorator: Google::Apis::CesV1::ApiAuthentication::Representation
      
          property :description, as: 'description'
          property :input_schema, as: 'inputSchema', class: Google::Apis::CesV1::Schema, decorator: Google::Apis::CesV1::Schema::Representation
      
          property :name, as: 'name'
          property :output_schema, as: 'outputSchema', class: Google::Apis::CesV1::Schema, decorator: Google::Apis::CesV1::Schema::Representation
      
          property :server_address, as: 'serverAddress'
          property :service_directory_config, as: 'serviceDirectoryConfig', class: Google::Apis::CesV1::ServiceDirectoryConfig, decorator: Google::Apis::CesV1::ServiceDirectoryConfig::Representation
      
          property :tls_config, as: 'tlsConfig', class: Google::Apis::CesV1::TlsConfig, decorator: Google::Apis::CesV1::TlsConfig::Representation
      
        end
      end
      
      class McpToolset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_authentication, as: 'apiAuthentication', class: Google::Apis::CesV1::ApiAuthentication, decorator: Google::Apis::CesV1::ApiAuthentication::Representation
      
          property :server_address, as: 'serverAddress'
          property :service_directory_config, as: 'serviceDirectoryConfig', class: Google::Apis::CesV1::ServiceDirectoryConfig, decorator: Google::Apis::CesV1::ServiceDirectoryConfig::Representation
      
          property :tls_config, as: 'tlsConfig', class: Google::Apis::CesV1::TlsConfig, decorator: Google::Apis::CesV1::TlsConfig::Representation
      
        end
      end
      
      class Message
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :chunks, as: 'chunks', class: Google::Apis::CesV1::Chunk, decorator: Google::Apis::CesV1::Chunk::Representation
      
          property :event_time, as: 'eventTime'
          property :role, as: 'role'
        end
      end
      
      class MetricAnalysisSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :llm_metrics_opted_out, as: 'llmMetricsOptedOut'
        end
      end
      
      class ModelSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model, as: 'model'
          property :temperature, as: 'temperature'
        end
      end
      
      class OAuthConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_id, as: 'clientId'
          property :client_secret_version, as: 'clientSecretVersion'
          property :oauth_grant_type, as: 'oauthGrantType'
          collection :scopes, as: 'scopes'
          property :token_endpoint, as: 'tokenEndpoint'
        end
      end
      
      class Omnichannel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          property :integration_config, as: 'integrationConfig', class: Google::Apis::CesV1::OmnichannelIntegrationConfig, decorator: Google::Apis::CesV1::OmnichannelIntegrationConfig::Representation
      
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class OmnichannelIntegrationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :channel_configs, as: 'channelConfigs', class: Google::Apis::CesV1::OmnichannelIntegrationConfigChannelConfig, decorator: Google::Apis::CesV1::OmnichannelIntegrationConfigChannelConfig::Representation
      
          hash :routing_configs, as: 'routingConfigs', class: Google::Apis::CesV1::OmnichannelIntegrationConfigRoutingConfig, decorator: Google::Apis::CesV1::OmnichannelIntegrationConfigRoutingConfig::Representation
      
          hash :subscriber_configs, as: 'subscriberConfigs', class: Google::Apis::CesV1::OmnichannelIntegrationConfigSubscriberConfig, decorator: Google::Apis::CesV1::OmnichannelIntegrationConfigSubscriberConfig::Representation
      
        end
      end
      
      class OmnichannelIntegrationConfigCesAppConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app, as: 'app'
        end
      end
      
      class OmnichannelIntegrationConfigChannelConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :whatsapp_config, as: 'whatsappConfig', class: Google::Apis::CesV1::OmnichannelIntegrationConfigWhatsappConfig, decorator: Google::Apis::CesV1::OmnichannelIntegrationConfigWhatsappConfig::Representation
      
        end
      end
      
      class OmnichannelIntegrationConfigRoutingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :subscriber_key, as: 'subscriberKey'
        end
      end
      
      class OmnichannelIntegrationConfigSubscriberConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ces_app_config, as: 'cesAppConfig', class: Google::Apis::CesV1::OmnichannelIntegrationConfigCesAppConfig, decorator: Google::Apis::CesV1::OmnichannelIntegrationConfigCesAppConfig::Representation
      
        end
      end
      
      class OmnichannelIntegrationConfigWhatsappConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :meta_business_portfolio_id, as: 'metaBusinessPortfolioId'
          property :phone_number, as: 'phoneNumber'
          property :phone_number_id, as: 'phoneNumberId'
          property :webhook_verify_token, as: 'webhookVerifyToken'
          property :whatsapp_business_account_id, as: 'whatsappBusinessAccountId'
          property :whatsapp_business_token, as: 'whatsappBusinessToken'
        end
      end
      
      class OmnichannelOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
        end
      end
      
      class OpenApiTool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_authentication, as: 'apiAuthentication', class: Google::Apis::CesV1::ApiAuthentication, decorator: Google::Apis::CesV1::ApiAuthentication::Representation
      
          property :description, as: 'description'
          property :ignore_unknown_fields, as: 'ignoreUnknownFields'
          property :name, as: 'name'
          property :open_api_schema, as: 'openApiSchema'
          property :service_directory_config, as: 'serviceDirectoryConfig', class: Google::Apis::CesV1::ServiceDirectoryConfig, decorator: Google::Apis::CesV1::ServiceDirectoryConfig::Representation
      
          property :tls_config, as: 'tlsConfig', class: Google::Apis::CesV1::TlsConfig, decorator: Google::Apis::CesV1::TlsConfig::Representation
      
          property :url, as: 'url'
        end
      end
      
      class OpenApiToolset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_authentication, as: 'apiAuthentication', class: Google::Apis::CesV1::ApiAuthentication, decorator: Google::Apis::CesV1::ApiAuthentication::Representation
      
          property :ignore_unknown_fields, as: 'ignoreUnknownFields'
          property :open_api_schema, as: 'openApiSchema'
          property :service_directory_config, as: 'serviceDirectoryConfig', class: Google::Apis::CesV1::ServiceDirectoryConfig, decorator: Google::Apis::CesV1::ServiceDirectoryConfig::Representation
      
          property :tls_config, as: 'tlsConfig', class: Google::Apis::CesV1::TlsConfig, decorator: Google::Apis::CesV1::TlsConfig::Representation
      
          property :url, as: 'url'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::CesV1::Status, decorator: Google::Apis::CesV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
        end
      end
      
      class OutputAudioConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_encoding, as: 'audioEncoding'
          property :sample_rate_hertz, as: 'sampleRateHertz'
        end
      end
      
      class PythonCodeCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :python_code, as: 'pythonCode'
        end
      end
      
      class PythonFunction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :name, as: 'name'
          property :python_code, as: 'pythonCode'
        end
      end
      
      class RedactionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deidentify_template, as: 'deidentifyTemplate'
          property :enable_redaction, as: 'enableRedaction'
          property :inspect_template, as: 'inspectTemplate'
        end
      end
      
      class RestoreAppVersionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RetrieveToolSchemaRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tool, as: 'tool'
          property :toolset_tool, as: 'toolsetTool', class: Google::Apis::CesV1::ToolsetTool, decorator: Google::Apis::CesV1::ToolsetTool::Representation
      
        end
      end
      
      class RetrieveToolSchemaResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_schema, as: 'inputSchema', class: Google::Apis::CesV1::Schema, decorator: Google::Apis::CesV1::Schema::Representation
      
          property :output_schema, as: 'outputSchema', class: Google::Apis::CesV1::Schema, decorator: Google::Apis::CesV1::Schema::Representation
      
          property :tool, as: 'tool'
          property :toolset_tool, as: 'toolsetTool', class: Google::Apis::CesV1::ToolsetTool, decorator: Google::Apis::CesV1::ToolsetTool::Representation
      
        end
      end
      
      class RetrieveToolsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :tool_ids, as: 'toolIds'
        end
      end
      
      class RetrieveToolsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :tools, as: 'tools', class: Google::Apis::CesV1::Tool, decorator: Google::Apis::CesV1::Tool::Representation
      
        end
      end
      
      class RunSessionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::CesV1::SessionConfig, decorator: Google::Apis::CesV1::SessionConfig::Representation
      
          collection :inputs, as: 'inputs', class: Google::Apis::CesV1::SessionInput, decorator: Google::Apis::CesV1::SessionInput::Representation
      
        end
      end
      
      class RunSessionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :outputs, as: 'outputs', class: Google::Apis::CesV1::SessionOutput, decorator: Google::Apis::CesV1::SessionOutput::Representation
      
        end
      end
      
      class Schema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :additional_properties, as: 'additionalProperties', class: Google::Apis::CesV1::Schema, decorator: Google::Apis::CesV1::Schema::Representation
      
          collection :any_of, as: 'anyOf', class: Google::Apis::CesV1::Schema, decorator: Google::Apis::CesV1::Schema::Representation
      
          property :default, as: 'default'
          hash :defs, as: 'defs', class: Google::Apis::CesV1::Schema, decorator: Google::Apis::CesV1::Schema::Representation
      
          property :description, as: 'description'
          collection :enum, as: 'enum'
          property :items, as: 'items', class: Google::Apis::CesV1::Schema, decorator: Google::Apis::CesV1::Schema::Representation
      
          property :max_items, :numeric_string => true, as: 'maxItems'
          property :maximum, as: 'maximum'
          property :min_items, :numeric_string => true, as: 'minItems'
          property :minimum, as: 'minimum'
          property :nullable, as: 'nullable'
          collection :prefix_items, as: 'prefixItems', class: Google::Apis::CesV1::Schema, decorator: Google::Apis::CesV1::Schema::Representation
      
          hash :properties, as: 'properties', class: Google::Apis::CesV1::Schema, decorator: Google::Apis::CesV1::Schema::Representation
      
          property :ref, as: 'ref'
          collection :required, as: 'required'
          property :title, as: 'title'
          property :type, as: 'type'
          property :unique_items, as: 'uniqueItems'
        end
      end
      
      class ServiceAccountAuthConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :scopes, as: 'scopes'
          property :service_account, as: 'serviceAccount'
        end
      end
      
      class ServiceAgentIdTokenAuthConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ServiceDirectoryConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service, as: 'service'
        end
      end
      
      class SessionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployment, as: 'deployment'
          property :entry_agent, as: 'entryAgent'
          collection :historical_contexts, as: 'historicalContexts', class: Google::Apis::CesV1::Message, decorator: Google::Apis::CesV1::Message::Representation
      
          property :input_audio_config, as: 'inputAudioConfig', class: Google::Apis::CesV1::InputAudioConfig, decorator: Google::Apis::CesV1::InputAudioConfig::Representation
      
          property :output_audio_config, as: 'outputAudioConfig', class: Google::Apis::CesV1::OutputAudioConfig, decorator: Google::Apis::CesV1::OutputAudioConfig::Representation
      
          property :remote_dialogflow_query_parameters, as: 'remoteDialogflowQueryParameters', class: Google::Apis::CesV1::SessionConfigRemoteDialogflowQueryParameters, decorator: Google::Apis::CesV1::SessionConfigRemoteDialogflowQueryParameters::Representation
      
          property :time_zone, as: 'timeZone'
        end
      end
      
      class SessionConfigRemoteDialogflowQueryParameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :end_user_metadata, as: 'endUserMetadata'
          hash :payload, as: 'payload'
          hash :webhook_headers, as: 'webhookHeaders'
        end
      end
      
      class SessionInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio, :base64 => true, as: 'audio'
          property :blob, as: 'blob', class: Google::Apis::CesV1::Blob, decorator: Google::Apis::CesV1::Blob::Representation
      
          property :dtmf, as: 'dtmf'
          property :event, as: 'event', class: Google::Apis::CesV1::Event, decorator: Google::Apis::CesV1::Event::Representation
      
          property :image, as: 'image', class: Google::Apis::CesV1::Image, decorator: Google::Apis::CesV1::Image::Representation
      
          property :text, as: 'text'
          property :tool_responses, as: 'toolResponses', class: Google::Apis::CesV1::ToolResponses, decorator: Google::Apis::CesV1::ToolResponses::Representation
      
          hash :variables, as: 'variables'
          property :will_continue, as: 'willContinue'
        end
      end
      
      class SessionOutput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio, :base64 => true, as: 'audio'
          property :citations, as: 'citations', class: Google::Apis::CesV1::Citations, decorator: Google::Apis::CesV1::Citations::Representation
      
          property :diagnostic_info, as: 'diagnosticInfo', class: Google::Apis::CesV1::SessionOutputDiagnosticInfo, decorator: Google::Apis::CesV1::SessionOutputDiagnosticInfo::Representation
      
          property :end_session, as: 'endSession', class: Google::Apis::CesV1::EndSession, decorator: Google::Apis::CesV1::EndSession::Representation
      
          property :google_search_suggestions, as: 'googleSearchSuggestions', class: Google::Apis::CesV1::GoogleSearchSuggestions, decorator: Google::Apis::CesV1::GoogleSearchSuggestions::Representation
      
          hash :payload, as: 'payload'
          property :text, as: 'text'
          property :tool_calls, as: 'toolCalls', class: Google::Apis::CesV1::ToolCalls, decorator: Google::Apis::CesV1::ToolCalls::Representation
      
          property :turn_completed, as: 'turnCompleted'
          property :turn_index, as: 'turnIndex'
        end
      end
      
      class SessionOutputDiagnosticInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :messages, as: 'messages', class: Google::Apis::CesV1::Message, decorator: Google::Apis::CesV1::Message::Representation
      
          property :root_span, as: 'rootSpan', class: Google::Apis::CesV1::Span, decorator: Google::Apis::CesV1::Span::Representation
      
        end
      end
      
      class Span
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes'
          collection :child_spans, as: 'childSpans', class: Google::Apis::CesV1::Span, decorator: Google::Apis::CesV1::Span::Representation
      
          property :duration, as: 'duration'
          property :end_time, as: 'endTime'
          property :name, as: 'name'
          property :start_time, as: 'startTime'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class SynthesizeSpeechConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :speaking_rate, as: 'speakingRate'
          property :voice, as: 'voice'
        end
      end
      
      class SystemTool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :name, as: 'name'
        end
      end
      
      class TimeZoneSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :time_zone, as: 'timeZone'
        end
      end
      
      class TlsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ca_certs, as: 'caCerts', class: Google::Apis::CesV1::TlsConfigCaCert, decorator: Google::Apis::CesV1::TlsConfigCaCert::Representation
      
        end
      end
      
      class TlsConfigCaCert
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cert, :base64 => true, as: 'cert'
          property :display_name, as: 'displayName'
        end
      end
      
      class Tool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_function, as: 'clientFunction', class: Google::Apis::CesV1::ClientFunction, decorator: Google::Apis::CesV1::ClientFunction::Representation
      
          property :connector_tool, as: 'connectorTool', class: Google::Apis::CesV1::ConnectorTool, decorator: Google::Apis::CesV1::ConnectorTool::Representation
      
          property :create_time, as: 'createTime'
          property :data_store_tool, as: 'dataStoreTool', class: Google::Apis::CesV1::DataStoreTool, decorator: Google::Apis::CesV1::DataStoreTool::Representation
      
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          property :execution_type, as: 'executionType'
          property :file_search_tool, as: 'fileSearchTool', class: Google::Apis::CesV1::FileSearchTool, decorator: Google::Apis::CesV1::FileSearchTool::Representation
      
          property :generated_summary, as: 'generatedSummary'
          property :google_search_tool, as: 'googleSearchTool', class: Google::Apis::CesV1::GoogleSearchTool, decorator: Google::Apis::CesV1::GoogleSearchTool::Representation
      
          property :mcp_tool, as: 'mcpTool', class: Google::Apis::CesV1::McpTool, decorator: Google::Apis::CesV1::McpTool::Representation
      
          property :name, as: 'name'
          property :open_api_tool, as: 'openApiTool', class: Google::Apis::CesV1::OpenApiTool, decorator: Google::Apis::CesV1::OpenApiTool::Representation
      
          property :python_function, as: 'pythonFunction', class: Google::Apis::CesV1::PythonFunction, decorator: Google::Apis::CesV1::PythonFunction::Representation
      
          property :system_tool, as: 'systemTool', class: Google::Apis::CesV1::SystemTool, decorator: Google::Apis::CesV1::SystemTool::Representation
      
          property :tool_fake_config, as: 'toolFakeConfig', class: Google::Apis::CesV1::ToolFakeConfig, decorator: Google::Apis::CesV1::ToolFakeConfig::Representation
      
          property :update_time, as: 'updateTime'
          property :widget_tool, as: 'widgetTool', class: Google::Apis::CesV1::WidgetTool, decorator: Google::Apis::CesV1::WidgetTool::Representation
      
        end
      end
      
      class ToolCall
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :args, as: 'args'
          property :display_name, as: 'displayName'
          property :id, as: 'id'
          property :tool, as: 'tool'
          property :toolset_tool, as: 'toolsetTool', class: Google::Apis::CesV1::ToolsetTool, decorator: Google::Apis::CesV1::ToolsetTool::Representation
      
        end
      end
      
      class ToolCalls
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :tool_calls, as: 'toolCalls', class: Google::Apis::CesV1::ToolCall, decorator: Google::Apis::CesV1::ToolCall::Representation
      
        end
      end
      
      class ToolFakeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code_block, as: 'codeBlock', class: Google::Apis::CesV1::CodeBlock, decorator: Google::Apis::CesV1::CodeBlock::Representation
      
          property :enable_fake_mode, as: 'enableFakeMode'
        end
      end
      
      class ToolResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :id, as: 'id'
          hash :response, as: 'response'
          property :tool, as: 'tool'
          property :toolset_tool, as: 'toolsetTool', class: Google::Apis::CesV1::ToolsetTool, decorator: Google::Apis::CesV1::ToolsetTool::Representation
      
        end
      end
      
      class ToolResponses
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :tool_responses, as: 'toolResponses', class: Google::Apis::CesV1::ToolResponse, decorator: Google::Apis::CesV1::ToolResponse::Representation
      
        end
      end
      
      class Toolset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connector_toolset, as: 'connectorToolset', class: Google::Apis::CesV1::ConnectorToolset, decorator: Google::Apis::CesV1::ConnectorToolset::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          property :execution_type, as: 'executionType'
          property :mcp_toolset, as: 'mcpToolset', class: Google::Apis::CesV1::McpToolset, decorator: Google::Apis::CesV1::McpToolset::Representation
      
          property :name, as: 'name'
          property :open_api_toolset, as: 'openApiToolset', class: Google::Apis::CesV1::OpenApiToolset, decorator: Google::Apis::CesV1::OpenApiToolset::Representation
      
          property :tool_fake_config, as: 'toolFakeConfig', class: Google::Apis::CesV1::ToolFakeConfig, decorator: Google::Apis::CesV1::ToolFakeConfig::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class ToolsetTool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tool_id, as: 'toolId'
          property :toolset, as: 'toolset'
        end
      end
      
      class TransferRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :child_agent, as: 'childAgent'
          property :deterministic_transfer, as: 'deterministicTransfer', class: Google::Apis::CesV1::TransferRuleDeterministicTransfer, decorator: Google::Apis::CesV1::TransferRuleDeterministicTransfer::Representation
      
          property :direction, as: 'direction'
          property :disable_planner_transfer, as: 'disablePlannerTransfer', class: Google::Apis::CesV1::TransferRuleDisablePlannerTransfer, decorator: Google::Apis::CesV1::TransferRuleDisablePlannerTransfer::Representation
      
        end
      end
      
      class TransferRuleDeterministicTransfer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expression_condition, as: 'expressionCondition', class: Google::Apis::CesV1::ExpressionCondition, decorator: Google::Apis::CesV1::ExpressionCondition::Representation
      
          property :python_code_condition, as: 'pythonCodeCondition', class: Google::Apis::CesV1::PythonCodeCondition, decorator: Google::Apis::CesV1::PythonCodeCondition::Representation
      
        end
      end
      
      class TransferRuleDisablePlannerTransfer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expression_condition, as: 'expressionCondition', class: Google::Apis::CesV1::ExpressionCondition, decorator: Google::Apis::CesV1::ExpressionCondition::Representation
      
        end
      end
      
      class TriggerAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generative_answer, as: 'generativeAnswer', class: Google::Apis::CesV1::TriggerActionGenerativeAnswer, decorator: Google::Apis::CesV1::TriggerActionGenerativeAnswer::Representation
      
          property :respond_immediately, as: 'respondImmediately', class: Google::Apis::CesV1::TriggerActionRespondImmediately, decorator: Google::Apis::CesV1::TriggerActionRespondImmediately::Representation
      
          property :transfer_agent, as: 'transferAgent', class: Google::Apis::CesV1::TriggerActionTransferAgent, decorator: Google::Apis::CesV1::TriggerActionTransferAgent::Representation
      
        end
      end
      
      class TriggerActionGenerativeAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :prompt, as: 'prompt'
        end
      end
      
      class TriggerActionRespondImmediately
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :responses, as: 'responses', class: Google::Apis::CesV1::TriggerActionResponse, decorator: Google::Apis::CesV1::TriggerActionResponse::Representation
      
        end
      end
      
      class TriggerActionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
          property :text, as: 'text'
        end
      end
      
      class TriggerActionTransferAgent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent, as: 'agent'
        end
      end
      
      class WebSearchQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query, as: 'query'
          property :uri, as: 'uri'
        end
      end
      
      class WidgetTool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :name, as: 'name'
          property :parameters, as: 'parameters', class: Google::Apis::CesV1::Schema, decorator: Google::Apis::CesV1::Schema::Representation
      
          property :widget_type, as: 'widgetType'
        end
      end
    end
  end
end
