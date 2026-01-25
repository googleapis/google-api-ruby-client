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
    module DialogflowV2
      
      # 
      class GoogleCloudDialogflowCxV3AdvancedSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `audioExportGcsDestination`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3GcsDestination]
        attr_accessor :audio_export_gcs_destination
      
        # 
        # Corresponds to the JSON property `dtmfSettings`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings]
        attr_accessor :dtmf_settings
      
        # 
        # Corresponds to the JSON property `loggingSettings`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings]
        attr_accessor :logging_settings
      
        # 
        # Corresponds to the JSON property `speechSettings`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3AdvancedSettingsSpeechSettings]
        attr_accessor :speech_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_export_gcs_destination = args[:audio_export_gcs_destination] if args.key?(:audio_export_gcs_destination)
          @dtmf_settings = args[:dtmf_settings] if args.key?(:dtmf_settings)
          @logging_settings = args[:logging_settings] if args.key?(:logging_settings)
          @speech_settings = args[:speech_settings] if args.key?(:speech_settings)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # 
        # Corresponds to the JSON property `endpointingTimeoutDuration`
        # @return [String]
        attr_accessor :endpointing_timeout_duration
      
        # 
        # Corresponds to the JSON property `finishDigit`
        # @return [String]
        attr_accessor :finish_digit
      
        # 
        # Corresponds to the JSON property `interdigitTimeoutDuration`
        # @return [String]
        attr_accessor :interdigit_timeout_duration
      
        # 
        # Corresponds to the JSON property `maxDigits`
        # @return [Fixnum]
        attr_accessor :max_digits
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
          @endpointing_timeout_duration = args[:endpointing_timeout_duration] if args.key?(:endpointing_timeout_duration)
          @finish_digit = args[:finish_digit] if args.key?(:finish_digit)
          @interdigit_timeout_duration = args[:interdigit_timeout_duration] if args.key?(:interdigit_timeout_duration)
          @max_digits = args[:max_digits] if args.key?(:max_digits)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `enableConsentBasedRedaction`
        # @return [Boolean]
        attr_accessor :enable_consent_based_redaction
        alias_method :enable_consent_based_redaction?, :enable_consent_based_redaction
      
        # 
        # Corresponds to the JSON property `enableInteractionLogging`
        # @return [Boolean]
        attr_accessor :enable_interaction_logging
        alias_method :enable_interaction_logging?, :enable_interaction_logging
      
        # 
        # Corresponds to the JSON property `enableStackdriverLogging`
        # @return [Boolean]
        attr_accessor :enable_stackdriver_logging
        alias_method :enable_stackdriver_logging?, :enable_stackdriver_logging
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_consent_based_redaction = args[:enable_consent_based_redaction] if args.key?(:enable_consent_based_redaction)
          @enable_interaction_logging = args[:enable_interaction_logging] if args.key?(:enable_interaction_logging)
          @enable_stackdriver_logging = args[:enable_stackdriver_logging] if args.key?(:enable_stackdriver_logging)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3AdvancedSettingsSpeechSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `endpointerSensitivity`
        # @return [Fixnum]
        attr_accessor :endpointer_sensitivity
      
        # 
        # Corresponds to the JSON property `models`
        # @return [Hash<String,String>]
        attr_accessor :models
      
        # 
        # Corresponds to the JSON property `noSpeechTimeout`
        # @return [String]
        attr_accessor :no_speech_timeout
      
        # 
        # Corresponds to the JSON property `useTimeoutBasedEndpointing`
        # @return [Boolean]
        attr_accessor :use_timeout_based_endpointing
        alias_method :use_timeout_based_endpointing?, :use_timeout_based_endpointing
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @endpointer_sensitivity = args[:endpointer_sensitivity] if args.key?(:endpointer_sensitivity)
          @models = args[:models] if args.key?(:models)
          @no_speech_timeout = args[:no_speech_timeout] if args.key?(:no_speech_timeout)
          @use_timeout_based_endpointing = args[:use_timeout_based_endpointing] if args.key?(:use_timeout_based_endpointing)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3AudioInput
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `audio`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :audio
      
        # 
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3InputAudioConfig]
        attr_accessor :config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio = args[:audio] if args.key?(:audio)
          @config = args[:config] if args.key?(:config)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3BargeInConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `noBargeInDuration`
        # @return [String]
        attr_accessor :no_barge_in_duration
      
        # 
        # Corresponds to the JSON property `totalDuration`
        # @return [String]
        attr_accessor :total_duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @no_barge_in_duration = args[:no_barge_in_duration] if args.key?(:no_barge_in_duration)
          @total_duration = args[:total_duration] if args.key?(:total_duration)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3BatchRunTestCasesMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3TestError>]
        attr_accessor :errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] if args.key?(:errors)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3BatchRunTestCasesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3TestCaseResult>]
        attr_accessor :results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @results = args[:results] if args.key?(:results)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ContinuousTestResult
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `result`
        # @return [String]
        attr_accessor :result
      
        # 
        # Corresponds to the JSON property `runTime`
        # @return [String]
        attr_accessor :run_time
      
        # 
        # Corresponds to the JSON property `testCaseResults`
        # @return [Array<String>]
        attr_accessor :test_case_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @result = args[:result] if args.key?(:result)
          @run_time = args[:run_time] if args.key?(:run_time)
          @test_case_results = args[:test_case_results] if args.key?(:test_case_results)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ConversationSignals
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `turnSignals`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3TurnSignals]
        attr_accessor :turn_signals
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @turn_signals = args[:turn_signals] if args.key?(:turn_signals)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ConversationTurn
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `userInput`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ConversationTurnUserInput]
        attr_accessor :user_input
      
        # 
        # Corresponds to the JSON property `virtualAgentOutput`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput]
        attr_accessor :virtual_agent_output
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_input = args[:user_input] if args.key?(:user_input)
          @virtual_agent_output = args[:virtual_agent_output] if args.key?(:virtual_agent_output)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ConversationTurnUserInput
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `enableSentimentAnalysis`
        # @return [Boolean]
        attr_accessor :enable_sentiment_analysis
        alias_method :enable_sentiment_analysis?, :enable_sentiment_analysis
      
        # 
        # Corresponds to the JSON property `injectedParameters`
        # @return [Hash<String,Object>]
        attr_accessor :injected_parameters
      
        # 
        # Corresponds to the JSON property `input`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3QueryInput]
        attr_accessor :input
      
        # 
        # Corresponds to the JSON property `isWebhookEnabled`
        # @return [Boolean]
        attr_accessor :is_webhook_enabled
        alias_method :is_webhook_enabled?, :is_webhook_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_sentiment_analysis = args[:enable_sentiment_analysis] if args.key?(:enable_sentiment_analysis)
          @injected_parameters = args[:injected_parameters] if args.key?(:injected_parameters)
          @input = args[:input] if args.key?(:input)
          @is_webhook_enabled = args[:is_webhook_enabled] if args.key?(:is_webhook_enabled)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `currentPage`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3Page]
        attr_accessor :current_page
      
        # 
        # Corresponds to the JSON property `diagnosticInfo`
        # @return [Hash<String,Object>]
        attr_accessor :diagnostic_info
      
        # 
        # Corresponds to the JSON property `differences`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3TestRunDifference>]
        attr_accessor :differences
      
        # 
        # Corresponds to the JSON property `sessionParameters`
        # @return [Hash<String,Object>]
        attr_accessor :session_parameters
      
        # 
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DialogflowV2::GoogleRpcStatus]
        attr_accessor :status
      
        # 
        # Corresponds to the JSON property `textResponses`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ResponseMessageText>]
        attr_accessor :text_responses
      
        # 
        # Corresponds to the JSON property `triggeredIntent`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3Intent]
        attr_accessor :triggered_intent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_page = args[:current_page] if args.key?(:current_page)
          @diagnostic_info = args[:diagnostic_info] if args.key?(:diagnostic_info)
          @differences = args[:differences] if args.key?(:differences)
          @session_parameters = args[:session_parameters] if args.key?(:session_parameters)
          @status = args[:status] if args.key?(:status)
          @text_responses = args[:text_responses] if args.key?(:text_responses)
          @triggered_intent = args[:triggered_intent] if args.key?(:triggered_intent)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3CreateVersionOperationMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3DataStoreConnection
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dataStore`
        # @return [String]
        attr_accessor :data_store
      
        # 
        # Corresponds to the JSON property `dataStoreType`
        # @return [String]
        attr_accessor :data_store_type
      
        # 
        # Corresponds to the JSON property `documentProcessingMode`
        # @return [String]
        attr_accessor :document_processing_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_store = args[:data_store] if args.key?(:data_store)
          @data_store_type = args[:data_store_type] if args.key?(:data_store_type)
          @document_processing_mode = args[:document_processing_mode] if args.key?(:document_processing_mode)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3DeployFlowMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `testErrors`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3TestError>]
        attr_accessor :test_errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @test_errors = args[:test_errors] if args.key?(:test_errors)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3DeployFlowResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `deployment`
        # @return [String]
        attr_accessor :deployment
      
        # 
        # Corresponds to the JSON property `environment`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3Environment]
        attr_accessor :environment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deployment = args[:deployment] if args.key?(:deployment)
          @environment = args[:environment] if args.key?(:environment)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3DtmfInput
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `digits`
        # @return [String]
        attr_accessor :digits
      
        # 
        # Corresponds to the JSON property `finishDigit`
        # @return [String]
        attr_accessor :finish_digit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @digits = args[:digits] if args.key?(:digits)
          @finish_digit = args[:finish_digit] if args.key?(:finish_digit)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3Environment
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `testCasesConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig]
        attr_accessor :test_cases_config
      
        # 
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # 
        # Corresponds to the JSON property `versionConfigs`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3EnvironmentVersionConfig>]
        attr_accessor :version_configs
      
        # 
        # Corresponds to the JSON property `webhookConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3EnvironmentWebhookConfig]
        attr_accessor :webhook_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @test_cases_config = args[:test_cases_config] if args.key?(:test_cases_config)
          @update_time = args[:update_time] if args.key?(:update_time)
          @version_configs = args[:version_configs] if args.key?(:version_configs)
          @webhook_config = args[:webhook_config] if args.key?(:webhook_config)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `enableContinuousRun`
        # @return [Boolean]
        attr_accessor :enable_continuous_run
        alias_method :enable_continuous_run?, :enable_continuous_run
      
        # 
        # Corresponds to the JSON property `enablePredeploymentRun`
        # @return [Boolean]
        attr_accessor :enable_predeployment_run
        alias_method :enable_predeployment_run?, :enable_predeployment_run
      
        # 
        # Corresponds to the JSON property `testCases`
        # @return [Array<String>]
        attr_accessor :test_cases
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_continuous_run = args[:enable_continuous_run] if args.key?(:enable_continuous_run)
          @enable_predeployment_run = args[:enable_predeployment_run] if args.key?(:enable_predeployment_run)
          @test_cases = args[:test_cases] if args.key?(:test_cases)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3EnvironmentVersionConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3EnvironmentWebhookConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `webhookOverrides`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3Webhook>]
        attr_accessor :webhook_overrides
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @webhook_overrides = args[:webhook_overrides] if args.key?(:webhook_overrides)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3EventHandler
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `event`
        # @return [String]
        attr_accessor :event
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `targetFlow`
        # @return [String]
        attr_accessor :target_flow
      
        # 
        # Corresponds to the JSON property `targetPage`
        # @return [String]
        attr_accessor :target_page
      
        # 
        # Corresponds to the JSON property `targetPlaybook`
        # @return [String]
        attr_accessor :target_playbook
      
        # 
        # Corresponds to the JSON property `triggerFulfillment`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3Fulfillment]
        attr_accessor :trigger_fulfillment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event = args[:event] if args.key?(:event)
          @name = args[:name] if args.key?(:name)
          @target_flow = args[:target_flow] if args.key?(:target_flow)
          @target_page = args[:target_page] if args.key?(:target_page)
          @target_playbook = args[:target_playbook] if args.key?(:target_playbook)
          @trigger_fulfillment = args[:trigger_fulfillment] if args.key?(:trigger_fulfillment)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3EventInput
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `event`
        # @return [String]
        attr_accessor :event
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event = args[:event] if args.key?(:event)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ExportAgentResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `agentContent`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :agent_content
      
        # 
        # Corresponds to the JSON property `agentUri`
        # @return [String]
        attr_accessor :agent_uri
      
        # 
        # Corresponds to the JSON property `commitSha`
        # @return [String]
        attr_accessor :commit_sha
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_content = args[:agent_content] if args.key?(:agent_content)
          @agent_uri = args[:agent_uri] if args.key?(:agent_uri)
          @commit_sha = args[:commit_sha] if args.key?(:commit_sha)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ExportEntityTypesMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ExportEntityTypesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `entityTypesContent`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3InlineDestination]
        attr_accessor :entity_types_content
      
        # 
        # Corresponds to the JSON property `entityTypesUri`
        # @return [String]
        attr_accessor :entity_types_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity_types_content = args[:entity_types_content] if args.key?(:entity_types_content)
          @entity_types_uri = args[:entity_types_uri] if args.key?(:entity_types_uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ExportFlowResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `flowContent`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :flow_content
      
        # 
        # Corresponds to the JSON property `flowUri`
        # @return [String]
        attr_accessor :flow_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @flow_content = args[:flow_content] if args.key?(:flow_content)
          @flow_uri = args[:flow_uri] if args.key?(:flow_uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ExportIntentsMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ExportIntentsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `intentsContent`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3InlineDestination]
        attr_accessor :intents_content
      
        # 
        # Corresponds to the JSON property `intentsUri`
        # @return [String]
        attr_accessor :intents_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @intents_content = args[:intents_content] if args.key?(:intents_content)
          @intents_uri = args[:intents_uri] if args.key?(:intents_uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ExportTestCasesMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ExportTestCasesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `content`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :content
      
        # 
        # Corresponds to the JSON property `gcsUri`
        # @return [String]
        attr_accessor :gcs_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @gcs_uri = args[:gcs_uri] if args.key?(:gcs_uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3Form
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3FormParameter>]
        attr_accessor :parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parameters = args[:parameters] if args.key?(:parameters)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3FormParameter
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `advancedSettings`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3AdvancedSettings]
        attr_accessor :advanced_settings
      
        # 
        # Corresponds to the JSON property `defaultValue`
        # @return [Object]
        attr_accessor :default_value
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `entityType`
        # @return [String]
        attr_accessor :entity_type
      
        # 
        # Corresponds to the JSON property `fillBehavior`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3FormParameterFillBehavior]
        attr_accessor :fill_behavior
      
        # 
        # Corresponds to the JSON property `isList`
        # @return [Boolean]
        attr_accessor :is_list
        alias_method :is_list?, :is_list
      
        # 
        # Corresponds to the JSON property `redact`
        # @return [Boolean]
        attr_accessor :redact
        alias_method :redact?, :redact
      
        # 
        # Corresponds to the JSON property `required`
        # @return [Boolean]
        attr_accessor :required
        alias_method :required?, :required
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advanced_settings = args[:advanced_settings] if args.key?(:advanced_settings)
          @default_value = args[:default_value] if args.key?(:default_value)
          @display_name = args[:display_name] if args.key?(:display_name)
          @entity_type = args[:entity_type] if args.key?(:entity_type)
          @fill_behavior = args[:fill_behavior] if args.key?(:fill_behavior)
          @is_list = args[:is_list] if args.key?(:is_list)
          @redact = args[:redact] if args.key?(:redact)
          @required = args[:required] if args.key?(:required)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3FormParameterFillBehavior
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `initialPromptFulfillment`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3Fulfillment]
        attr_accessor :initial_prompt_fulfillment
      
        # 
        # Corresponds to the JSON property `repromptEventHandlers`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3EventHandler>]
        attr_accessor :reprompt_event_handlers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @initial_prompt_fulfillment = args[:initial_prompt_fulfillment] if args.key?(:initial_prompt_fulfillment)
          @reprompt_event_handlers = args[:reprompt_event_handlers] if args.key?(:reprompt_event_handlers)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3Fulfillment
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `advancedSettings`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3AdvancedSettings]
        attr_accessor :advanced_settings
      
        # 
        # Corresponds to the JSON property `conditionalCases`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3FulfillmentConditionalCases>]
        attr_accessor :conditional_cases
      
        # 
        # Corresponds to the JSON property `enableGenerativeFallback`
        # @return [Boolean]
        attr_accessor :enable_generative_fallback
        alias_method :enable_generative_fallback?, :enable_generative_fallback
      
        # 
        # Corresponds to the JSON property `generators`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3FulfillmentGeneratorSettings>]
        attr_accessor :generators
      
        # 
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ResponseMessage>]
        attr_accessor :messages
      
        # 
        # Corresponds to the JSON property `returnPartialResponses`
        # @return [Boolean]
        attr_accessor :return_partial_responses
        alias_method :return_partial_responses?, :return_partial_responses
      
        # 
        # Corresponds to the JSON property `setParameterActions`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3FulfillmentSetParameterAction>]
        attr_accessor :set_parameter_actions
      
        # 
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        # 
        # Corresponds to the JSON property `webhook`
        # @return [String]
        attr_accessor :webhook
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advanced_settings = args[:advanced_settings] if args.key?(:advanced_settings)
          @conditional_cases = args[:conditional_cases] if args.key?(:conditional_cases)
          @enable_generative_fallback = args[:enable_generative_fallback] if args.key?(:enable_generative_fallback)
          @generators = args[:generators] if args.key?(:generators)
          @messages = args[:messages] if args.key?(:messages)
          @return_partial_responses = args[:return_partial_responses] if args.key?(:return_partial_responses)
          @set_parameter_actions = args[:set_parameter_actions] if args.key?(:set_parameter_actions)
          @tag = args[:tag] if args.key?(:tag)
          @webhook = args[:webhook] if args.key?(:webhook)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3FulfillmentConditionalCases
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `cases`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase>]
        attr_accessor :cases
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cases = args[:cases] if args.key?(:cases)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `caseContent`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent>]
        attr_accessor :case_content
      
        # 
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @case_content = args[:case_content] if args.key?(:case_content)
          @condition = args[:condition] if args.key?(:condition)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `additionalCases`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3FulfillmentConditionalCases]
        attr_accessor :additional_cases
      
        # 
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ResponseMessage]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_cases = args[:additional_cases] if args.key?(:additional_cases)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3FulfillmentGeneratorSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `generator`
        # @return [String]
        attr_accessor :generator
      
        # 
        # Corresponds to the JSON property `inputParameters`
        # @return [Hash<String,String>]
        attr_accessor :input_parameters
      
        # 
        # Corresponds to the JSON property `outputParameter`
        # @return [String]
        attr_accessor :output_parameter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @generator = args[:generator] if args.key?(:generator)
          @input_parameters = args[:input_parameters] if args.key?(:input_parameters)
          @output_parameter = args[:output_parameter] if args.key?(:output_parameter)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3FulfillmentSetParameterAction
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `parameter`
        # @return [String]
        attr_accessor :parameter
      
        # 
        # Corresponds to the JSON property `value`
        # @return [Object]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parameter = args[:parameter] if args.key?(:parameter)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3GcsDestination
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ImportEntityTypesMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ImportEntityTypesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conflictingResources`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ImportEntityTypesResponseConflictingResources]
        attr_accessor :conflicting_resources
      
        # 
        # Corresponds to the JSON property `entityTypes`
        # @return [Array<String>]
        attr_accessor :entity_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conflicting_resources = args[:conflicting_resources] if args.key?(:conflicting_resources)
          @entity_types = args[:entity_types] if args.key?(:entity_types)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ImportEntityTypesResponseConflictingResources
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `entityDisplayNames`
        # @return [Array<String>]
        attr_accessor :entity_display_names
      
        # 
        # Corresponds to the JSON property `entityTypeDisplayNames`
        # @return [Array<String>]
        attr_accessor :entity_type_display_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity_display_names = args[:entity_display_names] if args.key?(:entity_display_names)
          @entity_type_display_names = args[:entity_type_display_names] if args.key?(:entity_type_display_names)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ImportFlowResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `flow`
        # @return [String]
        attr_accessor :flow
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @flow = args[:flow] if args.key?(:flow)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ImportIntentsMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ImportIntentsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conflictingResources`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ImportIntentsResponseConflictingResources]
        attr_accessor :conflicting_resources
      
        # 
        # Corresponds to the JSON property `intents`
        # @return [Array<String>]
        attr_accessor :intents
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conflicting_resources = args[:conflicting_resources] if args.key?(:conflicting_resources)
          @intents = args[:intents] if args.key?(:intents)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ImportIntentsResponseConflictingResources
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `entityDisplayNames`
        # @return [Array<String>]
        attr_accessor :entity_display_names
      
        # 
        # Corresponds to the JSON property `intentDisplayNames`
        # @return [Array<String>]
        attr_accessor :intent_display_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity_display_names = args[:entity_display_names] if args.key?(:entity_display_names)
          @intent_display_names = args[:intent_display_names] if args.key?(:intent_display_names)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ImportTestCasesMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3TestCaseError>]
        attr_accessor :errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] if args.key?(:errors)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ImportTestCasesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `names`
        # @return [Array<String>]
        attr_accessor :names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @names = args[:names] if args.key?(:names)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3InlineDestination
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `content`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :content
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3InputAudioConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `audioEncoding`
        # @return [String]
        attr_accessor :audio_encoding
      
        # 
        # Corresponds to the JSON property `bargeInConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3BargeInConfig]
        attr_accessor :barge_in_config
      
        # 
        # Corresponds to the JSON property `enableWordInfo`
        # @return [Boolean]
        attr_accessor :enable_word_info
        alias_method :enable_word_info?, :enable_word_info
      
        # 
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        # 
        # Corresponds to the JSON property `modelVariant`
        # @return [String]
        attr_accessor :model_variant
      
        # 
        # Corresponds to the JSON property `optOutConformerModelMigration`
        # @return [Boolean]
        attr_accessor :opt_out_conformer_model_migration
        alias_method :opt_out_conformer_model_migration?, :opt_out_conformer_model_migration
      
        # 
        # Corresponds to the JSON property `phraseHints`
        # @return [Array<String>]
        attr_accessor :phrase_hints
      
        # 
        # Corresponds to the JSON property `sampleRateHertz`
        # @return [Fixnum]
        attr_accessor :sample_rate_hertz
      
        # 
        # Corresponds to the JSON property `singleUtterance`
        # @return [Boolean]
        attr_accessor :single_utterance
        alias_method :single_utterance?, :single_utterance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_encoding = args[:audio_encoding] if args.key?(:audio_encoding)
          @barge_in_config = args[:barge_in_config] if args.key?(:barge_in_config)
          @enable_word_info = args[:enable_word_info] if args.key?(:enable_word_info)
          @model = args[:model] if args.key?(:model)
          @model_variant = args[:model_variant] if args.key?(:model_variant)
          @opt_out_conformer_model_migration = args[:opt_out_conformer_model_migration] if args.key?(:opt_out_conformer_model_migration)
          @phrase_hints = args[:phrase_hints] if args.key?(:phrase_hints)
          @sample_rate_hertz = args[:sample_rate_hertz] if args.key?(:sample_rate_hertz)
          @single_utterance = args[:single_utterance] if args.key?(:single_utterance)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3Intent
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `isFallback`
        # @return [Boolean]
        attr_accessor :is_fallback
        alias_method :is_fallback?, :is_fallback
      
        # 
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3IntentParameter>]
        attr_accessor :parameters
      
        # 
        # Corresponds to the JSON property `priority`
        # @return [Fixnum]
        attr_accessor :priority
      
        # 
        # Corresponds to the JSON property `trainingPhrases`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3IntentTrainingPhrase>]
        attr_accessor :training_phrases
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @is_fallback = args[:is_fallback] if args.key?(:is_fallback)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @parameters = args[:parameters] if args.key?(:parameters)
          @priority = args[:priority] if args.key?(:priority)
          @training_phrases = args[:training_phrases] if args.key?(:training_phrases)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3IntentInput
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `intent`
        # @return [String]
        attr_accessor :intent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @intent = args[:intent] if args.key?(:intent)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3IntentParameter
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `entityType`
        # @return [String]
        attr_accessor :entity_type
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `isList`
        # @return [Boolean]
        attr_accessor :is_list
        alias_method :is_list?, :is_list
      
        # 
        # Corresponds to the JSON property `redact`
        # @return [Boolean]
        attr_accessor :redact
        alias_method :redact?, :redact
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity_type = args[:entity_type] if args.key?(:entity_type)
          @id = args[:id] if args.key?(:id)
          @is_list = args[:is_list] if args.key?(:is_list)
          @redact = args[:redact] if args.key?(:redact)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3IntentTrainingPhrase
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `parts`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3IntentTrainingPhrasePart>]
        attr_accessor :parts
      
        # 
        # Corresponds to the JSON property `repeatCount`
        # @return [Fixnum]
        attr_accessor :repeat_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @parts = args[:parts] if args.key?(:parts)
          @repeat_count = args[:repeat_count] if args.key?(:repeat_count)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3IntentTrainingPhrasePart
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `parameterId`
        # @return [String]
        attr_accessor :parameter_id
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parameter_id = args[:parameter_id] if args.key?(:parameter_id)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3KnowledgeConnectorSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dataStoreConnections`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3DataStoreConnection>]
        attr_accessor :data_store_connections
      
        # 
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # 
        # Corresponds to the JSON property `targetFlow`
        # @return [String]
        attr_accessor :target_flow
      
        # 
        # Corresponds to the JSON property `targetPage`
        # @return [String]
        attr_accessor :target_page
      
        # 
        # Corresponds to the JSON property `triggerFulfillment`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3Fulfillment]
        attr_accessor :trigger_fulfillment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_store_connections = args[:data_store_connections] if args.key?(:data_store_connections)
          @enabled = args[:enabled] if args.key?(:enabled)
          @target_flow = args[:target_flow] if args.key?(:target_flow)
          @target_page = args[:target_page] if args.key?(:target_page)
          @trigger_fulfillment = args[:trigger_fulfillment] if args.key?(:trigger_fulfillment)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3LanguageInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `confidenceScore`
        # @return [Float]
        attr_accessor :confidence_score
      
        # 
        # Corresponds to the JSON property `inputLanguageCode`
        # @return [String]
        attr_accessor :input_language_code
      
        # 
        # Corresponds to the JSON property `resolvedLanguageCode`
        # @return [String]
        attr_accessor :resolved_language_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence_score = args[:confidence_score] if args.key?(:confidence_score)
          @input_language_code = args[:input_language_code] if args.key?(:input_language_code)
          @resolved_language_code = args[:resolved_language_code] if args.key?(:resolved_language_code)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3Page
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `advancedSettings`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3AdvancedSettings]
        attr_accessor :advanced_settings
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `entryFulfillment`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3Fulfillment]
        attr_accessor :entry_fulfillment
      
        # 
        # Corresponds to the JSON property `eventHandlers`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3EventHandler>]
        attr_accessor :event_handlers
      
        # 
        # Corresponds to the JSON property `form`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3Form]
        attr_accessor :form
      
        # 
        # Corresponds to the JSON property `knowledgeConnectorSettings`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3KnowledgeConnectorSettings]
        attr_accessor :knowledge_connector_settings
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `transitionRouteGroups`
        # @return [Array<String>]
        attr_accessor :transition_route_groups
      
        # 
        # Corresponds to the JSON property `transitionRoutes`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3TransitionRoute>]
        attr_accessor :transition_routes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advanced_settings = args[:advanced_settings] if args.key?(:advanced_settings)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @entry_fulfillment = args[:entry_fulfillment] if args.key?(:entry_fulfillment)
          @event_handlers = args[:event_handlers] if args.key?(:event_handlers)
          @form = args[:form] if args.key?(:form)
          @knowledge_connector_settings = args[:knowledge_connector_settings] if args.key?(:knowledge_connector_settings)
          @name = args[:name] if args.key?(:name)
          @transition_route_groups = args[:transition_route_groups] if args.key?(:transition_route_groups)
          @transition_routes = args[:transition_routes] if args.key?(:transition_routes)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3PageInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `currentPage`
        # @return [String]
        attr_accessor :current_page
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `formInfo`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3PageInfoFormInfo]
        attr_accessor :form_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_page = args[:current_page] if args.key?(:current_page)
          @display_name = args[:display_name] if args.key?(:display_name)
          @form_info = args[:form_info] if args.key?(:form_info)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3PageInfoFormInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `parameterInfo`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo>]
        attr_accessor :parameter_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parameter_info = args[:parameter_info] if args.key?(:parameter_info)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `justCollected`
        # @return [Boolean]
        attr_accessor :just_collected
        alias_method :just_collected?, :just_collected
      
        # 
        # Corresponds to the JSON property `required`
        # @return [Boolean]
        attr_accessor :required
        alias_method :required?, :required
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # 
        # Corresponds to the JSON property `value`
        # @return [Object]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @just_collected = args[:just_collected] if args.key?(:just_collected)
          @required = args[:required] if args.key?(:required)
          @state = args[:state] if args.key?(:state)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3QueryInput
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `audio`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3AudioInput]
        attr_accessor :audio
      
        # 
        # Corresponds to the JSON property `dtmf`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3DtmfInput]
        attr_accessor :dtmf
      
        # 
        # Corresponds to the JSON property `event`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3EventInput]
        attr_accessor :event
      
        # 
        # Corresponds to the JSON property `intent`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3IntentInput]
        attr_accessor :intent
      
        # 
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # 
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3TextInput]
        attr_accessor :text
      
        # 
        # Corresponds to the JSON property `toolCallResult`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ToolCallResult]
        attr_accessor :tool_call_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio = args[:audio] if args.key?(:audio)
          @dtmf = args[:dtmf] if args.key?(:dtmf)
          @event = args[:event] if args.key?(:event)
          @intent = args[:intent] if args.key?(:intent)
          @language_code = args[:language_code] if args.key?(:language_code)
          @text = args[:text] if args.key?(:text)
          @tool_call_result = args[:tool_call_result] if args.key?(:tool_call_result)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ResponseMessage
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `channel`
        # @return [String]
        attr_accessor :channel
      
        # 
        # Corresponds to the JSON property `conversationSuccess`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess]
        attr_accessor :conversation_success
      
        # 
        # Corresponds to the JSON property `endInteraction`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ResponseMessageEndInteraction]
        attr_accessor :end_interaction
      
        # 
        # Corresponds to the JSON property `knowledgeInfoCard`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ResponseMessageKnowledgeInfoCard]
        attr_accessor :knowledge_info_card
      
        # 
        # Corresponds to the JSON property `liveAgentHandoff`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff]
        attr_accessor :live_agent_handoff
      
        # 
        # Corresponds to the JSON property `mixedAudio`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ResponseMessageMixedAudio]
        attr_accessor :mixed_audio
      
        # 
        # Corresponds to the JSON property `outputAudioText`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText]
        attr_accessor :output_audio_text
      
        # 
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # 
        # Corresponds to the JSON property `playAudio`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ResponseMessagePlayAudio]
        attr_accessor :play_audio
      
        # 
        # Corresponds to the JSON property `responseType`
        # @return [String]
        attr_accessor :response_type
      
        # 
        # Corresponds to the JSON property `telephonyTransferCall`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall]
        attr_accessor :telephony_transfer_call
      
        # 
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ResponseMessageText]
        attr_accessor :text
      
        # 
        # Corresponds to the JSON property `toolCall`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ToolCall]
        attr_accessor :tool_call
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel = args[:channel] if args.key?(:channel)
          @conversation_success = args[:conversation_success] if args.key?(:conversation_success)
          @end_interaction = args[:end_interaction] if args.key?(:end_interaction)
          @knowledge_info_card = args[:knowledge_info_card] if args.key?(:knowledge_info_card)
          @live_agent_handoff = args[:live_agent_handoff] if args.key?(:live_agent_handoff)
          @mixed_audio = args[:mixed_audio] if args.key?(:mixed_audio)
          @output_audio_text = args[:output_audio_text] if args.key?(:output_audio_text)
          @payload = args[:payload] if args.key?(:payload)
          @play_audio = args[:play_audio] if args.key?(:play_audio)
          @response_type = args[:response_type] if args.key?(:response_type)
          @telephony_transfer_call = args[:telephony_transfer_call] if args.key?(:telephony_transfer_call)
          @text = args[:text] if args.key?(:text)
          @tool_call = args[:tool_call] if args.key?(:tool_call)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata = args[:metadata] if args.key?(:metadata)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ResponseMessageEndInteraction
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ResponseMessageKnowledgeInfoCard
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata = args[:metadata] if args.key?(:metadata)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ResponseMessageMixedAudio
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `segments`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment>]
        attr_accessor :segments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @segments = args[:segments] if args.key?(:segments)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `allowPlaybackInterruption`
        # @return [Boolean]
        attr_accessor :allow_playback_interruption
        alias_method :allow_playback_interruption?, :allow_playback_interruption
      
        # 
        # Corresponds to the JSON property `audio`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :audio
      
        # 
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_playback_interruption = args[:allow_playback_interruption] if args.key?(:allow_playback_interruption)
          @audio = args[:audio] if args.key?(:audio)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `allowPlaybackInterruption`
        # @return [Boolean]
        attr_accessor :allow_playback_interruption
        alias_method :allow_playback_interruption?, :allow_playback_interruption
      
        # 
        # Corresponds to the JSON property `ssml`
        # @return [String]
        attr_accessor :ssml
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_playback_interruption = args[:allow_playback_interruption] if args.key?(:allow_playback_interruption)
          @ssml = args[:ssml] if args.key?(:ssml)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ResponseMessagePlayAudio
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `allowPlaybackInterruption`
        # @return [Boolean]
        attr_accessor :allow_playback_interruption
        alias_method :allow_playback_interruption?, :allow_playback_interruption
      
        # 
        # Corresponds to the JSON property `audioUri`
        # @return [String]
        attr_accessor :audio_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_playback_interruption = args[:allow_playback_interruption] if args.key?(:allow_playback_interruption)
          @audio_uri = args[:audio_uri] if args.key?(:audio_uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ResponseMessageText
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `allowPlaybackInterruption`
        # @return [Boolean]
        attr_accessor :allow_playback_interruption
        alias_method :allow_playback_interruption?, :allow_playback_interruption
      
        # 
        # Corresponds to the JSON property `text`
        # @return [Array<String>]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_playback_interruption = args[:allow_playback_interruption] if args.key?(:allow_playback_interruption)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3RunContinuousTestMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3TestError>]
        attr_accessor :errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] if args.key?(:errors)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3RunContinuousTestResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `continuousTestResult`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ContinuousTestResult]
        attr_accessor :continuous_test_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @continuous_test_result = args[:continuous_test_result] if args.key?(:continuous_test_result)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3RunTestCaseMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3RunTestCaseResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `result`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3TestCaseResult]
        attr_accessor :result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @result = args[:result] if args.key?(:result)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3SessionInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Object>]
        attr_accessor :parameters
      
        # 
        # Corresponds to the JSON property `session`
        # @return [String]
        attr_accessor :session
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parameters = args[:parameters] if args.key?(:parameters)
          @session = args[:session] if args.key?(:session)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3TestCase
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `lastTestResult`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3TestCaseResult]
        attr_accessor :last_test_result
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `notes`
        # @return [String]
        attr_accessor :notes
      
        # 
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        # 
        # Corresponds to the JSON property `testCaseConversationTurns`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ConversationTurn>]
        attr_accessor :test_case_conversation_turns
      
        # 
        # Corresponds to the JSON property `testConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3TestConfig]
        attr_accessor :test_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @last_test_result = args[:last_test_result] if args.key?(:last_test_result)
          @name = args[:name] if args.key?(:name)
          @notes = args[:notes] if args.key?(:notes)
          @tags = args[:tags] if args.key?(:tags)
          @test_case_conversation_turns = args[:test_case_conversation_turns] if args.key?(:test_case_conversation_turns)
          @test_config = args[:test_config] if args.key?(:test_config)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3TestCaseError
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DialogflowV2::GoogleRpcStatus]
        attr_accessor :status
      
        # 
        # Corresponds to the JSON property `testCase`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3TestCase]
        attr_accessor :test_case
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @status = args[:status] if args.key?(:status)
          @test_case = args[:test_case] if args.key?(:test_case)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3TestCaseResult
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conversationTurns`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ConversationTurn>]
        attr_accessor :conversation_turns
      
        # 
        # Corresponds to the JSON property `environment`
        # @return [String]
        attr_accessor :environment
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `testResult`
        # @return [String]
        attr_accessor :test_result
      
        # 
        # Corresponds to the JSON property `testTime`
        # @return [String]
        attr_accessor :test_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_turns = args[:conversation_turns] if args.key?(:conversation_turns)
          @environment = args[:environment] if args.key?(:environment)
          @name = args[:name] if args.key?(:name)
          @test_result = args[:test_result] if args.key?(:test_result)
          @test_time = args[:test_time] if args.key?(:test_time)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3TestConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `flow`
        # @return [String]
        attr_accessor :flow
      
        # 
        # Corresponds to the JSON property `page`
        # @return [String]
        attr_accessor :page
      
        # 
        # Corresponds to the JSON property `trackingParameters`
        # @return [Array<String>]
        attr_accessor :tracking_parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @flow = args[:flow] if args.key?(:flow)
          @page = args[:page] if args.key?(:page)
          @tracking_parameters = args[:tracking_parameters] if args.key?(:tracking_parameters)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3TestError
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DialogflowV2::GoogleRpcStatus]
        attr_accessor :status
      
        # 
        # Corresponds to the JSON property `testCase`
        # @return [String]
        attr_accessor :test_case
      
        # 
        # Corresponds to the JSON property `testTime`
        # @return [String]
        attr_accessor :test_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @status = args[:status] if args.key?(:status)
          @test_case = args[:test_case] if args.key?(:test_case)
          @test_time = args[:test_time] if args.key?(:test_time)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3TestRunDifference
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3TextInput
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ToolCall
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # 
        # Corresponds to the JSON property `inputParameters`
        # @return [Hash<String,Object>]
        attr_accessor :input_parameters
      
        # 
        # Corresponds to the JSON property `tool`
        # @return [String]
        attr_accessor :tool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @input_parameters = args[:input_parameters] if args.key?(:input_parameters)
          @tool = args[:tool] if args.key?(:tool)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ToolCallResult
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # 
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ToolCallResultError]
        attr_accessor :error
      
        # 
        # Corresponds to the JSON property `outputParameters`
        # @return [Hash<String,Object>]
        attr_accessor :output_parameters
      
        # 
        # Corresponds to the JSON property `tool`
        # @return [String]
        attr_accessor :tool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @error = args[:error] if args.key?(:error)
          @output_parameters = args[:output_parameters] if args.key?(:output_parameters)
          @tool = args[:tool] if args.key?(:tool)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ToolCallResultError
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3TransitionRoute
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `intent`
        # @return [String]
        attr_accessor :intent
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `targetFlow`
        # @return [String]
        attr_accessor :target_flow
      
        # 
        # Corresponds to the JSON property `targetPage`
        # @return [String]
        attr_accessor :target_page
      
        # 
        # Corresponds to the JSON property `triggerFulfillment`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3Fulfillment]
        attr_accessor :trigger_fulfillment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @description = args[:description] if args.key?(:description)
          @intent = args[:intent] if args.key?(:intent)
          @name = args[:name] if args.key?(:name)
          @target_flow = args[:target_flow] if args.key?(:target_flow)
          @target_page = args[:target_page] if args.key?(:target_page)
          @trigger_fulfillment = args[:trigger_fulfillment] if args.key?(:trigger_fulfillment)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3TurnSignals
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `agentEscalated`
        # @return [Boolean]
        attr_accessor :agent_escalated
        alias_method :agent_escalated?, :agent_escalated
      
        # 
        # Corresponds to the JSON property `dtmfUsed`
        # @return [Boolean]
        attr_accessor :dtmf_used
        alias_method :dtmf_used?, :dtmf_used
      
        # 
        # Corresponds to the JSON property `failureReasons`
        # @return [Array<String>]
        attr_accessor :failure_reasons
      
        # 
        # Corresponds to the JSON property `noMatch`
        # @return [Boolean]
        attr_accessor :no_match
        alias_method :no_match?, :no_match
      
        # 
        # Corresponds to the JSON property `noUserInput`
        # @return [Boolean]
        attr_accessor :no_user_input
        alias_method :no_user_input?, :no_user_input
      
        # 
        # Corresponds to the JSON property `reachedEndPage`
        # @return [Boolean]
        attr_accessor :reached_end_page
        alias_method :reached_end_page?, :reached_end_page
      
        # 
        # Corresponds to the JSON property `sentimentMagnitude`
        # @return [Float]
        attr_accessor :sentiment_magnitude
      
        # 
        # Corresponds to the JSON property `sentimentScore`
        # @return [Float]
        attr_accessor :sentiment_score
      
        # 
        # Corresponds to the JSON property `userEscalated`
        # @return [Boolean]
        attr_accessor :user_escalated
        alias_method :user_escalated?, :user_escalated
      
        # 
        # Corresponds to the JSON property `webhookStatuses`
        # @return [Array<String>]
        attr_accessor :webhook_statuses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_escalated = args[:agent_escalated] if args.key?(:agent_escalated)
          @dtmf_used = args[:dtmf_used] if args.key?(:dtmf_used)
          @failure_reasons = args[:failure_reasons] if args.key?(:failure_reasons)
          @no_match = args[:no_match] if args.key?(:no_match)
          @no_user_input = args[:no_user_input] if args.key?(:no_user_input)
          @reached_end_page = args[:reached_end_page] if args.key?(:reached_end_page)
          @sentiment_magnitude = args[:sentiment_magnitude] if args.key?(:sentiment_magnitude)
          @sentiment_score = args[:sentiment_score] if args.key?(:sentiment_score)
          @user_escalated = args[:user_escalated] if args.key?(:user_escalated)
          @webhook_statuses = args[:webhook_statuses] if args.key?(:webhook_statuses)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3Webhook
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `genericWebService`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3WebhookGenericWebService]
        attr_accessor :generic_web_service
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `serviceDirectory`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig]
        attr_accessor :service_directory
      
        # 
        # Corresponds to the JSON property `timeout`
        # @return [String]
        attr_accessor :timeout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disabled = args[:disabled] if args.key?(:disabled)
          @display_name = args[:display_name] if args.key?(:display_name)
          @generic_web_service = args[:generic_web_service] if args.key?(:generic_web_service)
          @name = args[:name] if args.key?(:name)
          @service_directory = args[:service_directory] if args.key?(:service_directory)
          @timeout = args[:timeout] if args.key?(:timeout)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3WebhookGenericWebService
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `allowedCaCerts`
        # @return [Array<String>]
        attr_accessor :allowed_ca_certs
      
        # 
        # Corresponds to the JSON property `httpMethod`
        # @return [String]
        attr_accessor :http_method
      
        # 
        # Corresponds to the JSON property `oauthConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3WebhookGenericWebServiceOAuthConfig]
        attr_accessor :oauth_config
      
        # 
        # Corresponds to the JSON property `parameterMapping`
        # @return [Hash<String,String>]
        attr_accessor :parameter_mapping
      
        # 
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # 
        # Corresponds to the JSON property `requestBody`
        # @return [String]
        attr_accessor :request_body
      
        # 
        # Corresponds to the JSON property `requestHeaders`
        # @return [Hash<String,String>]
        attr_accessor :request_headers
      
        # 
        # Corresponds to the JSON property `secretVersionForUsernamePassword`
        # @return [String]
        attr_accessor :secret_version_for_username_password
      
        # 
        # Corresponds to the JSON property `secretVersionsForRequestHeaders`
        # @return [Hash<String,Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3WebhookGenericWebServiceSecretVersionHeaderValue>]
        attr_accessor :secret_versions_for_request_headers
      
        # 
        # Corresponds to the JSON property `serviceAccountAuthConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3WebhookGenericWebServiceServiceAccountAuthConfig]
        attr_accessor :service_account_auth_config
      
        # 
        # Corresponds to the JSON property `serviceAgentAuth`
        # @return [String]
        attr_accessor :service_agent_auth
      
        # 
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        # 
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        # 
        # Corresponds to the JSON property `webhookType`
        # @return [String]
        attr_accessor :webhook_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_ca_certs = args[:allowed_ca_certs] if args.key?(:allowed_ca_certs)
          @http_method = args[:http_method] if args.key?(:http_method)
          @oauth_config = args[:oauth_config] if args.key?(:oauth_config)
          @parameter_mapping = args[:parameter_mapping] if args.key?(:parameter_mapping)
          @password = args[:password] if args.key?(:password)
          @request_body = args[:request_body] if args.key?(:request_body)
          @request_headers = args[:request_headers] if args.key?(:request_headers)
          @secret_version_for_username_password = args[:secret_version_for_username_password] if args.key?(:secret_version_for_username_password)
          @secret_versions_for_request_headers = args[:secret_versions_for_request_headers] if args.key?(:secret_versions_for_request_headers)
          @service_account_auth_config = args[:service_account_auth_config] if args.key?(:service_account_auth_config)
          @service_agent_auth = args[:service_agent_auth] if args.key?(:service_agent_auth)
          @uri = args[:uri] if args.key?(:uri)
          @username = args[:username] if args.key?(:username)
          @webhook_type = args[:webhook_type] if args.key?(:webhook_type)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3WebhookGenericWebServiceOAuthConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # 
        # Corresponds to the JSON property `clientSecret`
        # @return [String]
        attr_accessor :client_secret
      
        # 
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        # 
        # Corresponds to the JSON property `secretVersionForClientSecret`
        # @return [String]
        attr_accessor :secret_version_for_client_secret
      
        # 
        # Corresponds to the JSON property `tokenEndpoint`
        # @return [String]
        attr_accessor :token_endpoint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_id = args[:client_id] if args.key?(:client_id)
          @client_secret = args[:client_secret] if args.key?(:client_secret)
          @scopes = args[:scopes] if args.key?(:scopes)
          @secret_version_for_client_secret = args[:secret_version_for_client_secret] if args.key?(:secret_version_for_client_secret)
          @token_endpoint = args[:token_endpoint] if args.key?(:token_endpoint)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3WebhookGenericWebServiceSecretVersionHeaderValue
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `secretVersion`
        # @return [String]
        attr_accessor :secret_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @secret_version = args[:secret_version] if args.key?(:secret_version)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3WebhookGenericWebServiceServiceAccountAuthConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service_account = args[:service_account] if args.key?(:service_account)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3WebhookRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `detectIntentResponseId`
        # @return [String]
        attr_accessor :detect_intent_response_id
      
        # 
        # Corresponds to the JSON property `dtmfDigits`
        # @return [String]
        attr_accessor :dtmf_digits
      
        # 
        # Corresponds to the JSON property `fulfillmentInfo`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo]
        attr_accessor :fulfillment_info
      
        # 
        # Corresponds to the JSON property `intentInfo`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3WebhookRequestIntentInfo]
        attr_accessor :intent_info
      
        # 
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # 
        # Corresponds to the JSON property `languageInfo`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3LanguageInfo]
        attr_accessor :language_info
      
        # 
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ResponseMessage>]
        attr_accessor :messages
      
        # 
        # Corresponds to the JSON property `pageInfo`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3PageInfo]
        attr_accessor :page_info
      
        # 
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # 
        # Corresponds to the JSON property `sentimentAnalysisResult`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult]
        attr_accessor :sentiment_analysis_result
      
        # 
        # Corresponds to the JSON property `sessionInfo`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3SessionInfo]
        attr_accessor :session_info
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # 
        # Corresponds to the JSON property `transcript`
        # @return [String]
        attr_accessor :transcript
      
        # 
        # Corresponds to the JSON property `triggerEvent`
        # @return [String]
        attr_accessor :trigger_event
      
        # 
        # Corresponds to the JSON property `triggerIntent`
        # @return [String]
        attr_accessor :trigger_intent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detect_intent_response_id = args[:detect_intent_response_id] if args.key?(:detect_intent_response_id)
          @dtmf_digits = args[:dtmf_digits] if args.key?(:dtmf_digits)
          @fulfillment_info = args[:fulfillment_info] if args.key?(:fulfillment_info)
          @intent_info = args[:intent_info] if args.key?(:intent_info)
          @language_code = args[:language_code] if args.key?(:language_code)
          @language_info = args[:language_info] if args.key?(:language_info)
          @messages = args[:messages] if args.key?(:messages)
          @page_info = args[:page_info] if args.key?(:page_info)
          @payload = args[:payload] if args.key?(:payload)
          @sentiment_analysis_result = args[:sentiment_analysis_result] if args.key?(:sentiment_analysis_result)
          @session_info = args[:session_info] if args.key?(:session_info)
          @text = args[:text] if args.key?(:text)
          @transcript = args[:transcript] if args.key?(:transcript)
          @trigger_event = args[:trigger_event] if args.key?(:trigger_event)
          @trigger_intent = args[:trigger_intent] if args.key?(:trigger_intent)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tag = args[:tag] if args.key?(:tag)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3WebhookRequestIntentInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `lastMatchedIntent`
        # @return [String]
        attr_accessor :last_matched_intent
      
        # 
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue>]
        attr_accessor :parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @display_name = args[:display_name] if args.key?(:display_name)
          @last_matched_intent = args[:last_matched_intent] if args.key?(:last_matched_intent)
          @parameters = args[:parameters] if args.key?(:parameters)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `originalValue`
        # @return [String]
        attr_accessor :original_value
      
        # 
        # Corresponds to the JSON property `resolvedValue`
        # @return [Object]
        attr_accessor :resolved_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @original_value = args[:original_value] if args.key?(:original_value)
          @resolved_value = args[:resolved_value] if args.key?(:resolved_value)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `magnitude`
        # @return [Float]
        attr_accessor :magnitude
      
        # 
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @magnitude = args[:magnitude] if args.key?(:magnitude)
          @score = args[:score] if args.key?(:score)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3WebhookResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `fulfillmentResponse`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse]
        attr_accessor :fulfillment_response
      
        # 
        # Corresponds to the JSON property `pageInfo`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3PageInfo]
        attr_accessor :page_info
      
        # 
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # 
        # Corresponds to the JSON property `sessionInfo`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3SessionInfo]
        attr_accessor :session_info
      
        # 
        # Corresponds to the JSON property `targetFlow`
        # @return [String]
        attr_accessor :target_flow
      
        # 
        # Corresponds to the JSON property `targetPage`
        # @return [String]
        attr_accessor :target_page
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fulfillment_response = args[:fulfillment_response] if args.key?(:fulfillment_response)
          @page_info = args[:page_info] if args.key?(:page_info)
          @payload = args[:payload] if args.key?(:payload)
          @session_info = args[:session_info] if args.key?(:session_info)
          @target_flow = args[:target_flow] if args.key?(:target_flow)
          @target_page = args[:target_page] if args.key?(:target_page)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `mergeBehavior`
        # @return [String]
        attr_accessor :merge_behavior
      
        # 
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ResponseMessage>]
        attr_accessor :messages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @merge_behavior = args[:merge_behavior] if args.key?(:merge_behavior)
          @messages = args[:messages] if args.key?(:messages)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `genericWebService`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3WebhookGenericWebService]
        attr_accessor :generic_web_service
      
        # 
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @generic_web_service = args[:generic_web_service] if args.key?(:generic_web_service)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1AdvancedSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `audioExportGcsDestination`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1GcsDestination]
        attr_accessor :audio_export_gcs_destination
      
        # 
        # Corresponds to the JSON property `dtmfSettings`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1AdvancedSettingsDtmfSettings]
        attr_accessor :dtmf_settings
      
        # 
        # Corresponds to the JSON property `loggingSettings`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettings]
        attr_accessor :logging_settings
      
        # 
        # Corresponds to the JSON property `speechSettings`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings]
        attr_accessor :speech_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_export_gcs_destination = args[:audio_export_gcs_destination] if args.key?(:audio_export_gcs_destination)
          @dtmf_settings = args[:dtmf_settings] if args.key?(:dtmf_settings)
          @logging_settings = args[:logging_settings] if args.key?(:logging_settings)
          @speech_settings = args[:speech_settings] if args.key?(:speech_settings)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1AdvancedSettingsDtmfSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # 
        # Corresponds to the JSON property `endpointingTimeoutDuration`
        # @return [String]
        attr_accessor :endpointing_timeout_duration
      
        # 
        # Corresponds to the JSON property `finishDigit`
        # @return [String]
        attr_accessor :finish_digit
      
        # 
        # Corresponds to the JSON property `interdigitTimeoutDuration`
        # @return [String]
        attr_accessor :interdigit_timeout_duration
      
        # 
        # Corresponds to the JSON property `maxDigits`
        # @return [Fixnum]
        attr_accessor :max_digits
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
          @endpointing_timeout_duration = args[:endpointing_timeout_duration] if args.key?(:endpointing_timeout_duration)
          @finish_digit = args[:finish_digit] if args.key?(:finish_digit)
          @interdigit_timeout_duration = args[:interdigit_timeout_duration] if args.key?(:interdigit_timeout_duration)
          @max_digits = args[:max_digits] if args.key?(:max_digits)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `enableConsentBasedRedaction`
        # @return [Boolean]
        attr_accessor :enable_consent_based_redaction
        alias_method :enable_consent_based_redaction?, :enable_consent_based_redaction
      
        # 
        # Corresponds to the JSON property `enableInteractionLogging`
        # @return [Boolean]
        attr_accessor :enable_interaction_logging
        alias_method :enable_interaction_logging?, :enable_interaction_logging
      
        # 
        # Corresponds to the JSON property `enableStackdriverLogging`
        # @return [Boolean]
        attr_accessor :enable_stackdriver_logging
        alias_method :enable_stackdriver_logging?, :enable_stackdriver_logging
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_consent_based_redaction = args[:enable_consent_based_redaction] if args.key?(:enable_consent_based_redaction)
          @enable_interaction_logging = args[:enable_interaction_logging] if args.key?(:enable_interaction_logging)
          @enable_stackdriver_logging = args[:enable_stackdriver_logging] if args.key?(:enable_stackdriver_logging)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `endpointerSensitivity`
        # @return [Fixnum]
        attr_accessor :endpointer_sensitivity
      
        # 
        # Corresponds to the JSON property `models`
        # @return [Hash<String,String>]
        attr_accessor :models
      
        # 
        # Corresponds to the JSON property `noSpeechTimeout`
        # @return [String]
        attr_accessor :no_speech_timeout
      
        # 
        # Corresponds to the JSON property `useTimeoutBasedEndpointing`
        # @return [Boolean]
        attr_accessor :use_timeout_based_endpointing
        alias_method :use_timeout_based_endpointing?, :use_timeout_based_endpointing
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @endpointer_sensitivity = args[:endpointer_sensitivity] if args.key?(:endpointer_sensitivity)
          @models = args[:models] if args.key?(:models)
          @no_speech_timeout = args[:no_speech_timeout] if args.key?(:no_speech_timeout)
          @use_timeout_based_endpointing = args[:use_timeout_based_endpointing] if args.key?(:use_timeout_based_endpointing)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1AudioInput
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `audio`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :audio
      
        # 
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1InputAudioConfig]
        attr_accessor :config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio = args[:audio] if args.key?(:audio)
          @config = args[:config] if args.key?(:config)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1BargeInConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `noBargeInDuration`
        # @return [String]
        attr_accessor :no_barge_in_duration
      
        # 
        # Corresponds to the JSON property `totalDuration`
        # @return [String]
        attr_accessor :total_duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @no_barge_in_duration = args[:no_barge_in_duration] if args.key?(:no_barge_in_duration)
          @total_duration = args[:total_duration] if args.key?(:total_duration)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1BatchRunTestCasesMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1TestError>]
        attr_accessor :errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] if args.key?(:errors)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1BatchRunTestCasesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1TestCaseResult>]
        attr_accessor :results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @results = args[:results] if args.key?(:results)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1ContinuousTestResult
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `result`
        # @return [String]
        attr_accessor :result
      
        # 
        # Corresponds to the JSON property `runTime`
        # @return [String]
        attr_accessor :run_time
      
        # 
        # Corresponds to the JSON property `testCaseResults`
        # @return [Array<String>]
        attr_accessor :test_case_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @result = args[:result] if args.key?(:result)
          @run_time = args[:run_time] if args.key?(:run_time)
          @test_case_results = args[:test_case_results] if args.key?(:test_case_results)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1ConversationSignals
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `turnSignals`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1TurnSignals]
        attr_accessor :turn_signals
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @turn_signals = args[:turn_signals] if args.key?(:turn_signals)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1ConversationTurn
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `userInput`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput]
        attr_accessor :user_input
      
        # 
        # Corresponds to the JSON property `virtualAgentOutput`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput]
        attr_accessor :virtual_agent_output
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_input = args[:user_input] if args.key?(:user_input)
          @virtual_agent_output = args[:virtual_agent_output] if args.key?(:virtual_agent_output)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `enableSentimentAnalysis`
        # @return [Boolean]
        attr_accessor :enable_sentiment_analysis
        alias_method :enable_sentiment_analysis?, :enable_sentiment_analysis
      
        # 
        # Corresponds to the JSON property `injectedParameters`
        # @return [Hash<String,Object>]
        attr_accessor :injected_parameters
      
        # 
        # Corresponds to the JSON property `input`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1QueryInput]
        attr_accessor :input
      
        # 
        # Corresponds to the JSON property `isWebhookEnabled`
        # @return [Boolean]
        attr_accessor :is_webhook_enabled
        alias_method :is_webhook_enabled?, :is_webhook_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_sentiment_analysis = args[:enable_sentiment_analysis] if args.key?(:enable_sentiment_analysis)
          @injected_parameters = args[:injected_parameters] if args.key?(:injected_parameters)
          @input = args[:input] if args.key?(:input)
          @is_webhook_enabled = args[:is_webhook_enabled] if args.key?(:is_webhook_enabled)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `currentPage`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1Page]
        attr_accessor :current_page
      
        # 
        # Corresponds to the JSON property `diagnosticInfo`
        # @return [Hash<String,Object>]
        attr_accessor :diagnostic_info
      
        # 
        # Corresponds to the JSON property `differences`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1TestRunDifference>]
        attr_accessor :differences
      
        # 
        # Corresponds to the JSON property `sessionParameters`
        # @return [Hash<String,Object>]
        attr_accessor :session_parameters
      
        # 
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DialogflowV2::GoogleRpcStatus]
        attr_accessor :status
      
        # 
        # Corresponds to the JSON property `textResponses`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ResponseMessageText>]
        attr_accessor :text_responses
      
        # 
        # Corresponds to the JSON property `triggeredIntent`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1Intent]
        attr_accessor :triggered_intent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_page = args[:current_page] if args.key?(:current_page)
          @diagnostic_info = args[:diagnostic_info] if args.key?(:diagnostic_info)
          @differences = args[:differences] if args.key?(:differences)
          @session_parameters = args[:session_parameters] if args.key?(:session_parameters)
          @status = args[:status] if args.key?(:status)
          @text_responses = args[:text_responses] if args.key?(:text_responses)
          @triggered_intent = args[:triggered_intent] if args.key?(:triggered_intent)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1DataStoreConnection
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dataStore`
        # @return [String]
        attr_accessor :data_store
      
        # 
        # Corresponds to the JSON property `dataStoreType`
        # @return [String]
        attr_accessor :data_store_type
      
        # 
        # Corresponds to the JSON property `documentProcessingMode`
        # @return [String]
        attr_accessor :document_processing_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_store = args[:data_store] if args.key?(:data_store)
          @data_store_type = args[:data_store_type] if args.key?(:data_store_type)
          @document_processing_mode = args[:document_processing_mode] if args.key?(:document_processing_mode)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1DeployFlowMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `testErrors`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1TestError>]
        attr_accessor :test_errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @test_errors = args[:test_errors] if args.key?(:test_errors)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1DeployFlowResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `deployment`
        # @return [String]
        attr_accessor :deployment
      
        # 
        # Corresponds to the JSON property `environment`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1Environment]
        attr_accessor :environment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deployment = args[:deployment] if args.key?(:deployment)
          @environment = args[:environment] if args.key?(:environment)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1DtmfInput
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `digits`
        # @return [String]
        attr_accessor :digits
      
        # 
        # Corresponds to the JSON property `finishDigit`
        # @return [String]
        attr_accessor :finish_digit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @digits = args[:digits] if args.key?(:digits)
          @finish_digit = args[:finish_digit] if args.key?(:finish_digit)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1Environment
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `testCasesConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig]
        attr_accessor :test_cases_config
      
        # 
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # 
        # Corresponds to the JSON property `versionConfigs`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig>]
        attr_accessor :version_configs
      
        # 
        # Corresponds to the JSON property `webhookConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig]
        attr_accessor :webhook_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @test_cases_config = args[:test_cases_config] if args.key?(:test_cases_config)
          @update_time = args[:update_time] if args.key?(:update_time)
          @version_configs = args[:version_configs] if args.key?(:version_configs)
          @webhook_config = args[:webhook_config] if args.key?(:webhook_config)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `enableContinuousRun`
        # @return [Boolean]
        attr_accessor :enable_continuous_run
        alias_method :enable_continuous_run?, :enable_continuous_run
      
        # 
        # Corresponds to the JSON property `enablePredeploymentRun`
        # @return [Boolean]
        attr_accessor :enable_predeployment_run
        alias_method :enable_predeployment_run?, :enable_predeployment_run
      
        # 
        # Corresponds to the JSON property `testCases`
        # @return [Array<String>]
        attr_accessor :test_cases
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_continuous_run = args[:enable_continuous_run] if args.key?(:enable_continuous_run)
          @enable_predeployment_run = args[:enable_predeployment_run] if args.key?(:enable_predeployment_run)
          @test_cases = args[:test_cases] if args.key?(:test_cases)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `webhookOverrides`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1Webhook>]
        attr_accessor :webhook_overrides
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @webhook_overrides = args[:webhook_overrides] if args.key?(:webhook_overrides)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1EventHandler
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `event`
        # @return [String]
        attr_accessor :event
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `targetFlow`
        # @return [String]
        attr_accessor :target_flow
      
        # 
        # Corresponds to the JSON property `targetPage`
        # @return [String]
        attr_accessor :target_page
      
        # 
        # Corresponds to the JSON property `targetPlaybook`
        # @return [String]
        attr_accessor :target_playbook
      
        # 
        # Corresponds to the JSON property `triggerFulfillment`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1Fulfillment]
        attr_accessor :trigger_fulfillment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event = args[:event] if args.key?(:event)
          @name = args[:name] if args.key?(:name)
          @target_flow = args[:target_flow] if args.key?(:target_flow)
          @target_page = args[:target_page] if args.key?(:target_page)
          @target_playbook = args[:target_playbook] if args.key?(:target_playbook)
          @trigger_fulfillment = args[:trigger_fulfillment] if args.key?(:trigger_fulfillment)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1EventInput
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `event`
        # @return [String]
        attr_accessor :event
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event = args[:event] if args.key?(:event)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1ExportAgentResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `agentContent`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :agent_content
      
        # 
        # Corresponds to the JSON property `agentUri`
        # @return [String]
        attr_accessor :agent_uri
      
        # 
        # Corresponds to the JSON property `commitSha`
        # @return [String]
        attr_accessor :commit_sha
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_content = args[:agent_content] if args.key?(:agent_content)
          @agent_uri = args[:agent_uri] if args.key?(:agent_uri)
          @commit_sha = args[:commit_sha] if args.key?(:commit_sha)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1ExportEntityTypesMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1ExportEntityTypesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `entityTypesContent`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1InlineDestination]
        attr_accessor :entity_types_content
      
        # 
        # Corresponds to the JSON property `entityTypesUri`
        # @return [String]
        attr_accessor :entity_types_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity_types_content = args[:entity_types_content] if args.key?(:entity_types_content)
          @entity_types_uri = args[:entity_types_uri] if args.key?(:entity_types_uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1ExportFlowResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `flowContent`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :flow_content
      
        # 
        # Corresponds to the JSON property `flowUri`
        # @return [String]
        attr_accessor :flow_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @flow_content = args[:flow_content] if args.key?(:flow_content)
          @flow_uri = args[:flow_uri] if args.key?(:flow_uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1ExportIntentsMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1ExportIntentsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `intentsContent`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1InlineDestination]
        attr_accessor :intents_content
      
        # 
        # Corresponds to the JSON property `intentsUri`
        # @return [String]
        attr_accessor :intents_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @intents_content = args[:intents_content] if args.key?(:intents_content)
          @intents_uri = args[:intents_uri] if args.key?(:intents_uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1ExportTestCasesMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1ExportTestCasesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `content`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :content
      
        # 
        # Corresponds to the JSON property `gcsUri`
        # @return [String]
        attr_accessor :gcs_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @gcs_uri = args[:gcs_uri] if args.key?(:gcs_uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1Form
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1FormParameter>]
        attr_accessor :parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parameters = args[:parameters] if args.key?(:parameters)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1FormParameter
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `advancedSettings`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1AdvancedSettings]
        attr_accessor :advanced_settings
      
        # 
        # Corresponds to the JSON property `defaultValue`
        # @return [Object]
        attr_accessor :default_value
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `entityType`
        # @return [String]
        attr_accessor :entity_type
      
        # 
        # Corresponds to the JSON property `fillBehavior`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior]
        attr_accessor :fill_behavior
      
        # 
        # Corresponds to the JSON property `isList`
        # @return [Boolean]
        attr_accessor :is_list
        alias_method :is_list?, :is_list
      
        # 
        # Corresponds to the JSON property `redact`
        # @return [Boolean]
        attr_accessor :redact
        alias_method :redact?, :redact
      
        # 
        # Corresponds to the JSON property `required`
        # @return [Boolean]
        attr_accessor :required
        alias_method :required?, :required
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advanced_settings = args[:advanced_settings] if args.key?(:advanced_settings)
          @default_value = args[:default_value] if args.key?(:default_value)
          @display_name = args[:display_name] if args.key?(:display_name)
          @entity_type = args[:entity_type] if args.key?(:entity_type)
          @fill_behavior = args[:fill_behavior] if args.key?(:fill_behavior)
          @is_list = args[:is_list] if args.key?(:is_list)
          @redact = args[:redact] if args.key?(:redact)
          @required = args[:required] if args.key?(:required)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `initialPromptFulfillment`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1Fulfillment]
        attr_accessor :initial_prompt_fulfillment
      
        # 
        # Corresponds to the JSON property `repromptEventHandlers`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1EventHandler>]
        attr_accessor :reprompt_event_handlers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @initial_prompt_fulfillment = args[:initial_prompt_fulfillment] if args.key?(:initial_prompt_fulfillment)
          @reprompt_event_handlers = args[:reprompt_event_handlers] if args.key?(:reprompt_event_handlers)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1Fulfillment
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `advancedSettings`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1AdvancedSettings]
        attr_accessor :advanced_settings
      
        # 
        # Corresponds to the JSON property `conditionalCases`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases>]
        attr_accessor :conditional_cases
      
        # 
        # Corresponds to the JSON property `enableGenerativeFallback`
        # @return [Boolean]
        attr_accessor :enable_generative_fallback
        alias_method :enable_generative_fallback?, :enable_generative_fallback
      
        # 
        # Corresponds to the JSON property `generators`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1FulfillmentGeneratorSettings>]
        attr_accessor :generators
      
        # 
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ResponseMessage>]
        attr_accessor :messages
      
        # 
        # Corresponds to the JSON property `returnPartialResponses`
        # @return [Boolean]
        attr_accessor :return_partial_responses
        alias_method :return_partial_responses?, :return_partial_responses
      
        # 
        # Corresponds to the JSON property `setParameterActions`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction>]
        attr_accessor :set_parameter_actions
      
        # 
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        # 
        # Corresponds to the JSON property `webhook`
        # @return [String]
        attr_accessor :webhook
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advanced_settings = args[:advanced_settings] if args.key?(:advanced_settings)
          @conditional_cases = args[:conditional_cases] if args.key?(:conditional_cases)
          @enable_generative_fallback = args[:enable_generative_fallback] if args.key?(:enable_generative_fallback)
          @generators = args[:generators] if args.key?(:generators)
          @messages = args[:messages] if args.key?(:messages)
          @return_partial_responses = args[:return_partial_responses] if args.key?(:return_partial_responses)
          @set_parameter_actions = args[:set_parameter_actions] if args.key?(:set_parameter_actions)
          @tag = args[:tag] if args.key?(:tag)
          @webhook = args[:webhook] if args.key?(:webhook)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `cases`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase>]
        attr_accessor :cases
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cases = args[:cases] if args.key?(:cases)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `caseContent`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent>]
        attr_accessor :case_content
      
        # 
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @case_content = args[:case_content] if args.key?(:case_content)
          @condition = args[:condition] if args.key?(:condition)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `additionalCases`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases]
        attr_accessor :additional_cases
      
        # 
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ResponseMessage]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_cases = args[:additional_cases] if args.key?(:additional_cases)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1FulfillmentGeneratorSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `generator`
        # @return [String]
        attr_accessor :generator
      
        # 
        # Corresponds to the JSON property `inputParameters`
        # @return [Hash<String,String>]
        attr_accessor :input_parameters
      
        # 
        # Corresponds to the JSON property `outputParameter`
        # @return [String]
        attr_accessor :output_parameter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @generator = args[:generator] if args.key?(:generator)
          @input_parameters = args[:input_parameters] if args.key?(:input_parameters)
          @output_parameter = args[:output_parameter] if args.key?(:output_parameter)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `parameter`
        # @return [String]
        attr_accessor :parameter
      
        # 
        # Corresponds to the JSON property `value`
        # @return [Object]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parameter = args[:parameter] if args.key?(:parameter)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1GcsDestination
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1ImportEntityTypesMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1ImportEntityTypesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conflictingResources`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ImportEntityTypesResponseConflictingResources]
        attr_accessor :conflicting_resources
      
        # 
        # Corresponds to the JSON property `entityTypes`
        # @return [Array<String>]
        attr_accessor :entity_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conflicting_resources = args[:conflicting_resources] if args.key?(:conflicting_resources)
          @entity_types = args[:entity_types] if args.key?(:entity_types)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1ImportEntityTypesResponseConflictingResources
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `entityDisplayNames`
        # @return [Array<String>]
        attr_accessor :entity_display_names
      
        # 
        # Corresponds to the JSON property `entityTypeDisplayNames`
        # @return [Array<String>]
        attr_accessor :entity_type_display_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity_display_names = args[:entity_display_names] if args.key?(:entity_display_names)
          @entity_type_display_names = args[:entity_type_display_names] if args.key?(:entity_type_display_names)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1ImportFlowResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `flow`
        # @return [String]
        attr_accessor :flow
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @flow = args[:flow] if args.key?(:flow)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1ImportIntentsMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1ImportIntentsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conflictingResources`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ImportIntentsResponseConflictingResources]
        attr_accessor :conflicting_resources
      
        # 
        # Corresponds to the JSON property `intents`
        # @return [Array<String>]
        attr_accessor :intents
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conflicting_resources = args[:conflicting_resources] if args.key?(:conflicting_resources)
          @intents = args[:intents] if args.key?(:intents)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1ImportIntentsResponseConflictingResources
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `entityDisplayNames`
        # @return [Array<String>]
        attr_accessor :entity_display_names
      
        # 
        # Corresponds to the JSON property `intentDisplayNames`
        # @return [Array<String>]
        attr_accessor :intent_display_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity_display_names = args[:entity_display_names] if args.key?(:entity_display_names)
          @intent_display_names = args[:intent_display_names] if args.key?(:intent_display_names)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1ImportTestCasesMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1TestCaseError>]
        attr_accessor :errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] if args.key?(:errors)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1ImportTestCasesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `names`
        # @return [Array<String>]
        attr_accessor :names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @names = args[:names] if args.key?(:names)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1InlineDestination
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `content`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :content
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1InputAudioConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `audioEncoding`
        # @return [String]
        attr_accessor :audio_encoding
      
        # 
        # Corresponds to the JSON property `bargeInConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1BargeInConfig]
        attr_accessor :barge_in_config
      
        # 
        # Corresponds to the JSON property `enableWordInfo`
        # @return [Boolean]
        attr_accessor :enable_word_info
        alias_method :enable_word_info?, :enable_word_info
      
        # 
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        # 
        # Corresponds to the JSON property `modelVariant`
        # @return [String]
        attr_accessor :model_variant
      
        # 
        # Corresponds to the JSON property `optOutConformerModelMigration`
        # @return [Boolean]
        attr_accessor :opt_out_conformer_model_migration
        alias_method :opt_out_conformer_model_migration?, :opt_out_conformer_model_migration
      
        # 
        # Corresponds to the JSON property `phraseHints`
        # @return [Array<String>]
        attr_accessor :phrase_hints
      
        # 
        # Corresponds to the JSON property `sampleRateHertz`
        # @return [Fixnum]
        attr_accessor :sample_rate_hertz
      
        # 
        # Corresponds to the JSON property `singleUtterance`
        # @return [Boolean]
        attr_accessor :single_utterance
        alias_method :single_utterance?, :single_utterance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_encoding = args[:audio_encoding] if args.key?(:audio_encoding)
          @barge_in_config = args[:barge_in_config] if args.key?(:barge_in_config)
          @enable_word_info = args[:enable_word_info] if args.key?(:enable_word_info)
          @model = args[:model] if args.key?(:model)
          @model_variant = args[:model_variant] if args.key?(:model_variant)
          @opt_out_conformer_model_migration = args[:opt_out_conformer_model_migration] if args.key?(:opt_out_conformer_model_migration)
          @phrase_hints = args[:phrase_hints] if args.key?(:phrase_hints)
          @sample_rate_hertz = args[:sample_rate_hertz] if args.key?(:sample_rate_hertz)
          @single_utterance = args[:single_utterance] if args.key?(:single_utterance)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1Intent
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `isFallback`
        # @return [Boolean]
        attr_accessor :is_fallback
        alias_method :is_fallback?, :is_fallback
      
        # 
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1IntentParameter>]
        attr_accessor :parameters
      
        # 
        # Corresponds to the JSON property `priority`
        # @return [Fixnum]
        attr_accessor :priority
      
        # 
        # Corresponds to the JSON property `trainingPhrases`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase>]
        attr_accessor :training_phrases
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @is_fallback = args[:is_fallback] if args.key?(:is_fallback)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @parameters = args[:parameters] if args.key?(:parameters)
          @priority = args[:priority] if args.key?(:priority)
          @training_phrases = args[:training_phrases] if args.key?(:training_phrases)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1IntentInput
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `intent`
        # @return [String]
        attr_accessor :intent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @intent = args[:intent] if args.key?(:intent)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1IntentParameter
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `entityType`
        # @return [String]
        attr_accessor :entity_type
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `isList`
        # @return [Boolean]
        attr_accessor :is_list
        alias_method :is_list?, :is_list
      
        # 
        # Corresponds to the JSON property `redact`
        # @return [Boolean]
        attr_accessor :redact
        alias_method :redact?, :redact
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity_type = args[:entity_type] if args.key?(:entity_type)
          @id = args[:id] if args.key?(:id)
          @is_list = args[:is_list] if args.key?(:is_list)
          @redact = args[:redact] if args.key?(:redact)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `parts`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart>]
        attr_accessor :parts
      
        # 
        # Corresponds to the JSON property `repeatCount`
        # @return [Fixnum]
        attr_accessor :repeat_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @parts = args[:parts] if args.key?(:parts)
          @repeat_count = args[:repeat_count] if args.key?(:repeat_count)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `parameterId`
        # @return [String]
        attr_accessor :parameter_id
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parameter_id = args[:parameter_id] if args.key?(:parameter_id)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dataStoreConnections`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1DataStoreConnection>]
        attr_accessor :data_store_connections
      
        # 
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # 
        # Corresponds to the JSON property `targetFlow`
        # @return [String]
        attr_accessor :target_flow
      
        # 
        # Corresponds to the JSON property `targetPage`
        # @return [String]
        attr_accessor :target_page
      
        # 
        # Corresponds to the JSON property `triggerFulfillment`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1Fulfillment]
        attr_accessor :trigger_fulfillment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_store_connections = args[:data_store_connections] if args.key?(:data_store_connections)
          @enabled = args[:enabled] if args.key?(:enabled)
          @target_flow = args[:target_flow] if args.key?(:target_flow)
          @target_page = args[:target_page] if args.key?(:target_page)
          @trigger_fulfillment = args[:trigger_fulfillment] if args.key?(:trigger_fulfillment)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1LanguageInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `confidenceScore`
        # @return [Float]
        attr_accessor :confidence_score
      
        # 
        # Corresponds to the JSON property `inputLanguageCode`
        # @return [String]
        attr_accessor :input_language_code
      
        # 
        # Corresponds to the JSON property `resolvedLanguageCode`
        # @return [String]
        attr_accessor :resolved_language_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence_score = args[:confidence_score] if args.key?(:confidence_score)
          @input_language_code = args[:input_language_code] if args.key?(:input_language_code)
          @resolved_language_code = args[:resolved_language_code] if args.key?(:resolved_language_code)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1Page
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `advancedSettings`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1AdvancedSettings]
        attr_accessor :advanced_settings
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `entryFulfillment`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1Fulfillment]
        attr_accessor :entry_fulfillment
      
        # 
        # Corresponds to the JSON property `eventHandlers`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1EventHandler>]
        attr_accessor :event_handlers
      
        # 
        # Corresponds to the JSON property `form`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1Form]
        attr_accessor :form
      
        # 
        # Corresponds to the JSON property `knowledgeConnectorSettings`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings]
        attr_accessor :knowledge_connector_settings
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `transitionRouteGroups`
        # @return [Array<String>]
        attr_accessor :transition_route_groups
      
        # 
        # Corresponds to the JSON property `transitionRoutes`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1TransitionRoute>]
        attr_accessor :transition_routes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advanced_settings = args[:advanced_settings] if args.key?(:advanced_settings)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @entry_fulfillment = args[:entry_fulfillment] if args.key?(:entry_fulfillment)
          @event_handlers = args[:event_handlers] if args.key?(:event_handlers)
          @form = args[:form] if args.key?(:form)
          @knowledge_connector_settings = args[:knowledge_connector_settings] if args.key?(:knowledge_connector_settings)
          @name = args[:name] if args.key?(:name)
          @transition_route_groups = args[:transition_route_groups] if args.key?(:transition_route_groups)
          @transition_routes = args[:transition_routes] if args.key?(:transition_routes)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1PageInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `currentPage`
        # @return [String]
        attr_accessor :current_page
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `formInfo`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1PageInfoFormInfo]
        attr_accessor :form_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_page = args[:current_page] if args.key?(:current_page)
          @display_name = args[:display_name] if args.key?(:display_name)
          @form_info = args[:form_info] if args.key?(:form_info)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1PageInfoFormInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `parameterInfo`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo>]
        attr_accessor :parameter_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parameter_info = args[:parameter_info] if args.key?(:parameter_info)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `justCollected`
        # @return [Boolean]
        attr_accessor :just_collected
        alias_method :just_collected?, :just_collected
      
        # 
        # Corresponds to the JSON property `required`
        # @return [Boolean]
        attr_accessor :required
        alias_method :required?, :required
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # 
        # Corresponds to the JSON property `value`
        # @return [Object]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @just_collected = args[:just_collected] if args.key?(:just_collected)
          @required = args[:required] if args.key?(:required)
          @state = args[:state] if args.key?(:state)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1QueryInput
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `audio`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1AudioInput]
        attr_accessor :audio
      
        # 
        # Corresponds to the JSON property `dtmf`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1DtmfInput]
        attr_accessor :dtmf
      
        # 
        # Corresponds to the JSON property `event`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1EventInput]
        attr_accessor :event
      
        # 
        # Corresponds to the JSON property `intent`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1IntentInput]
        attr_accessor :intent
      
        # 
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # 
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1TextInput]
        attr_accessor :text
      
        # 
        # Corresponds to the JSON property `toolCallResult`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ToolCallResult]
        attr_accessor :tool_call_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio = args[:audio] if args.key?(:audio)
          @dtmf = args[:dtmf] if args.key?(:dtmf)
          @event = args[:event] if args.key?(:event)
          @intent = args[:intent] if args.key?(:intent)
          @language_code = args[:language_code] if args.key?(:language_code)
          @text = args[:text] if args.key?(:text)
          @tool_call_result = args[:tool_call_result] if args.key?(:tool_call_result)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1ResponseMessage
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `channel`
        # @return [String]
        attr_accessor :channel
      
        # 
        # Corresponds to the JSON property `conversationSuccess`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess]
        attr_accessor :conversation_success
      
        # 
        # Corresponds to the JSON property `endInteraction`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction]
        attr_accessor :end_interaction
      
        # 
        # Corresponds to the JSON property `knowledgeInfoCard`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ResponseMessageKnowledgeInfoCard]
        attr_accessor :knowledge_info_card
      
        # 
        # Corresponds to the JSON property `liveAgentHandoff`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff]
        attr_accessor :live_agent_handoff
      
        # 
        # Corresponds to the JSON property `mixedAudio`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio]
        attr_accessor :mixed_audio
      
        # 
        # Corresponds to the JSON property `outputAudioText`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText]
        attr_accessor :output_audio_text
      
        # 
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # 
        # Corresponds to the JSON property `playAudio`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio]
        attr_accessor :play_audio
      
        # 
        # Corresponds to the JSON property `telephonyTransferCall`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall]
        attr_accessor :telephony_transfer_call
      
        # 
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ResponseMessageText]
        attr_accessor :text
      
        # 
        # Corresponds to the JSON property `toolCall`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ToolCall]
        attr_accessor :tool_call
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel = args[:channel] if args.key?(:channel)
          @conversation_success = args[:conversation_success] if args.key?(:conversation_success)
          @end_interaction = args[:end_interaction] if args.key?(:end_interaction)
          @knowledge_info_card = args[:knowledge_info_card] if args.key?(:knowledge_info_card)
          @live_agent_handoff = args[:live_agent_handoff] if args.key?(:live_agent_handoff)
          @mixed_audio = args[:mixed_audio] if args.key?(:mixed_audio)
          @output_audio_text = args[:output_audio_text] if args.key?(:output_audio_text)
          @payload = args[:payload] if args.key?(:payload)
          @play_audio = args[:play_audio] if args.key?(:play_audio)
          @telephony_transfer_call = args[:telephony_transfer_call] if args.key?(:telephony_transfer_call)
          @text = args[:text] if args.key?(:text)
          @tool_call = args[:tool_call] if args.key?(:tool_call)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata = args[:metadata] if args.key?(:metadata)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1ResponseMessageKnowledgeInfoCard
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata = args[:metadata] if args.key?(:metadata)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `segments`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment>]
        attr_accessor :segments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @segments = args[:segments] if args.key?(:segments)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `allowPlaybackInterruption`
        # @return [Boolean]
        attr_accessor :allow_playback_interruption
        alias_method :allow_playback_interruption?, :allow_playback_interruption
      
        # 
        # Corresponds to the JSON property `audio`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :audio
      
        # 
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_playback_interruption = args[:allow_playback_interruption] if args.key?(:allow_playback_interruption)
          @audio = args[:audio] if args.key?(:audio)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `allowPlaybackInterruption`
        # @return [Boolean]
        attr_accessor :allow_playback_interruption
        alias_method :allow_playback_interruption?, :allow_playback_interruption
      
        # 
        # Corresponds to the JSON property `ssml`
        # @return [String]
        attr_accessor :ssml
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_playback_interruption = args[:allow_playback_interruption] if args.key?(:allow_playback_interruption)
          @ssml = args[:ssml] if args.key?(:ssml)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `allowPlaybackInterruption`
        # @return [Boolean]
        attr_accessor :allow_playback_interruption
        alias_method :allow_playback_interruption?, :allow_playback_interruption
      
        # 
        # Corresponds to the JSON property `audioUri`
        # @return [String]
        attr_accessor :audio_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_playback_interruption = args[:allow_playback_interruption] if args.key?(:allow_playback_interruption)
          @audio_uri = args[:audio_uri] if args.key?(:audio_uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1ResponseMessageText
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `allowPlaybackInterruption`
        # @return [Boolean]
        attr_accessor :allow_playback_interruption
        alias_method :allow_playback_interruption?, :allow_playback_interruption
      
        # 
        # Corresponds to the JSON property `text`
        # @return [Array<String>]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_playback_interruption = args[:allow_playback_interruption] if args.key?(:allow_playback_interruption)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1RunContinuousTestMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1TestError>]
        attr_accessor :errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] if args.key?(:errors)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1RunContinuousTestResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `continuousTestResult`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ContinuousTestResult]
        attr_accessor :continuous_test_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @continuous_test_result = args[:continuous_test_result] if args.key?(:continuous_test_result)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1RunTestCaseMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1RunTestCaseResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `result`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1TestCaseResult]
        attr_accessor :result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @result = args[:result] if args.key?(:result)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1SessionInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Object>]
        attr_accessor :parameters
      
        # 
        # Corresponds to the JSON property `session`
        # @return [String]
        attr_accessor :session
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parameters = args[:parameters] if args.key?(:parameters)
          @session = args[:session] if args.key?(:session)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1TestCase
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `lastTestResult`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1TestCaseResult]
        attr_accessor :last_test_result
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `notes`
        # @return [String]
        attr_accessor :notes
      
        # 
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        # 
        # Corresponds to the JSON property `testCaseConversationTurns`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ConversationTurn>]
        attr_accessor :test_case_conversation_turns
      
        # 
        # Corresponds to the JSON property `testConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1TestConfig]
        attr_accessor :test_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @last_test_result = args[:last_test_result] if args.key?(:last_test_result)
          @name = args[:name] if args.key?(:name)
          @notes = args[:notes] if args.key?(:notes)
          @tags = args[:tags] if args.key?(:tags)
          @test_case_conversation_turns = args[:test_case_conversation_turns] if args.key?(:test_case_conversation_turns)
          @test_config = args[:test_config] if args.key?(:test_config)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1TestCaseError
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DialogflowV2::GoogleRpcStatus]
        attr_accessor :status
      
        # 
        # Corresponds to the JSON property `testCase`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1TestCase]
        attr_accessor :test_case
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @status = args[:status] if args.key?(:status)
          @test_case = args[:test_case] if args.key?(:test_case)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1TestCaseResult
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conversationTurns`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ConversationTurn>]
        attr_accessor :conversation_turns
      
        # 
        # Corresponds to the JSON property `environment`
        # @return [String]
        attr_accessor :environment
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `testResult`
        # @return [String]
        attr_accessor :test_result
      
        # 
        # Corresponds to the JSON property `testTime`
        # @return [String]
        attr_accessor :test_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_turns = args[:conversation_turns] if args.key?(:conversation_turns)
          @environment = args[:environment] if args.key?(:environment)
          @name = args[:name] if args.key?(:name)
          @test_result = args[:test_result] if args.key?(:test_result)
          @test_time = args[:test_time] if args.key?(:test_time)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1TestConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `flow`
        # @return [String]
        attr_accessor :flow
      
        # 
        # Corresponds to the JSON property `page`
        # @return [String]
        attr_accessor :page
      
        # 
        # Corresponds to the JSON property `trackingParameters`
        # @return [Array<String>]
        attr_accessor :tracking_parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @flow = args[:flow] if args.key?(:flow)
          @page = args[:page] if args.key?(:page)
          @tracking_parameters = args[:tracking_parameters] if args.key?(:tracking_parameters)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1TestError
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DialogflowV2::GoogleRpcStatus]
        attr_accessor :status
      
        # 
        # Corresponds to the JSON property `testCase`
        # @return [String]
        attr_accessor :test_case
      
        # 
        # Corresponds to the JSON property `testTime`
        # @return [String]
        attr_accessor :test_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @status = args[:status] if args.key?(:status)
          @test_case = args[:test_case] if args.key?(:test_case)
          @test_time = args[:test_time] if args.key?(:test_time)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1TestRunDifference
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1TextInput
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1ToolCall
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # 
        # Corresponds to the JSON property `inputParameters`
        # @return [Hash<String,Object>]
        attr_accessor :input_parameters
      
        # 
        # Corresponds to the JSON property `tool`
        # @return [String]
        attr_accessor :tool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @input_parameters = args[:input_parameters] if args.key?(:input_parameters)
          @tool = args[:tool] if args.key?(:tool)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1ToolCallResult
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # 
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ToolCallResultError]
        attr_accessor :error
      
        # 
        # Corresponds to the JSON property `outputParameters`
        # @return [Hash<String,Object>]
        attr_accessor :output_parameters
      
        # 
        # Corresponds to the JSON property `tool`
        # @return [String]
        attr_accessor :tool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @error = args[:error] if args.key?(:error)
          @output_parameters = args[:output_parameters] if args.key?(:output_parameters)
          @tool = args[:tool] if args.key?(:tool)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1ToolCallResultError
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1TransitionRoute
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `intent`
        # @return [String]
        attr_accessor :intent
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `targetFlow`
        # @return [String]
        attr_accessor :target_flow
      
        # 
        # Corresponds to the JSON property `targetPage`
        # @return [String]
        attr_accessor :target_page
      
        # 
        # Corresponds to the JSON property `triggerFulfillment`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1Fulfillment]
        attr_accessor :trigger_fulfillment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @description = args[:description] if args.key?(:description)
          @intent = args[:intent] if args.key?(:intent)
          @name = args[:name] if args.key?(:name)
          @target_flow = args[:target_flow] if args.key?(:target_flow)
          @target_page = args[:target_page] if args.key?(:target_page)
          @trigger_fulfillment = args[:trigger_fulfillment] if args.key?(:trigger_fulfillment)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1TurnSignals
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `agentEscalated`
        # @return [Boolean]
        attr_accessor :agent_escalated
        alias_method :agent_escalated?, :agent_escalated
      
        # 
        # Corresponds to the JSON property `dtmfUsed`
        # @return [Boolean]
        attr_accessor :dtmf_used
        alias_method :dtmf_used?, :dtmf_used
      
        # 
        # Corresponds to the JSON property `failureReasons`
        # @return [Array<String>]
        attr_accessor :failure_reasons
      
        # 
        # Corresponds to the JSON property `noMatch`
        # @return [Boolean]
        attr_accessor :no_match
        alias_method :no_match?, :no_match
      
        # 
        # Corresponds to the JSON property `noUserInput`
        # @return [Boolean]
        attr_accessor :no_user_input
        alias_method :no_user_input?, :no_user_input
      
        # 
        # Corresponds to the JSON property `reachedEndPage`
        # @return [Boolean]
        attr_accessor :reached_end_page
        alias_method :reached_end_page?, :reached_end_page
      
        # 
        # Corresponds to the JSON property `sentimentMagnitude`
        # @return [Float]
        attr_accessor :sentiment_magnitude
      
        # 
        # Corresponds to the JSON property `sentimentScore`
        # @return [Float]
        attr_accessor :sentiment_score
      
        # 
        # Corresponds to the JSON property `userEscalated`
        # @return [Boolean]
        attr_accessor :user_escalated
        alias_method :user_escalated?, :user_escalated
      
        # 
        # Corresponds to the JSON property `webhookStatuses`
        # @return [Array<String>]
        attr_accessor :webhook_statuses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_escalated = args[:agent_escalated] if args.key?(:agent_escalated)
          @dtmf_used = args[:dtmf_used] if args.key?(:dtmf_used)
          @failure_reasons = args[:failure_reasons] if args.key?(:failure_reasons)
          @no_match = args[:no_match] if args.key?(:no_match)
          @no_user_input = args[:no_user_input] if args.key?(:no_user_input)
          @reached_end_page = args[:reached_end_page] if args.key?(:reached_end_page)
          @sentiment_magnitude = args[:sentiment_magnitude] if args.key?(:sentiment_magnitude)
          @sentiment_score = args[:sentiment_score] if args.key?(:sentiment_score)
          @user_escalated = args[:user_escalated] if args.key?(:user_escalated)
          @webhook_statuses = args[:webhook_statuses] if args.key?(:webhook_statuses)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1Webhook
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `genericWebService`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1WebhookGenericWebService]
        attr_accessor :generic_web_service
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `serviceDirectory`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig]
        attr_accessor :service_directory
      
        # 
        # Corresponds to the JSON property `timeout`
        # @return [String]
        attr_accessor :timeout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disabled = args[:disabled] if args.key?(:disabled)
          @display_name = args[:display_name] if args.key?(:display_name)
          @generic_web_service = args[:generic_web_service] if args.key?(:generic_web_service)
          @name = args[:name] if args.key?(:name)
          @service_directory = args[:service_directory] if args.key?(:service_directory)
          @timeout = args[:timeout] if args.key?(:timeout)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1WebhookGenericWebService
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `allowedCaCerts`
        # @return [Array<String>]
        attr_accessor :allowed_ca_certs
      
        # 
        # Corresponds to the JSON property `httpMethod`
        # @return [String]
        attr_accessor :http_method
      
        # 
        # Corresponds to the JSON property `oauthConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceOAuthConfig]
        attr_accessor :oauth_config
      
        # 
        # Corresponds to the JSON property `parameterMapping`
        # @return [Hash<String,String>]
        attr_accessor :parameter_mapping
      
        # 
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # 
        # Corresponds to the JSON property `requestBody`
        # @return [String]
        attr_accessor :request_body
      
        # 
        # Corresponds to the JSON property `requestHeaders`
        # @return [Hash<String,String>]
        attr_accessor :request_headers
      
        # 
        # Corresponds to the JSON property `secretVersionForUsernamePassword`
        # @return [String]
        attr_accessor :secret_version_for_username_password
      
        # 
        # Corresponds to the JSON property `secretVersionsForRequestHeaders`
        # @return [Hash<String,Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceSecretVersionHeaderValue>]
        attr_accessor :secret_versions_for_request_headers
      
        # 
        # Corresponds to the JSON property `serviceAccountAuthConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceServiceAccountAuthConfig]
        attr_accessor :service_account_auth_config
      
        # 
        # Corresponds to the JSON property `serviceAgentAuth`
        # @return [String]
        attr_accessor :service_agent_auth
      
        # 
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        # 
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        # 
        # Corresponds to the JSON property `webhookType`
        # @return [String]
        attr_accessor :webhook_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_ca_certs = args[:allowed_ca_certs] if args.key?(:allowed_ca_certs)
          @http_method = args[:http_method] if args.key?(:http_method)
          @oauth_config = args[:oauth_config] if args.key?(:oauth_config)
          @parameter_mapping = args[:parameter_mapping] if args.key?(:parameter_mapping)
          @password = args[:password] if args.key?(:password)
          @request_body = args[:request_body] if args.key?(:request_body)
          @request_headers = args[:request_headers] if args.key?(:request_headers)
          @secret_version_for_username_password = args[:secret_version_for_username_password] if args.key?(:secret_version_for_username_password)
          @secret_versions_for_request_headers = args[:secret_versions_for_request_headers] if args.key?(:secret_versions_for_request_headers)
          @service_account_auth_config = args[:service_account_auth_config] if args.key?(:service_account_auth_config)
          @service_agent_auth = args[:service_agent_auth] if args.key?(:service_agent_auth)
          @uri = args[:uri] if args.key?(:uri)
          @username = args[:username] if args.key?(:username)
          @webhook_type = args[:webhook_type] if args.key?(:webhook_type)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceOAuthConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # 
        # Corresponds to the JSON property `clientSecret`
        # @return [String]
        attr_accessor :client_secret
      
        # 
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        # 
        # Corresponds to the JSON property `secretVersionForClientSecret`
        # @return [String]
        attr_accessor :secret_version_for_client_secret
      
        # 
        # Corresponds to the JSON property `tokenEndpoint`
        # @return [String]
        attr_accessor :token_endpoint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_id = args[:client_id] if args.key?(:client_id)
          @client_secret = args[:client_secret] if args.key?(:client_secret)
          @scopes = args[:scopes] if args.key?(:scopes)
          @secret_version_for_client_secret = args[:secret_version_for_client_secret] if args.key?(:secret_version_for_client_secret)
          @token_endpoint = args[:token_endpoint] if args.key?(:token_endpoint)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceSecretVersionHeaderValue
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `secretVersion`
        # @return [String]
        attr_accessor :secret_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @secret_version = args[:secret_version] if args.key?(:secret_version)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceServiceAccountAuthConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service_account = args[:service_account] if args.key?(:service_account)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1WebhookRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `detectIntentResponseId`
        # @return [String]
        attr_accessor :detect_intent_response_id
      
        # 
        # Corresponds to the JSON property `dtmfDigits`
        # @return [String]
        attr_accessor :dtmf_digits
      
        # 
        # Corresponds to the JSON property `fulfillmentInfo`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo]
        attr_accessor :fulfillment_info
      
        # 
        # Corresponds to the JSON property `intentInfo`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo]
        attr_accessor :intent_info
      
        # 
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # 
        # Corresponds to the JSON property `languageInfo`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1LanguageInfo]
        attr_accessor :language_info
      
        # 
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ResponseMessage>]
        attr_accessor :messages
      
        # 
        # Corresponds to the JSON property `pageInfo`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1PageInfo]
        attr_accessor :page_info
      
        # 
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # 
        # Corresponds to the JSON property `sentimentAnalysisResult`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult]
        attr_accessor :sentiment_analysis_result
      
        # 
        # Corresponds to the JSON property `sessionInfo`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1SessionInfo]
        attr_accessor :session_info
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # 
        # Corresponds to the JSON property `transcript`
        # @return [String]
        attr_accessor :transcript
      
        # 
        # Corresponds to the JSON property `triggerEvent`
        # @return [String]
        attr_accessor :trigger_event
      
        # 
        # Corresponds to the JSON property `triggerIntent`
        # @return [String]
        attr_accessor :trigger_intent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detect_intent_response_id = args[:detect_intent_response_id] if args.key?(:detect_intent_response_id)
          @dtmf_digits = args[:dtmf_digits] if args.key?(:dtmf_digits)
          @fulfillment_info = args[:fulfillment_info] if args.key?(:fulfillment_info)
          @intent_info = args[:intent_info] if args.key?(:intent_info)
          @language_code = args[:language_code] if args.key?(:language_code)
          @language_info = args[:language_info] if args.key?(:language_info)
          @messages = args[:messages] if args.key?(:messages)
          @page_info = args[:page_info] if args.key?(:page_info)
          @payload = args[:payload] if args.key?(:payload)
          @sentiment_analysis_result = args[:sentiment_analysis_result] if args.key?(:sentiment_analysis_result)
          @session_info = args[:session_info] if args.key?(:session_info)
          @text = args[:text] if args.key?(:text)
          @transcript = args[:transcript] if args.key?(:transcript)
          @trigger_event = args[:trigger_event] if args.key?(:trigger_event)
          @trigger_intent = args[:trigger_intent] if args.key?(:trigger_intent)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tag = args[:tag] if args.key?(:tag)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `lastMatchedIntent`
        # @return [String]
        attr_accessor :last_matched_intent
      
        # 
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue>]
        attr_accessor :parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @display_name = args[:display_name] if args.key?(:display_name)
          @last_matched_intent = args[:last_matched_intent] if args.key?(:last_matched_intent)
          @parameters = args[:parameters] if args.key?(:parameters)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `originalValue`
        # @return [String]
        attr_accessor :original_value
      
        # 
        # Corresponds to the JSON property `resolvedValue`
        # @return [Object]
        attr_accessor :resolved_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @original_value = args[:original_value] if args.key?(:original_value)
          @resolved_value = args[:resolved_value] if args.key?(:resolved_value)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `magnitude`
        # @return [Float]
        attr_accessor :magnitude
      
        # 
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @magnitude = args[:magnitude] if args.key?(:magnitude)
          @score = args[:score] if args.key?(:score)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1WebhookResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `fulfillmentResponse`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse]
        attr_accessor :fulfillment_response
      
        # 
        # Corresponds to the JSON property `pageInfo`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1PageInfo]
        attr_accessor :page_info
      
        # 
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # 
        # Corresponds to the JSON property `sessionInfo`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1SessionInfo]
        attr_accessor :session_info
      
        # 
        # Corresponds to the JSON property `targetFlow`
        # @return [String]
        attr_accessor :target_flow
      
        # 
        # Corresponds to the JSON property `targetPage`
        # @return [String]
        attr_accessor :target_page
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fulfillment_response = args[:fulfillment_response] if args.key?(:fulfillment_response)
          @page_info = args[:page_info] if args.key?(:page_info)
          @payload = args[:payload] if args.key?(:payload)
          @session_info = args[:session_info] if args.key?(:session_info)
          @target_flow = args[:target_flow] if args.key?(:target_flow)
          @target_page = args[:target_page] if args.key?(:target_page)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `mergeBehavior`
        # @return [String]
        attr_accessor :merge_behavior
      
        # 
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ResponseMessage>]
        attr_accessor :messages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @merge_behavior = args[:merge_behavior] if args.key?(:merge_behavior)
          @messages = args[:messages] if args.key?(:messages)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `genericWebService`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1WebhookGenericWebService]
        attr_accessor :generic_web_service
      
        # 
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @generic_web_service = args[:generic_web_service] if args.key?(:generic_web_service)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2Agent
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # 
        # Corresponds to the JSON property `avatarUri`
        # @return [String]
        attr_accessor :avatar_uri
      
        # 
        # Corresponds to the JSON property `classificationThreshold`
        # @return [Float]
        attr_accessor :classification_threshold
      
        # 
        # Corresponds to the JSON property `defaultLanguageCode`
        # @return [String]
        attr_accessor :default_language_code
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `enableLogging`
        # @return [Boolean]
        attr_accessor :enable_logging
        alias_method :enable_logging?, :enable_logging
      
        # 
        # Corresponds to the JSON property `matchMode`
        # @return [String]
        attr_accessor :match_mode
      
        # 
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # 
        # Corresponds to the JSON property `supportedLanguageCodes`
        # @return [Array<String>]
        attr_accessor :supported_language_codes
      
        # 
        # Corresponds to the JSON property `tier`
        # @return [String]
        attr_accessor :tier
      
        # 
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @avatar_uri = args[:avatar_uri] if args.key?(:avatar_uri)
          @classification_threshold = args[:classification_threshold] if args.key?(:classification_threshold)
          @default_language_code = args[:default_language_code] if args.key?(:default_language_code)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @enable_logging = args[:enable_logging] if args.key?(:enable_logging)
          @match_mode = args[:match_mode] if args.key?(:match_mode)
          @parent = args[:parent] if args.key?(:parent)
          @supported_language_codes = args[:supported_language_codes] if args.key?(:supported_language_codes)
          @tier = args[:tier] if args.key?(:tier)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2AgentAssistantFeedback
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `answerRelevance`
        # @return [String]
        attr_accessor :answer_relevance
      
        # 
        # Corresponds to the JSON property `documentCorrectness`
        # @return [String]
        attr_accessor :document_correctness
      
        # 
        # Corresponds to the JSON property `documentEfficiency`
        # @return [String]
        attr_accessor :document_efficiency
      
        # 
        # Corresponds to the JSON property `knowledgeAssistFeedback`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AgentAssistantFeedbackKnowledgeAssistFeedback]
        attr_accessor :knowledge_assist_feedback
      
        # 
        # Corresponds to the JSON property `knowledgeSearchFeedback`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AgentAssistantFeedbackKnowledgeSearchFeedback]
        attr_accessor :knowledge_search_feedback
      
        # 
        # Corresponds to the JSON property `summarizationFeedback`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AgentAssistantFeedbackSummarizationFeedback]
        attr_accessor :summarization_feedback
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_relevance = args[:answer_relevance] if args.key?(:answer_relevance)
          @document_correctness = args[:document_correctness] if args.key?(:document_correctness)
          @document_efficiency = args[:document_efficiency] if args.key?(:document_efficiency)
          @knowledge_assist_feedback = args[:knowledge_assist_feedback] if args.key?(:knowledge_assist_feedback)
          @knowledge_search_feedback = args[:knowledge_search_feedback] if args.key?(:knowledge_search_feedback)
          @summarization_feedback = args[:summarization_feedback] if args.key?(:summarization_feedback)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2AgentAssistantFeedbackKnowledgeAssistFeedback
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `answerCopied`
        # @return [Boolean]
        attr_accessor :answer_copied
        alias_method :answer_copied?, :answer_copied
      
        # 
        # Corresponds to the JSON property `clickedUris`
        # @return [Array<String>]
        attr_accessor :clicked_uris
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_copied = args[:answer_copied] if args.key?(:answer_copied)
          @clicked_uris = args[:clicked_uris] if args.key?(:clicked_uris)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2AgentAssistantFeedbackKnowledgeSearchFeedback
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `answerCopied`
        # @return [Boolean]
        attr_accessor :answer_copied
        alias_method :answer_copied?, :answer_copied
      
        # 
        # Corresponds to the JSON property `clickedUris`
        # @return [Array<String>]
        attr_accessor :clicked_uris
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_copied = args[:answer_copied] if args.key?(:answer_copied)
          @clicked_uris = args[:clicked_uris] if args.key?(:clicked_uris)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2AgentAssistantFeedbackSummarizationFeedback
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # 
        # Corresponds to the JSON property `submitTime`
        # @return [String]
        attr_accessor :submit_time
      
        # 
        # Corresponds to the JSON property `summaryText`
        # @return [String]
        attr_accessor :summary_text
      
        # 
        # Corresponds to the JSON property `textSections`
        # @return [Hash<String,String>]
        attr_accessor :text_sections
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @start_time = args[:start_time] if args.key?(:start_time)
          @submit_time = args[:submit_time] if args.key?(:submit_time)
          @summary_text = args[:summary_text] if args.key?(:summary_text)
          @text_sections = args[:text_sections] if args.key?(:text_sections)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2AgentAssistantRecord
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `articleSuggestionAnswer`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ArticleAnswer]
        attr_accessor :article_suggestion_answer
      
        # 
        # Corresponds to the JSON property `dialogflowAssistAnswer`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2DialogflowAssistAnswer]
        attr_accessor :dialogflow_assist_answer
      
        # 
        # Corresponds to the JSON property `faqAnswer`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2FaqAnswer]
        attr_accessor :faq_answer
      
        # 
        # Corresponds to the JSON property `generatorSuggestion`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2GeneratorSuggestion]
        attr_accessor :generator_suggestion
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @article_suggestion_answer = args[:article_suggestion_answer] if args.key?(:article_suggestion_answer)
          @dialogflow_assist_answer = args[:dialogflow_assist_answer] if args.key?(:dialogflow_assist_answer)
          @faq_answer = args[:faq_answer] if args.key?(:faq_answer)
          @generator_suggestion = args[:generator_suggestion] if args.key?(:generator_suggestion)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2AgentCoachingContext
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `instructions`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AgentCoachingInstruction>]
        attr_accessor :instructions
      
        # 
        # Corresponds to the JSON property `outputLanguageCode`
        # @return [String]
        attr_accessor :output_language_code
      
        # 
        # Corresponds to the JSON property `overarchingGuidance`
        # @return [String]
        attr_accessor :overarching_guidance
      
        # 
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instructions = args[:instructions] if args.key?(:instructions)
          @output_language_code = args[:output_language_code] if args.key?(:output_language_code)
          @overarching_guidance = args[:overarching_guidance] if args.key?(:overarching_guidance)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2AgentCoachingInstruction
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `agentAction`
        # @return [String]
        attr_accessor :agent_action
      
        # 
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        # 
        # Corresponds to the JSON property `displayDetails`
        # @return [String]
        attr_accessor :display_details
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `duplicateCheckResult`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AgentCoachingInstructionDuplicateCheckResult]
        attr_accessor :duplicate_check_result
      
        # 
        # Corresponds to the JSON property `systemAction`
        # @return [String]
        attr_accessor :system_action
      
        # 
        # Corresponds to the JSON property `triggeringEvent`
        # @return [String]
        attr_accessor :triggering_event
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_action = args[:agent_action] if args.key?(:agent_action)
          @condition = args[:condition] if args.key?(:condition)
          @display_details = args[:display_details] if args.key?(:display_details)
          @display_name = args[:display_name] if args.key?(:display_name)
          @duplicate_check_result = args[:duplicate_check_result] if args.key?(:duplicate_check_result)
          @system_action = args[:system_action] if args.key?(:system_action)
          @triggering_event = args[:triggering_event] if args.key?(:triggering_event)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2AgentCoachingInstructionDuplicateCheckResult
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `duplicateSuggestions`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AgentCoachingInstructionDuplicateCheckResultDuplicateSuggestion>]
        attr_accessor :duplicate_suggestions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duplicate_suggestions = args[:duplicate_suggestions] if args.key?(:duplicate_suggestions)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2AgentCoachingInstructionDuplicateCheckResultDuplicateSuggestion
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `answerRecord`
        # @return [String]
        attr_accessor :answer_record
      
        # 
        # Corresponds to the JSON property `similarityScore`
        # @return [Float]
        attr_accessor :similarity_score
      
        # 
        # Corresponds to the JSON property `suggestionIndex`
        # @return [Fixnum]
        attr_accessor :suggestion_index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_record = args[:answer_record] if args.key?(:answer_record)
          @similarity_score = args[:similarity_score] if args.key?(:similarity_score)
          @suggestion_index = args[:suggestion_index] if args.key?(:suggestion_index)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2AgentCoachingSuggestion
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `agentActionSuggestions`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AgentCoachingSuggestionAgentActionSuggestion>]
        attr_accessor :agent_action_suggestions
      
        # 
        # Corresponds to the JSON property `applicableInstructions`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AgentCoachingInstruction>]
        attr_accessor :applicable_instructions
      
        # 
        # Corresponds to the JSON property `sampleResponses`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AgentCoachingSuggestionSampleResponse>]
        attr_accessor :sample_responses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_action_suggestions = args[:agent_action_suggestions] if args.key?(:agent_action_suggestions)
          @applicable_instructions = args[:applicable_instructions] if args.key?(:applicable_instructions)
          @sample_responses = args[:sample_responses] if args.key?(:sample_responses)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2AgentCoachingSuggestionAgentActionSuggestion
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `agentAction`
        # @return [String]
        attr_accessor :agent_action
      
        # 
        # Corresponds to the JSON property `duplicateCheckResult`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AgentCoachingSuggestionDuplicateCheckResult]
        attr_accessor :duplicate_check_result
      
        # 
        # Corresponds to the JSON property `sources`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AgentCoachingSuggestionSources]
        attr_accessor :sources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_action = args[:agent_action] if args.key?(:agent_action)
          @duplicate_check_result = args[:duplicate_check_result] if args.key?(:duplicate_check_result)
          @sources = args[:sources] if args.key?(:sources)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2AgentCoachingSuggestionDuplicateCheckResult
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `duplicateSuggestions`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AgentCoachingSuggestionDuplicateCheckResultDuplicateSuggestion>]
        attr_accessor :duplicate_suggestions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duplicate_suggestions = args[:duplicate_suggestions] if args.key?(:duplicate_suggestions)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2AgentCoachingSuggestionDuplicateCheckResultDuplicateSuggestion
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `answerRecord`
        # @return [String]
        attr_accessor :answer_record
      
        # 
        # Corresponds to the JSON property `similarityScore`
        # @return [Float]
        attr_accessor :similarity_score
      
        # 
        # Corresponds to the JSON property `sources`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AgentCoachingSuggestionSources]
        attr_accessor :sources
      
        # 
        # Corresponds to the JSON property `suggestionIndex`
        # @return [Fixnum]
        attr_accessor :suggestion_index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_record = args[:answer_record] if args.key?(:answer_record)
          @similarity_score = args[:similarity_score] if args.key?(:similarity_score)
          @sources = args[:sources] if args.key?(:sources)
          @suggestion_index = args[:suggestion_index] if args.key?(:suggestion_index)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2AgentCoachingSuggestionSampleResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `duplicateCheckResult`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AgentCoachingSuggestionDuplicateCheckResult]
        attr_accessor :duplicate_check_result
      
        # 
        # Corresponds to the JSON property `responseText`
        # @return [String]
        attr_accessor :response_text
      
        # 
        # Corresponds to the JSON property `sources`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AgentCoachingSuggestionSources]
        attr_accessor :sources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duplicate_check_result = args[:duplicate_check_result] if args.key?(:duplicate_check_result)
          @response_text = args[:response_text] if args.key?(:response_text)
          @sources = args[:sources] if args.key?(:sources)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2AgentCoachingSuggestionSources
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `instructionIndexes`
        # @return [Array<Fixnum>]
        attr_accessor :instruction_indexes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instruction_indexes = args[:instruction_indexes] if args.key?(:instruction_indexes)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2AnalyzeContentRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `assistQueryParams`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AssistQueryParameters]
        attr_accessor :assist_query_params
      
        # 
        # Corresponds to the JSON property `audioInput`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AudioInput]
        attr_accessor :audio_input
      
        # 
        # Corresponds to the JSON property `cxParameters`
        # @return [Hash<String,Object>]
        attr_accessor :cx_parameters
      
        # 
        # Corresponds to the JSON property `eventInput`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EventInput]
        attr_accessor :event_input
      
        # 
        # Corresponds to the JSON property `queryParams`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2QueryParameters]
        attr_accessor :query_params
      
        # 
        # Corresponds to the JSON property `replyAudioConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2OutputAudioConfig]
        attr_accessor :reply_audio_config
      
        # 
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # 
        # Corresponds to the JSON property `suggestionInput`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestionInput]
        attr_accessor :suggestion_input
      
        # 
        # Corresponds to the JSON property `textInput`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2TextInput]
        attr_accessor :text_input
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assist_query_params = args[:assist_query_params] if args.key?(:assist_query_params)
          @audio_input = args[:audio_input] if args.key?(:audio_input)
          @cx_parameters = args[:cx_parameters] if args.key?(:cx_parameters)
          @event_input = args[:event_input] if args.key?(:event_input)
          @query_params = args[:query_params] if args.key?(:query_params)
          @reply_audio_config = args[:reply_audio_config] if args.key?(:reply_audio_config)
          @request_id = args[:request_id] if args.key?(:request_id)
          @suggestion_input = args[:suggestion_input] if args.key?(:suggestion_input)
          @text_input = args[:text_input] if args.key?(:text_input)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2AnalyzeContentResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `automatedAgentReply`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AutomatedAgentReply]
        attr_accessor :automated_agent_reply
      
        # 
        # Corresponds to the JSON property `dtmfParameters`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2DtmfParameters]
        attr_accessor :dtmf_parameters
      
        # 
        # Corresponds to the JSON property `endUserSuggestionResults`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestionResult>]
        attr_accessor :end_user_suggestion_results
      
        # 
        # Corresponds to the JSON property `humanAgentSuggestionResults`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestionResult>]
        attr_accessor :human_agent_suggestion_results
      
        # 
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Message]
        attr_accessor :message
      
        # 
        # Corresponds to the JSON property `replyAudio`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2OutputAudio]
        attr_accessor :reply_audio
      
        # 
        # Corresponds to the JSON property `replyText`
        # @return [String]
        attr_accessor :reply_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @automated_agent_reply = args[:automated_agent_reply] if args.key?(:automated_agent_reply)
          @dtmf_parameters = args[:dtmf_parameters] if args.key?(:dtmf_parameters)
          @end_user_suggestion_results = args[:end_user_suggestion_results] if args.key?(:end_user_suggestion_results)
          @human_agent_suggestion_results = args[:human_agent_suggestion_results] if args.key?(:human_agent_suggestion_results)
          @message = args[:message] if args.key?(:message)
          @reply_audio = args[:reply_audio] if args.key?(:reply_audio)
          @reply_text = args[:reply_text] if args.key?(:reply_text)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2AnnotatedMessagePart
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `entityType`
        # @return [String]
        attr_accessor :entity_type
      
        # 
        # Corresponds to the JSON property `formattedValue`
        # @return [Object]
        attr_accessor :formatted_value
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity_type = args[:entity_type] if args.key?(:entity_type)
          @formatted_value = args[:formatted_value] if args.key?(:formatted_value)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2AnswerFeedback
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `agentAssistantDetailFeedback`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AgentAssistantFeedback]
        attr_accessor :agent_assistant_detail_feedback
      
        # 
        # Corresponds to the JSON property `clickTime`
        # @return [String]
        attr_accessor :click_time
      
        # 
        # Corresponds to the JSON property `clicked`
        # @return [Boolean]
        attr_accessor :clicked
        alias_method :clicked?, :clicked
      
        # 
        # Corresponds to the JSON property `correctnessLevel`
        # @return [String]
        attr_accessor :correctness_level
      
        # 
        # Corresponds to the JSON property `displayTime`
        # @return [String]
        attr_accessor :display_time
      
        # 
        # Corresponds to the JSON property `displayed`
        # @return [Boolean]
        attr_accessor :displayed
        alias_method :displayed?, :displayed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_assistant_detail_feedback = args[:agent_assistant_detail_feedback] if args.key?(:agent_assistant_detail_feedback)
          @click_time = args[:click_time] if args.key?(:click_time)
          @clicked = args[:clicked] if args.key?(:clicked)
          @correctness_level = args[:correctness_level] if args.key?(:correctness_level)
          @display_time = args[:display_time] if args.key?(:display_time)
          @displayed = args[:displayed] if args.key?(:displayed)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2AnswerRecord
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `agentAssistantRecord`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AgentAssistantRecord]
        attr_accessor :agent_assistant_record
      
        # 
        # Corresponds to the JSON property `answerFeedback`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AnswerFeedback]
        attr_accessor :answer_feedback
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_assistant_record = args[:agent_assistant_record] if args.key?(:agent_assistant_record)
          @answer_feedback = args[:answer_feedback] if args.key?(:answer_feedback)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ArticleAnswer
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `answerRecord`
        # @return [String]
        attr_accessor :answer_record
      
        # 
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # 
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # 
        # Corresponds to the JSON property `snippets`
        # @return [Array<String>]
        attr_accessor :snippets
      
        # 
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # 
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_record = args[:answer_record] if args.key?(:answer_record)
          @confidence = args[:confidence] if args.key?(:confidence)
          @metadata = args[:metadata] if args.key?(:metadata)
          @snippets = args[:snippets] if args.key?(:snippets)
          @title = args[:title] if args.key?(:title)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ArticleSuggestionModelMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `trainingModelType`
        # @return [String]
        attr_accessor :training_model_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @training_model_type = args[:training_model_type] if args.key?(:training_model_type)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2AssistQueryParameters
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `documentsMetadataFilters`
        # @return [Hash<String,String>]
        attr_accessor :documents_metadata_filters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @documents_metadata_filters = args[:documents_metadata_filters] if args.key?(:documents_metadata_filters)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2AudioInput
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `audio`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :audio
      
        # 
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2InputAudioConfig]
        attr_accessor :config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio = args[:audio] if args.key?(:audio)
          @config = args[:config] if args.key?(:config)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2AutomatedAgentConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `agent`
        # @return [String]
        attr_accessor :agent
      
        # 
        # Corresponds to the JSON property `sessionTtl`
        # @return [String]
        attr_accessor :session_ttl
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent = args[:agent] if args.key?(:agent)
          @session_ttl = args[:session_ttl] if args.key?(:session_ttl)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2AutomatedAgentReply
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `allowCancellation`
        # @return [Boolean]
        attr_accessor :allow_cancellation
        alias_method :allow_cancellation?, :allow_cancellation
      
        # 
        # Corresponds to the JSON property `automatedAgentReplyType`
        # @return [String]
        attr_accessor :automated_agent_reply_type
      
        # 
        # Corresponds to the JSON property `cxCurrentPage`
        # @return [String]
        attr_accessor :cx_current_page
      
        # 
        # Corresponds to the JSON property `detectIntentResponse`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2DetectIntentResponse]
        attr_accessor :detect_intent_response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_cancellation = args[:allow_cancellation] if args.key?(:allow_cancellation)
          @automated_agent_reply_type = args[:automated_agent_reply_type] if args.key?(:automated_agent_reply_type)
          @cx_current_page = args[:cx_current_page] if args.key?(:cx_current_page)
          @detect_intent_response = args[:detect_intent_response] if args.key?(:detect_intent_response)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2BatchCreateEntitiesRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityTypeEntity>]
        attr_accessor :entities
      
        # 
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entities = args[:entities] if args.key?(:entities)
          @language_code = args[:language_code] if args.key?(:language_code)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2BatchDeleteEntitiesRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `entityValues`
        # @return [Array<String>]
        attr_accessor :entity_values
      
        # 
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity_values = args[:entity_values] if args.key?(:entity_values)
          @language_code = args[:language_code] if args.key?(:language_code)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `entityTypeNames`
        # @return [Array<String>]
        attr_accessor :entity_type_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity_type_names = args[:entity_type_names] if args.key?(:entity_type_names)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2BatchDeleteIntentsRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `intents`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent>]
        attr_accessor :intents
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @intents = args[:intents] if args.key?(:intents)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2BatchUpdateEntitiesRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityTypeEntity>]
        attr_accessor :entities
      
        # 
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # 
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entities = args[:entities] if args.key?(:entities)
          @language_code = args[:language_code] if args.key?(:language_code)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `entityTypeBatchInline`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityTypeBatch]
        attr_accessor :entity_type_batch_inline
      
        # 
        # Corresponds to the JSON property `entityTypeBatchUri`
        # @return [String]
        attr_accessor :entity_type_batch_uri
      
        # 
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # 
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity_type_batch_inline = args[:entity_type_batch_inline] if args.key?(:entity_type_batch_inline)
          @entity_type_batch_uri = args[:entity_type_batch_uri] if args.key?(:entity_type_batch_uri)
          @language_code = args[:language_code] if args.key?(:language_code)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `entityTypes`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityType>]
        attr_accessor :entity_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity_types = args[:entity_types] if args.key?(:entity_types)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2BatchUpdateIntentsRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `intentBatchInline`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentBatch]
        attr_accessor :intent_batch_inline
      
        # 
        # Corresponds to the JSON property `intentBatchUri`
        # @return [String]
        attr_accessor :intent_batch_uri
      
        # 
        # Corresponds to the JSON property `intentView`
        # @return [String]
        attr_accessor :intent_view
      
        # 
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # 
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @intent_batch_inline = args[:intent_batch_inline] if args.key?(:intent_batch_inline)
          @intent_batch_uri = args[:intent_batch_uri] if args.key?(:intent_batch_uri)
          @intent_view = args[:intent_view] if args.key?(:intent_view)
          @language_code = args[:language_code] if args.key?(:language_code)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2BatchUpdateIntentsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `intents`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent>]
        attr_accessor :intents
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @intents = args[:intents] if args.key?(:intents)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conversationProfile`
        # @return [String]
        attr_accessor :conversation_profile
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `participantRole`
        # @return [String]
        attr_accessor :participant_role
      
        # 
        # Corresponds to the JSON property `suggestionFeatureType`
        # @return [String]
        attr_accessor :suggestion_feature_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_profile = args[:conversation_profile] if args.key?(:conversation_profile)
          @create_time = args[:create_time] if args.key?(:create_time)
          @participant_role = args[:participant_role] if args.key?(:participant_role)
          @suggestion_feature_type = args[:suggestion_feature_type] if args.key?(:suggestion_feature_type)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ClearSuggestionFeatureConfigRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `participantRole`
        # @return [String]
        attr_accessor :participant_role
      
        # 
        # Corresponds to the JSON property `suggestionFeatureType`
        # @return [String]
        attr_accessor :suggestion_feature_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @participant_role = args[:participant_role] if args.key?(:participant_role)
          @suggestion_feature_type = args[:suggestion_feature_type] if args.key?(:suggestion_feature_type)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2CompleteConversationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2Connection
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `connectionId`
        # @return [String]
        attr_accessor :connection_id
      
        # 
        # Corresponds to the JSON property `errorDetails`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConnectionErrorDetails]
        attr_accessor :error_details
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # 
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connection_id = args[:connection_id] if args.key?(:connection_id)
          @error_details = args[:error_details] if args.key?(:error_details)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ConnectionErrorDetails
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `certificateState`
        # @return [String]
        attr_accessor :certificate_state
      
        # 
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate_state = args[:certificate_state] if args.key?(:certificate_state)
          @error_message = args[:error_message] if args.key?(:error_message)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2Context
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `lifespanCount`
        # @return [Fixnum]
        attr_accessor :lifespan_count
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Object>]
        attr_accessor :parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lifespan_count = args[:lifespan_count] if args.key?(:lifespan_count)
          @name = args[:name] if args.key?(:name)
          @parameters = args[:parameters] if args.key?(:parameters)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2Conversation
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conversationProfile`
        # @return [String]
        attr_accessor :conversation_profile
      
        # 
        # Corresponds to the JSON property `conversationStage`
        # @return [String]
        attr_accessor :conversation_stage
      
        # 
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # 
        # Corresponds to the JSON property `ingestedContextReferences`
        # @return [Hash<String,Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationContextReference>]
        attr_accessor :ingested_context_references
      
        # 
        # Corresponds to the JSON property `lifecycleState`
        # @return [String]
        attr_accessor :lifecycle_state
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `phoneNumber`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationPhoneNumber]
        attr_accessor :phone_number
      
        # 
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # 
        # Corresponds to the JSON property `telephonyConnectionInfo`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationTelephonyConnectionInfo]
        attr_accessor :telephony_connection_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_profile = args[:conversation_profile] if args.key?(:conversation_profile)
          @conversation_stage = args[:conversation_stage] if args.key?(:conversation_stage)
          @end_time = args[:end_time] if args.key?(:end_time)
          @ingested_context_references = args[:ingested_context_references] if args.key?(:ingested_context_references)
          @lifecycle_state = args[:lifecycle_state] if args.key?(:lifecycle_state)
          @name = args[:name] if args.key?(:name)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @start_time = args[:start_time] if args.key?(:start_time)
          @telephony_connection_info = args[:telephony_connection_info] if args.key?(:telephony_connection_info)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ConversationContext
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `messageEntries`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2MessageEntry>]
        attr_accessor :message_entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message_entries = args[:message_entries] if args.key?(:message_entries)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ConversationContextReference
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `contextContents`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationContextReferenceContextContent>]
        attr_accessor :context_contents
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # 
        # Corresponds to the JSON property `updateMode`
        # @return [String]
        attr_accessor :update_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context_contents = args[:context_contents] if args.key?(:context_contents)
          @create_time = args[:create_time] if args.key?(:create_time)
          @language_code = args[:language_code] if args.key?(:language_code)
          @update_mode = args[:update_mode] if args.key?(:update_mode)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ConversationContextReferenceContextContent
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `answerRecord`
        # @return [String]
        attr_accessor :answer_record
      
        # 
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # 
        # Corresponds to the JSON property `contentFormat`
        # @return [String]
        attr_accessor :content_format
      
        # 
        # Corresponds to the JSON property `ingestionTime`
        # @return [String]
        attr_accessor :ingestion_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_record = args[:answer_record] if args.key?(:answer_record)
          @content = args[:content] if args.key?(:content)
          @content_format = args[:content_format] if args.key?(:content_format)
          @ingestion_time = args[:ingestion_time] if args.key?(:ingestion_time)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ConversationDataset
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conversationCount`
        # @return [Fixnum]
        attr_accessor :conversation_count
      
        # 
        # Corresponds to the JSON property `conversationInfo`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationInfo]
        attr_accessor :conversation_info
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `inputConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2InputConfig]
        attr_accessor :input_config
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `satisfiesPzi`
        # @return [Boolean]
        attr_accessor :satisfies_pzi
        alias_method :satisfies_pzi?, :satisfies_pzi
      
        # 
        # Corresponds to the JSON property `satisfiesPzs`
        # @return [Boolean]
        attr_accessor :satisfies_pzs
        alias_method :satisfies_pzs?, :satisfies_pzs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_count = args[:conversation_count] if args.key?(:conversation_count)
          @conversation_info = args[:conversation_info] if args.key?(:conversation_info)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @input_config = args[:input_config] if args.key?(:input_config)
          @name = args[:name] if args.key?(:name)
          @satisfies_pzi = args[:satisfies_pzi] if args.key?(:satisfies_pzi)
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ConversationEvent
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conversation`
        # @return [String]
        attr_accessor :conversation
      
        # 
        # Corresponds to the JSON property `errorStatus`
        # @return [Google::Apis::DialogflowV2::GoogleRpcStatus]
        attr_accessor :error_status
      
        # 
        # Corresponds to the JSON property `newMessagePayload`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Message]
        attr_accessor :new_message_payload
      
        # 
        # Corresponds to the JSON property `newRecognitionResultPayload`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2StreamingRecognitionResult]
        attr_accessor :new_recognition_result_payload
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation = args[:conversation] if args.key?(:conversation)
          @error_status = args[:error_status] if args.key?(:error_status)
          @new_message_payload = args[:new_message_payload] if args.key?(:new_message_payload)
          @new_recognition_result_payload = args[:new_recognition_result_payload] if args.key?(:new_recognition_result_payload)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ConversationInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_code = args[:language_code] if args.key?(:language_code)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ConversationModel
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `articleSuggestionModelMetadata`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ArticleSuggestionModelMetadata]
        attr_accessor :article_suggestion_model_metadata
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `datasets`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2InputDataset>]
        attr_accessor :datasets
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `satisfiesPzi`
        # @return [Boolean]
        attr_accessor :satisfies_pzi
        alias_method :satisfies_pzi?, :satisfies_pzi
      
        # 
        # Corresponds to the JSON property `satisfiesPzs`
        # @return [Boolean]
        attr_accessor :satisfies_pzs
        alias_method :satisfies_pzs?, :satisfies_pzs
      
        # 
        # Corresponds to the JSON property `smartReplyModelMetadata`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SmartReplyModelMetadata]
        attr_accessor :smart_reply_model_metadata
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @article_suggestion_model_metadata = args[:article_suggestion_model_metadata] if args.key?(:article_suggestion_model_metadata)
          @create_time = args[:create_time] if args.key?(:create_time)
          @datasets = args[:datasets] if args.key?(:datasets)
          @display_name = args[:display_name] if args.key?(:display_name)
          @language_code = args[:language_code] if args.key?(:language_code)
          @name = args[:name] if args.key?(:name)
          @satisfies_pzi = args[:satisfies_pzi] if args.key?(:satisfies_pzi)
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
          @smart_reply_model_metadata = args[:smart_reply_model_metadata] if args.key?(:smart_reply_model_metadata)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ConversationModelEvaluation
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `evaluationConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EvaluationConfig]
        attr_accessor :evaluation_config
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `rawHumanEvalTemplateCsv`
        # @return [String]
        attr_accessor :raw_human_eval_template_csv
      
        # 
        # Corresponds to the JSON property `smartReplyMetrics`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SmartReplyMetrics]
        attr_accessor :smart_reply_metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @evaluation_config = args[:evaluation_config] if args.key?(:evaluation_config)
          @name = args[:name] if args.key?(:name)
          @raw_human_eval_template_csv = args[:raw_human_eval_template_csv] if args.key?(:raw_human_eval_template_csv)
          @smart_reply_metrics = args[:smart_reply_metrics] if args.key?(:smart_reply_metrics)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ConversationPhoneNumber
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `countryCode`
        # @return [Fixnum]
        attr_accessor :country_code
      
        # 
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country_code = args[:country_code] if args.key?(:country_code)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ConversationProfile
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `automatedAgentConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AutomatedAgentConfig]
        attr_accessor :automated_agent_config
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `humanAgentAssistantConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2HumanAgentAssistantConfig]
        attr_accessor :human_agent_assistant_config
      
        # 
        # Corresponds to the JSON property `humanAgentHandoffConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2HumanAgentHandoffConfig]
        attr_accessor :human_agent_handoff_config
      
        # 
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # 
        # Corresponds to the JSON property `loggingConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2LoggingConfig]
        attr_accessor :logging_config
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `newMessageEventNotificationConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2NotificationConfig]
        attr_accessor :new_message_event_notification_config
      
        # 
        # Corresponds to the JSON property `newRecognitionResultNotificationConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2NotificationConfig]
        attr_accessor :new_recognition_result_notification_config
      
        # 
        # Corresponds to the JSON property `notificationConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2NotificationConfig]
        attr_accessor :notification_config
      
        # 
        # Corresponds to the JSON property `securitySettings`
        # @return [String]
        attr_accessor :security_settings
      
        # 
        # Corresponds to the JSON property `sttConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SpeechToTextConfig]
        attr_accessor :stt_config
      
        # 
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        # 
        # Corresponds to the JSON property `ttsConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SynthesizeSpeechConfig]
        attr_accessor :tts_config
      
        # 
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @automated_agent_config = args[:automated_agent_config] if args.key?(:automated_agent_config)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @human_agent_assistant_config = args[:human_agent_assistant_config] if args.key?(:human_agent_assistant_config)
          @human_agent_handoff_config = args[:human_agent_handoff_config] if args.key?(:human_agent_handoff_config)
          @language_code = args[:language_code] if args.key?(:language_code)
          @logging_config = args[:logging_config] if args.key?(:logging_config)
          @name = args[:name] if args.key?(:name)
          @new_message_event_notification_config = args[:new_message_event_notification_config] if args.key?(:new_message_event_notification_config)
          @new_recognition_result_notification_config = args[:new_recognition_result_notification_config] if args.key?(:new_recognition_result_notification_config)
          @notification_config = args[:notification_config] if args.key?(:notification_config)
          @security_settings = args[:security_settings] if args.key?(:security_settings)
          @stt_config = args[:stt_config] if args.key?(:stt_config)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @tts_config = args[:tts_config] if args.key?(:tts_config)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ConversationTelephonyConnectionInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dialedNumber`
        # @return [String]
        attr_accessor :dialed_number
      
        # 
        # Corresponds to the JSON property `extraMimeContents`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationTelephonyConnectionInfoMimeContent>]
        attr_accessor :extra_mime_contents
      
        # 
        # Corresponds to the JSON property `sdp`
        # @return [String]
        attr_accessor :sdp
      
        # 
        # Corresponds to the JSON property `sipHeaders`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationTelephonyConnectionInfoSipHeader>]
        attr_accessor :sip_headers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dialed_number = args[:dialed_number] if args.key?(:dialed_number)
          @extra_mime_contents = args[:extra_mime_contents] if args.key?(:extra_mime_contents)
          @sdp = args[:sdp] if args.key?(:sdp)
          @sip_headers = args[:sip_headers] if args.key?(:sip_headers)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ConversationTelephonyConnectionInfoMimeContent
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `content`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :content
      
        # 
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ConversationTelephonyConnectionInfoSipHeader
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2CreateConversationDatasetOperationMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conversationDataset`
        # @return [String]
        attr_accessor :conversation_dataset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_dataset = args[:conversation_dataset] if args.key?(:conversation_dataset)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conversationModel`
        # @return [String]
        attr_accessor :conversation_model
      
        # 
        # Corresponds to the JSON property `conversationModelEvaluation`
        # @return [String]
        attr_accessor :conversation_model_evaluation
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_model = args[:conversation_model] if args.key?(:conversation_model)
          @conversation_model_evaluation = args[:conversation_model_evaluation] if args.key?(:conversation_model_evaluation)
          @create_time = args[:create_time] if args.key?(:create_time)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2CreateConversationModelEvaluationRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conversationModelEvaluation`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationModelEvaluation]
        attr_accessor :conversation_model_evaluation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_model_evaluation = args[:conversation_model_evaluation] if args.key?(:conversation_model_evaluation)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2CreateConversationModelOperationMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conversationModel`
        # @return [String]
        attr_accessor :conversation_model
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `doneTime`
        # @return [String]
        attr_accessor :done_time
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_model = args[:conversation_model] if args.key?(:conversation_model)
          @create_time = args[:create_time] if args.key?(:create_time)
          @done_time = args[:done_time] if args.key?(:done_time)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2CustomPronunciationParams
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `phoneticEncoding`
        # @return [String]
        attr_accessor :phonetic_encoding
      
        # 
        # Corresponds to the JSON property `phrase`
        # @return [String]
        attr_accessor :phrase
      
        # 
        # Corresponds to the JSON property `pronunciation`
        # @return [String]
        attr_accessor :pronunciation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @phonetic_encoding = args[:phonetic_encoding] if args.key?(:phonetic_encoding)
          @phrase = args[:phrase] if args.key?(:phrase)
          @pronunciation = args[:pronunciation] if args.key?(:pronunciation)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2DeleteConversationDatasetOperationMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2DeleteConversationModelOperationMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conversationModel`
        # @return [String]
        attr_accessor :conversation_model
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `doneTime`
        # @return [String]
        attr_accessor :done_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_model = args[:conversation_model] if args.key?(:conversation_model)
          @create_time = args[:create_time] if args.key?(:create_time)
          @done_time = args[:done_time] if args.key?(:done_time)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2DeployConversationModelOperationMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conversationModel`
        # @return [String]
        attr_accessor :conversation_model
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `doneTime`
        # @return [String]
        attr_accessor :done_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_model = args[:conversation_model] if args.key?(:conversation_model)
          @create_time = args[:create_time] if args.key?(:create_time)
          @done_time = args[:done_time] if args.key?(:done_time)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2DeployConversationModelRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2DetectIntentRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `inputAudio`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :input_audio
      
        # 
        # Corresponds to the JSON property `outputAudioConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2OutputAudioConfig]
        attr_accessor :output_audio_config
      
        # 
        # Corresponds to the JSON property `outputAudioConfigMask`
        # @return [String]
        attr_accessor :output_audio_config_mask
      
        # 
        # Corresponds to the JSON property `queryInput`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2QueryInput]
        attr_accessor :query_input
      
        # 
        # Corresponds to the JSON property `queryParams`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2QueryParameters]
        attr_accessor :query_params
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input_audio = args[:input_audio] if args.key?(:input_audio)
          @output_audio_config = args[:output_audio_config] if args.key?(:output_audio_config)
          @output_audio_config_mask = args[:output_audio_config_mask] if args.key?(:output_audio_config_mask)
          @query_input = args[:query_input] if args.key?(:query_input)
          @query_params = args[:query_params] if args.key?(:query_params)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2DetectIntentResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `outputAudio`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :output_audio
      
        # 
        # Corresponds to the JSON property `outputAudioConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2OutputAudioConfig]
        attr_accessor :output_audio_config
      
        # 
        # Corresponds to the JSON property `queryResult`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2QueryResult]
        attr_accessor :query_result
      
        # 
        # Corresponds to the JSON property `responseId`
        # @return [String]
        attr_accessor :response_id
      
        # 
        # Corresponds to the JSON property `webhookStatus`
        # @return [Google::Apis::DialogflowV2::GoogleRpcStatus]
        attr_accessor :webhook_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @output_audio = args[:output_audio] if args.key?(:output_audio)
          @output_audio_config = args[:output_audio_config] if args.key?(:output_audio_config)
          @query_result = args[:query_result] if args.key?(:query_result)
          @response_id = args[:response_id] if args.key?(:response_id)
          @webhook_status = args[:webhook_status] if args.key?(:webhook_status)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2DialogflowAssistAnswer
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `answerRecord`
        # @return [String]
        attr_accessor :answer_record
      
        # 
        # Corresponds to the JSON property `intentSuggestion`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentSuggestion]
        attr_accessor :intent_suggestion
      
        # 
        # Corresponds to the JSON property `queryResult`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2QueryResult]
        attr_accessor :query_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_record = args[:answer_record] if args.key?(:answer_record)
          @intent_suggestion = args[:intent_suggestion] if args.key?(:intent_suggestion)
          @query_result = args[:query_result] if args.key?(:query_result)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2Document
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `contentUri`
        # @return [String]
        attr_accessor :content_uri
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `enableAutoReload`
        # @return [Boolean]
        attr_accessor :enable_auto_reload
        alias_method :enable_auto_reload?, :enable_auto_reload
      
        # 
        # Corresponds to the JSON property `knowledgeTypes`
        # @return [Array<String>]
        attr_accessor :knowledge_types
      
        # 
        # Corresponds to the JSON property `latestReloadStatus`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2DocumentReloadStatus]
        attr_accessor :latest_reload_status
      
        # 
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # 
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `rawContent`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :raw_content
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_uri = args[:content_uri] if args.key?(:content_uri)
          @display_name = args[:display_name] if args.key?(:display_name)
          @enable_auto_reload = args[:enable_auto_reload] if args.key?(:enable_auto_reload)
          @knowledge_types = args[:knowledge_types] if args.key?(:knowledge_types)
          @latest_reload_status = args[:latest_reload_status] if args.key?(:latest_reload_status)
          @metadata = args[:metadata] if args.key?(:metadata)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @name = args[:name] if args.key?(:name)
          @raw_content = args[:raw_content] if args.key?(:raw_content)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2DocumentReloadStatus
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DialogflowV2::GoogleRpcStatus]
        attr_accessor :status
      
        # 
        # Corresponds to the JSON property `time`
        # @return [String]
        attr_accessor :time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @status = args[:status] if args.key?(:status)
          @time = args[:time] if args.key?(:time)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2DtmfParameters
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `acceptsDtmfInput`
        # @return [Boolean]
        attr_accessor :accepts_dtmf_input
        alias_method :accepts_dtmf_input?, :accepts_dtmf_input
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accepts_dtmf_input = args[:accepts_dtmf_input] if args.key?(:accepts_dtmf_input)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2EncryptionSpec
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `kmsKey`
        # @return [String]
        attr_accessor :kms_key
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_key = args[:kms_key] if args.key?(:kms_key)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2EntityType
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `autoExpansionMode`
        # @return [String]
        attr_accessor :auto_expansion_mode
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `enableFuzzyExtraction`
        # @return [Boolean]
        attr_accessor :enable_fuzzy_extraction
        alias_method :enable_fuzzy_extraction?, :enable_fuzzy_extraction
      
        # 
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityTypeEntity>]
        attr_accessor :entities
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_expansion_mode = args[:auto_expansion_mode] if args.key?(:auto_expansion_mode)
          @display_name = args[:display_name] if args.key?(:display_name)
          @enable_fuzzy_extraction = args[:enable_fuzzy_extraction] if args.key?(:enable_fuzzy_extraction)
          @entities = args[:entities] if args.key?(:entities)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2EntityTypeBatch
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `entityTypes`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityType>]
        attr_accessor :entity_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity_types = args[:entity_types] if args.key?(:entity_types)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2EntityTypeEntity
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `synonyms`
        # @return [Array<String>]
        attr_accessor :synonyms
      
        # 
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @synonyms = args[:synonyms] if args.key?(:synonyms)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2Environment
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `agentVersion`
        # @return [String]
        attr_accessor :agent_version
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `fulfillment`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Fulfillment]
        attr_accessor :fulfillment
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # 
        # Corresponds to the JSON property `textToSpeechSettings`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2TextToSpeechSettings]
        attr_accessor :text_to_speech_settings
      
        # 
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_version = args[:agent_version] if args.key?(:agent_version)
          @description = args[:description] if args.key?(:description)
          @fulfillment = args[:fulfillment] if args.key?(:fulfillment)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @text_to_speech_settings = args[:text_to_speech_settings] if args.key?(:text_to_speech_settings)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2EnvironmentHistory
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EnvironmentHistoryEntry>]
        attr_accessor :entries
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2EnvironmentHistoryEntry
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `agentVersion`
        # @return [String]
        attr_accessor :agent_version
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_version = args[:agent_version] if args.key?(:agent_version)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2EvaluationConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `datasets`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2InputDataset>]
        attr_accessor :datasets
      
        # 
        # Corresponds to the JSON property `smartComposeConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EvaluationConfigSmartComposeConfig]
        attr_accessor :smart_compose_config
      
        # 
        # Corresponds to the JSON property `smartReplyConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EvaluationConfigSmartReplyConfig]
        attr_accessor :smart_reply_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @datasets = args[:datasets] if args.key?(:datasets)
          @smart_compose_config = args[:smart_compose_config] if args.key?(:smart_compose_config)
          @smart_reply_config = args[:smart_reply_config] if args.key?(:smart_reply_config)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2EvaluationConfigSmartComposeConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `allowlistDocument`
        # @return [String]
        attr_accessor :allowlist_document
      
        # 
        # Corresponds to the JSON property `maxResultCount`
        # @return [Fixnum]
        attr_accessor :max_result_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowlist_document = args[:allowlist_document] if args.key?(:allowlist_document)
          @max_result_count = args[:max_result_count] if args.key?(:max_result_count)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2EvaluationConfigSmartReplyConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `allowlistDocument`
        # @return [String]
        attr_accessor :allowlist_document
      
        # 
        # Corresponds to the JSON property `maxResultCount`
        # @return [Fixnum]
        attr_accessor :max_result_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowlist_document = args[:allowlist_document] if args.key?(:allowlist_document)
          @max_result_count = args[:max_result_count] if args.key?(:max_result_count)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2EvaluationStatus
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # 
        # Corresponds to the JSON property `pipelineStatus`
        # @return [Google::Apis::DialogflowV2::GoogleRpcStatus]
        attr_accessor :pipeline_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @pipeline_status = args[:pipeline_status] if args.key?(:pipeline_status)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2EventInput
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Object>]
        attr_accessor :parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_code = args[:language_code] if args.key?(:language_code)
          @name = args[:name] if args.key?(:name)
          @parameters = args[:parameters] if args.key?(:parameters)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ExportAgentRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `agentUri`
        # @return [String]
        attr_accessor :agent_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_uri = args[:agent_uri] if args.key?(:agent_uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ExportAgentResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `agentContent`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :agent_content
      
        # 
        # Corresponds to the JSON property `agentUri`
        # @return [String]
        attr_accessor :agent_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_content = args[:agent_content] if args.key?(:agent_content)
          @agent_uri = args[:agent_uri] if args.key?(:agent_uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ExportDocumentRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `exportFullContent`
        # @return [Boolean]
        attr_accessor :export_full_content
        alias_method :export_full_content?, :export_full_content
      
        # 
        # Corresponds to the JSON property `gcsDestination`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2GcsDestination]
        attr_accessor :gcs_destination
      
        # 
        # Corresponds to the JSON property `smartMessagingPartialUpdate`
        # @return [Boolean]
        attr_accessor :smart_messaging_partial_update
        alias_method :smart_messaging_partial_update?, :smart_messaging_partial_update
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @export_full_content = args[:export_full_content] if args.key?(:export_full_content)
          @gcs_destination = args[:gcs_destination] if args.key?(:gcs_destination)
          @smart_messaging_partial_update = args[:smart_messaging_partial_update] if args.key?(:smart_messaging_partial_update)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ExportOperationMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `exportedGcsDestination`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2GcsDestination]
        attr_accessor :exported_gcs_destination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exported_gcs_destination = args[:exported_gcs_destination] if args.key?(:exported_gcs_destination)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2FaqAnswer
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `answer`
        # @return [String]
        attr_accessor :answer
      
        # 
        # Corresponds to the JSON property `answerRecord`
        # @return [String]
        attr_accessor :answer_record
      
        # 
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # 
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # 
        # Corresponds to the JSON property `question`
        # @return [String]
        attr_accessor :question
      
        # 
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer = args[:answer] if args.key?(:answer)
          @answer_record = args[:answer_record] if args.key?(:answer_record)
          @confidence = args[:confidence] if args.key?(:confidence)
          @metadata = args[:metadata] if args.key?(:metadata)
          @question = args[:question] if args.key?(:question)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2FewShotExample
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conversationContext`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationContext]
        attr_accessor :conversation_context
      
        # 
        # Corresponds to the JSON property `extraInfo`
        # @return [Hash<String,String>]
        attr_accessor :extra_info
      
        # 
        # Corresponds to the JSON property `output`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2GeneratorSuggestion]
        attr_accessor :output
      
        # 
        # Corresponds to the JSON property `summarizationSectionList`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SummarizationSectionList]
        attr_accessor :summarization_section_list
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_context = args[:conversation_context] if args.key?(:conversation_context)
          @extra_info = args[:extra_info] if args.key?(:extra_info)
          @output = args[:output] if args.key?(:output)
          @summarization_section_list = args[:summarization_section_list] if args.key?(:summarization_section_list)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2FreeFormContext
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2FreeFormSuggestion
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `response`
        # @return [String]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2Fulfillment
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # 
        # Corresponds to the JSON property `features`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2FulfillmentFeature>]
        attr_accessor :features
      
        # 
        # Corresponds to the JSON property `genericWebService`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2FulfillmentGenericWebService]
        attr_accessor :generic_web_service
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @enabled = args[:enabled] if args.key?(:enabled)
          @features = args[:features] if args.key?(:features)
          @generic_web_service = args[:generic_web_service] if args.key?(:generic_web_service)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2FulfillmentFeature
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2FulfillmentGenericWebService
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `isCloudFunction`
        # @return [Boolean]
        attr_accessor :is_cloud_function
        alias_method :is_cloud_function?, :is_cloud_function
      
        # 
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # 
        # Corresponds to the JSON property `requestHeaders`
        # @return [Hash<String,String>]
        attr_accessor :request_headers
      
        # 
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        # 
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @is_cloud_function = args[:is_cloud_function] if args.key?(:is_cloud_function)
          @password = args[:password] if args.key?(:password)
          @request_headers = args[:request_headers] if args.key?(:request_headers)
          @uri = args[:uri] if args.key?(:uri)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2GcsDestination
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2GcsSources
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `uris`
        # @return [Array<String>]
        attr_accessor :uris
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uris = args[:uris] if args.key?(:uris)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2GenerateStatelessSuggestionRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `contextReferences`
        # @return [Hash<String,Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationContextReference>]
        attr_accessor :context_references
      
        # 
        # Corresponds to the JSON property `conversationContext`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationContext]
        attr_accessor :conversation_context
      
        # 
        # Corresponds to the JSON property `generator`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Generator]
        attr_accessor :generator
      
        # 
        # Corresponds to the JSON property `generatorName`
        # @return [String]
        attr_accessor :generator_name
      
        # 
        # Corresponds to the JSON property `securitySettings`
        # @return [String]
        attr_accessor :security_settings
      
        # 
        # Corresponds to the JSON property `triggerEvents`
        # @return [Array<String>]
        attr_accessor :trigger_events
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context_references = args[:context_references] if args.key?(:context_references)
          @conversation_context = args[:conversation_context] if args.key?(:conversation_context)
          @generator = args[:generator] if args.key?(:generator)
          @generator_name = args[:generator_name] if args.key?(:generator_name)
          @security_settings = args[:security_settings] if args.key?(:security_settings)
          @trigger_events = args[:trigger_events] if args.key?(:trigger_events)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2GenerateStatelessSuggestionResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `generatorSuggestion`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2GeneratorSuggestion]
        attr_accessor :generator_suggestion
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @generator_suggestion = args[:generator_suggestion] if args.key?(:generator_suggestion)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2GenerateStatelessSummaryRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conversationProfile`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationProfile]
        attr_accessor :conversation_profile
      
        # 
        # Corresponds to the JSON property `latestMessage`
        # @return [String]
        attr_accessor :latest_message
      
        # 
        # Corresponds to the JSON property `maxContextSize`
        # @return [Fixnum]
        attr_accessor :max_context_size
      
        # 
        # Corresponds to the JSON property `statelessConversation`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2GenerateStatelessSummaryRequestMinimalConversation]
        attr_accessor :stateless_conversation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_profile = args[:conversation_profile] if args.key?(:conversation_profile)
          @latest_message = args[:latest_message] if args.key?(:latest_message)
          @max_context_size = args[:max_context_size] if args.key?(:max_context_size)
          @stateless_conversation = args[:stateless_conversation] if args.key?(:stateless_conversation)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2GenerateStatelessSummaryRequestMinimalConversation
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Message>]
        attr_accessor :messages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @messages = args[:messages] if args.key?(:messages)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2GenerateStatelessSummaryResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `contextSize`
        # @return [Fixnum]
        attr_accessor :context_size
      
        # 
        # Corresponds to the JSON property `latestMessage`
        # @return [String]
        attr_accessor :latest_message
      
        # 
        # Corresponds to the JSON property `summary`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2GenerateStatelessSummaryResponseSummary]
        attr_accessor :summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context_size = args[:context_size] if args.key?(:context_size)
          @latest_message = args[:latest_message] if args.key?(:latest_message)
          @summary = args[:summary] if args.key?(:summary)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2GenerateStatelessSummaryResponseSummary
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `baselineModelVersion`
        # @return [String]
        attr_accessor :baseline_model_version
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # 
        # Corresponds to the JSON property `textSections`
        # @return [Hash<String,String>]
        attr_accessor :text_sections
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @baseline_model_version = args[:baseline_model_version] if args.key?(:baseline_model_version)
          @text = args[:text] if args.key?(:text)
          @text_sections = args[:text_sections] if args.key?(:text_sections)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2GenerateSuggestionsRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `latestMessage`
        # @return [String]
        attr_accessor :latest_message
      
        # 
        # Corresponds to the JSON property `triggerEvents`
        # @return [Array<String>]
        attr_accessor :trigger_events
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @latest_message = args[:latest_message] if args.key?(:latest_message)
          @trigger_events = args[:trigger_events] if args.key?(:trigger_events)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2GenerateSuggestionsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `generatorSuggestionAnswers`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2GenerateSuggestionsResponseGeneratorSuggestionAnswer>]
        attr_accessor :generator_suggestion_answers
      
        # 
        # Corresponds to the JSON property `latestMessage`
        # @return [String]
        attr_accessor :latest_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @generator_suggestion_answers = args[:generator_suggestion_answers] if args.key?(:generator_suggestion_answers)
          @latest_message = args[:latest_message] if args.key?(:latest_message)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2GenerateSuggestionsResponseGeneratorSuggestionAnswer
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `answerRecord`
        # @return [String]
        attr_accessor :answer_record
      
        # 
        # Corresponds to the JSON property `generatorSuggestion`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2GeneratorSuggestion]
        attr_accessor :generator_suggestion
      
        # 
        # Corresponds to the JSON property `sourceGenerator`
        # @return [String]
        attr_accessor :source_generator
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_record = args[:answer_record] if args.key?(:answer_record)
          @generator_suggestion = args[:generator_suggestion] if args.key?(:generator_suggestion)
          @source_generator = args[:source_generator] if args.key?(:source_generator)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2Generator
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `agentCoachingContext`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AgentCoachingContext]
        attr_accessor :agent_coaching_context
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `freeFormContext`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2FreeFormContext]
        attr_accessor :free_form_context
      
        # 
        # Corresponds to the JSON property `inferenceParameter`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2InferenceParameter]
        attr_accessor :inference_parameter
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `publishedModel`
        # @return [String]
        attr_accessor :published_model
      
        # 
        # Corresponds to the JSON property `suggestionDedupingConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestionDedupingConfig]
        attr_accessor :suggestion_deduping_config
      
        # 
        # Corresponds to the JSON property `summarizationContext`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SummarizationContext]
        attr_accessor :summarization_context
      
        # 
        # Corresponds to the JSON property `tools`
        # @return [Array<String>]
        attr_accessor :tools
      
        # 
        # Corresponds to the JSON property `triggerEvent`
        # @return [String]
        attr_accessor :trigger_event
      
        # 
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_coaching_context = args[:agent_coaching_context] if args.key?(:agent_coaching_context)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @free_form_context = args[:free_form_context] if args.key?(:free_form_context)
          @inference_parameter = args[:inference_parameter] if args.key?(:inference_parameter)
          @name = args[:name] if args.key?(:name)
          @published_model = args[:published_model] if args.key?(:published_model)
          @suggestion_deduping_config = args[:suggestion_deduping_config] if args.key?(:suggestion_deduping_config)
          @summarization_context = args[:summarization_context] if args.key?(:summarization_context)
          @tools = args[:tools] if args.key?(:tools)
          @trigger_event = args[:trigger_event] if args.key?(:trigger_event)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2GeneratorEvaluation
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `completeTime`
        # @return [String]
        attr_accessor :complete_time
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `evaluationStatus`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EvaluationStatus]
        attr_accessor :evaluation_status
      
        # 
        # Corresponds to the JSON property `generatorEvaluationConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2GeneratorEvaluationConfig]
        attr_accessor :generator_evaluation_config
      
        # 
        # Corresponds to the JSON property `initialGenerator`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Generator]
        attr_accessor :initial_generator
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `satisfiesPzi`
        # @return [Boolean]
        attr_accessor :satisfies_pzi
        alias_method :satisfies_pzi?, :satisfies_pzi
      
        # 
        # Corresponds to the JSON property `satisfiesPzs`
        # @return [Boolean]
        attr_accessor :satisfies_pzs
        alias_method :satisfies_pzs?, :satisfies_pzs
      
        # 
        # Corresponds to the JSON property `summarizationMetrics`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SummarizationEvaluationMetrics]
        attr_accessor :summarization_metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @complete_time = args[:complete_time] if args.key?(:complete_time)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @evaluation_status = args[:evaluation_status] if args.key?(:evaluation_status)
          @generator_evaluation_config = args[:generator_evaluation_config] if args.key?(:generator_evaluation_config)
          @initial_generator = args[:initial_generator] if args.key?(:initial_generator)
          @name = args[:name] if args.key?(:name)
          @satisfies_pzi = args[:satisfies_pzi] if args.key?(:satisfies_pzi)
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
          @summarization_metrics = args[:summarization_metrics] if args.key?(:summarization_metrics)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2GeneratorEvaluationConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `inputDataConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2GeneratorEvaluationConfigInputDataConfig]
        attr_accessor :input_data_config
      
        # 
        # Corresponds to the JSON property `outputGcsBucketPath`
        # @return [String]
        attr_accessor :output_gcs_bucket_path
      
        # 
        # Corresponds to the JSON property `summarizationConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2GeneratorEvaluationConfigSummarizationConfig]
        attr_accessor :summarization_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input_data_config = args[:input_data_config] if args.key?(:input_data_config)
          @output_gcs_bucket_path = args[:output_gcs_bucket_path] if args.key?(:output_gcs_bucket_path)
          @summarization_config = args[:summarization_config] if args.key?(:summarization_config)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2GeneratorEvaluationConfigAgentAssistInputDataConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # 
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2GeneratorEvaluationConfigDatasetInputDataConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset = args[:dataset] if args.key?(:dataset)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2GeneratorEvaluationConfigInputDataConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `agentAssistInputDataConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2GeneratorEvaluationConfigAgentAssistInputDataConfig]
        attr_accessor :agent_assist_input_data_config
      
        # 
        # Corresponds to the JSON property `datasetInputDataConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2GeneratorEvaluationConfigDatasetInputDataConfig]
        attr_accessor :dataset_input_data_config
      
        # 
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # 
        # Corresponds to the JSON property `inputDataSourceType`
        # @return [String]
        attr_accessor :input_data_source_type
      
        # 
        # Corresponds to the JSON property `isSummaryGenerationAllowed`
        # @return [Boolean]
        attr_accessor :is_summary_generation_allowed
        alias_method :is_summary_generation_allowed?, :is_summary_generation_allowed
      
        # 
        # Corresponds to the JSON property `sampleSize`
        # @return [Fixnum]
        attr_accessor :sample_size
      
        # 
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # 
        # Corresponds to the JSON property `summaryGenerationOption`
        # @return [String]
        attr_accessor :summary_generation_option
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_assist_input_data_config = args[:agent_assist_input_data_config] if args.key?(:agent_assist_input_data_config)
          @dataset_input_data_config = args[:dataset_input_data_config] if args.key?(:dataset_input_data_config)
          @end_time = args[:end_time] if args.key?(:end_time)
          @input_data_source_type = args[:input_data_source_type] if args.key?(:input_data_source_type)
          @is_summary_generation_allowed = args[:is_summary_generation_allowed] if args.key?(:is_summary_generation_allowed)
          @sample_size = args[:sample_size] if args.key?(:sample_size)
          @start_time = args[:start_time] if args.key?(:start_time)
          @summary_generation_option = args[:summary_generation_option] if args.key?(:summary_generation_option)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2GeneratorEvaluationConfigSummarizationConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `accuracyEvaluationVersion`
        # @return [String]
        attr_accessor :accuracy_evaluation_version
      
        # 
        # Corresponds to the JSON property `completenessEvaluationVersion`
        # @return [String]
        attr_accessor :completeness_evaluation_version
      
        # 
        # Corresponds to the JSON property `enableAccuracyEvaluation`
        # @return [Boolean]
        attr_accessor :enable_accuracy_evaluation
        alias_method :enable_accuracy_evaluation?, :enable_accuracy_evaluation
      
        # 
        # Corresponds to the JSON property `enableCompletenessEvaluation`
        # @return [Boolean]
        attr_accessor :enable_completeness_evaluation
        alias_method :enable_completeness_evaluation?, :enable_completeness_evaluation
      
        # 
        # Corresponds to the JSON property `evaluatorVersion`
        # @return [String]
        attr_accessor :evaluator_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accuracy_evaluation_version = args[:accuracy_evaluation_version] if args.key?(:accuracy_evaluation_version)
          @completeness_evaluation_version = args[:completeness_evaluation_version] if args.key?(:completeness_evaluation_version)
          @enable_accuracy_evaluation = args[:enable_accuracy_evaluation] if args.key?(:enable_accuracy_evaluation)
          @enable_completeness_evaluation = args[:enable_completeness_evaluation] if args.key?(:enable_completeness_evaluation)
          @evaluator_version = args[:evaluator_version] if args.key?(:evaluator_version)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2GeneratorSuggestion
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `agentCoachingSuggestion`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AgentCoachingSuggestion]
        attr_accessor :agent_coaching_suggestion
      
        # 
        # Corresponds to the JSON property `freeFormSuggestion`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2FreeFormSuggestion]
        attr_accessor :free_form_suggestion
      
        # 
        # Corresponds to the JSON property `summarySuggestion`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SummarySuggestion]
        attr_accessor :summary_suggestion
      
        # 
        # Corresponds to the JSON property `toolCallInfo`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2GeneratorSuggestionToolCallInfo>]
        attr_accessor :tool_call_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_coaching_suggestion = args[:agent_coaching_suggestion] if args.key?(:agent_coaching_suggestion)
          @free_form_suggestion = args[:free_form_suggestion] if args.key?(:free_form_suggestion)
          @summary_suggestion = args[:summary_suggestion] if args.key?(:summary_suggestion)
          @tool_call_info = args[:tool_call_info] if args.key?(:tool_call_info)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2GeneratorSuggestionToolCallInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `toolCall`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ToolCall]
        attr_accessor :tool_call
      
        # 
        # Corresponds to the JSON property `toolCallResult`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ToolCallResult]
        attr_accessor :tool_call_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tool_call = args[:tool_call] if args.key?(:tool_call)
          @tool_call_result = args[:tool_call_result] if args.key?(:tool_call_result)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2HumanAgentAssistantConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `endUserSuggestionConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig]
        attr_accessor :end_user_suggestion_config
      
        # 
        # Corresponds to the JSON property `humanAgentSuggestionConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig]
        attr_accessor :human_agent_suggestion_config
      
        # 
        # Corresponds to the JSON property `messageAnalysisConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfig]
        attr_accessor :message_analysis_config
      
        # 
        # Corresponds to the JSON property `notificationConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2NotificationConfig]
        attr_accessor :notification_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_user_suggestion_config = args[:end_user_suggestion_config] if args.key?(:end_user_suggestion_config)
          @human_agent_suggestion_config = args[:human_agent_suggestion_config] if args.key?(:human_agent_suggestion_config)
          @message_analysis_config = args[:message_analysis_config] if args.key?(:message_analysis_config)
          @notification_config = args[:notification_config] if args.key?(:notification_config)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `baselineModelVersion`
        # @return [String]
        attr_accessor :baseline_model_version
      
        # 
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @baseline_model_version = args[:baseline_model_version] if args.key?(:baseline_model_version)
          @model = args[:model] if args.key?(:model)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationProcessConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `recentSentencesCount`
        # @return [Fixnum]
        attr_accessor :recent_sentences_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @recent_sentences_count = args[:recent_sentences_count] if args.key?(:recent_sentences_count)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `enableEntityExtraction`
        # @return [Boolean]
        attr_accessor :enable_entity_extraction
        alias_method :enable_entity_extraction?, :enable_entity_extraction
      
        # 
        # Corresponds to the JSON property `enableSentimentAnalysis`
        # @return [Boolean]
        attr_accessor :enable_sentiment_analysis
        alias_method :enable_sentiment_analysis?, :enable_sentiment_analysis
      
        # 
        # Corresponds to the JSON property `enableSentimentAnalysisV3`
        # @return [Boolean]
        attr_accessor :enable_sentiment_analysis_v3
        alias_method :enable_sentiment_analysis_v3?, :enable_sentiment_analysis_v3
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_entity_extraction = args[:enable_entity_extraction] if args.key?(:enable_entity_extraction)
          @enable_sentiment_analysis = args[:enable_sentiment_analysis] if args.key?(:enable_sentiment_analysis)
          @enable_sentiment_analysis_v3 = args[:enable_sentiment_analysis_v3] if args.key?(:enable_sentiment_analysis_v3)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `disableHighLatencyFeaturesSyncDelivery`
        # @return [Boolean]
        attr_accessor :disable_high_latency_features_sync_delivery
        alias_method :disable_high_latency_features_sync_delivery?, :disable_high_latency_features_sync_delivery
      
        # 
        # Corresponds to the JSON property `enableAsyncToolCall`
        # @return [Boolean]
        attr_accessor :enable_async_tool_call
        alias_method :enable_async_tool_call?, :enable_async_tool_call
      
        # 
        # Corresponds to the JSON property `featureConfigs`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig>]
        attr_accessor :feature_configs
      
        # 
        # Corresponds to the JSON property `generators`
        # @return [Array<String>]
        attr_accessor :generators
      
        # 
        # Corresponds to the JSON property `groupSuggestionResponses`
        # @return [Boolean]
        attr_accessor :group_suggestion_responses
        alias_method :group_suggestion_responses?, :group_suggestion_responses
      
        # 
        # Corresponds to the JSON property `skipEmptyEventBasedSuggestion`
        # @return [Boolean]
        attr_accessor :skip_empty_event_based_suggestion
        alias_method :skip_empty_event_based_suggestion?, :skip_empty_event_based_suggestion
      
        # 
        # Corresponds to the JSON property `useUnredactedConversationData`
        # @return [Boolean]
        attr_accessor :use_unredacted_conversation_data
        alias_method :use_unredacted_conversation_data?, :use_unredacted_conversation_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disable_high_latency_features_sync_delivery = args[:disable_high_latency_features_sync_delivery] if args.key?(:disable_high_latency_features_sync_delivery)
          @enable_async_tool_call = args[:enable_async_tool_call] if args.key?(:enable_async_tool_call)
          @feature_configs = args[:feature_configs] if args.key?(:feature_configs)
          @generators = args[:generators] if args.key?(:generators)
          @group_suggestion_responses = args[:group_suggestion_responses] if args.key?(:group_suggestion_responses)
          @skip_empty_event_based_suggestion = args[:skip_empty_event_based_suggestion] if args.key?(:skip_empty_event_based_suggestion)
          @use_unredacted_conversation_data = args[:use_unredacted_conversation_data] if args.key?(:use_unredacted_conversation_data)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conversationModelConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfig]
        attr_accessor :conversation_model_config
      
        # 
        # Corresponds to the JSON property `conversationProcessConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationProcessConfig]
        attr_accessor :conversation_process_config
      
        # 
        # Corresponds to the JSON property `disableAgentQueryLogging`
        # @return [Boolean]
        attr_accessor :disable_agent_query_logging
        alias_method :disable_agent_query_logging?, :disable_agent_query_logging
      
        # 
        # Corresponds to the JSON property `enableConversationAugmentedQuery`
        # @return [Boolean]
        attr_accessor :enable_conversation_augmented_query
        alias_method :enable_conversation_augmented_query?, :enable_conversation_augmented_query
      
        # 
        # Corresponds to the JSON property `enableEventBasedSuggestion`
        # @return [Boolean]
        attr_accessor :enable_event_based_suggestion
        alias_method :enable_event_based_suggestion?, :enable_event_based_suggestion
      
        # 
        # Corresponds to the JSON property `enableQuerySuggestionOnly`
        # @return [Boolean]
        attr_accessor :enable_query_suggestion_only
        alias_method :enable_query_suggestion_only?, :enable_query_suggestion_only
      
        # 
        # Corresponds to the JSON property `enableQuerySuggestionWhenNoAnswer`
        # @return [Boolean]
        attr_accessor :enable_query_suggestion_when_no_answer
        alias_method :enable_query_suggestion_when_no_answer?, :enable_query_suggestion_when_no_answer
      
        # 
        # Corresponds to the JSON property `enableResponseDebugInfo`
        # @return [Boolean]
        attr_accessor :enable_response_debug_info
        alias_method :enable_response_debug_info?, :enable_response_debug_info
      
        # 
        # Corresponds to the JSON property `queryConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig]
        attr_accessor :query_config
      
        # 
        # Corresponds to the JSON property `raiSettings`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2RaiSettings]
        attr_accessor :rai_settings
      
        # 
        # Corresponds to the JSON property `suggestionFeature`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestionFeature]
        attr_accessor :suggestion_feature
      
        # 
        # Corresponds to the JSON property `suggestionTriggerSettings`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings]
        attr_accessor :suggestion_trigger_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_model_config = args[:conversation_model_config] if args.key?(:conversation_model_config)
          @conversation_process_config = args[:conversation_process_config] if args.key?(:conversation_process_config)
          @disable_agent_query_logging = args[:disable_agent_query_logging] if args.key?(:disable_agent_query_logging)
          @enable_conversation_augmented_query = args[:enable_conversation_augmented_query] if args.key?(:enable_conversation_augmented_query)
          @enable_event_based_suggestion = args[:enable_event_based_suggestion] if args.key?(:enable_event_based_suggestion)
          @enable_query_suggestion_only = args[:enable_query_suggestion_only] if args.key?(:enable_query_suggestion_only)
          @enable_query_suggestion_when_no_answer = args[:enable_query_suggestion_when_no_answer] if args.key?(:enable_query_suggestion_when_no_answer)
          @enable_response_debug_info = args[:enable_response_debug_info] if args.key?(:enable_response_debug_info)
          @query_config = args[:query_config] if args.key?(:query_config)
          @rai_settings = args[:rai_settings] if args.key?(:rai_settings)
          @suggestion_feature = args[:suggestion_feature] if args.key?(:suggestion_feature)
          @suggestion_trigger_settings = args[:suggestion_trigger_settings] if args.key?(:suggestion_trigger_settings)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `confidenceThreshold`
        # @return [Float]
        attr_accessor :confidence_threshold
      
        # 
        # Corresponds to the JSON property `contextFilterSettings`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings]
        attr_accessor :context_filter_settings
      
        # 
        # Corresponds to the JSON property `contextSize`
        # @return [Fixnum]
        attr_accessor :context_size
      
        # 
        # Corresponds to the JSON property `dialogflowQuerySource`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource]
        attr_accessor :dialogflow_query_source
      
        # 
        # Corresponds to the JSON property `documentQuerySource`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource]
        attr_accessor :document_query_source
      
        # 
        # Corresponds to the JSON property `knowledgeBaseQuerySource`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource]
        attr_accessor :knowledge_base_query_source
      
        # 
        # Corresponds to the JSON property `maxResults`
        # @return [Fixnum]
        attr_accessor :max_results
      
        # 
        # Corresponds to the JSON property `sections`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigSections]
        attr_accessor :sections
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence_threshold = args[:confidence_threshold] if args.key?(:confidence_threshold)
          @context_filter_settings = args[:context_filter_settings] if args.key?(:context_filter_settings)
          @context_size = args[:context_size] if args.key?(:context_size)
          @dialogflow_query_source = args[:dialogflow_query_source] if args.key?(:dialogflow_query_source)
          @document_query_source = args[:document_query_source] if args.key?(:document_query_source)
          @knowledge_base_query_source = args[:knowledge_base_query_source] if args.key?(:knowledge_base_query_source)
          @max_results = args[:max_results] if args.key?(:max_results)
          @sections = args[:sections] if args.key?(:sections)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dropHandoffMessages`
        # @return [Boolean]
        attr_accessor :drop_handoff_messages
        alias_method :drop_handoff_messages?, :drop_handoff_messages
      
        # 
        # Corresponds to the JSON property `dropIvrMessages`
        # @return [Boolean]
        attr_accessor :drop_ivr_messages
        alias_method :drop_ivr_messages?, :drop_ivr_messages
      
        # 
        # Corresponds to the JSON property `dropVirtualAgentMessages`
        # @return [Boolean]
        attr_accessor :drop_virtual_agent_messages
        alias_method :drop_virtual_agent_messages?, :drop_virtual_agent_messages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @drop_handoff_messages = args[:drop_handoff_messages] if args.key?(:drop_handoff_messages)
          @drop_ivr_messages = args[:drop_ivr_messages] if args.key?(:drop_ivr_messages)
          @drop_virtual_agent_messages = args[:drop_virtual_agent_messages] if args.key?(:drop_virtual_agent_messages)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `agent`
        # @return [String]
        attr_accessor :agent
      
        # 
        # Corresponds to the JSON property `humanAgentSideConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceHumanAgentSideConfig]
        attr_accessor :human_agent_side_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent = args[:agent] if args.key?(:agent)
          @human_agent_side_config = args[:human_agent_side_config] if args.key?(:human_agent_side_config)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceHumanAgentSideConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `agent`
        # @return [String]
        attr_accessor :agent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent = args[:agent] if args.key?(:agent)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `documents`
        # @return [Array<String>]
        attr_accessor :documents
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @documents = args[:documents] if args.key?(:documents)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `knowledgeBases`
        # @return [Array<String>]
        attr_accessor :knowledge_bases
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @knowledge_bases = args[:knowledge_bases] if args.key?(:knowledge_bases)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigSections
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `sectionTypes`
        # @return [Array<String>]
        attr_accessor :section_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @section_types = args[:section_types] if args.key?(:section_types)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `noSmalltalk`
        # @return [Boolean]
        attr_accessor :no_smalltalk
        alias_method :no_smalltalk?, :no_smalltalk
      
        # 
        # Corresponds to the JSON property `onlyEndUser`
        # @return [Boolean]
        attr_accessor :only_end_user
        alias_method :only_end_user?, :only_end_user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @no_smalltalk = args[:no_smalltalk] if args.key?(:no_smalltalk)
          @only_end_user = args[:only_end_user] if args.key?(:only_end_user)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2HumanAgentAssistantEvent
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conversation`
        # @return [String]
        attr_accessor :conversation
      
        # 
        # Corresponds to the JSON property `participant`
        # @return [String]
        attr_accessor :participant
      
        # 
        # Corresponds to the JSON property `suggestionResults`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestionResult>]
        attr_accessor :suggestion_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation = args[:conversation] if args.key?(:conversation)
          @participant = args[:participant] if args.key?(:participant)
          @suggestion_results = args[:suggestion_results] if args.key?(:suggestion_results)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2HumanAgentHandoffConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `livePersonConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfig]
        attr_accessor :live_person_config
      
        # 
        # Corresponds to the JSON property `salesforceLiveAgentConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfig]
        attr_accessor :salesforce_live_agent_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @live_person_config = args[:live_person_config] if args.key?(:live_person_config)
          @salesforce_live_agent_config = args[:salesforce_live_agent_config] if args.key?(:salesforce_live_agent_config)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `accountNumber`
        # @return [String]
        attr_accessor :account_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_number = args[:account_number] if args.key?(:account_number)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `buttonId`
        # @return [String]
        attr_accessor :button_id
      
        # 
        # Corresponds to the JSON property `deploymentId`
        # @return [String]
        attr_accessor :deployment_id
      
        # 
        # Corresponds to the JSON property `endpointDomain`
        # @return [String]
        attr_accessor :endpoint_domain
      
        # 
        # Corresponds to the JSON property `organizationId`
        # @return [String]
        attr_accessor :organization_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @button_id = args[:button_id] if args.key?(:button_id)
          @deployment_id = args[:deployment_id] if args.key?(:deployment_id)
          @endpoint_domain = args[:endpoint_domain] if args.key?(:endpoint_domain)
          @organization_id = args[:organization_id] if args.key?(:organization_id)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ImportAgentRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `agentContent`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :agent_content
      
        # 
        # Corresponds to the JSON property `agentUri`
        # @return [String]
        attr_accessor :agent_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_content = args[:agent_content] if args.key?(:agent_content)
          @agent_uri = args[:agent_uri] if args.key?(:agent_uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ImportConversationDataOperationMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conversationDataset`
        # @return [String]
        attr_accessor :conversation_dataset
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `partialFailures`
        # @return [Array<Google::Apis::DialogflowV2::GoogleRpcStatus>]
        attr_accessor :partial_failures
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_dataset = args[:conversation_dataset] if args.key?(:conversation_dataset)
          @create_time = args[:create_time] if args.key?(:create_time)
          @partial_failures = args[:partial_failures] if args.key?(:partial_failures)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ImportConversationDataOperationResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conversationDataset`
        # @return [String]
        attr_accessor :conversation_dataset
      
        # 
        # Corresponds to the JSON property `importCount`
        # @return [Fixnum]
        attr_accessor :import_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_dataset = args[:conversation_dataset] if args.key?(:conversation_dataset)
          @import_count = args[:import_count] if args.key?(:import_count)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ImportConversationDataRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `inputConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2InputConfig]
        attr_accessor :input_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input_config = args[:input_config] if args.key?(:input_config)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ImportDocumentTemplate
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `knowledgeTypes`
        # @return [Array<String>]
        attr_accessor :knowledge_types
      
        # 
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # 
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @knowledge_types = args[:knowledge_types] if args.key?(:knowledge_types)
          @metadata = args[:metadata] if args.key?(:metadata)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ImportDocumentsRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `documentTemplate`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ImportDocumentTemplate]
        attr_accessor :document_template
      
        # 
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2GcsSources]
        attr_accessor :gcs_source
      
        # 
        # Corresponds to the JSON property `importGcsCustomMetadata`
        # @return [Boolean]
        attr_accessor :import_gcs_custom_metadata
        alias_method :import_gcs_custom_metadata?, :import_gcs_custom_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document_template = args[:document_template] if args.key?(:document_template)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
          @import_gcs_custom_metadata = args[:import_gcs_custom_metadata] if args.key?(:import_gcs_custom_metadata)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ImportDocumentsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::DialogflowV2::GoogleRpcStatus>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2InferenceParameter
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `maxOutputTokens`
        # @return [Fixnum]
        attr_accessor :max_output_tokens
      
        # 
        # Corresponds to the JSON property `temperature`
        # @return [Float]
        attr_accessor :temperature
      
        # 
        # Corresponds to the JSON property `topK`
        # @return [Fixnum]
        attr_accessor :top_k
      
        # 
        # Corresponds to the JSON property `topP`
        # @return [Float]
        attr_accessor :top_p
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_output_tokens = args[:max_output_tokens] if args.key?(:max_output_tokens)
          @temperature = args[:temperature] if args.key?(:temperature)
          @top_k = args[:top_k] if args.key?(:top_k)
          @top_p = args[:top_p] if args.key?(:top_p)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2IngestContextReferencesRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `contextReferences`
        # @return [Hash<String,Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationContextReference>]
        attr_accessor :context_references
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context_references = args[:context_references] if args.key?(:context_references)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2IngestContextReferencesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `ingestedContextReferences`
        # @return [Hash<String,Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationContextReference>]
        attr_accessor :ingested_context_references
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ingested_context_references = args[:ingested_context_references] if args.key?(:ingested_context_references)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2IngestedContextReferenceDebugInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `contextReferenceRetrieved`
        # @return [Boolean]
        attr_accessor :context_reference_retrieved
        alias_method :context_reference_retrieved?, :context_reference_retrieved
      
        # 
        # Corresponds to the JSON property `ingestedParametersDebugInfo`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IngestedContextReferenceDebugInfoIngestedParameterDebugInfo>]
        attr_accessor :ingested_parameters_debug_info
      
        # 
        # Corresponds to the JSON property `projectNotAllowlisted`
        # @return [Boolean]
        attr_accessor :project_not_allowlisted
        alias_method :project_not_allowlisted?, :project_not_allowlisted
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context_reference_retrieved = args[:context_reference_retrieved] if args.key?(:context_reference_retrieved)
          @ingested_parameters_debug_info = args[:ingested_parameters_debug_info] if args.key?(:ingested_parameters_debug_info)
          @project_not_allowlisted = args[:project_not_allowlisted] if args.key?(:project_not_allowlisted)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2IngestedContextReferenceDebugInfoIngestedParameterDebugInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `ingestionStatus`
        # @return [String]
        attr_accessor :ingestion_status
      
        # 
        # Corresponds to the JSON property `parameter`
        # @return [String]
        attr_accessor :parameter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ingestion_status = args[:ingestion_status] if args.key?(:ingestion_status)
          @parameter = args[:parameter] if args.key?(:parameter)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2InitializeEncryptionSpecMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2InitializeEncryptionSpecRequest]
        attr_accessor :request
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request = args[:request] if args.key?(:request)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2InitializeEncryptionSpecRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `encryptionSpec`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EncryptionSpec]
        attr_accessor :encryption_spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encryption_spec = args[:encryption_spec] if args.key?(:encryption_spec)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2InputAudioConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `audioEncoding`
        # @return [String]
        attr_accessor :audio_encoding
      
        # 
        # Corresponds to the JSON property `disableNoSpeechRecognizedEvent`
        # @return [Boolean]
        attr_accessor :disable_no_speech_recognized_event
        alias_method :disable_no_speech_recognized_event?, :disable_no_speech_recognized_event
      
        # 
        # Corresponds to the JSON property `enableAutomaticPunctuation`
        # @return [Boolean]
        attr_accessor :enable_automatic_punctuation
        alias_method :enable_automatic_punctuation?, :enable_automatic_punctuation
      
        # 
        # Corresponds to the JSON property `enableWordInfo`
        # @return [Boolean]
        attr_accessor :enable_word_info
        alias_method :enable_word_info?, :enable_word_info
      
        # 
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # 
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        # 
        # Corresponds to the JSON property `modelVariant`
        # @return [String]
        attr_accessor :model_variant
      
        # 
        # Corresponds to the JSON property `optOutConformerModelMigration`
        # @return [Boolean]
        attr_accessor :opt_out_conformer_model_migration
        alias_method :opt_out_conformer_model_migration?, :opt_out_conformer_model_migration
      
        # 
        # Corresponds to the JSON property `phraseHints`
        # @return [Array<String>]
        attr_accessor :phrase_hints
      
        # 
        # Corresponds to the JSON property `phraseSets`
        # @return [Array<String>]
        attr_accessor :phrase_sets
      
        # 
        # Corresponds to the JSON property `sampleRateHertz`
        # @return [Fixnum]
        attr_accessor :sample_rate_hertz
      
        # 
        # Corresponds to the JSON property `singleUtterance`
        # @return [Boolean]
        attr_accessor :single_utterance
        alias_method :single_utterance?, :single_utterance
      
        # 
        # Corresponds to the JSON property `speechContexts`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SpeechContext>]
        attr_accessor :speech_contexts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_encoding = args[:audio_encoding] if args.key?(:audio_encoding)
          @disable_no_speech_recognized_event = args[:disable_no_speech_recognized_event] if args.key?(:disable_no_speech_recognized_event)
          @enable_automatic_punctuation = args[:enable_automatic_punctuation] if args.key?(:enable_automatic_punctuation)
          @enable_word_info = args[:enable_word_info] if args.key?(:enable_word_info)
          @language_code = args[:language_code] if args.key?(:language_code)
          @model = args[:model] if args.key?(:model)
          @model_variant = args[:model_variant] if args.key?(:model_variant)
          @opt_out_conformer_model_migration = args[:opt_out_conformer_model_migration] if args.key?(:opt_out_conformer_model_migration)
          @phrase_hints = args[:phrase_hints] if args.key?(:phrase_hints)
          @phrase_sets = args[:phrase_sets] if args.key?(:phrase_sets)
          @sample_rate_hertz = args[:sample_rate_hertz] if args.key?(:sample_rate_hertz)
          @single_utterance = args[:single_utterance] if args.key?(:single_utterance)
          @speech_contexts = args[:speech_contexts] if args.key?(:speech_contexts)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2InputConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2GcsSources]
        attr_accessor :gcs_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2InputDataset
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset = args[:dataset] if args.key?(:dataset)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2Intent
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # 
        # Corresponds to the JSON property `defaultResponsePlatforms`
        # @return [Array<String>]
        attr_accessor :default_response_platforms
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `endInteraction`
        # @return [Boolean]
        attr_accessor :end_interaction
        alias_method :end_interaction?, :end_interaction
      
        # 
        # Corresponds to the JSON property `events`
        # @return [Array<String>]
        attr_accessor :events
      
        # 
        # Corresponds to the JSON property `followupIntentInfo`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentFollowupIntentInfo>]
        attr_accessor :followup_intent_info
      
        # 
        # Corresponds to the JSON property `inputContextNames`
        # @return [Array<String>]
        attr_accessor :input_context_names
      
        # 
        # Corresponds to the JSON property `isFallback`
        # @return [Boolean]
        attr_accessor :is_fallback
        alias_method :is_fallback?, :is_fallback
      
        # 
        # Corresponds to the JSON property `liveAgentHandoff`
        # @return [Boolean]
        attr_accessor :live_agent_handoff
        alias_method :live_agent_handoff?, :live_agent_handoff
      
        # 
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessage>]
        attr_accessor :messages
      
        # 
        # Corresponds to the JSON property `mlDisabled`
        # @return [Boolean]
        attr_accessor :ml_disabled
        alias_method :ml_disabled?, :ml_disabled
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `outputContexts`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context>]
        attr_accessor :output_contexts
      
        # 
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentParameter>]
        attr_accessor :parameters
      
        # 
        # Corresponds to the JSON property `parentFollowupIntentName`
        # @return [String]
        attr_accessor :parent_followup_intent_name
      
        # 
        # Corresponds to the JSON property `priority`
        # @return [Fixnum]
        attr_accessor :priority
      
        # 
        # Corresponds to the JSON property `resetContexts`
        # @return [Boolean]
        attr_accessor :reset_contexts
        alias_method :reset_contexts?, :reset_contexts
      
        # 
        # Corresponds to the JSON property `rootFollowupIntentName`
        # @return [String]
        attr_accessor :root_followup_intent_name
      
        # 
        # Corresponds to the JSON property `trainingPhrases`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentTrainingPhrase>]
        attr_accessor :training_phrases
      
        # 
        # Corresponds to the JSON property `webhookState`
        # @return [String]
        attr_accessor :webhook_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @default_response_platforms = args[:default_response_platforms] if args.key?(:default_response_platforms)
          @display_name = args[:display_name] if args.key?(:display_name)
          @end_interaction = args[:end_interaction] if args.key?(:end_interaction)
          @events = args[:events] if args.key?(:events)
          @followup_intent_info = args[:followup_intent_info] if args.key?(:followup_intent_info)
          @input_context_names = args[:input_context_names] if args.key?(:input_context_names)
          @is_fallback = args[:is_fallback] if args.key?(:is_fallback)
          @live_agent_handoff = args[:live_agent_handoff] if args.key?(:live_agent_handoff)
          @messages = args[:messages] if args.key?(:messages)
          @ml_disabled = args[:ml_disabled] if args.key?(:ml_disabled)
          @name = args[:name] if args.key?(:name)
          @output_contexts = args[:output_contexts] if args.key?(:output_contexts)
          @parameters = args[:parameters] if args.key?(:parameters)
          @parent_followup_intent_name = args[:parent_followup_intent_name] if args.key?(:parent_followup_intent_name)
          @priority = args[:priority] if args.key?(:priority)
          @reset_contexts = args[:reset_contexts] if args.key?(:reset_contexts)
          @root_followup_intent_name = args[:root_followup_intent_name] if args.key?(:root_followup_intent_name)
          @training_phrases = args[:training_phrases] if args.key?(:training_phrases)
          @webhook_state = args[:webhook_state] if args.key?(:webhook_state)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2IntentBatch
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `intents`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent>]
        attr_accessor :intents
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @intents = args[:intents] if args.key?(:intents)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2IntentFollowupIntentInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `followupIntentName`
        # @return [String]
        attr_accessor :followup_intent_name
      
        # 
        # Corresponds to the JSON property `parentFollowupIntentName`
        # @return [String]
        attr_accessor :parent_followup_intent_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @followup_intent_name = args[:followup_intent_name] if args.key?(:followup_intent_name)
          @parent_followup_intent_name = args[:parent_followup_intent_name] if args.key?(:parent_followup_intent_name)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2IntentMessage
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `basicCard`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageBasicCard]
        attr_accessor :basic_card
      
        # 
        # Corresponds to the JSON property `browseCarouselCard`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard]
        attr_accessor :browse_carousel_card
      
        # 
        # Corresponds to the JSON property `card`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageCard]
        attr_accessor :card
      
        # 
        # Corresponds to the JSON property `carouselSelect`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageCarouselSelect]
        attr_accessor :carousel_select
      
        # 
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageImage]
        attr_accessor :image
      
        # 
        # Corresponds to the JSON property `linkOutSuggestion`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion]
        attr_accessor :link_out_suggestion
      
        # 
        # Corresponds to the JSON property `listSelect`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageListSelect]
        attr_accessor :list_select
      
        # 
        # Corresponds to the JSON property `mediaContent`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageMediaContent]
        attr_accessor :media_content
      
        # 
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # 
        # Corresponds to the JSON property `platform`
        # @return [String]
        attr_accessor :platform
      
        # 
        # Corresponds to the JSON property `quickReplies`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageQuickReplies]
        attr_accessor :quick_replies
      
        # 
        # Corresponds to the JSON property `simpleResponses`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageSimpleResponses]
        attr_accessor :simple_responses
      
        # 
        # Corresponds to the JSON property `suggestions`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageSuggestions]
        attr_accessor :suggestions
      
        # 
        # Corresponds to the JSON property `tableCard`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageTableCard]
        attr_accessor :table_card
      
        # 
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageText]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_card = args[:basic_card] if args.key?(:basic_card)
          @browse_carousel_card = args[:browse_carousel_card] if args.key?(:browse_carousel_card)
          @card = args[:card] if args.key?(:card)
          @carousel_select = args[:carousel_select] if args.key?(:carousel_select)
          @image = args[:image] if args.key?(:image)
          @link_out_suggestion = args[:link_out_suggestion] if args.key?(:link_out_suggestion)
          @list_select = args[:list_select] if args.key?(:list_select)
          @media_content = args[:media_content] if args.key?(:media_content)
          @payload = args[:payload] if args.key?(:payload)
          @platform = args[:platform] if args.key?(:platform)
          @quick_replies = args[:quick_replies] if args.key?(:quick_replies)
          @simple_responses = args[:simple_responses] if args.key?(:simple_responses)
          @suggestions = args[:suggestions] if args.key?(:suggestions)
          @table_card = args[:table_card] if args.key?(:table_card)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2IntentMessageBasicCard
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `buttons`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageBasicCardButton>]
        attr_accessor :buttons
      
        # 
        # Corresponds to the JSON property `formattedText`
        # @return [String]
        attr_accessor :formatted_text
      
        # 
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageImage]
        attr_accessor :image
      
        # 
        # Corresponds to the JSON property `subtitle`
        # @return [String]
        attr_accessor :subtitle
      
        # 
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @buttons = args[:buttons] if args.key?(:buttons)
          @formatted_text = args[:formatted_text] if args.key?(:formatted_text)
          @image = args[:image] if args.key?(:image)
          @subtitle = args[:subtitle] if args.key?(:subtitle)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2IntentMessageBasicCardButton
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `openUriAction`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction]
        attr_accessor :open_uri_action
      
        # 
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @open_uri_action = args[:open_uri_action] if args.key?(:open_uri_action)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `imageDisplayOptions`
        # @return [String]
        attr_accessor :image_display_options
      
        # 
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem>]
        attr_accessor :items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image_display_options = args[:image_display_options] if args.key?(:image_display_options)
          @items = args[:items] if args.key?(:items)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `footer`
        # @return [String]
        attr_accessor :footer
      
        # 
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageImage]
        attr_accessor :image
      
        # 
        # Corresponds to the JSON property `openUriAction`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction]
        attr_accessor :open_uri_action
      
        # 
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @footer = args[:footer] if args.key?(:footer)
          @image = args[:image] if args.key?(:image)
          @open_uri_action = args[:open_uri_action] if args.key?(:open_uri_action)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        # 
        # Corresponds to the JSON property `urlTypeHint`
        # @return [String]
        attr_accessor :url_type_hint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @url = args[:url] if args.key?(:url)
          @url_type_hint = args[:url_type_hint] if args.key?(:url_type_hint)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2IntentMessageCard
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `buttons`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageCardButton>]
        attr_accessor :buttons
      
        # 
        # Corresponds to the JSON property `imageUri`
        # @return [String]
        attr_accessor :image_uri
      
        # 
        # Corresponds to the JSON property `subtitle`
        # @return [String]
        attr_accessor :subtitle
      
        # 
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @buttons = args[:buttons] if args.key?(:buttons)
          @image_uri = args[:image_uri] if args.key?(:image_uri)
          @subtitle = args[:subtitle] if args.key?(:subtitle)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2IntentMessageCardButton
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `postback`
        # @return [String]
        attr_accessor :postback
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @postback = args[:postback] if args.key?(:postback)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2IntentMessageCarouselSelect
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageCarouselSelectItem>]
        attr_accessor :items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2IntentMessageCarouselSelectItem
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageImage]
        attr_accessor :image
      
        # 
        # Corresponds to the JSON property `info`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageSelectItemInfo]
        attr_accessor :info
      
        # 
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @image = args[:image] if args.key?(:image)
          @info = args[:info] if args.key?(:info)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2IntentMessageColumnProperties
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `header`
        # @return [String]
        attr_accessor :header
      
        # 
        # Corresponds to the JSON property `horizontalAlignment`
        # @return [String]
        attr_accessor :horizontal_alignment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @header = args[:header] if args.key?(:header)
          @horizontal_alignment = args[:horizontal_alignment] if args.key?(:horizontal_alignment)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2IntentMessageImage
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `accessibilityText`
        # @return [String]
        attr_accessor :accessibility_text
      
        # 
        # Corresponds to the JSON property `imageUri`
        # @return [String]
        attr_accessor :image_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accessibility_text = args[:accessibility_text] if args.key?(:accessibility_text)
          @image_uri = args[:image_uri] if args.key?(:image_uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `destinationName`
        # @return [String]
        attr_accessor :destination_name
      
        # 
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_name = args[:destination_name] if args.key?(:destination_name)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2IntentMessageListSelect
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageListSelectItem>]
        attr_accessor :items
      
        # 
        # Corresponds to the JSON property `subtitle`
        # @return [String]
        attr_accessor :subtitle
      
        # 
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @subtitle = args[:subtitle] if args.key?(:subtitle)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2IntentMessageListSelectItem
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageImage]
        attr_accessor :image
      
        # 
        # Corresponds to the JSON property `info`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageSelectItemInfo]
        attr_accessor :info
      
        # 
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @image = args[:image] if args.key?(:image)
          @info = args[:info] if args.key?(:info)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2IntentMessageMediaContent
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `mediaObjects`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject>]
        attr_accessor :media_objects
      
        # 
        # Corresponds to the JSON property `mediaType`
        # @return [String]
        attr_accessor :media_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @media_objects = args[:media_objects] if args.key?(:media_objects)
          @media_type = args[:media_type] if args.key?(:media_type)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `contentUrl`
        # @return [String]
        attr_accessor :content_url
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `icon`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageImage]
        attr_accessor :icon
      
        # 
        # Corresponds to the JSON property `largeImage`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageImage]
        attr_accessor :large_image
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_url = args[:content_url] if args.key?(:content_url)
          @description = args[:description] if args.key?(:description)
          @icon = args[:icon] if args.key?(:icon)
          @large_image = args[:large_image] if args.key?(:large_image)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2IntentMessageQuickReplies
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `quickReplies`
        # @return [Array<String>]
        attr_accessor :quick_replies
      
        # 
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @quick_replies = args[:quick_replies] if args.key?(:quick_replies)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2IntentMessageSelectItemInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # 
        # Corresponds to the JSON property `synonyms`
        # @return [Array<String>]
        attr_accessor :synonyms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @synonyms = args[:synonyms] if args.key?(:synonyms)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2IntentMessageSimpleResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `displayText`
        # @return [String]
        attr_accessor :display_text
      
        # 
        # Corresponds to the JSON property `ssml`
        # @return [String]
        attr_accessor :ssml
      
        # 
        # Corresponds to the JSON property `textToSpeech`
        # @return [String]
        attr_accessor :text_to_speech
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_text = args[:display_text] if args.key?(:display_text)
          @ssml = args[:ssml] if args.key?(:ssml)
          @text_to_speech = args[:text_to_speech] if args.key?(:text_to_speech)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2IntentMessageSimpleResponses
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `simpleResponses`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageSimpleResponse>]
        attr_accessor :simple_responses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @simple_responses = args[:simple_responses] if args.key?(:simple_responses)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2IntentMessageSuggestion
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2IntentMessageSuggestions
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `suggestions`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageSuggestion>]
        attr_accessor :suggestions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @suggestions = args[:suggestions] if args.key?(:suggestions)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2IntentMessageTableCard
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `buttons`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageBasicCardButton>]
        attr_accessor :buttons
      
        # 
        # Corresponds to the JSON property `columnProperties`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageColumnProperties>]
        attr_accessor :column_properties
      
        # 
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageImage]
        attr_accessor :image
      
        # 
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageTableCardRow>]
        attr_accessor :rows
      
        # 
        # Corresponds to the JSON property `subtitle`
        # @return [String]
        attr_accessor :subtitle
      
        # 
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @buttons = args[:buttons] if args.key?(:buttons)
          @column_properties = args[:column_properties] if args.key?(:column_properties)
          @image = args[:image] if args.key?(:image)
          @rows = args[:rows] if args.key?(:rows)
          @subtitle = args[:subtitle] if args.key?(:subtitle)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2IntentMessageTableCardCell
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2IntentMessageTableCardRow
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `cells`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageTableCardCell>]
        attr_accessor :cells
      
        # 
        # Corresponds to the JSON property `dividerAfter`
        # @return [Boolean]
        attr_accessor :divider_after
        alias_method :divider_after?, :divider_after
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cells = args[:cells] if args.key?(:cells)
          @divider_after = args[:divider_after] if args.key?(:divider_after)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2IntentMessageText
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `text`
        # @return [Array<String>]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2IntentParameter
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `defaultValue`
        # @return [String]
        attr_accessor :default_value
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `entityTypeDisplayName`
        # @return [String]
        attr_accessor :entity_type_display_name
      
        # 
        # Corresponds to the JSON property `isList`
        # @return [Boolean]
        attr_accessor :is_list
        alias_method :is_list?, :is_list
      
        # 
        # Corresponds to the JSON property `mandatory`
        # @return [Boolean]
        attr_accessor :mandatory
        alias_method :mandatory?, :mandatory
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `prompts`
        # @return [Array<String>]
        attr_accessor :prompts
      
        # 
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_value = args[:default_value] if args.key?(:default_value)
          @display_name = args[:display_name] if args.key?(:display_name)
          @entity_type_display_name = args[:entity_type_display_name] if args.key?(:entity_type_display_name)
          @is_list = args[:is_list] if args.key?(:is_list)
          @mandatory = args[:mandatory] if args.key?(:mandatory)
          @name = args[:name] if args.key?(:name)
          @prompts = args[:prompts] if args.key?(:prompts)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2IntentSuggestion
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `intentV2`
        # @return [String]
        attr_accessor :intent_v2
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @intent_v2 = args[:intent_v2] if args.key?(:intent_v2)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2IntentTrainingPhrase
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `parts`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentTrainingPhrasePart>]
        attr_accessor :parts
      
        # 
        # Corresponds to the JSON property `timesAddedCount`
        # @return [Fixnum]
        attr_accessor :times_added_count
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @parts = args[:parts] if args.key?(:parts)
          @times_added_count = args[:times_added_count] if args.key?(:times_added_count)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2IntentTrainingPhrasePart
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `alias`
        # @return [String]
        attr_accessor :alias
      
        # 
        # Corresponds to the JSON property `entityType`
        # @return [String]
        attr_accessor :entity_type
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # 
        # Corresponds to the JSON property `userDefined`
        # @return [Boolean]
        attr_accessor :user_defined
        alias_method :user_defined?, :user_defined
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alias = args[:alias] if args.key?(:alias)
          @entity_type = args[:entity_type] if args.key?(:entity_type)
          @text = args[:text] if args.key?(:text)
          @user_defined = args[:user_defined] if args.key?(:user_defined)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2KnowledgeAssistAnswer
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `answerRecord`
        # @return [String]
        attr_accessor :answer_record
      
        # 
        # Corresponds to the JSON property `knowledgeAssistDebugInfo`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeAssistDebugInfo]
        attr_accessor :knowledge_assist_debug_info
      
        # 
        # Corresponds to the JSON property `suggestedQuery`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeAssistAnswerSuggestedQuery]
        attr_accessor :suggested_query
      
        # 
        # Corresponds to the JSON property `suggestedQueryAnswer`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswer]
        attr_accessor :suggested_query_answer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_record = args[:answer_record] if args.key?(:answer_record)
          @knowledge_assist_debug_info = args[:knowledge_assist_debug_info] if args.key?(:knowledge_assist_debug_info)
          @suggested_query = args[:suggested_query] if args.key?(:suggested_query)
          @suggested_query_answer = args[:suggested_query_answer] if args.key?(:suggested_query_answer)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswer
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `answerText`
        # @return [String]
        attr_accessor :answer_text
      
        # 
        # Corresponds to the JSON property `faqSource`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerFaqSource]
        attr_accessor :faq_source
      
        # 
        # Corresponds to the JSON property `generativeSource`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerGenerativeSource]
        attr_accessor :generative_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_text = args[:answer_text] if args.key?(:answer_text)
          @faq_source = args[:faq_source] if args.key?(:faq_source)
          @generative_source = args[:generative_source] if args.key?(:generative_source)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerFaqSource
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `question`
        # @return [String]
        attr_accessor :question
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @question = args[:question] if args.key?(:question)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerGenerativeSource
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `snippets`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerGenerativeSourceSnippet>]
        attr_accessor :snippets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @snippets = args[:snippets] if args.key?(:snippets)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerGenerativeSourceSnippet
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # 
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # 
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata = args[:metadata] if args.key?(:metadata)
          @text = args[:text] if args.key?(:text)
          @title = args[:title] if args.key?(:title)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2KnowledgeAssistAnswerSuggestedQuery
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `queryText`
        # @return [String]
        attr_accessor :query_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @query_text = args[:query_text] if args.key?(:query_text)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2KnowledgeAssistDebugInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `datastoreResponseReason`
        # @return [String]
        attr_accessor :datastore_response_reason
      
        # 
        # Corresponds to the JSON property `ingestedContextReferenceDebugInfo`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IngestedContextReferenceDebugInfo]
        attr_accessor :ingested_context_reference_debug_info
      
        # 
        # Corresponds to the JSON property `knowledgeAssistBehavior`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeAssistDebugInfoKnowledgeAssistBehavior]
        attr_accessor :knowledge_assist_behavior
      
        # 
        # Corresponds to the JSON property `queryCategorizationFailureReason`
        # @return [String]
        attr_accessor :query_categorization_failure_reason
      
        # 
        # Corresponds to the JSON property `queryGenerationFailureReason`
        # @return [String]
        attr_accessor :query_generation_failure_reason
      
        # 
        # Corresponds to the JSON property `serviceLatency`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ServiceLatency]
        attr_accessor :service_latency
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @datastore_response_reason = args[:datastore_response_reason] if args.key?(:datastore_response_reason)
          @ingested_context_reference_debug_info = args[:ingested_context_reference_debug_info] if args.key?(:ingested_context_reference_debug_info)
          @knowledge_assist_behavior = args[:knowledge_assist_behavior] if args.key?(:knowledge_assist_behavior)
          @query_categorization_failure_reason = args[:query_categorization_failure_reason] if args.key?(:query_categorization_failure_reason)
          @query_generation_failure_reason = args[:query_generation_failure_reason] if args.key?(:query_generation_failure_reason)
          @service_latency = args[:service_latency] if args.key?(:service_latency)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2KnowledgeAssistDebugInfoKnowledgeAssistBehavior
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `answerGenerationRewriterOn`
        # @return [Boolean]
        attr_accessor :answer_generation_rewriter_on
        alias_method :answer_generation_rewriter_on?, :answer_generation_rewriter_on
      
        # 
        # Corresponds to the JSON property `appendedSearchContextCount`
        # @return [Fixnum]
        attr_accessor :appended_search_context_count
      
        # 
        # Corresponds to the JSON property `conversationTranscriptHasMixedLanguages`
        # @return [Boolean]
        attr_accessor :conversation_transcript_has_mixed_languages
        alias_method :conversation_transcript_has_mixed_languages?, :conversation_transcript_has_mixed_languages
      
        # 
        # Corresponds to the JSON property `disableSyncDelivery`
        # @return [Boolean]
        attr_accessor :disable_sync_delivery
        alias_method :disable_sync_delivery?, :disable_sync_delivery
      
        # 
        # Corresponds to the JSON property `endUserMetadataIncluded`
        # @return [Boolean]
        attr_accessor :end_user_metadata_included
        alias_method :end_user_metadata_included?, :end_user_metadata_included
      
        # 
        # Corresponds to the JSON property `invalidItemsQuerySuggestionSkipped`
        # @return [Boolean]
        attr_accessor :invalid_items_query_suggestion_skipped
        alias_method :invalid_items_query_suggestion_skipped?, :invalid_items_query_suggestion_skipped
      
        # 
        # Corresponds to the JSON property `multipleQueriesGenerated`
        # @return [Boolean]
        attr_accessor :multiple_queries_generated
        alias_method :multiple_queries_generated?, :multiple_queries_generated
      
        # 
        # Corresponds to the JSON property `previousQueriesIncluded`
        # @return [Boolean]
        attr_accessor :previous_queries_included
        alias_method :previous_queries_included?, :previous_queries_included
      
        # 
        # Corresponds to the JSON property `primaryQueryRedactedAndReplaced`
        # @return [Boolean]
        attr_accessor :primary_query_redacted_and_replaced
        alias_method :primary_query_redacted_and_replaced?, :primary_query_redacted_and_replaced
      
        # 
        # Corresponds to the JSON property `queryContainedSearchContext`
        # @return [Boolean]
        attr_accessor :query_contained_search_context
        alias_method :query_contained_search_context?, :query_contained_search_context
      
        # 
        # Corresponds to the JSON property `queryGenerationAgentLanguageMismatch`
        # @return [Boolean]
        attr_accessor :query_generation_agent_language_mismatch
        alias_method :query_generation_agent_language_mismatch?, :query_generation_agent_language_mismatch
      
        # 
        # Corresponds to the JSON property `queryGenerationEndUserLanguageMismatch`
        # @return [Boolean]
        attr_accessor :query_generation_end_user_language_mismatch
        alias_method :query_generation_end_user_language_mismatch?, :query_generation_end_user_language_mismatch
      
        # 
        # Corresponds to the JSON property `returnQueryOnly`
        # @return [Boolean]
        attr_accessor :return_query_only
        alias_method :return_query_only?, :return_query_only
      
        # 
        # Corresponds to the JSON property `thirdPartyConnectorAllowed`
        # @return [Boolean]
        attr_accessor :third_party_connector_allowed
        alias_method :third_party_connector_allowed?, :third_party_connector_allowed
      
        # 
        # Corresponds to the JSON property `useCustomSafetyFilterLevel`
        # @return [Boolean]
        attr_accessor :use_custom_safety_filter_level
        alias_method :use_custom_safety_filter_level?, :use_custom_safety_filter_level
      
        # 
        # Corresponds to the JSON property `usePubsubDelivery`
        # @return [Boolean]
        attr_accessor :use_pubsub_delivery
        alias_method :use_pubsub_delivery?, :use_pubsub_delivery
      
        # 
        # Corresponds to the JSON property `useTranslatedMessage`
        # @return [Boolean]
        attr_accessor :use_translated_message
        alias_method :use_translated_message?, :use_translated_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_generation_rewriter_on = args[:answer_generation_rewriter_on] if args.key?(:answer_generation_rewriter_on)
          @appended_search_context_count = args[:appended_search_context_count] if args.key?(:appended_search_context_count)
          @conversation_transcript_has_mixed_languages = args[:conversation_transcript_has_mixed_languages] if args.key?(:conversation_transcript_has_mixed_languages)
          @disable_sync_delivery = args[:disable_sync_delivery] if args.key?(:disable_sync_delivery)
          @end_user_metadata_included = args[:end_user_metadata_included] if args.key?(:end_user_metadata_included)
          @invalid_items_query_suggestion_skipped = args[:invalid_items_query_suggestion_skipped] if args.key?(:invalid_items_query_suggestion_skipped)
          @multiple_queries_generated = args[:multiple_queries_generated] if args.key?(:multiple_queries_generated)
          @previous_queries_included = args[:previous_queries_included] if args.key?(:previous_queries_included)
          @primary_query_redacted_and_replaced = args[:primary_query_redacted_and_replaced] if args.key?(:primary_query_redacted_and_replaced)
          @query_contained_search_context = args[:query_contained_search_context] if args.key?(:query_contained_search_context)
          @query_generation_agent_language_mismatch = args[:query_generation_agent_language_mismatch] if args.key?(:query_generation_agent_language_mismatch)
          @query_generation_end_user_language_mismatch = args[:query_generation_end_user_language_mismatch] if args.key?(:query_generation_end_user_language_mismatch)
          @return_query_only = args[:return_query_only] if args.key?(:return_query_only)
          @third_party_connector_allowed = args[:third_party_connector_allowed] if args.key?(:third_party_connector_allowed)
          @use_custom_safety_filter_level = args[:use_custom_safety_filter_level] if args.key?(:use_custom_safety_filter_level)
          @use_pubsub_delivery = args[:use_pubsub_delivery] if args.key?(:use_pubsub_delivery)
          @use_translated_message = args[:use_translated_message] if args.key?(:use_translated_message)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2KnowledgeBase
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @language_code = args[:language_code] if args.key?(:language_code)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2KnowledgeOperationMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `doneTime`
        # @return [String]
        attr_accessor :done_time
      
        # 
        # Corresponds to the JSON property `exportOperationMetadata`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ExportOperationMetadata]
        attr_accessor :export_operation_metadata
      
        # 
        # Corresponds to the JSON property `knowledgeBase`
        # @return [String]
        attr_accessor :knowledge_base
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done_time = args[:done_time] if args.key?(:done_time)
          @export_operation_metadata = args[:export_operation_metadata] if args.key?(:export_operation_metadata)
          @knowledge_base = args[:knowledge_base] if args.key?(:knowledge_base)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ListAnswerRecordsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `answerRecords`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AnswerRecord>]
        attr_accessor :answer_records
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_records = args[:answer_records] if args.key?(:answer_records)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ListContextsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `contexts`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context>]
        attr_accessor :contexts
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contexts = args[:contexts] if args.key?(:contexts)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ListConversationDatasetsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conversationDatasets`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationDataset>]
        attr_accessor :conversation_datasets
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_datasets = args[:conversation_datasets] if args.key?(:conversation_datasets)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ListConversationModelEvaluationsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conversationModelEvaluations`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationModelEvaluation>]
        attr_accessor :conversation_model_evaluations
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_model_evaluations = args[:conversation_model_evaluations] if args.key?(:conversation_model_evaluations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ListConversationModelsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conversationModels`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationModel>]
        attr_accessor :conversation_models
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_models = args[:conversation_models] if args.key?(:conversation_models)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ListConversationProfilesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conversationProfiles`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationProfile>]
        attr_accessor :conversation_profiles
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_profiles = args[:conversation_profiles] if args.key?(:conversation_profiles)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ListConversationsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conversations`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Conversation>]
        attr_accessor :conversations
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversations = args[:conversations] if args.key?(:conversations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ListDocumentsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `documents`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Document>]
        attr_accessor :documents
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @documents = args[:documents] if args.key?(:documents)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ListEntityTypesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `entityTypes`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityType>]
        attr_accessor :entity_types
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity_types = args[:entity_types] if args.key?(:entity_types)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ListEnvironmentsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `environments`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Environment>]
        attr_accessor :environments
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @environments = args[:environments] if args.key?(:environments)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ListGeneratorEvaluationsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `generatorEvaluations`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2GeneratorEvaluation>]
        attr_accessor :generator_evaluations
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @generator_evaluations = args[:generator_evaluations] if args.key?(:generator_evaluations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ListGeneratorsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `generators`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Generator>]
        attr_accessor :generators
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @generators = args[:generators] if args.key?(:generators)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ListIntentsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `intents`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent>]
        attr_accessor :intents
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @intents = args[:intents] if args.key?(:intents)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ListKnowledgeBasesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `knowledgeBases`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase>]
        attr_accessor :knowledge_bases
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @knowledge_bases = args[:knowledge_bases] if args.key?(:knowledge_bases)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ListMessagesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Message>]
        attr_accessor :messages
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @messages = args[:messages] if args.key?(:messages)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ListParticipantsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `participants`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Participant>]
        attr_accessor :participants
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @participants = args[:participants] if args.key?(:participants)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ListSessionEntityTypesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `sessionEntityTypes`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType>]
        attr_accessor :session_entity_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @session_entity_types = args[:session_entity_types] if args.key?(:session_entity_types)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ListSipTrunksResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `sipTrunks`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SipTrunk>]
        attr_accessor :sip_trunks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @sip_trunks = args[:sip_trunks] if args.key?(:sip_trunks)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ListToolsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `tools`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Tool>]
        attr_accessor :tools
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @tools = args[:tools] if args.key?(:tools)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ListVersionsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `versions`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Version>]
        attr_accessor :versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @versions = args[:versions] if args.key?(:versions)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2LoggingConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `enableStackdriverLogging`
        # @return [Boolean]
        attr_accessor :enable_stackdriver_logging
        alias_method :enable_stackdriver_logging?, :enable_stackdriver_logging
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_stackdriver_logging = args[:enable_stackdriver_logging] if args.key?(:enable_stackdriver_logging)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2Message
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # 
        # Corresponds to the JSON property `messageAnnotation`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2MessageAnnotation]
        attr_accessor :message_annotation
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `participant`
        # @return [String]
        attr_accessor :participant
      
        # 
        # Corresponds to the JSON property `participantRole`
        # @return [String]
        attr_accessor :participant_role
      
        # 
        # Corresponds to the JSON property `sendTime`
        # @return [String]
        attr_accessor :send_time
      
        # 
        # Corresponds to the JSON property `sentimentAnalysis`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SentimentAnalysisResult]
        attr_accessor :sentiment_analysis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @create_time = args[:create_time] if args.key?(:create_time)
          @language_code = args[:language_code] if args.key?(:language_code)
          @message_annotation = args[:message_annotation] if args.key?(:message_annotation)
          @name = args[:name] if args.key?(:name)
          @participant = args[:participant] if args.key?(:participant)
          @participant_role = args[:participant_role] if args.key?(:participant_role)
          @send_time = args[:send_time] if args.key?(:send_time)
          @sentiment_analysis = args[:sentiment_analysis] if args.key?(:sentiment_analysis)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2MessageAnnotation
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `containEntities`
        # @return [Boolean]
        attr_accessor :contain_entities
        alias_method :contain_entities?, :contain_entities
      
        # 
        # Corresponds to the JSON property `parts`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AnnotatedMessagePart>]
        attr_accessor :parts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contain_entities = args[:contain_entities] if args.key?(:contain_entities)
          @parts = args[:parts] if args.key?(:parts)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2MessageEntry
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # 
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @language_code = args[:language_code] if args.key?(:language_code)
          @role = args[:role] if args.key?(:role)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2NotificationConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `messageFormat`
        # @return [String]
        attr_accessor :message_format
      
        # 
        # Corresponds to the JSON property `topic`
        # @return [String]
        attr_accessor :topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message_format = args[:message_format] if args.key?(:message_format)
          @topic = args[:topic] if args.key?(:topic)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2OriginalDetectIntentRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # 
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # 
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @payload = args[:payload] if args.key?(:payload)
          @source = args[:source] if args.key?(:source)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2OutputAudio
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `audio`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :audio
      
        # 
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2OutputAudioConfig]
        attr_accessor :config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio = args[:audio] if args.key?(:audio)
          @config = args[:config] if args.key?(:config)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2OutputAudioConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `audioEncoding`
        # @return [String]
        attr_accessor :audio_encoding
      
        # 
        # Corresponds to the JSON property `sampleRateHertz`
        # @return [Fixnum]
        attr_accessor :sample_rate_hertz
      
        # 
        # Corresponds to the JSON property `synthesizeSpeechConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SynthesizeSpeechConfig]
        attr_accessor :synthesize_speech_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_encoding = args[:audio_encoding] if args.key?(:audio_encoding)
          @sample_rate_hertz = args[:sample_rate_hertz] if args.key?(:sample_rate_hertz)
          @synthesize_speech_config = args[:synthesize_speech_config] if args.key?(:synthesize_speech_config)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2Participant
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `agentDesktopSource`
        # @return [String]
        attr_accessor :agent_desktop_source
      
        # 
        # Corresponds to the JSON property `documentsMetadataFilters`
        # @return [Hash<String,String>]
        attr_accessor :documents_metadata_filters
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `obfuscatedExternalUserId`
        # @return [String]
        attr_accessor :obfuscated_external_user_id
      
        # 
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # 
        # Corresponds to the JSON property `sipRecordingMediaLabel`
        # @return [String]
        attr_accessor :sip_recording_media_label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_desktop_source = args[:agent_desktop_source] if args.key?(:agent_desktop_source)
          @documents_metadata_filters = args[:documents_metadata_filters] if args.key?(:documents_metadata_filters)
          @name = args[:name] if args.key?(:name)
          @obfuscated_external_user_id = args[:obfuscated_external_user_id] if args.key?(:obfuscated_external_user_id)
          @role = args[:role] if args.key?(:role)
          @sip_recording_media_label = args[:sip_recording_media_label] if args.key?(:sip_recording_media_label)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2QueryInput
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `audioConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2InputAudioConfig]
        attr_accessor :audio_config
      
        # 
        # Corresponds to the JSON property `event`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EventInput]
        attr_accessor :event
      
        # 
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2TextInput]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_config = args[:audio_config] if args.key?(:audio_config)
          @event = args[:event] if args.key?(:event)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2QueryParameters
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `contexts`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context>]
        attr_accessor :contexts
      
        # 
        # Corresponds to the JSON property `geoLocation`
        # @return [Google::Apis::DialogflowV2::GoogleTypeLatLng]
        attr_accessor :geo_location
      
        # 
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # 
        # Corresponds to the JSON property `platform`
        # @return [String]
        attr_accessor :platform
      
        # 
        # Corresponds to the JSON property `resetContexts`
        # @return [Boolean]
        attr_accessor :reset_contexts
        alias_method :reset_contexts?, :reset_contexts
      
        # 
        # Corresponds to the JSON property `sentimentAnalysisRequestConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SentimentAnalysisRequestConfig]
        attr_accessor :sentiment_analysis_request_config
      
        # 
        # Corresponds to the JSON property `sessionEntityTypes`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType>]
        attr_accessor :session_entity_types
      
        # 
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        # 
        # Corresponds to the JSON property `webhookHeaders`
        # @return [Hash<String,String>]
        attr_accessor :webhook_headers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contexts = args[:contexts] if args.key?(:contexts)
          @geo_location = args[:geo_location] if args.key?(:geo_location)
          @payload = args[:payload] if args.key?(:payload)
          @platform = args[:platform] if args.key?(:platform)
          @reset_contexts = args[:reset_contexts] if args.key?(:reset_contexts)
          @sentiment_analysis_request_config = args[:sentiment_analysis_request_config] if args.key?(:sentiment_analysis_request_config)
          @session_entity_types = args[:session_entity_types] if args.key?(:session_entity_types)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @webhook_headers = args[:webhook_headers] if args.key?(:webhook_headers)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2QueryResult
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # 
        # Corresponds to the JSON property `allRequiredParamsPresent`
        # @return [Boolean]
        attr_accessor :all_required_params_present
        alias_method :all_required_params_present?, :all_required_params_present
      
        # 
        # Corresponds to the JSON property `cancelsSlotFilling`
        # @return [Boolean]
        attr_accessor :cancels_slot_filling
        alias_method :cancels_slot_filling?, :cancels_slot_filling
      
        # 
        # Corresponds to the JSON property `diagnosticInfo`
        # @return [Hash<String,Object>]
        attr_accessor :diagnostic_info
      
        # 
        # Corresponds to the JSON property `fulfillmentMessages`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessage>]
        attr_accessor :fulfillment_messages
      
        # 
        # Corresponds to the JSON property `fulfillmentText`
        # @return [String]
        attr_accessor :fulfillment_text
      
        # 
        # Corresponds to the JSON property `intent`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent]
        attr_accessor :intent
      
        # 
        # Corresponds to the JSON property `intentDetectionConfidence`
        # @return [Float]
        attr_accessor :intent_detection_confidence
      
        # 
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # 
        # Corresponds to the JSON property `outputContexts`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context>]
        attr_accessor :output_contexts
      
        # 
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Object>]
        attr_accessor :parameters
      
        # 
        # Corresponds to the JSON property `queryText`
        # @return [String]
        attr_accessor :query_text
      
        # 
        # Corresponds to the JSON property `sentimentAnalysisResult`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SentimentAnalysisResult]
        attr_accessor :sentiment_analysis_result
      
        # 
        # Corresponds to the JSON property `speechRecognitionConfidence`
        # @return [Float]
        attr_accessor :speech_recognition_confidence
      
        # 
        # Corresponds to the JSON property `webhookPayload`
        # @return [Hash<String,Object>]
        attr_accessor :webhook_payload
      
        # 
        # Corresponds to the JSON property `webhookSource`
        # @return [String]
        attr_accessor :webhook_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @all_required_params_present = args[:all_required_params_present] if args.key?(:all_required_params_present)
          @cancels_slot_filling = args[:cancels_slot_filling] if args.key?(:cancels_slot_filling)
          @diagnostic_info = args[:diagnostic_info] if args.key?(:diagnostic_info)
          @fulfillment_messages = args[:fulfillment_messages] if args.key?(:fulfillment_messages)
          @fulfillment_text = args[:fulfillment_text] if args.key?(:fulfillment_text)
          @intent = args[:intent] if args.key?(:intent)
          @intent_detection_confidence = args[:intent_detection_confidence] if args.key?(:intent_detection_confidence)
          @language_code = args[:language_code] if args.key?(:language_code)
          @output_contexts = args[:output_contexts] if args.key?(:output_contexts)
          @parameters = args[:parameters] if args.key?(:parameters)
          @query_text = args[:query_text] if args.key?(:query_text)
          @sentiment_analysis_result = args[:sentiment_analysis_result] if args.key?(:sentiment_analysis_result)
          @speech_recognition_confidence = args[:speech_recognition_confidence] if args.key?(:speech_recognition_confidence)
          @webhook_payload = args[:webhook_payload] if args.key?(:webhook_payload)
          @webhook_source = args[:webhook_source] if args.key?(:webhook_source)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2RaiSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `raiCategoryConfigs`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2RaiSettingsRaiCategoryConfig>]
        attr_accessor :rai_category_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rai_category_configs = args[:rai_category_configs] if args.key?(:rai_category_configs)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2RaiSettingsRaiCategoryConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # 
        # Corresponds to the JSON property `sensitivityLevel`
        # @return [String]
        attr_accessor :sensitivity_level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
          @sensitivity_level = args[:sensitivity_level] if args.key?(:sensitivity_level)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ReloadDocumentRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `contentUri`
        # @return [String]
        attr_accessor :content_uri
      
        # 
        # Corresponds to the JSON property `importGcsCustomMetadata`
        # @return [Boolean]
        attr_accessor :import_gcs_custom_metadata
        alias_method :import_gcs_custom_metadata?, :import_gcs_custom_metadata
      
        # 
        # Corresponds to the JSON property `smartMessagingPartialUpdate`
        # @return [Boolean]
        attr_accessor :smart_messaging_partial_update
        alias_method :smart_messaging_partial_update?, :smart_messaging_partial_update
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_uri = args[:content_uri] if args.key?(:content_uri)
          @import_gcs_custom_metadata = args[:import_gcs_custom_metadata] if args.key?(:import_gcs_custom_metadata)
          @smart_messaging_partial_update = args[:smart_messaging_partial_update] if args.key?(:smart_messaging_partial_update)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2RestoreAgentRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `agentContent`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :agent_content
      
        # 
        # Corresponds to the JSON property `agentUri`
        # @return [String]
        attr_accessor :agent_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_content = args[:agent_content] if args.key?(:agent_content)
          @agent_uri = args[:agent_uri] if args.key?(:agent_uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SearchAgentsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `agents`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Agent>]
        attr_accessor :agents
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agents = args[:agents] if args.key?(:agents)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SearchKnowledgeAnswer
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `answer`
        # @return [String]
        attr_accessor :answer
      
        # 
        # Corresponds to the JSON property `answerRecord`
        # @return [String]
        attr_accessor :answer_record
      
        # 
        # Corresponds to the JSON property `answerSources`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SearchKnowledgeAnswerAnswerSource>]
        attr_accessor :answer_sources
      
        # 
        # Corresponds to the JSON property `answerType`
        # @return [String]
        attr_accessor :answer_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer = args[:answer] if args.key?(:answer)
          @answer_record = args[:answer_record] if args.key?(:answer_record)
          @answer_sources = args[:answer_sources] if args.key?(:answer_sources)
          @answer_type = args[:answer_type] if args.key?(:answer_type)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SearchKnowledgeAnswerAnswerSource
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # 
        # Corresponds to the JSON property `snippet`
        # @return [String]
        attr_accessor :snippet
      
        # 
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # 
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata = args[:metadata] if args.key?(:metadata)
          @snippet = args[:snippet] if args.key?(:snippet)
          @title = args[:title] if args.key?(:title)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SearchKnowledgeDebugInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `datastoreResponseReason`
        # @return [String]
        attr_accessor :datastore_response_reason
      
        # 
        # Corresponds to the JSON property `ingestedContextReferenceDebugInfo`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IngestedContextReferenceDebugInfo]
        attr_accessor :ingested_context_reference_debug_info
      
        # 
        # Corresponds to the JSON property `searchKnowledgeBehavior`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SearchKnowledgeDebugInfoSearchKnowledgeBehavior]
        attr_accessor :search_knowledge_behavior
      
        # 
        # Corresponds to the JSON property `serviceLatency`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ServiceLatency]
        attr_accessor :service_latency
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @datastore_response_reason = args[:datastore_response_reason] if args.key?(:datastore_response_reason)
          @ingested_context_reference_debug_info = args[:ingested_context_reference_debug_info] if args.key?(:ingested_context_reference_debug_info)
          @search_knowledge_behavior = args[:search_knowledge_behavior] if args.key?(:search_knowledge_behavior)
          @service_latency = args[:service_latency] if args.key?(:service_latency)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SearchKnowledgeDebugInfoSearchKnowledgeBehavior
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `answerGenerationRewriterOn`
        # @return [Boolean]
        attr_accessor :answer_generation_rewriter_on
        alias_method :answer_generation_rewriter_on?, :answer_generation_rewriter_on
      
        # 
        # Corresponds to the JSON property `endUserMetadataIncluded`
        # @return [Boolean]
        attr_accessor :end_user_metadata_included
        alias_method :end_user_metadata_included?, :end_user_metadata_included
      
        # 
        # Corresponds to the JSON property `thirdPartyConnectorAllowed`
        # @return [Boolean]
        attr_accessor :third_party_connector_allowed
        alias_method :third_party_connector_allowed?, :third_party_connector_allowed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_generation_rewriter_on = args[:answer_generation_rewriter_on] if args.key?(:answer_generation_rewriter_on)
          @end_user_metadata_included = args[:end_user_metadata_included] if args.key?(:end_user_metadata_included)
          @third_party_connector_allowed = args[:third_party_connector_allowed] if args.key?(:third_party_connector_allowed)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SearchKnowledgeRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conversation`
        # @return [String]
        attr_accessor :conversation
      
        # 
        # Corresponds to the JSON property `conversationProfile`
        # @return [String]
        attr_accessor :conversation_profile
      
        # 
        # Corresponds to the JSON property `endUserMetadata`
        # @return [Hash<String,Object>]
        attr_accessor :end_user_metadata
      
        # 
        # Corresponds to the JSON property `exactSearch`
        # @return [Boolean]
        attr_accessor :exact_search
        alias_method :exact_search?, :exact_search
      
        # 
        # Corresponds to the JSON property `latestMessage`
        # @return [String]
        attr_accessor :latest_message
      
        # 
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # 
        # Corresponds to the JSON property `query`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2TextInput]
        attr_accessor :query
      
        # 
        # Corresponds to the JSON property `querySource`
        # @return [String]
        attr_accessor :query_source
      
        # 
        # Corresponds to the JSON property `searchConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfig]
        attr_accessor :search_config
      
        # 
        # Corresponds to the JSON property `sessionId`
        # @return [String]
        attr_accessor :session_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation = args[:conversation] if args.key?(:conversation)
          @conversation_profile = args[:conversation_profile] if args.key?(:conversation_profile)
          @end_user_metadata = args[:end_user_metadata] if args.key?(:end_user_metadata)
          @exact_search = args[:exact_search] if args.key?(:exact_search)
          @latest_message = args[:latest_message] if args.key?(:latest_message)
          @parent = args[:parent] if args.key?(:parent)
          @query = args[:query] if args.key?(:query)
          @query_source = args[:query_source] if args.key?(:query_source)
          @search_config = args[:search_config] if args.key?(:search_config)
          @session_id = args[:session_id] if args.key?(:session_id)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `boostSpecs`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigBoostSpecs>]
        attr_accessor :boost_specs
      
        # 
        # Corresponds to the JSON property `filterSpecs`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigFilterSpecs>]
        attr_accessor :filter_specs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boost_specs = args[:boost_specs] if args.key?(:boost_specs)
          @filter_specs = args[:filter_specs] if args.key?(:filter_specs)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigBoostSpecs
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dataStores`
        # @return [Array<String>]
        attr_accessor :data_stores
      
        # 
        # Corresponds to the JSON property `spec`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpec>]
        attr_accessor :spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_stores = args[:data_stores] if args.key?(:data_stores)
          @spec = args[:spec] if args.key?(:spec)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpec
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conditionBoostSpecs`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpecConditionBoostSpec>]
        attr_accessor :condition_boost_specs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition_boost_specs = args[:condition_boost_specs] if args.key?(:condition_boost_specs)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpecConditionBoostSpec
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `boost`
        # @return [Float]
        attr_accessor :boost
      
        # 
        # Corresponds to the JSON property `boostControlSpec`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpecConditionBoostSpecBoostControlSpec]
        attr_accessor :boost_control_spec
      
        # 
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boost = args[:boost] if args.key?(:boost)
          @boost_control_spec = args[:boost_control_spec] if args.key?(:boost_control_spec)
          @condition = args[:condition] if args.key?(:condition)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpecConditionBoostSpecBoostControlSpec
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `attributeType`
        # @return [String]
        attr_accessor :attribute_type
      
        # 
        # Corresponds to the JSON property `controlPoints`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpecConditionBoostSpecBoostControlSpecControlPoint>]
        attr_accessor :control_points
      
        # 
        # Corresponds to the JSON property `fieldName`
        # @return [String]
        attr_accessor :field_name
      
        # 
        # Corresponds to the JSON property `interpolationType`
        # @return [String]
        attr_accessor :interpolation_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_type = args[:attribute_type] if args.key?(:attribute_type)
          @control_points = args[:control_points] if args.key?(:control_points)
          @field_name = args[:field_name] if args.key?(:field_name)
          @interpolation_type = args[:interpolation_type] if args.key?(:interpolation_type)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpecConditionBoostSpecBoostControlSpecControlPoint
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `attributeValue`
        # @return [String]
        attr_accessor :attribute_value
      
        # 
        # Corresponds to the JSON property `boostAmount`
        # @return [Float]
        attr_accessor :boost_amount
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_value = args[:attribute_value] if args.key?(:attribute_value)
          @boost_amount = args[:boost_amount] if args.key?(:boost_amount)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigFilterSpecs
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dataStores`
        # @return [Array<String>]
        attr_accessor :data_stores
      
        # 
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_stores = args[:data_stores] if args.key?(:data_stores)
          @filter = args[:filter] if args.key?(:filter)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SearchKnowledgeResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `answers`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SearchKnowledgeAnswer>]
        attr_accessor :answers
      
        # 
        # Corresponds to the JSON property `rewrittenQuery`
        # @return [String]
        attr_accessor :rewritten_query
      
        # 
        # Corresponds to the JSON property `searchKnowledgeDebugInfo`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SearchKnowledgeDebugInfo]
        attr_accessor :search_knowledge_debug_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answers = args[:answers] if args.key?(:answers)
          @rewritten_query = args[:rewritten_query] if args.key?(:rewritten_query)
          @search_knowledge_debug_info = args[:search_knowledge_debug_info] if args.key?(:search_knowledge_debug_info)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2Sentiment
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `magnitude`
        # @return [Float]
        attr_accessor :magnitude
      
        # 
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @magnitude = args[:magnitude] if args.key?(:magnitude)
          @score = args[:score] if args.key?(:score)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SentimentAnalysisRequestConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `analyzeQueryTextSentiment`
        # @return [Boolean]
        attr_accessor :analyze_query_text_sentiment
        alias_method :analyze_query_text_sentiment?, :analyze_query_text_sentiment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analyze_query_text_sentiment = args[:analyze_query_text_sentiment] if args.key?(:analyze_query_text_sentiment)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SentimentAnalysisResult
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `queryTextSentiment`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Sentiment]
        attr_accessor :query_text_sentiment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @query_text_sentiment = args[:query_text_sentiment] if args.key?(:query_text_sentiment)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ServiceLatency
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `internalServiceLatencies`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ServiceLatencyInternalServiceLatency>]
        attr_accessor :internal_service_latencies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @internal_service_latencies = args[:internal_service_latencies] if args.key?(:internal_service_latencies)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ServiceLatencyInternalServiceLatency
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `completeTime`
        # @return [String]
        attr_accessor :complete_time
      
        # 
        # Corresponds to the JSON property `latencyMs`
        # @return [Float]
        attr_accessor :latency_ms
      
        # 
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # 
        # Corresponds to the JSON property `step`
        # @return [String]
        attr_accessor :step
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @complete_time = args[:complete_time] if args.key?(:complete_time)
          @latency_ms = args[:latency_ms] if args.key?(:latency_ms)
          @start_time = args[:start_time] if args.key?(:start_time)
          @step = args[:step] if args.key?(:step)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SessionEntityType
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityTypeEntity>]
        attr_accessor :entities
      
        # 
        # Corresponds to the JSON property `entityOverrideMode`
        # @return [String]
        attr_accessor :entity_override_mode
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entities = args[:entities] if args.key?(:entities)
          @entity_override_mode = args[:entity_override_mode] if args.key?(:entity_override_mode)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conversationProfile`
        # @return [String]
        attr_accessor :conversation_profile
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `participantRole`
        # @return [String]
        attr_accessor :participant_role
      
        # 
        # Corresponds to the JSON property `suggestionFeatureType`
        # @return [String]
        attr_accessor :suggestion_feature_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_profile = args[:conversation_profile] if args.key?(:conversation_profile)
          @create_time = args[:create_time] if args.key?(:create_time)
          @participant_role = args[:participant_role] if args.key?(:participant_role)
          @suggestion_feature_type = args[:suggestion_feature_type] if args.key?(:suggestion_feature_type)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SetSuggestionFeatureConfigRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `participantRole`
        # @return [String]
        attr_accessor :participant_role
      
        # 
        # Corresponds to the JSON property `suggestionFeatureConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig]
        attr_accessor :suggestion_feature_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @participant_role = args[:participant_role] if args.key?(:participant_role)
          @suggestion_feature_config = args[:suggestion_feature_config] if args.key?(:suggestion_feature_config)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SipTrunk
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `connections`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Connection>]
        attr_accessor :connections
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `expectedHostname`
        # @return [Array<String>]
        attr_accessor :expected_hostname
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connections = args[:connections] if args.key?(:connections)
          @display_name = args[:display_name] if args.key?(:display_name)
          @expected_hostname = args[:expected_hostname] if args.key?(:expected_hostname)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SmartReplyAnswer
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `answerRecord`
        # @return [String]
        attr_accessor :answer_record
      
        # 
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # 
        # Corresponds to the JSON property `reply`
        # @return [String]
        attr_accessor :reply
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_record = args[:answer_record] if args.key?(:answer_record)
          @confidence = args[:confidence] if args.key?(:confidence)
          @reply = args[:reply] if args.key?(:reply)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SmartReplyMetrics
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `allowlistCoverage`
        # @return [Float]
        attr_accessor :allowlist_coverage
      
        # 
        # Corresponds to the JSON property `conversationCount`
        # @return [Fixnum]
        attr_accessor :conversation_count
      
        # 
        # Corresponds to the JSON property `topNMetrics`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SmartReplyMetricsTopNMetrics>]
        attr_accessor :top_n_metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowlist_coverage = args[:allowlist_coverage] if args.key?(:allowlist_coverage)
          @conversation_count = args[:conversation_count] if args.key?(:conversation_count)
          @top_n_metrics = args[:top_n_metrics] if args.key?(:top_n_metrics)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SmartReplyMetricsTopNMetrics
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `n`
        # @return [Fixnum]
        attr_accessor :n
      
        # 
        # Corresponds to the JSON property `recall`
        # @return [Float]
        attr_accessor :recall
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @n = args[:n] if args.key?(:n)
          @recall = args[:recall] if args.key?(:recall)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SmartReplyModelMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `trainingModelType`
        # @return [String]
        attr_accessor :training_model_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @training_model_type = args[:training_model_type] if args.key?(:training_model_type)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SpeechContext
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `boost`
        # @return [Float]
        attr_accessor :boost
      
        # 
        # Corresponds to the JSON property `phrases`
        # @return [Array<String>]
        attr_accessor :phrases
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boost = args[:boost] if args.key?(:boost)
          @phrases = args[:phrases] if args.key?(:phrases)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SpeechToTextConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `audioEncoding`
        # @return [String]
        attr_accessor :audio_encoding
      
        # 
        # Corresponds to the JSON property `enableWordInfo`
        # @return [Boolean]
        attr_accessor :enable_word_info
        alias_method :enable_word_info?, :enable_word_info
      
        # 
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # 
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        # 
        # Corresponds to the JSON property `phraseSets`
        # @return [Array<String>]
        attr_accessor :phrase_sets
      
        # 
        # Corresponds to the JSON property `sampleRateHertz`
        # @return [Fixnum]
        attr_accessor :sample_rate_hertz
      
        # 
        # Corresponds to the JSON property `speechModelVariant`
        # @return [String]
        attr_accessor :speech_model_variant
      
        # 
        # Corresponds to the JSON property `useTimeoutBasedEndpointing`
        # @return [Boolean]
        attr_accessor :use_timeout_based_endpointing
        alias_method :use_timeout_based_endpointing?, :use_timeout_based_endpointing
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_encoding = args[:audio_encoding] if args.key?(:audio_encoding)
          @enable_word_info = args[:enable_word_info] if args.key?(:enable_word_info)
          @language_code = args[:language_code] if args.key?(:language_code)
          @model = args[:model] if args.key?(:model)
          @phrase_sets = args[:phrase_sets] if args.key?(:phrase_sets)
          @sample_rate_hertz = args[:sample_rate_hertz] if args.key?(:sample_rate_hertz)
          @speech_model_variant = args[:speech_model_variant] if args.key?(:speech_model_variant)
          @use_timeout_based_endpointing = args[:use_timeout_based_endpointing] if args.key?(:use_timeout_based_endpointing)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SpeechWordInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # 
        # Corresponds to the JSON property `endOffset`
        # @return [String]
        attr_accessor :end_offset
      
        # 
        # Corresponds to the JSON property `startOffset`
        # @return [String]
        attr_accessor :start_offset
      
        # 
        # Corresponds to the JSON property `word`
        # @return [String]
        attr_accessor :word
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @end_offset = args[:end_offset] if args.key?(:end_offset)
          @start_offset = args[:start_offset] if args.key?(:start_offset)
          @word = args[:word] if args.key?(:word)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2StreamingRecognitionResult
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # 
        # Corresponds to the JSON property `isFinal`
        # @return [Boolean]
        attr_accessor :is_final
        alias_method :is_final?, :is_final
      
        # 
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # 
        # Corresponds to the JSON property `messageType`
        # @return [String]
        attr_accessor :message_type
      
        # 
        # Corresponds to the JSON property `speechEndOffset`
        # @return [String]
        attr_accessor :speech_end_offset
      
        # 
        # Corresponds to the JSON property `speechWordInfo`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SpeechWordInfo>]
        attr_accessor :speech_word_info
      
        # 
        # Corresponds to the JSON property `transcript`
        # @return [String]
        attr_accessor :transcript
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @is_final = args[:is_final] if args.key?(:is_final)
          @language_code = args[:language_code] if args.key?(:language_code)
          @message_type = args[:message_type] if args.key?(:message_type)
          @speech_end_offset = args[:speech_end_offset] if args.key?(:speech_end_offset)
          @speech_word_info = args[:speech_word_info] if args.key?(:speech_word_info)
          @transcript = args[:transcript] if args.key?(:transcript)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SuggestArticlesRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `assistQueryParams`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AssistQueryParameters]
        attr_accessor :assist_query_params
      
        # 
        # Corresponds to the JSON property `contextSize`
        # @return [Fixnum]
        attr_accessor :context_size
      
        # 
        # Corresponds to the JSON property `latestMessage`
        # @return [String]
        attr_accessor :latest_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assist_query_params = args[:assist_query_params] if args.key?(:assist_query_params)
          @context_size = args[:context_size] if args.key?(:context_size)
          @latest_message = args[:latest_message] if args.key?(:latest_message)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SuggestArticlesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `articleAnswers`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ArticleAnswer>]
        attr_accessor :article_answers
      
        # 
        # Corresponds to the JSON property `contextSize`
        # @return [Fixnum]
        attr_accessor :context_size
      
        # 
        # Corresponds to the JSON property `latestMessage`
        # @return [String]
        attr_accessor :latest_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @article_answers = args[:article_answers] if args.key?(:article_answers)
          @context_size = args[:context_size] if args.key?(:context_size)
          @latest_message = args[:latest_message] if args.key?(:latest_message)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SuggestConversationSummaryRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `assistQueryParams`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AssistQueryParameters]
        attr_accessor :assist_query_params
      
        # 
        # Corresponds to the JSON property `contextSize`
        # @return [Fixnum]
        attr_accessor :context_size
      
        # 
        # Corresponds to the JSON property `latestMessage`
        # @return [String]
        attr_accessor :latest_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assist_query_params = args[:assist_query_params] if args.key?(:assist_query_params)
          @context_size = args[:context_size] if args.key?(:context_size)
          @latest_message = args[:latest_message] if args.key?(:latest_message)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SuggestConversationSummaryResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `contextSize`
        # @return [Fixnum]
        attr_accessor :context_size
      
        # 
        # Corresponds to the JSON property `latestMessage`
        # @return [String]
        attr_accessor :latest_message
      
        # 
        # Corresponds to the JSON property `summary`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestConversationSummaryResponseSummary]
        attr_accessor :summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context_size = args[:context_size] if args.key?(:context_size)
          @latest_message = args[:latest_message] if args.key?(:latest_message)
          @summary = args[:summary] if args.key?(:summary)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SuggestConversationSummaryResponseSummary
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `answerRecord`
        # @return [String]
        attr_accessor :answer_record
      
        # 
        # Corresponds to the JSON property `baselineModelVersion`
        # @return [String]
        attr_accessor :baseline_model_version
      
        # 
        # Corresponds to the JSON property `sortedTextSections`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestConversationSummaryResponseSummarySummarySection>]
        attr_accessor :sorted_text_sections
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # 
        # Corresponds to the JSON property `textSections`
        # @return [Hash<String,String>]
        attr_accessor :text_sections
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_record = args[:answer_record] if args.key?(:answer_record)
          @baseline_model_version = args[:baseline_model_version] if args.key?(:baseline_model_version)
          @sorted_text_sections = args[:sorted_text_sections] if args.key?(:sorted_text_sections)
          @text = args[:text] if args.key?(:text)
          @text_sections = args[:text_sections] if args.key?(:text_sections)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SuggestConversationSummaryResponseSummarySummarySection
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `section`
        # @return [String]
        attr_accessor :section
      
        # 
        # Corresponds to the JSON property `summary`
        # @return [String]
        attr_accessor :summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @section = args[:section] if args.key?(:section)
          @summary = args[:summary] if args.key?(:summary)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SuggestFaqAnswersRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `assistQueryParams`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AssistQueryParameters]
        attr_accessor :assist_query_params
      
        # 
        # Corresponds to the JSON property `contextSize`
        # @return [Fixnum]
        attr_accessor :context_size
      
        # 
        # Corresponds to the JSON property `latestMessage`
        # @return [String]
        attr_accessor :latest_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assist_query_params = args[:assist_query_params] if args.key?(:assist_query_params)
          @context_size = args[:context_size] if args.key?(:context_size)
          @latest_message = args[:latest_message] if args.key?(:latest_message)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SuggestFaqAnswersResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `contextSize`
        # @return [Fixnum]
        attr_accessor :context_size
      
        # 
        # Corresponds to the JSON property `faqAnswers`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2FaqAnswer>]
        attr_accessor :faq_answers
      
        # 
        # Corresponds to the JSON property `latestMessage`
        # @return [String]
        attr_accessor :latest_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context_size = args[:context_size] if args.key?(:context_size)
          @faq_answers = args[:faq_answers] if args.key?(:faq_answers)
          @latest_message = args[:latest_message] if args.key?(:latest_message)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SuggestKnowledgeAssistRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `contextSize`
        # @return [Fixnum]
        attr_accessor :context_size
      
        # 
        # Corresponds to the JSON property `latestMessage`
        # @return [String]
        attr_accessor :latest_message
      
        # 
        # Corresponds to the JSON property `previousSuggestedQuery`
        # @return [String]
        attr_accessor :previous_suggested_query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context_size = args[:context_size] if args.key?(:context_size)
          @latest_message = args[:latest_message] if args.key?(:latest_message)
          @previous_suggested_query = args[:previous_suggested_query] if args.key?(:previous_suggested_query)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SuggestKnowledgeAssistResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `contextSize`
        # @return [Fixnum]
        attr_accessor :context_size
      
        # 
        # Corresponds to the JSON property `knowledgeAssistAnswer`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeAssistAnswer]
        attr_accessor :knowledge_assist_answer
      
        # 
        # Corresponds to the JSON property `latestMessage`
        # @return [String]
        attr_accessor :latest_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context_size = args[:context_size] if args.key?(:context_size)
          @knowledge_assist_answer = args[:knowledge_assist_answer] if args.key?(:knowledge_assist_answer)
          @latest_message = args[:latest_message] if args.key?(:latest_message)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SuggestSmartRepliesRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `contextSize`
        # @return [Fixnum]
        attr_accessor :context_size
      
        # 
        # Corresponds to the JSON property `currentTextInput`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2TextInput]
        attr_accessor :current_text_input
      
        # 
        # Corresponds to the JSON property `latestMessage`
        # @return [String]
        attr_accessor :latest_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context_size = args[:context_size] if args.key?(:context_size)
          @current_text_input = args[:current_text_input] if args.key?(:current_text_input)
          @latest_message = args[:latest_message] if args.key?(:latest_message)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SuggestSmartRepliesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `contextSize`
        # @return [Fixnum]
        attr_accessor :context_size
      
        # 
        # Corresponds to the JSON property `latestMessage`
        # @return [String]
        attr_accessor :latest_message
      
        # 
        # Corresponds to the JSON property `smartReplyAnswers`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SmartReplyAnswer>]
        attr_accessor :smart_reply_answers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context_size = args[:context_size] if args.key?(:context_size)
          @latest_message = args[:latest_message] if args.key?(:latest_message)
          @smart_reply_answers = args[:smart_reply_answers] if args.key?(:smart_reply_answers)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SuggestionDedupingConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `enableDeduping`
        # @return [Boolean]
        attr_accessor :enable_deduping
        alias_method :enable_deduping?, :enable_deduping
      
        # 
        # Corresponds to the JSON property `similarityThreshold`
        # @return [Float]
        attr_accessor :similarity_threshold
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_deduping = args[:enable_deduping] if args.key?(:enable_deduping)
          @similarity_threshold = args[:similarity_threshold] if args.key?(:similarity_threshold)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SuggestionFeature
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SuggestionInput
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # 
        # Corresponds to the JSON property `answerRecord`
        # @return [String]
        attr_accessor :answer_record
      
        # 
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Object>]
        attr_accessor :parameters
      
        # 
        # Corresponds to the JSON property `sendTime`
        # @return [String]
        attr_accessor :send_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @answer_record = args[:answer_record] if args.key?(:answer_record)
          @parameters = args[:parameters] if args.key?(:parameters)
          @send_time = args[:send_time] if args.key?(:send_time)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SuggestionResult
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DialogflowV2::GoogleRpcStatus]
        attr_accessor :error
      
        # 
        # Corresponds to the JSON property `generateSuggestionsResponse`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2GenerateSuggestionsResponse]
        attr_accessor :generate_suggestions_response
      
        # 
        # Corresponds to the JSON property `suggestArticlesResponse`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestArticlesResponse]
        attr_accessor :suggest_articles_response
      
        # 
        # Corresponds to the JSON property `suggestFaqAnswersResponse`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestFaqAnswersResponse]
        attr_accessor :suggest_faq_answers_response
      
        # 
        # Corresponds to the JSON property `suggestKnowledgeAssistResponse`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestKnowledgeAssistResponse]
        attr_accessor :suggest_knowledge_assist_response
      
        # 
        # Corresponds to the JSON property `suggestSmartRepliesResponse`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestSmartRepliesResponse]
        attr_accessor :suggest_smart_replies_response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error = args[:error] if args.key?(:error)
          @generate_suggestions_response = args[:generate_suggestions_response] if args.key?(:generate_suggestions_response)
          @suggest_articles_response = args[:suggest_articles_response] if args.key?(:suggest_articles_response)
          @suggest_faq_answers_response = args[:suggest_faq_answers_response] if args.key?(:suggest_faq_answers_response)
          @suggest_knowledge_assist_response = args[:suggest_knowledge_assist_response] if args.key?(:suggest_knowledge_assist_response)
          @suggest_smart_replies_response = args[:suggest_smart_replies_response] if args.key?(:suggest_smart_replies_response)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SummarizationContext
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `fewShotExamples`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2FewShotExample>]
        attr_accessor :few_shot_examples
      
        # 
        # Corresponds to the JSON property `outputLanguageCode`
        # @return [String]
        attr_accessor :output_language_code
      
        # 
        # Corresponds to the JSON property `summarizationSections`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SummarizationSection>]
        attr_accessor :summarization_sections
      
        # 
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @few_shot_examples = args[:few_shot_examples] if args.key?(:few_shot_examples)
          @output_language_code = args[:output_language_code] if args.key?(:output_language_code)
          @summarization_sections = args[:summarization_sections] if args.key?(:summarization_sections)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SummarizationEvaluationMetrics
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conversationDetails`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SummarizationEvaluationMetricsConversationDetail>]
        attr_accessor :conversation_details
      
        # 
        # Corresponds to the JSON property `overallMetrics`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SummarizationEvaluationMetricsOverallScoresByMetric>]
        attr_accessor :overall_metrics
      
        # 
        # Corresponds to the JSON property `overallSectionTokens`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SummarizationEvaluationMetricsSectionToken>]
        attr_accessor :overall_section_tokens
      
        # 
        # Corresponds to the JSON property `summarizationEvaluationMergedResultsUri`
        # @return [String]
        attr_accessor :summarization_evaluation_merged_results_uri
      
        # 
        # Corresponds to the JSON property `summarizationEvaluationResults`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SummarizationEvaluationMetricsSummarizationEvaluationResult>]
        attr_accessor :summarization_evaluation_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_details = args[:conversation_details] if args.key?(:conversation_details)
          @overall_metrics = args[:overall_metrics] if args.key?(:overall_metrics)
          @overall_section_tokens = args[:overall_section_tokens] if args.key?(:overall_section_tokens)
          @summarization_evaluation_merged_results_uri = args[:summarization_evaluation_merged_results_uri] if args.key?(:summarization_evaluation_merged_results_uri)
          @summarization_evaluation_results = args[:summarization_evaluation_results] if args.key?(:summarization_evaluation_results)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SummarizationEvaluationMetricsAccuracyDecomposition
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `accuracyReasoning`
        # @return [String]
        attr_accessor :accuracy_reasoning
      
        # 
        # Corresponds to the JSON property `isAccurate`
        # @return [Boolean]
        attr_accessor :is_accurate
        alias_method :is_accurate?, :is_accurate
      
        # 
        # Corresponds to the JSON property `point`
        # @return [String]
        attr_accessor :point
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accuracy_reasoning = args[:accuracy_reasoning] if args.key?(:accuracy_reasoning)
          @is_accurate = args[:is_accurate] if args.key?(:is_accurate)
          @point = args[:point] if args.key?(:point)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SummarizationEvaluationMetricsAdherenceDecomposition
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `adherenceReasoning`
        # @return [String]
        attr_accessor :adherence_reasoning
      
        # 
        # Corresponds to the JSON property `isAdherent`
        # @return [Boolean]
        attr_accessor :is_adherent
        alias_method :is_adherent?, :is_adherent
      
        # 
        # Corresponds to the JSON property `point`
        # @return [String]
        attr_accessor :point
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adherence_reasoning = args[:adherence_reasoning] if args.key?(:adherence_reasoning)
          @is_adherent = args[:is_adherent] if args.key?(:is_adherent)
          @point = args[:point] if args.key?(:point)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SummarizationEvaluationMetricsAdherenceRubric
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `isAddressed`
        # @return [Boolean]
        attr_accessor :is_addressed
        alias_method :is_addressed?, :is_addressed
      
        # 
        # Corresponds to the JSON property `question`
        # @return [String]
        attr_accessor :question
      
        # 
        # Corresponds to the JSON property `reasoning`
        # @return [String]
        attr_accessor :reasoning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @is_addressed = args[:is_addressed] if args.key?(:is_addressed)
          @question = args[:question] if args.key?(:question)
          @reasoning = args[:reasoning] if args.key?(:reasoning)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SummarizationEvaluationMetricsCompletenessRubric
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `isAddressed`
        # @return [Boolean]
        attr_accessor :is_addressed
        alias_method :is_addressed?, :is_addressed
      
        # 
        # Corresponds to the JSON property `question`
        # @return [String]
        attr_accessor :question
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @is_addressed = args[:is_addressed] if args.key?(:is_addressed)
          @question = args[:question] if args.key?(:question)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SummarizationEvaluationMetricsConversationDetail
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `messageEntries`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2MessageEntry>]
        attr_accessor :message_entries
      
        # 
        # Corresponds to the JSON property `metricDetails`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SummarizationEvaluationMetricsConversationDetailMetricDetail>]
        attr_accessor :metric_details
      
        # 
        # Corresponds to the JSON property `sectionTokens`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SummarizationEvaluationMetricsSectionToken>]
        attr_accessor :section_tokens
      
        # 
        # Corresponds to the JSON property `summarySections`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SummarySuggestionSummarySection>]
        attr_accessor :summary_sections
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message_entries = args[:message_entries] if args.key?(:message_entries)
          @metric_details = args[:metric_details] if args.key?(:metric_details)
          @section_tokens = args[:section_tokens] if args.key?(:section_tokens)
          @summary_sections = args[:summary_sections] if args.key?(:summary_sections)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SummarizationEvaluationMetricsConversationDetailMetricDetail
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `metric`
        # @return [String]
        attr_accessor :metric
      
        # 
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        # 
        # Corresponds to the JSON property `sectionDetails`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SummarizationEvaluationMetricsConversationDetailMetricDetailSectionDetail>]
        attr_accessor :section_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metric = args[:metric] if args.key?(:metric)
          @score = args[:score] if args.key?(:score)
          @section_details = args[:section_details] if args.key?(:section_details)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SummarizationEvaluationMetricsConversationDetailMetricDetailSectionDetail
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `evaluationResults`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SummarizationEvaluationMetricsEvaluationResult>]
        attr_accessor :evaluation_results
      
        # 
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        # 
        # Corresponds to the JSON property `section`
        # @return [String]
        attr_accessor :section
      
        # 
        # Corresponds to the JSON property `sectionSummary`
        # @return [String]
        attr_accessor :section_summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @evaluation_results = args[:evaluation_results] if args.key?(:evaluation_results)
          @score = args[:score] if args.key?(:score)
          @section = args[:section] if args.key?(:section)
          @section_summary = args[:section_summary] if args.key?(:section_summary)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SummarizationEvaluationMetricsDecomposition
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `accuracyDecomposition`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SummarizationEvaluationMetricsAccuracyDecomposition]
        attr_accessor :accuracy_decomposition
      
        # 
        # Corresponds to the JSON property `adherenceDecomposition`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SummarizationEvaluationMetricsAdherenceDecomposition]
        attr_accessor :adherence_decomposition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accuracy_decomposition = args[:accuracy_decomposition] if args.key?(:accuracy_decomposition)
          @adherence_decomposition = args[:adherence_decomposition] if args.key?(:adherence_decomposition)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SummarizationEvaluationMetricsEvaluationResult
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `accuracyDecomposition`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SummarizationEvaluationMetricsAccuracyDecomposition]
        attr_accessor :accuracy_decomposition
      
        # 
        # Corresponds to the JSON property `adherenceRubric`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SummarizationEvaluationMetricsAdherenceRubric]
        attr_accessor :adherence_rubric
      
        # 
        # Corresponds to the JSON property `completenessRubric`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SummarizationEvaluationMetricsCompletenessRubric]
        attr_accessor :completeness_rubric
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accuracy_decomposition = args[:accuracy_decomposition] if args.key?(:accuracy_decomposition)
          @adherence_rubric = args[:adherence_rubric] if args.key?(:adherence_rubric)
          @completeness_rubric = args[:completeness_rubric] if args.key?(:completeness_rubric)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SummarizationEvaluationMetricsOverallScoresByMetric
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `metric`
        # @return [String]
        attr_accessor :metric
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metric = args[:metric] if args.key?(:metric)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SummarizationEvaluationMetricsSectionToken
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `section`
        # @return [String]
        attr_accessor :section
      
        # 
        # Corresponds to the JSON property `tokenCount`
        # @return [Fixnum]
        attr_accessor :token_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @section = args[:section] if args.key?(:section)
          @token_count = args[:token_count] if args.key?(:token_count)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SummarizationEvaluationMetricsSummarizationEvaluationResult
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `decompositions`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SummarizationEvaluationMetricsDecomposition>]
        attr_accessor :decompositions
      
        # 
        # Corresponds to the JSON property `evaluationResults`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SummarizationEvaluationMetricsEvaluationResult>]
        attr_accessor :evaluation_results
      
        # 
        # Corresponds to the JSON property `metric`
        # @return [String]
        attr_accessor :metric
      
        # 
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        # 
        # Corresponds to the JSON property `section`
        # @return [String]
        attr_accessor :section
      
        # 
        # Corresponds to the JSON property `sectionSummary`
        # @return [String]
        attr_accessor :section_summary
      
        # 
        # Corresponds to the JSON property `sessionId`
        # @return [String]
        attr_accessor :session_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @decompositions = args[:decompositions] if args.key?(:decompositions)
          @evaluation_results = args[:evaluation_results] if args.key?(:evaluation_results)
          @metric = args[:metric] if args.key?(:metric)
          @score = args[:score] if args.key?(:score)
          @section = args[:section] if args.key?(:section)
          @section_summary = args[:section_summary] if args.key?(:section_summary)
          @session_id = args[:session_id] if args.key?(:session_id)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SummarizationSection
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `definition`
        # @return [String]
        attr_accessor :definition
      
        # 
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @definition = args[:definition] if args.key?(:definition)
          @key = args[:key] if args.key?(:key)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SummarizationSectionList
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `summarizationSections`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SummarizationSection>]
        attr_accessor :summarization_sections
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @summarization_sections = args[:summarization_sections] if args.key?(:summarization_sections)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SummarySuggestion
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `summarySections`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SummarySuggestionSummarySection>]
        attr_accessor :summary_sections
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @summary_sections = args[:summary_sections] if args.key?(:summary_sections)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SummarySuggestionSummarySection
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `section`
        # @return [String]
        attr_accessor :section
      
        # 
        # Corresponds to the JSON property `summary`
        # @return [String]
        attr_accessor :summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @section = args[:section] if args.key?(:section)
          @summary = args[:summary] if args.key?(:summary)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2SynthesizeSpeechConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `effectsProfileId`
        # @return [Array<String>]
        attr_accessor :effects_profile_id
      
        # 
        # Corresponds to the JSON property `pitch`
        # @return [Float]
        attr_accessor :pitch
      
        # 
        # Corresponds to the JSON property `pronunciations`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2CustomPronunciationParams>]
        attr_accessor :pronunciations
      
        # 
        # Corresponds to the JSON property `speakingRate`
        # @return [Float]
        attr_accessor :speaking_rate
      
        # 
        # Corresponds to the JSON property `voice`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2VoiceSelectionParams]
        attr_accessor :voice
      
        # 
        # Corresponds to the JSON property `volumeGainDb`
        # @return [Float]
        attr_accessor :volume_gain_db
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @effects_profile_id = args[:effects_profile_id] if args.key?(:effects_profile_id)
          @pitch = args[:pitch] if args.key?(:pitch)
          @pronunciations = args[:pronunciations] if args.key?(:pronunciations)
          @speaking_rate = args[:speaking_rate] if args.key?(:speaking_rate)
          @voice = args[:voice] if args.key?(:voice)
          @volume_gain_db = args[:volume_gain_db] if args.key?(:volume_gain_db)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2TextInput
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_code = args[:language_code] if args.key?(:language_code)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2TextToSpeechSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `enableTextToSpeech`
        # @return [Boolean]
        attr_accessor :enable_text_to_speech
        alias_method :enable_text_to_speech?, :enable_text_to_speech
      
        # 
        # Corresponds to the JSON property `outputAudioEncoding`
        # @return [String]
        attr_accessor :output_audio_encoding
      
        # 
        # Corresponds to the JSON property `sampleRateHertz`
        # @return [Fixnum]
        attr_accessor :sample_rate_hertz
      
        # 
        # Corresponds to the JSON property `synthesizeSpeechConfigs`
        # @return [Hash<String,Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SynthesizeSpeechConfig>]
        attr_accessor :synthesize_speech_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_text_to_speech = args[:enable_text_to_speech] if args.key?(:enable_text_to_speech)
          @output_audio_encoding = args[:output_audio_encoding] if args.key?(:output_audio_encoding)
          @sample_rate_hertz = args[:sample_rate_hertz] if args.key?(:sample_rate_hertz)
          @synthesize_speech_configs = args[:synthesize_speech_configs] if args.key?(:synthesize_speech_configs)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2Tool
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `actionConfirmationRequirement`
        # @return [Hash<String,String>]
        attr_accessor :action_confirmation_requirement
      
        # 
        # Corresponds to the JSON property `connectorSpec`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ToolConnectorTool]
        attr_accessor :connector_spec
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `extensionSpec`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ToolExtensionTool]
        attr_accessor :extension_spec
      
        # 
        # Corresponds to the JSON property `functionSpec`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ToolFunctionTool]
        attr_accessor :function_spec
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `openApiSpec`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ToolOpenApiTool]
        attr_accessor :open_api_spec
      
        # 
        # Corresponds to the JSON property `satisfiesPzi`
        # @return [Boolean]
        attr_accessor :satisfies_pzi
        alias_method :satisfies_pzi?, :satisfies_pzi
      
        # 
        # Corresponds to the JSON property `satisfiesPzs`
        # @return [Boolean]
        attr_accessor :satisfies_pzs
        alias_method :satisfies_pzs?, :satisfies_pzs
      
        # 
        # Corresponds to the JSON property `toolKey`
        # @return [String]
        attr_accessor :tool_key
      
        # 
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_confirmation_requirement = args[:action_confirmation_requirement] if args.key?(:action_confirmation_requirement)
          @connector_spec = args[:connector_spec] if args.key?(:connector_spec)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @extension_spec = args[:extension_spec] if args.key?(:extension_spec)
          @function_spec = args[:function_spec] if args.key?(:function_spec)
          @name = args[:name] if args.key?(:name)
          @open_api_spec = args[:open_api_spec] if args.key?(:open_api_spec)
          @satisfies_pzi = args[:satisfies_pzi] if args.key?(:satisfies_pzi)
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
          @tool_key = args[:tool_key] if args.key?(:tool_key)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ToolAuthentication
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `apiKeyConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ToolAuthenticationApiKeyConfig]
        attr_accessor :api_key_config
      
        # 
        # Corresponds to the JSON property `bearerTokenConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ToolAuthenticationBearerTokenConfig]
        attr_accessor :bearer_token_config
      
        # 
        # Corresponds to the JSON property `oauthConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ToolAuthenticationOAuthConfig]
        attr_accessor :oauth_config
      
        # 
        # Corresponds to the JSON property `serviceAgentAuthConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ToolAuthenticationServiceAgentAuthConfig]
        attr_accessor :service_agent_auth_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_key_config = args[:api_key_config] if args.key?(:api_key_config)
          @bearer_token_config = args[:bearer_token_config] if args.key?(:bearer_token_config)
          @oauth_config = args[:oauth_config] if args.key?(:oauth_config)
          @service_agent_auth_config = args[:service_agent_auth_config] if args.key?(:service_agent_auth_config)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ToolAuthenticationApiKeyConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `apiKey`
        # @return [String]
        attr_accessor :api_key
      
        # 
        # Corresponds to the JSON property `keyName`
        # @return [String]
        attr_accessor :key_name
      
        # 
        # Corresponds to the JSON property `requestLocation`
        # @return [String]
        attr_accessor :request_location
      
        # 
        # Corresponds to the JSON property `secretVersionForApiKey`
        # @return [String]
        attr_accessor :secret_version_for_api_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_key = args[:api_key] if args.key?(:api_key)
          @key_name = args[:key_name] if args.key?(:key_name)
          @request_location = args[:request_location] if args.key?(:request_location)
          @secret_version_for_api_key = args[:secret_version_for_api_key] if args.key?(:secret_version_for_api_key)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ToolAuthenticationBearerTokenConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `secretVersionForToken`
        # @return [String]
        attr_accessor :secret_version_for_token
      
        # 
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @secret_version_for_token = args[:secret_version_for_token] if args.key?(:secret_version_for_token)
          @token = args[:token] if args.key?(:token)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ToolAuthenticationOAuthConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # 
        # Corresponds to the JSON property `clientSecret`
        # @return [String]
        attr_accessor :client_secret
      
        # 
        # Corresponds to the JSON property `oauthGrantType`
        # @return [String]
        attr_accessor :oauth_grant_type
      
        # 
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        # 
        # Corresponds to the JSON property `secretVersionForClientSecret`
        # @return [String]
        attr_accessor :secret_version_for_client_secret
      
        # 
        # Corresponds to the JSON property `tokenEndpoint`
        # @return [String]
        attr_accessor :token_endpoint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_id = args[:client_id] if args.key?(:client_id)
          @client_secret = args[:client_secret] if args.key?(:client_secret)
          @oauth_grant_type = args[:oauth_grant_type] if args.key?(:oauth_grant_type)
          @scopes = args[:scopes] if args.key?(:scopes)
          @secret_version_for_client_secret = args[:secret_version_for_client_secret] if args.key?(:secret_version_for_client_secret)
          @token_endpoint = args[:token_endpoint] if args.key?(:token_endpoint)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ToolAuthenticationServiceAgentAuthConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `serviceAgentAuth`
        # @return [String]
        attr_accessor :service_agent_auth
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service_agent_auth = args[:service_agent_auth] if args.key?(:service_agent_auth)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ToolCall
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # 
        # Corresponds to the JSON property `answerRecord`
        # @return [String]
        attr_accessor :answer_record
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `inputParameters`
        # @return [Hash<String,Object>]
        attr_accessor :input_parameters
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # 
        # Corresponds to the JSON property `tool`
        # @return [String]
        attr_accessor :tool
      
        # 
        # Corresponds to the JSON property `toolDisplayDetails`
        # @return [String]
        attr_accessor :tool_display_details
      
        # 
        # Corresponds to the JSON property `toolDisplayName`
        # @return [String]
        attr_accessor :tool_display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @answer_record = args[:answer_record] if args.key?(:answer_record)
          @create_time = args[:create_time] if args.key?(:create_time)
          @input_parameters = args[:input_parameters] if args.key?(:input_parameters)
          @state = args[:state] if args.key?(:state)
          @tool = args[:tool] if args.key?(:tool)
          @tool_display_details = args[:tool_display_details] if args.key?(:tool_display_details)
          @tool_display_name = args[:tool_display_name] if args.key?(:tool_display_name)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ToolCallResult
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # 
        # Corresponds to the JSON property `answerRecord`
        # @return [String]
        attr_accessor :answer_record
      
        # 
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ToolCallResultError]
        attr_accessor :error
      
        # 
        # Corresponds to the JSON property `rawContent`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :raw_content
      
        # 
        # Corresponds to the JSON property `tool`
        # @return [String]
        attr_accessor :tool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @answer_record = args[:answer_record] if args.key?(:answer_record)
          @content = args[:content] if args.key?(:content)
          @create_time = args[:create_time] if args.key?(:create_time)
          @error = args[:error] if args.key?(:error)
          @raw_content = args[:raw_content] if args.key?(:raw_content)
          @tool = args[:tool] if args.key?(:tool)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ToolCallResultError
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ToolConnectorTool
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `actions`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ToolConnectorToolAction>]
        attr_accessor :actions
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actions = args[:actions] if args.key?(:actions)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ToolConnectorToolAction
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `connectionActionId`
        # @return [String]
        attr_accessor :connection_action_id
      
        # 
        # Corresponds to the JSON property `entityOperation`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ToolConnectorToolActionEntityOperation]
        attr_accessor :entity_operation
      
        # 
        # Corresponds to the JSON property `inputFields`
        # @return [Array<String>]
        attr_accessor :input_fields
      
        # 
        # Corresponds to the JSON property `outputFields`
        # @return [Array<String>]
        attr_accessor :output_fields
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connection_action_id = args[:connection_action_id] if args.key?(:connection_action_id)
          @entity_operation = args[:entity_operation] if args.key?(:entity_operation)
          @input_fields = args[:input_fields] if args.key?(:input_fields)
          @output_fields = args[:output_fields] if args.key?(:output_fields)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ToolConnectorToolActionEntityOperation
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `entityId`
        # @return [String]
        attr_accessor :entity_id
      
        # 
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity_id = args[:entity_id] if args.key?(:entity_id)
          @operation = args[:operation] if args.key?(:operation)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ToolExtensionTool
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ToolFunctionTool
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `inputSchema`
        # @return [Hash<String,Object>]
        attr_accessor :input_schema
      
        # 
        # Corresponds to the JSON property `methodType`
        # @return [String]
        attr_accessor :method_type
      
        # 
        # Corresponds to the JSON property `outputSchema`
        # @return [Hash<String,Object>]
        attr_accessor :output_schema
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input_schema = args[:input_schema] if args.key?(:input_schema)
          @method_type = args[:method_type] if args.key?(:method_type)
          @output_schema = args[:output_schema] if args.key?(:output_schema)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ToolOpenApiTool
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `authentication`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ToolAuthentication]
        attr_accessor :authentication
      
        # 
        # Corresponds to the JSON property `serviceDirectoryConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ToolServiceDirectoryConfig]
        attr_accessor :service_directory_config
      
        # 
        # Corresponds to the JSON property `textSchema`
        # @return [String]
        attr_accessor :text_schema
      
        # 
        # Corresponds to the JSON property `tlsConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ToolTlsConfig]
        attr_accessor :tls_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authentication = args[:authentication] if args.key?(:authentication)
          @service_directory_config = args[:service_directory_config] if args.key?(:service_directory_config)
          @text_schema = args[:text_schema] if args.key?(:text_schema)
          @tls_config = args[:tls_config] if args.key?(:tls_config)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ToolServiceDirectoryConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ToolTlsConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `caCerts`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ToolTlsConfigCaCert>]
        attr_accessor :ca_certs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ca_certs = args[:ca_certs] if args.key?(:ca_certs)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ToolTlsConfigCaCert
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `cert`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :cert
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cert = args[:cert] if args.key?(:cert)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2TrainAgentRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2UndeployConversationModelOperationMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conversationModel`
        # @return [String]
        attr_accessor :conversation_model
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `doneTime`
        # @return [String]
        attr_accessor :done_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_model = args[:conversation_model] if args.key?(:conversation_model)
          @create_time = args[:create_time] if args.key?(:create_time)
          @done_time = args[:done_time] if args.key?(:done_time)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2UndeployConversationModelRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ValidationError
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `entries`
        # @return [Array<String>]
        attr_accessor :entries
      
        # 
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # 
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
          @error_message = args[:error_message] if args.key?(:error_message)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2ValidationResult
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `validationErrors`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ValidationError>]
        attr_accessor :validation_errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @validation_errors = args[:validation_errors] if args.key?(:validation_errors)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2Version
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # 
        # Corresponds to the JSON property `versionNumber`
        # @return [Fixnum]
        attr_accessor :version_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @status = args[:status] if args.key?(:status)
          @version_number = args[:version_number] if args.key?(:version_number)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2VoiceSelectionParams
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `ssmlGender`
        # @return [String]
        attr_accessor :ssml_gender
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @ssml_gender = args[:ssml_gender] if args.key?(:ssml_gender)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2WebhookRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `originalDetectIntentRequest`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2OriginalDetectIntentRequest]
        attr_accessor :original_detect_intent_request
      
        # 
        # Corresponds to the JSON property `queryResult`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2QueryResult]
        attr_accessor :query_result
      
        # 
        # Corresponds to the JSON property `responseId`
        # @return [String]
        attr_accessor :response_id
      
        # 
        # Corresponds to the JSON property `session`
        # @return [String]
        attr_accessor :session
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @original_detect_intent_request = args[:original_detect_intent_request] if args.key?(:original_detect_intent_request)
          @query_result = args[:query_result] if args.key?(:query_result)
          @response_id = args[:response_id] if args.key?(:response_id)
          @session = args[:session] if args.key?(:session)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2WebhookResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `followupEventInput`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EventInput]
        attr_accessor :followup_event_input
      
        # 
        # Corresponds to the JSON property `fulfillmentMessages`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessage>]
        attr_accessor :fulfillment_messages
      
        # 
        # Corresponds to the JSON property `fulfillmentText`
        # @return [String]
        attr_accessor :fulfillment_text
      
        # 
        # Corresponds to the JSON property `outputContexts`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context>]
        attr_accessor :output_contexts
      
        # 
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # 
        # Corresponds to the JSON property `sessionEntityTypes`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType>]
        attr_accessor :session_entity_types
      
        # 
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @followup_event_input = args[:followup_event_input] if args.key?(:followup_event_input)
          @fulfillment_messages = args[:fulfillment_messages] if args.key?(:fulfillment_messages)
          @fulfillment_text = args[:fulfillment_text] if args.key?(:fulfillment_text)
          @output_contexts = args[:output_contexts] if args.key?(:output_contexts)
          @payload = args[:payload] if args.key?(:payload)
          @session_entity_types = args[:session_entity_types] if args.key?(:session_entity_types)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1AgentCoachingInstruction
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `agentAction`
        # @return [String]
        attr_accessor :agent_action
      
        # 
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        # 
        # Corresponds to the JSON property `displayDetails`
        # @return [String]
        attr_accessor :display_details
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `duplicateCheckResult`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1AgentCoachingInstructionDuplicateCheckResult]
        attr_accessor :duplicate_check_result
      
        # 
        # Corresponds to the JSON property `systemAction`
        # @return [String]
        attr_accessor :system_action
      
        # 
        # Corresponds to the JSON property `triggeringEvent`
        # @return [String]
        attr_accessor :triggering_event
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_action = args[:agent_action] if args.key?(:agent_action)
          @condition = args[:condition] if args.key?(:condition)
          @display_details = args[:display_details] if args.key?(:display_details)
          @display_name = args[:display_name] if args.key?(:display_name)
          @duplicate_check_result = args[:duplicate_check_result] if args.key?(:duplicate_check_result)
          @system_action = args[:system_action] if args.key?(:system_action)
          @triggering_event = args[:triggering_event] if args.key?(:triggering_event)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1AgentCoachingInstructionDuplicateCheckResult
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `duplicateSuggestions`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1AgentCoachingInstructionDuplicateCheckResultDuplicateSuggestion>]
        attr_accessor :duplicate_suggestions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duplicate_suggestions = args[:duplicate_suggestions] if args.key?(:duplicate_suggestions)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1AgentCoachingInstructionDuplicateCheckResultDuplicateSuggestion
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `answerRecord`
        # @return [String]
        attr_accessor :answer_record
      
        # 
        # Corresponds to the JSON property `similarityScore`
        # @return [Float]
        attr_accessor :similarity_score
      
        # 
        # Corresponds to the JSON property `suggestionIndex`
        # @return [Fixnum]
        attr_accessor :suggestion_index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_record = args[:answer_record] if args.key?(:answer_record)
          @similarity_score = args[:similarity_score] if args.key?(:similarity_score)
          @suggestion_index = args[:suggestion_index] if args.key?(:suggestion_index)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1AgentCoachingSuggestion
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `agentActionSuggestions`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1AgentCoachingSuggestionAgentActionSuggestion>]
        attr_accessor :agent_action_suggestions
      
        # 
        # Corresponds to the JSON property `applicableInstructions`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1AgentCoachingInstruction>]
        attr_accessor :applicable_instructions
      
        # 
        # Corresponds to the JSON property `sampleResponses`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1AgentCoachingSuggestionSampleResponse>]
        attr_accessor :sample_responses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_action_suggestions = args[:agent_action_suggestions] if args.key?(:agent_action_suggestions)
          @applicable_instructions = args[:applicable_instructions] if args.key?(:applicable_instructions)
          @sample_responses = args[:sample_responses] if args.key?(:sample_responses)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1AgentCoachingSuggestionAgentActionSuggestion
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `agentAction`
        # @return [String]
        attr_accessor :agent_action
      
        # 
        # Corresponds to the JSON property `duplicateCheckResult`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1AgentCoachingSuggestionDuplicateCheckResult]
        attr_accessor :duplicate_check_result
      
        # 
        # Corresponds to the JSON property `sources`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1AgentCoachingSuggestionSources]
        attr_accessor :sources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_action = args[:agent_action] if args.key?(:agent_action)
          @duplicate_check_result = args[:duplicate_check_result] if args.key?(:duplicate_check_result)
          @sources = args[:sources] if args.key?(:sources)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1AgentCoachingSuggestionDuplicateCheckResult
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `duplicateSuggestions`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1AgentCoachingSuggestionDuplicateCheckResultDuplicateSuggestion>]
        attr_accessor :duplicate_suggestions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duplicate_suggestions = args[:duplicate_suggestions] if args.key?(:duplicate_suggestions)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1AgentCoachingSuggestionDuplicateCheckResultDuplicateSuggestion
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `answerRecord`
        # @return [String]
        attr_accessor :answer_record
      
        # 
        # Corresponds to the JSON property `similarityScore`
        # @return [Float]
        attr_accessor :similarity_score
      
        # 
        # Corresponds to the JSON property `sources`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1AgentCoachingSuggestionSources]
        attr_accessor :sources
      
        # 
        # Corresponds to the JSON property `suggestionIndex`
        # @return [Fixnum]
        attr_accessor :suggestion_index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_record = args[:answer_record] if args.key?(:answer_record)
          @similarity_score = args[:similarity_score] if args.key?(:similarity_score)
          @sources = args[:sources] if args.key?(:sources)
          @suggestion_index = args[:suggestion_index] if args.key?(:suggestion_index)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1AgentCoachingSuggestionSampleResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `duplicateCheckResult`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1AgentCoachingSuggestionDuplicateCheckResult]
        attr_accessor :duplicate_check_result
      
        # 
        # Corresponds to the JSON property `responseText`
        # @return [String]
        attr_accessor :response_text
      
        # 
        # Corresponds to the JSON property `sources`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1AgentCoachingSuggestionSources]
        attr_accessor :sources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duplicate_check_result = args[:duplicate_check_result] if args.key?(:duplicate_check_result)
          @response_text = args[:response_text] if args.key?(:response_text)
          @sources = args[:sources] if args.key?(:sources)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1AgentCoachingSuggestionSources
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `instructionIndexes`
        # @return [Array<Fixnum>]
        attr_accessor :instruction_indexes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instruction_indexes = args[:instruction_indexes] if args.key?(:instruction_indexes)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1AnnotatedMessagePart
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `entityType`
        # @return [String]
        attr_accessor :entity_type
      
        # 
        # Corresponds to the JSON property `formattedValue`
        # @return [Object]
        attr_accessor :formatted_value
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity_type = args[:entity_type] if args.key?(:entity_type)
          @formatted_value = args[:formatted_value] if args.key?(:formatted_value)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1ArticleAnswer
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `answerRecord`
        # @return [String]
        attr_accessor :answer_record
      
        # 
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # 
        # Corresponds to the JSON property `snippets`
        # @return [Array<String>]
        attr_accessor :snippets
      
        # 
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # 
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_record = args[:answer_record] if args.key?(:answer_record)
          @metadata = args[:metadata] if args.key?(:metadata)
          @snippets = args[:snippets] if args.key?(:snippets)
          @title = args[:title] if args.key?(:title)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `entityTypes`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1EntityType>]
        attr_accessor :entity_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity_types = args[:entity_types] if args.key?(:entity_types)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `intents`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1Intent>]
        attr_accessor :intents
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @intents = args[:intents] if args.key?(:intents)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conversationProfile`
        # @return [String]
        attr_accessor :conversation_profile
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `participantRole`
        # @return [String]
        attr_accessor :participant_role
      
        # 
        # Corresponds to the JSON property `suggestionFeatureType`
        # @return [String]
        attr_accessor :suggestion_feature_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_profile = args[:conversation_profile] if args.key?(:conversation_profile)
          @create_time = args[:create_time] if args.key?(:create_time)
          @participant_role = args[:participant_role] if args.key?(:participant_role)
          @suggestion_feature_type = args[:suggestion_feature_type] if args.key?(:suggestion_feature_type)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1Context
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `lifespanCount`
        # @return [Fixnum]
        attr_accessor :lifespan_count
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Object>]
        attr_accessor :parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lifespan_count = args[:lifespan_count] if args.key?(:lifespan_count)
          @name = args[:name] if args.key?(:name)
          @parameters = args[:parameters] if args.key?(:parameters)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1ConversationEvent
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conversation`
        # @return [String]
        attr_accessor :conversation
      
        # 
        # Corresponds to the JSON property `errorStatus`
        # @return [Google::Apis::DialogflowV2::GoogleRpcStatus]
        attr_accessor :error_status
      
        # 
        # Corresponds to the JSON property `newMessagePayload`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1Message]
        attr_accessor :new_message_payload
      
        # 
        # Corresponds to the JSON property `newRecognitionResultPayload`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1StreamingRecognitionResult]
        attr_accessor :new_recognition_result_payload
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation = args[:conversation] if args.key?(:conversation)
          @error_status = args[:error_status] if args.key?(:error_status)
          @new_message_payload = args[:new_message_payload] if args.key?(:new_message_payload)
          @new_recognition_result_payload = args[:new_recognition_result_payload] if args.key?(:new_recognition_result_payload)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1DialogflowAssistAnswer
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `answerRecord`
        # @return [String]
        attr_accessor :answer_record
      
        # 
        # Corresponds to the JSON property `intentSuggestion`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentSuggestion]
        attr_accessor :intent_suggestion
      
        # 
        # Corresponds to the JSON property `queryResult`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1QueryResult]
        attr_accessor :query_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_record = args[:answer_record] if args.key?(:answer_record)
          @intent_suggestion = args[:intent_suggestion] if args.key?(:intent_suggestion)
          @query_result = args[:query_result] if args.key?(:query_result)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1EncryptionSpec
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `kmsKey`
        # @return [String]
        attr_accessor :kms_key
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_key = args[:kms_key] if args.key?(:kms_key)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1EntityType
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `autoExpansionMode`
        # @return [String]
        attr_accessor :auto_expansion_mode
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `enableFuzzyExtraction`
        # @return [Boolean]
        attr_accessor :enable_fuzzy_extraction
        alias_method :enable_fuzzy_extraction?, :enable_fuzzy_extraction
      
        # 
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1EntityTypeEntity>]
        attr_accessor :entities
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_expansion_mode = args[:auto_expansion_mode] if args.key?(:auto_expansion_mode)
          @display_name = args[:display_name] if args.key?(:display_name)
          @enable_fuzzy_extraction = args[:enable_fuzzy_extraction] if args.key?(:enable_fuzzy_extraction)
          @entities = args[:entities] if args.key?(:entities)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1EntityTypeEntity
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `synonyms`
        # @return [Array<String>]
        attr_accessor :synonyms
      
        # 
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @synonyms = args[:synonyms] if args.key?(:synonyms)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1EventInput
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Object>]
        attr_accessor :parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_code = args[:language_code] if args.key?(:language_code)
          @name = args[:name] if args.key?(:name)
          @parameters = args[:parameters] if args.key?(:parameters)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1ExportAgentResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `agentContent`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :agent_content
      
        # 
        # Corresponds to the JSON property `agentUri`
        # @return [String]
        attr_accessor :agent_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_content = args[:agent_content] if args.key?(:agent_content)
          @agent_uri = args[:agent_uri] if args.key?(:agent_uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1ExportOperationMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `exportedGcsDestination`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1GcsDestination]
        attr_accessor :exported_gcs_destination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exported_gcs_destination = args[:exported_gcs_destination] if args.key?(:exported_gcs_destination)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1FaqAnswer
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `answer`
        # @return [String]
        attr_accessor :answer
      
        # 
        # Corresponds to the JSON property `answerRecord`
        # @return [String]
        attr_accessor :answer_record
      
        # 
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # 
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # 
        # Corresponds to the JSON property `question`
        # @return [String]
        attr_accessor :question
      
        # 
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer = args[:answer] if args.key?(:answer)
          @answer_record = args[:answer_record] if args.key?(:answer_record)
          @confidence = args[:confidence] if args.key?(:confidence)
          @metadata = args[:metadata] if args.key?(:metadata)
          @question = args[:question] if args.key?(:question)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1FreeFormSuggestion
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `response`
        # @return [String]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1GcsDestination
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1GenerateSuggestionsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `generatorSuggestionAnswers`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1GenerateSuggestionsResponseGeneratorSuggestionAnswer>]
        attr_accessor :generator_suggestion_answers
      
        # 
        # Corresponds to the JSON property `latestMessage`
        # @return [String]
        attr_accessor :latest_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @generator_suggestion_answers = args[:generator_suggestion_answers] if args.key?(:generator_suggestion_answers)
          @latest_message = args[:latest_message] if args.key?(:latest_message)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1GenerateSuggestionsResponseGeneratorSuggestionAnswer
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `answerRecord`
        # @return [String]
        attr_accessor :answer_record
      
        # 
        # Corresponds to the JSON property `generatorSuggestion`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1GeneratorSuggestion]
        attr_accessor :generator_suggestion
      
        # 
        # Corresponds to the JSON property `sourceGenerator`
        # @return [String]
        attr_accessor :source_generator
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_record = args[:answer_record] if args.key?(:answer_record)
          @generator_suggestion = args[:generator_suggestion] if args.key?(:generator_suggestion)
          @source_generator = args[:source_generator] if args.key?(:source_generator)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1GeneratorSuggestion
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `agentCoachingSuggestion`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1AgentCoachingSuggestion]
        attr_accessor :agent_coaching_suggestion
      
        # 
        # Corresponds to the JSON property `freeFormSuggestion`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1FreeFormSuggestion]
        attr_accessor :free_form_suggestion
      
        # 
        # Corresponds to the JSON property `summarySuggestion`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1SummarySuggestion]
        attr_accessor :summary_suggestion
      
        # 
        # Corresponds to the JSON property `toolCallInfo`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1GeneratorSuggestionToolCallInfo>]
        attr_accessor :tool_call_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_coaching_suggestion = args[:agent_coaching_suggestion] if args.key?(:agent_coaching_suggestion)
          @free_form_suggestion = args[:free_form_suggestion] if args.key?(:free_form_suggestion)
          @summary_suggestion = args[:summary_suggestion] if args.key?(:summary_suggestion)
          @tool_call_info = args[:tool_call_info] if args.key?(:tool_call_info)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1GeneratorSuggestionToolCallInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `toolCall`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1ToolCall]
        attr_accessor :tool_call
      
        # 
        # Corresponds to the JSON property `toolCallResult`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1ToolCallResult]
        attr_accessor :tool_call_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tool_call = args[:tool_call] if args.key?(:tool_call)
          @tool_call_result = args[:tool_call_result] if args.key?(:tool_call_result)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1HumanAgentAssistantEvent
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conversation`
        # @return [String]
        attr_accessor :conversation
      
        # 
        # Corresponds to the JSON property `participant`
        # @return [String]
        attr_accessor :participant
      
        # 
        # Corresponds to the JSON property `suggestionResults`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1SuggestionResult>]
        attr_accessor :suggestion_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation = args[:conversation] if args.key?(:conversation)
          @participant = args[:participant] if args.key?(:participant)
          @suggestion_results = args[:suggestion_results] if args.key?(:suggestion_results)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1ImportDocumentsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::DialogflowV2::GoogleRpcStatus>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IngestedContextReferenceDebugInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `contextReferenceRetrieved`
        # @return [Boolean]
        attr_accessor :context_reference_retrieved
        alias_method :context_reference_retrieved?, :context_reference_retrieved
      
        # 
        # Corresponds to the JSON property `ingestedParametersDebugInfo`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IngestedContextReferenceDebugInfoIngestedParameterDebugInfo>]
        attr_accessor :ingested_parameters_debug_info
      
        # 
        # Corresponds to the JSON property `projectNotAllowlisted`
        # @return [Boolean]
        attr_accessor :project_not_allowlisted
        alias_method :project_not_allowlisted?, :project_not_allowlisted
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context_reference_retrieved = args[:context_reference_retrieved] if args.key?(:context_reference_retrieved)
          @ingested_parameters_debug_info = args[:ingested_parameters_debug_info] if args.key?(:ingested_parameters_debug_info)
          @project_not_allowlisted = args[:project_not_allowlisted] if args.key?(:project_not_allowlisted)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IngestedContextReferenceDebugInfoIngestedParameterDebugInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `ingestionStatus`
        # @return [String]
        attr_accessor :ingestion_status
      
        # 
        # Corresponds to the JSON property `parameter`
        # @return [String]
        attr_accessor :parameter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ingestion_status = args[:ingestion_status] if args.key?(:ingestion_status)
          @parameter = args[:parameter] if args.key?(:parameter)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1InitializeEncryptionSpecMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1InitializeEncryptionSpecRequest]
        attr_accessor :request
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request = args[:request] if args.key?(:request)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1InitializeEncryptionSpecRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `encryptionSpec`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1EncryptionSpec]
        attr_accessor :encryption_spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encryption_spec = args[:encryption_spec] if args.key?(:encryption_spec)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1Intent
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # 
        # Corresponds to the JSON property `defaultResponsePlatforms`
        # @return [Array<String>]
        attr_accessor :default_response_platforms
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `endInteraction`
        # @return [Boolean]
        attr_accessor :end_interaction
        alias_method :end_interaction?, :end_interaction
      
        # 
        # Corresponds to the JSON property `events`
        # @return [Array<String>]
        attr_accessor :events
      
        # 
        # Corresponds to the JSON property `followupIntentInfo`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo>]
        attr_accessor :followup_intent_info
      
        # 
        # Corresponds to the JSON property `inputContextNames`
        # @return [Array<String>]
        attr_accessor :input_context_names
      
        # 
        # Corresponds to the JSON property `isFallback`
        # @return [Boolean]
        attr_accessor :is_fallback
        alias_method :is_fallback?, :is_fallback
      
        # 
        # Corresponds to the JSON property `liveAgentHandoff`
        # @return [Boolean]
        attr_accessor :live_agent_handoff
        alias_method :live_agent_handoff?, :live_agent_handoff
      
        # 
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessage>]
        attr_accessor :messages
      
        # 
        # Corresponds to the JSON property `mlDisabled`
        # @return [Boolean]
        attr_accessor :ml_disabled
        alias_method :ml_disabled?, :ml_disabled
      
        # 
        # Corresponds to the JSON property `mlEnabled`
        # @return [Boolean]
        attr_accessor :ml_enabled
        alias_method :ml_enabled?, :ml_enabled
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `outputContexts`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1Context>]
        attr_accessor :output_contexts
      
        # 
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentParameter>]
        attr_accessor :parameters
      
        # 
        # Corresponds to the JSON property `parentFollowupIntentName`
        # @return [String]
        attr_accessor :parent_followup_intent_name
      
        # 
        # Corresponds to the JSON property `priority`
        # @return [Fixnum]
        attr_accessor :priority
      
        # 
        # Corresponds to the JSON property `resetContexts`
        # @return [Boolean]
        attr_accessor :reset_contexts
        alias_method :reset_contexts?, :reset_contexts
      
        # 
        # Corresponds to the JSON property `rootFollowupIntentName`
        # @return [String]
        attr_accessor :root_followup_intent_name
      
        # 
        # Corresponds to the JSON property `trainingPhrases`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentTrainingPhrase>]
        attr_accessor :training_phrases
      
        # 
        # Corresponds to the JSON property `webhookState`
        # @return [String]
        attr_accessor :webhook_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @default_response_platforms = args[:default_response_platforms] if args.key?(:default_response_platforms)
          @display_name = args[:display_name] if args.key?(:display_name)
          @end_interaction = args[:end_interaction] if args.key?(:end_interaction)
          @events = args[:events] if args.key?(:events)
          @followup_intent_info = args[:followup_intent_info] if args.key?(:followup_intent_info)
          @input_context_names = args[:input_context_names] if args.key?(:input_context_names)
          @is_fallback = args[:is_fallback] if args.key?(:is_fallback)
          @live_agent_handoff = args[:live_agent_handoff] if args.key?(:live_agent_handoff)
          @messages = args[:messages] if args.key?(:messages)
          @ml_disabled = args[:ml_disabled] if args.key?(:ml_disabled)
          @ml_enabled = args[:ml_enabled] if args.key?(:ml_enabled)
          @name = args[:name] if args.key?(:name)
          @output_contexts = args[:output_contexts] if args.key?(:output_contexts)
          @parameters = args[:parameters] if args.key?(:parameters)
          @parent_followup_intent_name = args[:parent_followup_intent_name] if args.key?(:parent_followup_intent_name)
          @priority = args[:priority] if args.key?(:priority)
          @reset_contexts = args[:reset_contexts] if args.key?(:reset_contexts)
          @root_followup_intent_name = args[:root_followup_intent_name] if args.key?(:root_followup_intent_name)
          @training_phrases = args[:training_phrases] if args.key?(:training_phrases)
          @webhook_state = args[:webhook_state] if args.key?(:webhook_state)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `followupIntentName`
        # @return [String]
        attr_accessor :followup_intent_name
      
        # 
        # Corresponds to the JSON property `parentFollowupIntentName`
        # @return [String]
        attr_accessor :parent_followup_intent_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @followup_intent_name = args[:followup_intent_name] if args.key?(:followup_intent_name)
          @parent_followup_intent_name = args[:parent_followup_intent_name] if args.key?(:parent_followup_intent_name)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessage
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `basicCard`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageBasicCard]
        attr_accessor :basic_card
      
        # 
        # Corresponds to the JSON property `browseCarouselCard`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard]
        attr_accessor :browse_carousel_card
      
        # 
        # Corresponds to the JSON property `card`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageCard]
        attr_accessor :card
      
        # 
        # Corresponds to the JSON property `carouselSelect`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect]
        attr_accessor :carousel_select
      
        # 
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageImage]
        attr_accessor :image
      
        # 
        # Corresponds to the JSON property `linkOutSuggestion`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion]
        attr_accessor :link_out_suggestion
      
        # 
        # Corresponds to the JSON property `listSelect`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageListSelect]
        attr_accessor :list_select
      
        # 
        # Corresponds to the JSON property `mediaContent`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageMediaContent]
        attr_accessor :media_content
      
        # 
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # 
        # Corresponds to the JSON property `platform`
        # @return [String]
        attr_accessor :platform
      
        # 
        # Corresponds to the JSON property `quickReplies`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageQuickReplies]
        attr_accessor :quick_replies
      
        # 
        # Corresponds to the JSON property `rbmCarouselRichCard`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard]
        attr_accessor :rbm_carousel_rich_card
      
        # 
        # Corresponds to the JSON property `rbmStandaloneRichCard`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard]
        attr_accessor :rbm_standalone_rich_card
      
        # 
        # Corresponds to the JSON property `rbmText`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageRbmText]
        attr_accessor :rbm_text
      
        # 
        # Corresponds to the JSON property `simpleResponses`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses]
        attr_accessor :simple_responses
      
        # 
        # Corresponds to the JSON property `suggestions`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageSuggestions]
        attr_accessor :suggestions
      
        # 
        # Corresponds to the JSON property `tableCard`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageTableCard]
        attr_accessor :table_card
      
        # 
        # Corresponds to the JSON property `telephonyPlayAudio`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio]
        attr_accessor :telephony_play_audio
      
        # 
        # Corresponds to the JSON property `telephonySynthesizeSpeech`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech]
        attr_accessor :telephony_synthesize_speech
      
        # 
        # Corresponds to the JSON property `telephonyTransferCall`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall]
        attr_accessor :telephony_transfer_call
      
        # 
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageText]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_card = args[:basic_card] if args.key?(:basic_card)
          @browse_carousel_card = args[:browse_carousel_card] if args.key?(:browse_carousel_card)
          @card = args[:card] if args.key?(:card)
          @carousel_select = args[:carousel_select] if args.key?(:carousel_select)
          @image = args[:image] if args.key?(:image)
          @link_out_suggestion = args[:link_out_suggestion] if args.key?(:link_out_suggestion)
          @list_select = args[:list_select] if args.key?(:list_select)
          @media_content = args[:media_content] if args.key?(:media_content)
          @payload = args[:payload] if args.key?(:payload)
          @platform = args[:platform] if args.key?(:platform)
          @quick_replies = args[:quick_replies] if args.key?(:quick_replies)
          @rbm_carousel_rich_card = args[:rbm_carousel_rich_card] if args.key?(:rbm_carousel_rich_card)
          @rbm_standalone_rich_card = args[:rbm_standalone_rich_card] if args.key?(:rbm_standalone_rich_card)
          @rbm_text = args[:rbm_text] if args.key?(:rbm_text)
          @simple_responses = args[:simple_responses] if args.key?(:simple_responses)
          @suggestions = args[:suggestions] if args.key?(:suggestions)
          @table_card = args[:table_card] if args.key?(:table_card)
          @telephony_play_audio = args[:telephony_play_audio] if args.key?(:telephony_play_audio)
          @telephony_synthesize_speech = args[:telephony_synthesize_speech] if args.key?(:telephony_synthesize_speech)
          @telephony_transfer_call = args[:telephony_transfer_call] if args.key?(:telephony_transfer_call)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageBasicCard
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `buttons`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>]
        attr_accessor :buttons
      
        # 
        # Corresponds to the JSON property `formattedText`
        # @return [String]
        attr_accessor :formatted_text
      
        # 
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageImage]
        attr_accessor :image
      
        # 
        # Corresponds to the JSON property `subtitle`
        # @return [String]
        attr_accessor :subtitle
      
        # 
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @buttons = args[:buttons] if args.key?(:buttons)
          @formatted_text = args[:formatted_text] if args.key?(:formatted_text)
          @image = args[:image] if args.key?(:image)
          @subtitle = args[:subtitle] if args.key?(:subtitle)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `openUriAction`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction]
        attr_accessor :open_uri_action
      
        # 
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @open_uri_action = args[:open_uri_action] if args.key?(:open_uri_action)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `imageDisplayOptions`
        # @return [String]
        attr_accessor :image_display_options
      
        # 
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem>]
        attr_accessor :items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image_display_options = args[:image_display_options] if args.key?(:image_display_options)
          @items = args[:items] if args.key?(:items)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `footer`
        # @return [String]
        attr_accessor :footer
      
        # 
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageImage]
        attr_accessor :image
      
        # 
        # Corresponds to the JSON property `openUriAction`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction]
        attr_accessor :open_uri_action
      
        # 
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @footer = args[:footer] if args.key?(:footer)
          @image = args[:image] if args.key?(:image)
          @open_uri_action = args[:open_uri_action] if args.key?(:open_uri_action)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        # 
        # Corresponds to the JSON property `urlTypeHint`
        # @return [String]
        attr_accessor :url_type_hint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @url = args[:url] if args.key?(:url)
          @url_type_hint = args[:url_type_hint] if args.key?(:url_type_hint)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageCard
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `buttons`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageCardButton>]
        attr_accessor :buttons
      
        # 
        # Corresponds to the JSON property `imageUri`
        # @return [String]
        attr_accessor :image_uri
      
        # 
        # Corresponds to the JSON property `subtitle`
        # @return [String]
        attr_accessor :subtitle
      
        # 
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @buttons = args[:buttons] if args.key?(:buttons)
          @image_uri = args[:image_uri] if args.key?(:image_uri)
          @subtitle = args[:subtitle] if args.key?(:subtitle)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageCardButton
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `postback`
        # @return [String]
        attr_accessor :postback
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @postback = args[:postback] if args.key?(:postback)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem>]
        attr_accessor :items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageImage]
        attr_accessor :image
      
        # 
        # Corresponds to the JSON property `info`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo]
        attr_accessor :info
      
        # 
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @image = args[:image] if args.key?(:image)
          @info = args[:info] if args.key?(:info)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageColumnProperties
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `header`
        # @return [String]
        attr_accessor :header
      
        # 
        # Corresponds to the JSON property `horizontalAlignment`
        # @return [String]
        attr_accessor :horizontal_alignment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @header = args[:header] if args.key?(:header)
          @horizontal_alignment = args[:horizontal_alignment] if args.key?(:horizontal_alignment)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageImage
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `accessibilityText`
        # @return [String]
        attr_accessor :accessibility_text
      
        # 
        # Corresponds to the JSON property `imageUri`
        # @return [String]
        attr_accessor :image_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accessibility_text = args[:accessibility_text] if args.key?(:accessibility_text)
          @image_uri = args[:image_uri] if args.key?(:image_uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `destinationName`
        # @return [String]
        attr_accessor :destination_name
      
        # 
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_name = args[:destination_name] if args.key?(:destination_name)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageListSelect
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageListSelectItem>]
        attr_accessor :items
      
        # 
        # Corresponds to the JSON property `subtitle`
        # @return [String]
        attr_accessor :subtitle
      
        # 
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @subtitle = args[:subtitle] if args.key?(:subtitle)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageListSelectItem
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageImage]
        attr_accessor :image
      
        # 
        # Corresponds to the JSON property `info`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo]
        attr_accessor :info
      
        # 
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @image = args[:image] if args.key?(:image)
          @info = args[:info] if args.key?(:info)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageMediaContent
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `mediaObjects`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject>]
        attr_accessor :media_objects
      
        # 
        # Corresponds to the JSON property `mediaType`
        # @return [String]
        attr_accessor :media_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @media_objects = args[:media_objects] if args.key?(:media_objects)
          @media_type = args[:media_type] if args.key?(:media_type)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `contentUrl`
        # @return [String]
        attr_accessor :content_url
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `icon`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageImage]
        attr_accessor :icon
      
        # 
        # Corresponds to the JSON property `largeImage`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageImage]
        attr_accessor :large_image
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_url = args[:content_url] if args.key?(:content_url)
          @description = args[:description] if args.key?(:description)
          @icon = args[:icon] if args.key?(:icon)
          @large_image = args[:large_image] if args.key?(:large_image)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageQuickReplies
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `quickReplies`
        # @return [Array<String>]
        attr_accessor :quick_replies
      
        # 
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @quick_replies = args[:quick_replies] if args.key?(:quick_replies)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `media`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia]
        attr_accessor :media
      
        # 
        # Corresponds to the JSON property `suggestions`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion>]
        attr_accessor :suggestions
      
        # 
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @media = args[:media] if args.key?(:media)
          @suggestions = args[:suggestions] if args.key?(:suggestions)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `fileUri`
        # @return [String]
        attr_accessor :file_uri
      
        # 
        # Corresponds to the JSON property `height`
        # @return [String]
        attr_accessor :height
      
        # 
        # Corresponds to the JSON property `thumbnailUri`
        # @return [String]
        attr_accessor :thumbnail_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_uri = args[:file_uri] if args.key?(:file_uri)
          @height = args[:height] if args.key?(:height)
          @thumbnail_uri = args[:thumbnail_uri] if args.key?(:thumbnail_uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `cardContents`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent>]
        attr_accessor :card_contents
      
        # 
        # Corresponds to the JSON property `cardWidth`
        # @return [String]
        attr_accessor :card_width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @card_contents = args[:card_contents] if args.key?(:card_contents)
          @card_width = args[:card_width] if args.key?(:card_width)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `cardContent`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent]
        attr_accessor :card_content
      
        # 
        # Corresponds to the JSON property `cardOrientation`
        # @return [String]
        attr_accessor :card_orientation
      
        # 
        # Corresponds to the JSON property `thumbnailImageAlignment`
        # @return [String]
        attr_accessor :thumbnail_image_alignment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @card_content = args[:card_content] if args.key?(:card_content)
          @card_orientation = args[:card_orientation] if args.key?(:card_orientation)
          @thumbnail_image_alignment = args[:thumbnail_image_alignment] if args.key?(:thumbnail_image_alignment)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dial`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial]
        attr_accessor :dial
      
        # 
        # Corresponds to the JSON property `openUrl`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri]
        attr_accessor :open_url
      
        # 
        # Corresponds to the JSON property `postbackData`
        # @return [String]
        attr_accessor :postback_data
      
        # 
        # Corresponds to the JSON property `shareLocation`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation]
        attr_accessor :share_location
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dial = args[:dial] if args.key?(:dial)
          @open_url = args[:open_url] if args.key?(:open_url)
          @postback_data = args[:postback_data] if args.key?(:postback_data)
          @share_location = args[:share_location] if args.key?(:share_location)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `postbackData`
        # @return [String]
        attr_accessor :postback_data
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @postback_data = args[:postback_data] if args.key?(:postback_data)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `action`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction]
        attr_accessor :action
      
        # 
        # Corresponds to the JSON property `reply`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply]
        attr_accessor :reply
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @reply = args[:reply] if args.key?(:reply)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageRbmText
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `rbmSuggestion`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion>]
        attr_accessor :rbm_suggestion
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rbm_suggestion = args[:rbm_suggestion] if args.key?(:rbm_suggestion)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # 
        # Corresponds to the JSON property `synonyms`
        # @return [Array<String>]
        attr_accessor :synonyms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @synonyms = args[:synonyms] if args.key?(:synonyms)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `displayText`
        # @return [String]
        attr_accessor :display_text
      
        # 
        # Corresponds to the JSON property `ssml`
        # @return [String]
        attr_accessor :ssml
      
        # 
        # Corresponds to the JSON property `textToSpeech`
        # @return [String]
        attr_accessor :text_to_speech
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_text = args[:display_text] if args.key?(:display_text)
          @ssml = args[:ssml] if args.key?(:ssml)
          @text_to_speech = args[:text_to_speech] if args.key?(:text_to_speech)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `simpleResponses`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse>]
        attr_accessor :simple_responses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @simple_responses = args[:simple_responses] if args.key?(:simple_responses)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageSuggestion
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageSuggestions
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `suggestions`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageSuggestion>]
        attr_accessor :suggestions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @suggestions = args[:suggestions] if args.key?(:suggestions)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageTableCard
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `buttons`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>]
        attr_accessor :buttons
      
        # 
        # Corresponds to the JSON property `columnProperties`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageColumnProperties>]
        attr_accessor :column_properties
      
        # 
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageImage]
        attr_accessor :image
      
        # 
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageTableCardRow>]
        attr_accessor :rows
      
        # 
        # Corresponds to the JSON property `subtitle`
        # @return [String]
        attr_accessor :subtitle
      
        # 
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @buttons = args[:buttons] if args.key?(:buttons)
          @column_properties = args[:column_properties] if args.key?(:column_properties)
          @image = args[:image] if args.key?(:image)
          @rows = args[:rows] if args.key?(:rows)
          @subtitle = args[:subtitle] if args.key?(:subtitle)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageTableCardCell
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageTableCardRow
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `cells`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageTableCardCell>]
        attr_accessor :cells
      
        # 
        # Corresponds to the JSON property `dividerAfter`
        # @return [Boolean]
        attr_accessor :divider_after
        alias_method :divider_after?, :divider_after
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cells = args[:cells] if args.key?(:cells)
          @divider_after = args[:divider_after] if args.key?(:divider_after)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `audioUri`
        # @return [String]
        attr_accessor :audio_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_uri = args[:audio_uri] if args.key?(:audio_uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `ssml`
        # @return [String]
        attr_accessor :ssml
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ssml = args[:ssml] if args.key?(:ssml)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentMessageText
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `text`
        # @return [Array<String>]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentParameter
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `defaultValue`
        # @return [String]
        attr_accessor :default_value
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `entityTypeDisplayName`
        # @return [String]
        attr_accessor :entity_type_display_name
      
        # 
        # Corresponds to the JSON property `isList`
        # @return [Boolean]
        attr_accessor :is_list
        alias_method :is_list?, :is_list
      
        # 
        # Corresponds to the JSON property `mandatory`
        # @return [Boolean]
        attr_accessor :mandatory
        alias_method :mandatory?, :mandatory
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `prompts`
        # @return [Array<String>]
        attr_accessor :prompts
      
        # 
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_value = args[:default_value] if args.key?(:default_value)
          @display_name = args[:display_name] if args.key?(:display_name)
          @entity_type_display_name = args[:entity_type_display_name] if args.key?(:entity_type_display_name)
          @is_list = args[:is_list] if args.key?(:is_list)
          @mandatory = args[:mandatory] if args.key?(:mandatory)
          @name = args[:name] if args.key?(:name)
          @prompts = args[:prompts] if args.key?(:prompts)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentSuggestion
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `intentV2`
        # @return [String]
        attr_accessor :intent_v2
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @intent_v2 = args[:intent_v2] if args.key?(:intent_v2)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentTrainingPhrase
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `parts`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart>]
        attr_accessor :parts
      
        # 
        # Corresponds to the JSON property `timesAddedCount`
        # @return [Fixnum]
        attr_accessor :times_added_count
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @parts = args[:parts] if args.key?(:parts)
          @times_added_count = args[:times_added_count] if args.key?(:times_added_count)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `alias`
        # @return [String]
        attr_accessor :alias
      
        # 
        # Corresponds to the JSON property `entityType`
        # @return [String]
        attr_accessor :entity_type
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # 
        # Corresponds to the JSON property `userDefined`
        # @return [Boolean]
        attr_accessor :user_defined
        alias_method :user_defined?, :user_defined
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alias = args[:alias] if args.key?(:alias)
          @entity_type = args[:entity_type] if args.key?(:entity_type)
          @text = args[:text] if args.key?(:text)
          @user_defined = args[:user_defined] if args.key?(:user_defined)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1KnowledgeAnswers
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `answers`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer>]
        attr_accessor :answers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answers = args[:answers] if args.key?(:answers)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `answer`
        # @return [String]
        attr_accessor :answer
      
        # 
        # Corresponds to the JSON property `faqQuestion`
        # @return [String]
        attr_accessor :faq_question
      
        # 
        # Corresponds to the JSON property `matchConfidence`
        # @return [Float]
        attr_accessor :match_confidence
      
        # 
        # Corresponds to the JSON property `matchConfidenceLevel`
        # @return [String]
        attr_accessor :match_confidence_level
      
        # 
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer = args[:answer] if args.key?(:answer)
          @faq_question = args[:faq_question] if args.key?(:faq_question)
          @match_confidence = args[:match_confidence] if args.key?(:match_confidence)
          @match_confidence_level = args[:match_confidence_level] if args.key?(:match_confidence_level)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1KnowledgeAssistAnswer
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `answerRecord`
        # @return [String]
        attr_accessor :answer_record
      
        # 
        # Corresponds to the JSON property `knowledgeAssistDebugInfo`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1KnowledgeAssistDebugInfo]
        attr_accessor :knowledge_assist_debug_info
      
        # 
        # Corresponds to the JSON property `suggestedQuery`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerSuggestedQuery]
        attr_accessor :suggested_query
      
        # 
        # Corresponds to the JSON property `suggestedQueryAnswer`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswer]
        attr_accessor :suggested_query_answer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_record = args[:answer_record] if args.key?(:answer_record)
          @knowledge_assist_debug_info = args[:knowledge_assist_debug_info] if args.key?(:knowledge_assist_debug_info)
          @suggested_query = args[:suggested_query] if args.key?(:suggested_query)
          @suggested_query_answer = args[:suggested_query_answer] if args.key?(:suggested_query_answer)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswer
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `answerText`
        # @return [String]
        attr_accessor :answer_text
      
        # 
        # Corresponds to the JSON property `faqSource`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswerFaqSource]
        attr_accessor :faq_source
      
        # 
        # Corresponds to the JSON property `generativeSource`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswerGenerativeSource]
        attr_accessor :generative_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_text = args[:answer_text] if args.key?(:answer_text)
          @faq_source = args[:faq_source] if args.key?(:faq_source)
          @generative_source = args[:generative_source] if args.key?(:generative_source)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswerFaqSource
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `question`
        # @return [String]
        attr_accessor :question
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @question = args[:question] if args.key?(:question)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswerGenerativeSource
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `snippets`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswerGenerativeSourceSnippet>]
        attr_accessor :snippets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @snippets = args[:snippets] if args.key?(:snippets)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswerGenerativeSourceSnippet
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # 
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # 
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata = args[:metadata] if args.key?(:metadata)
          @text = args[:text] if args.key?(:text)
          @title = args[:title] if args.key?(:title)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerSuggestedQuery
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `queryText`
        # @return [String]
        attr_accessor :query_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @query_text = args[:query_text] if args.key?(:query_text)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1KnowledgeAssistDebugInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `datastoreResponseReason`
        # @return [String]
        attr_accessor :datastore_response_reason
      
        # 
        # Corresponds to the JSON property `ingestedContextReferenceDebugInfo`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IngestedContextReferenceDebugInfo]
        attr_accessor :ingested_context_reference_debug_info
      
        # 
        # Corresponds to the JSON property `knowledgeAssistBehavior`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1KnowledgeAssistDebugInfoKnowledgeAssistBehavior]
        attr_accessor :knowledge_assist_behavior
      
        # 
        # Corresponds to the JSON property `queryCategorizationFailureReason`
        # @return [String]
        attr_accessor :query_categorization_failure_reason
      
        # 
        # Corresponds to the JSON property `queryGenerationFailureReason`
        # @return [String]
        attr_accessor :query_generation_failure_reason
      
        # 
        # Corresponds to the JSON property `serviceLatency`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1ServiceLatency]
        attr_accessor :service_latency
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @datastore_response_reason = args[:datastore_response_reason] if args.key?(:datastore_response_reason)
          @ingested_context_reference_debug_info = args[:ingested_context_reference_debug_info] if args.key?(:ingested_context_reference_debug_info)
          @knowledge_assist_behavior = args[:knowledge_assist_behavior] if args.key?(:knowledge_assist_behavior)
          @query_categorization_failure_reason = args[:query_categorization_failure_reason] if args.key?(:query_categorization_failure_reason)
          @query_generation_failure_reason = args[:query_generation_failure_reason] if args.key?(:query_generation_failure_reason)
          @service_latency = args[:service_latency] if args.key?(:service_latency)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1KnowledgeAssistDebugInfoKnowledgeAssistBehavior
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `answerGenerationRewriterOn`
        # @return [Boolean]
        attr_accessor :answer_generation_rewriter_on
        alias_method :answer_generation_rewriter_on?, :answer_generation_rewriter_on
      
        # 
        # Corresponds to the JSON property `appendedSearchContextCount`
        # @return [Fixnum]
        attr_accessor :appended_search_context_count
      
        # 
        # Corresponds to the JSON property `conversationTranscriptHasMixedLanguages`
        # @return [Boolean]
        attr_accessor :conversation_transcript_has_mixed_languages
        alias_method :conversation_transcript_has_mixed_languages?, :conversation_transcript_has_mixed_languages
      
        # 
        # Corresponds to the JSON property `disableSyncDelivery`
        # @return [Boolean]
        attr_accessor :disable_sync_delivery
        alias_method :disable_sync_delivery?, :disable_sync_delivery
      
        # 
        # Corresponds to the JSON property `endUserMetadataIncluded`
        # @return [Boolean]
        attr_accessor :end_user_metadata_included
        alias_method :end_user_metadata_included?, :end_user_metadata_included
      
        # 
        # Corresponds to the JSON property `invalidItemsQuerySuggestionSkipped`
        # @return [Boolean]
        attr_accessor :invalid_items_query_suggestion_skipped
        alias_method :invalid_items_query_suggestion_skipped?, :invalid_items_query_suggestion_skipped
      
        # 
        # Corresponds to the JSON property `multipleQueriesGenerated`
        # @return [Boolean]
        attr_accessor :multiple_queries_generated
        alias_method :multiple_queries_generated?, :multiple_queries_generated
      
        # 
        # Corresponds to the JSON property `previousQueriesIncluded`
        # @return [Boolean]
        attr_accessor :previous_queries_included
        alias_method :previous_queries_included?, :previous_queries_included
      
        # 
        # Corresponds to the JSON property `primaryQueryRedactedAndReplaced`
        # @return [Boolean]
        attr_accessor :primary_query_redacted_and_replaced
        alias_method :primary_query_redacted_and_replaced?, :primary_query_redacted_and_replaced
      
        # 
        # Corresponds to the JSON property `queryContainedSearchContext`
        # @return [Boolean]
        attr_accessor :query_contained_search_context
        alias_method :query_contained_search_context?, :query_contained_search_context
      
        # 
        # Corresponds to the JSON property `queryGenerationAgentLanguageMismatch`
        # @return [Boolean]
        attr_accessor :query_generation_agent_language_mismatch
        alias_method :query_generation_agent_language_mismatch?, :query_generation_agent_language_mismatch
      
        # 
        # Corresponds to the JSON property `queryGenerationEndUserLanguageMismatch`
        # @return [Boolean]
        attr_accessor :query_generation_end_user_language_mismatch
        alias_method :query_generation_end_user_language_mismatch?, :query_generation_end_user_language_mismatch
      
        # 
        # Corresponds to the JSON property `returnQueryOnly`
        # @return [Boolean]
        attr_accessor :return_query_only
        alias_method :return_query_only?, :return_query_only
      
        # 
        # Corresponds to the JSON property `thirdPartyConnectorAllowed`
        # @return [Boolean]
        attr_accessor :third_party_connector_allowed
        alias_method :third_party_connector_allowed?, :third_party_connector_allowed
      
        # 
        # Corresponds to the JSON property `useCustomSafetyFilterLevel`
        # @return [Boolean]
        attr_accessor :use_custom_safety_filter_level
        alias_method :use_custom_safety_filter_level?, :use_custom_safety_filter_level
      
        # 
        # Corresponds to the JSON property `usePubsubDelivery`
        # @return [Boolean]
        attr_accessor :use_pubsub_delivery
        alias_method :use_pubsub_delivery?, :use_pubsub_delivery
      
        # 
        # Corresponds to the JSON property `useTranslatedMessage`
        # @return [Boolean]
        attr_accessor :use_translated_message
        alias_method :use_translated_message?, :use_translated_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_generation_rewriter_on = args[:answer_generation_rewriter_on] if args.key?(:answer_generation_rewriter_on)
          @appended_search_context_count = args[:appended_search_context_count] if args.key?(:appended_search_context_count)
          @conversation_transcript_has_mixed_languages = args[:conversation_transcript_has_mixed_languages] if args.key?(:conversation_transcript_has_mixed_languages)
          @disable_sync_delivery = args[:disable_sync_delivery] if args.key?(:disable_sync_delivery)
          @end_user_metadata_included = args[:end_user_metadata_included] if args.key?(:end_user_metadata_included)
          @invalid_items_query_suggestion_skipped = args[:invalid_items_query_suggestion_skipped] if args.key?(:invalid_items_query_suggestion_skipped)
          @multiple_queries_generated = args[:multiple_queries_generated] if args.key?(:multiple_queries_generated)
          @previous_queries_included = args[:previous_queries_included] if args.key?(:previous_queries_included)
          @primary_query_redacted_and_replaced = args[:primary_query_redacted_and_replaced] if args.key?(:primary_query_redacted_and_replaced)
          @query_contained_search_context = args[:query_contained_search_context] if args.key?(:query_contained_search_context)
          @query_generation_agent_language_mismatch = args[:query_generation_agent_language_mismatch] if args.key?(:query_generation_agent_language_mismatch)
          @query_generation_end_user_language_mismatch = args[:query_generation_end_user_language_mismatch] if args.key?(:query_generation_end_user_language_mismatch)
          @return_query_only = args[:return_query_only] if args.key?(:return_query_only)
          @third_party_connector_allowed = args[:third_party_connector_allowed] if args.key?(:third_party_connector_allowed)
          @use_custom_safety_filter_level = args[:use_custom_safety_filter_level] if args.key?(:use_custom_safety_filter_level)
          @use_pubsub_delivery = args[:use_pubsub_delivery] if args.key?(:use_pubsub_delivery)
          @use_translated_message = args[:use_translated_message] if args.key?(:use_translated_message)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `doneTime`
        # @return [String]
        attr_accessor :done_time
      
        # 
        # Corresponds to the JSON property `exportOperationMetadata`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1ExportOperationMetadata]
        attr_accessor :export_operation_metadata
      
        # 
        # Corresponds to the JSON property `knowledgeBase`
        # @return [String]
        attr_accessor :knowledge_base
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done_time = args[:done_time] if args.key?(:done_time)
          @export_operation_metadata = args[:export_operation_metadata] if args.key?(:export_operation_metadata)
          @knowledge_base = args[:knowledge_base] if args.key?(:knowledge_base)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1Message
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # 
        # Corresponds to the JSON property `messageAnnotation`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1MessageAnnotation]
        attr_accessor :message_annotation
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `participant`
        # @return [String]
        attr_accessor :participant
      
        # 
        # Corresponds to the JSON property `participantRole`
        # @return [String]
        attr_accessor :participant_role
      
        # 
        # Corresponds to the JSON property `responseMessages`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1ResponseMessage>]
        attr_accessor :response_messages
      
        # 
        # Corresponds to the JSON property `sendTime`
        # @return [String]
        attr_accessor :send_time
      
        # 
        # Corresponds to the JSON property `sentimentAnalysis`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1SentimentAnalysisResult]
        attr_accessor :sentiment_analysis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @create_time = args[:create_time] if args.key?(:create_time)
          @language_code = args[:language_code] if args.key?(:language_code)
          @message_annotation = args[:message_annotation] if args.key?(:message_annotation)
          @name = args[:name] if args.key?(:name)
          @participant = args[:participant] if args.key?(:participant)
          @participant_role = args[:participant_role] if args.key?(:participant_role)
          @response_messages = args[:response_messages] if args.key?(:response_messages)
          @send_time = args[:send_time] if args.key?(:send_time)
          @sentiment_analysis = args[:sentiment_analysis] if args.key?(:sentiment_analysis)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1MessageAnnotation
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `containEntities`
        # @return [Boolean]
        attr_accessor :contain_entities
        alias_method :contain_entities?, :contain_entities
      
        # 
        # Corresponds to the JSON property `parts`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1AnnotatedMessagePart>]
        attr_accessor :parts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contain_entities = args[:contain_entities] if args.key?(:contain_entities)
          @parts = args[:parts] if args.key?(:parts)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # 
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # 
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @payload = args[:payload] if args.key?(:payload)
          @source = args[:source] if args.key?(:source)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1QueryResult
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # 
        # Corresponds to the JSON property `allRequiredParamsPresent`
        # @return [Boolean]
        attr_accessor :all_required_params_present
        alias_method :all_required_params_present?, :all_required_params_present
      
        # 
        # Corresponds to the JSON property `cancelsSlotFilling`
        # @return [Boolean]
        attr_accessor :cancels_slot_filling
        alias_method :cancels_slot_filling?, :cancels_slot_filling
      
        # 
        # Corresponds to the JSON property `diagnosticInfo`
        # @return [Hash<String,Object>]
        attr_accessor :diagnostic_info
      
        # 
        # Corresponds to the JSON property `fulfillmentMessages`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessage>]
        attr_accessor :fulfillment_messages
      
        # 
        # Corresponds to the JSON property `fulfillmentText`
        # @return [String]
        attr_accessor :fulfillment_text
      
        # 
        # Corresponds to the JSON property `intent`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1Intent]
        attr_accessor :intent
      
        # 
        # Corresponds to the JSON property `intentDetectionConfidence`
        # @return [Float]
        attr_accessor :intent_detection_confidence
      
        # 
        # Corresponds to the JSON property `knowledgeAnswers`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1KnowledgeAnswers]
        attr_accessor :knowledge_answers
      
        # 
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # 
        # Corresponds to the JSON property `outputContexts`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1Context>]
        attr_accessor :output_contexts
      
        # 
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Object>]
        attr_accessor :parameters
      
        # 
        # Corresponds to the JSON property `queryText`
        # @return [String]
        attr_accessor :query_text
      
        # 
        # Corresponds to the JSON property `sentimentAnalysisResult`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1SentimentAnalysisResult]
        attr_accessor :sentiment_analysis_result
      
        # 
        # Corresponds to the JSON property `speechRecognitionConfidence`
        # @return [Float]
        attr_accessor :speech_recognition_confidence
      
        # 
        # Corresponds to the JSON property `webhookPayload`
        # @return [Hash<String,Object>]
        attr_accessor :webhook_payload
      
        # 
        # Corresponds to the JSON property `webhookSource`
        # @return [String]
        attr_accessor :webhook_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @all_required_params_present = args[:all_required_params_present] if args.key?(:all_required_params_present)
          @cancels_slot_filling = args[:cancels_slot_filling] if args.key?(:cancels_slot_filling)
          @diagnostic_info = args[:diagnostic_info] if args.key?(:diagnostic_info)
          @fulfillment_messages = args[:fulfillment_messages] if args.key?(:fulfillment_messages)
          @fulfillment_text = args[:fulfillment_text] if args.key?(:fulfillment_text)
          @intent = args[:intent] if args.key?(:intent)
          @intent_detection_confidence = args[:intent_detection_confidence] if args.key?(:intent_detection_confidence)
          @knowledge_answers = args[:knowledge_answers] if args.key?(:knowledge_answers)
          @language_code = args[:language_code] if args.key?(:language_code)
          @output_contexts = args[:output_contexts] if args.key?(:output_contexts)
          @parameters = args[:parameters] if args.key?(:parameters)
          @query_text = args[:query_text] if args.key?(:query_text)
          @sentiment_analysis_result = args[:sentiment_analysis_result] if args.key?(:sentiment_analysis_result)
          @speech_recognition_confidence = args[:speech_recognition_confidence] if args.key?(:speech_recognition_confidence)
          @webhook_payload = args[:webhook_payload] if args.key?(:webhook_payload)
          @webhook_source = args[:webhook_source] if args.key?(:webhook_source)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1ResponseMessage
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `endInteraction`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1ResponseMessageEndInteraction]
        attr_accessor :end_interaction
      
        # 
        # Corresponds to the JSON property `liveAgentHandoff`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1ResponseMessageLiveAgentHandoff]
        attr_accessor :live_agent_handoff
      
        # 
        # Corresponds to the JSON property `mixedAudio`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1ResponseMessageMixedAudio]
        attr_accessor :mixed_audio
      
        # 
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # 
        # Corresponds to the JSON property `telephonyTransferCall`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1ResponseMessageTelephonyTransferCall]
        attr_accessor :telephony_transfer_call
      
        # 
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1ResponseMessageText]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_interaction = args[:end_interaction] if args.key?(:end_interaction)
          @live_agent_handoff = args[:live_agent_handoff] if args.key?(:live_agent_handoff)
          @mixed_audio = args[:mixed_audio] if args.key?(:mixed_audio)
          @payload = args[:payload] if args.key?(:payload)
          @telephony_transfer_call = args[:telephony_transfer_call] if args.key?(:telephony_transfer_call)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1ResponseMessageEndInteraction
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1ResponseMessageLiveAgentHandoff
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata = args[:metadata] if args.key?(:metadata)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1ResponseMessageMixedAudio
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `segments`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1ResponseMessageMixedAudioSegment>]
        attr_accessor :segments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @segments = args[:segments] if args.key?(:segments)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1ResponseMessageMixedAudioSegment
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `allowPlaybackInterruption`
        # @return [Boolean]
        attr_accessor :allow_playback_interruption
        alias_method :allow_playback_interruption?, :allow_playback_interruption
      
        # 
        # Corresponds to the JSON property `audio`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :audio
      
        # 
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_playback_interruption = args[:allow_playback_interruption] if args.key?(:allow_playback_interruption)
          @audio = args[:audio] if args.key?(:audio)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1ResponseMessageTelephonyTransferCall
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # 
        # Corresponds to the JSON property `sipUri`
        # @return [String]
        attr_accessor :sip_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @sip_uri = args[:sip_uri] if args.key?(:sip_uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1ResponseMessageText
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `text`
        # @return [Array<String>]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1Sentiment
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `magnitude`
        # @return [Float]
        attr_accessor :magnitude
      
        # 
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @magnitude = args[:magnitude] if args.key?(:magnitude)
          @score = args[:score] if args.key?(:score)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1SentimentAnalysisResult
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `queryTextSentiment`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1Sentiment]
        attr_accessor :query_text_sentiment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @query_text_sentiment = args[:query_text_sentiment] if args.key?(:query_text_sentiment)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1ServiceLatency
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `internalServiceLatencies`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1ServiceLatencyInternalServiceLatency>]
        attr_accessor :internal_service_latencies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @internal_service_latencies = args[:internal_service_latencies] if args.key?(:internal_service_latencies)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1ServiceLatencyInternalServiceLatency
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `completeTime`
        # @return [String]
        attr_accessor :complete_time
      
        # 
        # Corresponds to the JSON property `latencyMs`
        # @return [Float]
        attr_accessor :latency_ms
      
        # 
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # 
        # Corresponds to the JSON property `step`
        # @return [String]
        attr_accessor :step
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @complete_time = args[:complete_time] if args.key?(:complete_time)
          @latency_ms = args[:latency_ms] if args.key?(:latency_ms)
          @start_time = args[:start_time] if args.key?(:start_time)
          @step = args[:step] if args.key?(:step)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1SessionEntityType
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1EntityTypeEntity>]
        attr_accessor :entities
      
        # 
        # Corresponds to the JSON property `entityOverrideMode`
        # @return [String]
        attr_accessor :entity_override_mode
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entities = args[:entities] if args.key?(:entities)
          @entity_override_mode = args[:entity_override_mode] if args.key?(:entity_override_mode)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conversationProfile`
        # @return [String]
        attr_accessor :conversation_profile
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `participantRole`
        # @return [String]
        attr_accessor :participant_role
      
        # 
        # Corresponds to the JSON property `suggestionFeatureType`
        # @return [String]
        attr_accessor :suggestion_feature_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_profile = args[:conversation_profile] if args.key?(:conversation_profile)
          @create_time = args[:create_time] if args.key?(:create_time)
          @participant_role = args[:participant_role] if args.key?(:participant_role)
          @suggestion_feature_type = args[:suggestion_feature_type] if args.key?(:suggestion_feature_type)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1SmartReplyAnswer
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `answerRecord`
        # @return [String]
        attr_accessor :answer_record
      
        # 
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # 
        # Corresponds to the JSON property `reply`
        # @return [String]
        attr_accessor :reply
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_record = args[:answer_record] if args.key?(:answer_record)
          @confidence = args[:confidence] if args.key?(:confidence)
          @reply = args[:reply] if args.key?(:reply)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1SpeechWordInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # 
        # Corresponds to the JSON property `endOffset`
        # @return [String]
        attr_accessor :end_offset
      
        # 
        # Corresponds to the JSON property `startOffset`
        # @return [String]
        attr_accessor :start_offset
      
        # 
        # Corresponds to the JSON property `word`
        # @return [String]
        attr_accessor :word
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @end_offset = args[:end_offset] if args.key?(:end_offset)
          @start_offset = args[:start_offset] if args.key?(:start_offset)
          @word = args[:word] if args.key?(:word)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1StreamingRecognitionResult
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # 
        # Corresponds to the JSON property `dtmfDigits`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1TelephonyDtmfEvents]
        attr_accessor :dtmf_digits
      
        # 
        # Corresponds to the JSON property `isFinal`
        # @return [Boolean]
        attr_accessor :is_final
        alias_method :is_final?, :is_final
      
        # 
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # 
        # Corresponds to the JSON property `messageType`
        # @return [String]
        attr_accessor :message_type
      
        # 
        # Corresponds to the JSON property `speechEndOffset`
        # @return [String]
        attr_accessor :speech_end_offset
      
        # 
        # Corresponds to the JSON property `speechWordInfo`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1SpeechWordInfo>]
        attr_accessor :speech_word_info
      
        # 
        # Corresponds to the JSON property `stability`
        # @return [Float]
        attr_accessor :stability
      
        # 
        # Corresponds to the JSON property `transcript`
        # @return [String]
        attr_accessor :transcript
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @dtmf_digits = args[:dtmf_digits] if args.key?(:dtmf_digits)
          @is_final = args[:is_final] if args.key?(:is_final)
          @language_code = args[:language_code] if args.key?(:language_code)
          @message_type = args[:message_type] if args.key?(:message_type)
          @speech_end_offset = args[:speech_end_offset] if args.key?(:speech_end_offset)
          @speech_word_info = args[:speech_word_info] if args.key?(:speech_word_info)
          @stability = args[:stability] if args.key?(:stability)
          @transcript = args[:transcript] if args.key?(:transcript)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1SuggestArticlesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `articleAnswers`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1ArticleAnswer>]
        attr_accessor :article_answers
      
        # 
        # Corresponds to the JSON property `contextSize`
        # @return [Fixnum]
        attr_accessor :context_size
      
        # 
        # Corresponds to the JSON property `latestMessage`
        # @return [String]
        attr_accessor :latest_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @article_answers = args[:article_answers] if args.key?(:article_answers)
          @context_size = args[:context_size] if args.key?(:context_size)
          @latest_message = args[:latest_message] if args.key?(:latest_message)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1SuggestDialogflowAssistsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `contextSize`
        # @return [Fixnum]
        attr_accessor :context_size
      
        # 
        # Corresponds to the JSON property `dialogflowAssistAnswers`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1DialogflowAssistAnswer>]
        attr_accessor :dialogflow_assist_answers
      
        # 
        # Corresponds to the JSON property `latestMessage`
        # @return [String]
        attr_accessor :latest_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context_size = args[:context_size] if args.key?(:context_size)
          @dialogflow_assist_answers = args[:dialogflow_assist_answers] if args.key?(:dialogflow_assist_answers)
          @latest_message = args[:latest_message] if args.key?(:latest_message)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `contextSize`
        # @return [Fixnum]
        attr_accessor :context_size
      
        # 
        # Corresponds to the JSON property `faqAnswers`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1FaqAnswer>]
        attr_accessor :faq_answers
      
        # 
        # Corresponds to the JSON property `latestMessage`
        # @return [String]
        attr_accessor :latest_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context_size = args[:context_size] if args.key?(:context_size)
          @faq_answers = args[:faq_answers] if args.key?(:faq_answers)
          @latest_message = args[:latest_message] if args.key?(:latest_message)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1SuggestKnowledgeAssistResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `contextSize`
        # @return [Fixnum]
        attr_accessor :context_size
      
        # 
        # Corresponds to the JSON property `knowledgeAssistAnswer`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1KnowledgeAssistAnswer]
        attr_accessor :knowledge_assist_answer
      
        # 
        # Corresponds to the JSON property `latestMessage`
        # @return [String]
        attr_accessor :latest_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context_size = args[:context_size] if args.key?(:context_size)
          @knowledge_assist_answer = args[:knowledge_assist_answer] if args.key?(:knowledge_assist_answer)
          @latest_message = args[:latest_message] if args.key?(:latest_message)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `contextSize`
        # @return [Fixnum]
        attr_accessor :context_size
      
        # 
        # Corresponds to the JSON property `latestMessage`
        # @return [String]
        attr_accessor :latest_message
      
        # 
        # Corresponds to the JSON property `smartReplyAnswers`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1SmartReplyAnswer>]
        attr_accessor :smart_reply_answers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context_size = args[:context_size] if args.key?(:context_size)
          @latest_message = args[:latest_message] if args.key?(:latest_message)
          @smart_reply_answers = args[:smart_reply_answers] if args.key?(:smart_reply_answers)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1SuggestionResult
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DialogflowV2::GoogleRpcStatus]
        attr_accessor :error
      
        # 
        # Corresponds to the JSON property `generateSuggestionsResponse`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1GenerateSuggestionsResponse]
        attr_accessor :generate_suggestions_response
      
        # 
        # Corresponds to the JSON property `suggestArticlesResponse`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1SuggestArticlesResponse]
        attr_accessor :suggest_articles_response
      
        # 
        # Corresponds to the JSON property `suggestDialogflowAssistsResponse`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1SuggestDialogflowAssistsResponse]
        attr_accessor :suggest_dialogflow_assists_response
      
        # 
        # Corresponds to the JSON property `suggestEntityExtractionResponse`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1SuggestDialogflowAssistsResponse]
        attr_accessor :suggest_entity_extraction_response
      
        # 
        # Corresponds to the JSON property `suggestFaqAnswersResponse`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse]
        attr_accessor :suggest_faq_answers_response
      
        # 
        # Corresponds to the JSON property `suggestKnowledgeAssistResponse`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1SuggestKnowledgeAssistResponse]
        attr_accessor :suggest_knowledge_assist_response
      
        # 
        # Corresponds to the JSON property `suggestSmartRepliesResponse`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse]
        attr_accessor :suggest_smart_replies_response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error = args[:error] if args.key?(:error)
          @generate_suggestions_response = args[:generate_suggestions_response] if args.key?(:generate_suggestions_response)
          @suggest_articles_response = args[:suggest_articles_response] if args.key?(:suggest_articles_response)
          @suggest_dialogflow_assists_response = args[:suggest_dialogflow_assists_response] if args.key?(:suggest_dialogflow_assists_response)
          @suggest_entity_extraction_response = args[:suggest_entity_extraction_response] if args.key?(:suggest_entity_extraction_response)
          @suggest_faq_answers_response = args[:suggest_faq_answers_response] if args.key?(:suggest_faq_answers_response)
          @suggest_knowledge_assist_response = args[:suggest_knowledge_assist_response] if args.key?(:suggest_knowledge_assist_response)
          @suggest_smart_replies_response = args[:suggest_smart_replies_response] if args.key?(:suggest_smart_replies_response)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1SummarySuggestion
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `summarySections`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1SummarySuggestionSummarySection>]
        attr_accessor :summary_sections
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @summary_sections = args[:summary_sections] if args.key?(:summary_sections)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1SummarySuggestionSummarySection
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `section`
        # @return [String]
        attr_accessor :section
      
        # 
        # Corresponds to the JSON property `summary`
        # @return [String]
        attr_accessor :summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @section = args[:section] if args.key?(:section)
          @summary = args[:summary] if args.key?(:summary)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1TelephonyDtmfEvents
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dtmfEvents`
        # @return [Array<String>]
        attr_accessor :dtmf_events
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dtmf_events = args[:dtmf_events] if args.key?(:dtmf_events)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1ToolCall
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # 
        # Corresponds to the JSON property `answerRecord`
        # @return [String]
        attr_accessor :answer_record
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `inputParameters`
        # @return [Hash<String,Object>]
        attr_accessor :input_parameters
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # 
        # Corresponds to the JSON property `tool`
        # @return [String]
        attr_accessor :tool
      
        # 
        # Corresponds to the JSON property `toolDisplayDetails`
        # @return [String]
        attr_accessor :tool_display_details
      
        # 
        # Corresponds to the JSON property `toolDisplayName`
        # @return [String]
        attr_accessor :tool_display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @answer_record = args[:answer_record] if args.key?(:answer_record)
          @create_time = args[:create_time] if args.key?(:create_time)
          @input_parameters = args[:input_parameters] if args.key?(:input_parameters)
          @state = args[:state] if args.key?(:state)
          @tool = args[:tool] if args.key?(:tool)
          @tool_display_details = args[:tool_display_details] if args.key?(:tool_display_details)
          @tool_display_name = args[:tool_display_name] if args.key?(:tool_display_name)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1ToolCallResult
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # 
        # Corresponds to the JSON property `answerRecord`
        # @return [String]
        attr_accessor :answer_record
      
        # 
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1ToolCallResultError]
        attr_accessor :error
      
        # 
        # Corresponds to the JSON property `rawContent`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :raw_content
      
        # 
        # Corresponds to the JSON property `tool`
        # @return [String]
        attr_accessor :tool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @answer_record = args[:answer_record] if args.key?(:answer_record)
          @content = args[:content] if args.key?(:content)
          @create_time = args[:create_time] if args.key?(:create_time)
          @error = args[:error] if args.key?(:error)
          @raw_content = args[:raw_content] if args.key?(:raw_content)
          @tool = args[:tool] if args.key?(:tool)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1ToolCallResultError
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1WebhookRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `alternativeQueryResults`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1QueryResult>]
        attr_accessor :alternative_query_results
      
        # 
        # Corresponds to the JSON property `originalDetectIntentRequest`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest]
        attr_accessor :original_detect_intent_request
      
        # 
        # Corresponds to the JSON property `queryResult`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1QueryResult]
        attr_accessor :query_result
      
        # 
        # Corresponds to the JSON property `responseId`
        # @return [String]
        attr_accessor :response_id
      
        # 
        # Corresponds to the JSON property `session`
        # @return [String]
        attr_accessor :session
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alternative_query_results = args[:alternative_query_results] if args.key?(:alternative_query_results)
          @original_detect_intent_request = args[:original_detect_intent_request] if args.key?(:original_detect_intent_request)
          @query_result = args[:query_result] if args.key?(:query_result)
          @response_id = args[:response_id] if args.key?(:response_id)
          @session = args[:session] if args.key?(:session)
        end
      end
      
      # 
      class GoogleCloudDialogflowV2beta1WebhookResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `endInteraction`
        # @return [Boolean]
        attr_accessor :end_interaction
        alias_method :end_interaction?, :end_interaction
      
        # 
        # Corresponds to the JSON property `followupEventInput`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1EventInput]
        attr_accessor :followup_event_input
      
        # 
        # Corresponds to the JSON property `fulfillmentMessages`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessage>]
        attr_accessor :fulfillment_messages
      
        # 
        # Corresponds to the JSON property `fulfillmentText`
        # @return [String]
        attr_accessor :fulfillment_text
      
        # 
        # Corresponds to the JSON property `liveAgentHandoff`
        # @return [Boolean]
        attr_accessor :live_agent_handoff
        alias_method :live_agent_handoff?, :live_agent_handoff
      
        # 
        # Corresponds to the JSON property `outputContexts`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1Context>]
        attr_accessor :output_contexts
      
        # 
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # 
        # Corresponds to the JSON property `sessionEntityTypes`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1SessionEntityType>]
        attr_accessor :session_entity_types
      
        # 
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_interaction = args[:end_interaction] if args.key?(:end_interaction)
          @followup_event_input = args[:followup_event_input] if args.key?(:followup_event_input)
          @fulfillment_messages = args[:fulfillment_messages] if args.key?(:fulfillment_messages)
          @fulfillment_text = args[:fulfillment_text] if args.key?(:fulfillment_text)
          @live_agent_handoff = args[:live_agent_handoff] if args.key?(:live_agent_handoff)
          @output_contexts = args[:output_contexts] if args.key?(:output_contexts)
          @payload = args[:payload] if args.key?(:payload)
          @session_entity_types = args[:session_entity_types] if args.key?(:session_entity_types)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # 
      class GoogleCloudDialogflowV3alpha1ConversationSignals
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `turnSignals`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV3alpha1TurnSignals]
        attr_accessor :turn_signals
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @turn_signals = args[:turn_signals] if args.key?(:turn_signals)
        end
      end
      
      # 
      class GoogleCloudDialogflowV3alpha1TurnSignals
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `agentEscalated`
        # @return [Boolean]
        attr_accessor :agent_escalated
        alias_method :agent_escalated?, :agent_escalated
      
        # 
        # Corresponds to the JSON property `dtmfUsed`
        # @return [Boolean]
        attr_accessor :dtmf_used
        alias_method :dtmf_used?, :dtmf_used
      
        # 
        # Corresponds to the JSON property `failureReasons`
        # @return [Array<String>]
        attr_accessor :failure_reasons
      
        # 
        # Corresponds to the JSON property `noMatch`
        # @return [Boolean]
        attr_accessor :no_match
        alias_method :no_match?, :no_match
      
        # 
        # Corresponds to the JSON property `noUserInput`
        # @return [Boolean]
        attr_accessor :no_user_input
        alias_method :no_user_input?, :no_user_input
      
        # 
        # Corresponds to the JSON property `reachedEndPage`
        # @return [Boolean]
        attr_accessor :reached_end_page
        alias_method :reached_end_page?, :reached_end_page
      
        # 
        # Corresponds to the JSON property `sentimentMagnitude`
        # @return [Float]
        attr_accessor :sentiment_magnitude
      
        # 
        # Corresponds to the JSON property `sentimentScore`
        # @return [Float]
        attr_accessor :sentiment_score
      
        # 
        # Corresponds to the JSON property `triggeredAbandonmentEvent`
        # @return [Boolean]
        attr_accessor :triggered_abandonment_event
        alias_method :triggered_abandonment_event?, :triggered_abandonment_event
      
        # 
        # Corresponds to the JSON property `userEscalated`
        # @return [Boolean]
        attr_accessor :user_escalated
        alias_method :user_escalated?, :user_escalated
      
        # 
        # Corresponds to the JSON property `webhookStatuses`
        # @return [Array<String>]
        attr_accessor :webhook_statuses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_escalated = args[:agent_escalated] if args.key?(:agent_escalated)
          @dtmf_used = args[:dtmf_used] if args.key?(:dtmf_used)
          @failure_reasons = args[:failure_reasons] if args.key?(:failure_reasons)
          @no_match = args[:no_match] if args.key?(:no_match)
          @no_user_input = args[:no_user_input] if args.key?(:no_user_input)
          @reached_end_page = args[:reached_end_page] if args.key?(:reached_end_page)
          @sentiment_magnitude = args[:sentiment_magnitude] if args.key?(:sentiment_magnitude)
          @sentiment_score = args[:sentiment_score] if args.key?(:sentiment_score)
          @triggered_abandonment_event = args[:triggered_abandonment_event] if args.key?(:triggered_abandonment_event)
          @user_escalated = args[:user_escalated] if args.key?(:user_escalated)
          @webhook_statuses = args[:webhook_statuses] if args.key?(:webhook_statuses)
        end
      end
      
      # 
      class GoogleCloudLocationListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudLocationLocation>]
        attr_accessor :locations
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class GoogleCloudLocationLocation
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # 
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # 
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @location_id = args[:location_id] if args.key?(:location_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleLongrunningListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::DialogflowV2::GoogleLongrunningOperation>]
        attr_accessor :operations
      
        # 
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # 
      class GoogleLongrunningOperation
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # 
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DialogflowV2::GoogleRpcStatus]
        attr_accessor :error
      
        # 
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # 
      class GoogleProtobufEmpty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleRpcStatus
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # 
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # 
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # 
      class GoogleTypeLatLng
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `latitude`
        # @return [Float]
        attr_accessor :latitude
      
        # 
        # Corresponds to the JSON property `longitude`
        # @return [Float]
        attr_accessor :longitude
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @latitude = args[:latitude] if args.key?(:latitude)
          @longitude = args[:longitude] if args.key?(:longitude)
        end
      end
    end
  end
end
