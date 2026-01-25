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
      
      # 
      class GoogleCloudDialogflowCxV3Action
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `agentUtterance`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3AgentUtterance]
        attr_accessor :agent_utterance
      
        # 
        # Corresponds to the JSON property `flowInvocation`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FlowInvocation]
        attr_accessor :flow_invocation
      
        # 
        # Corresponds to the JSON property `flowTransition`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FlowTransition]
        attr_accessor :flow_transition
      
        # 
        # Corresponds to the JSON property `playbookInvocation`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3PlaybookInvocation]
        attr_accessor :playbook_invocation
      
        # 
        # Corresponds to the JSON property `playbookTransition`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3PlaybookTransition]
        attr_accessor :playbook_transition
      
        # 
        # Corresponds to the JSON property `toolUse`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ToolUse]
        attr_accessor :tool_use
      
        # 
        # Corresponds to the JSON property `userUtterance`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3UserUtterance]
        attr_accessor :user_utterance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_utterance = args[:agent_utterance] if args.key?(:agent_utterance)
          @flow_invocation = args[:flow_invocation] if args.key?(:flow_invocation)
          @flow_transition = args[:flow_transition] if args.key?(:flow_transition)
          @playbook_invocation = args[:playbook_invocation] if args.key?(:playbook_invocation)
          @playbook_transition = args[:playbook_transition] if args.key?(:playbook_transition)
          @tool_use = args[:tool_use] if args.key?(:tool_use)
          @user_utterance = args[:user_utterance] if args.key?(:user_utterance)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3AdvancedSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `audioExportGcsDestination`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3GcsDestination]
        attr_accessor :audio_export_gcs_destination
      
        # 
        # Corresponds to the JSON property `dtmfSettings`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings]
        attr_accessor :dtmf_settings
      
        # 
        # Corresponds to the JSON property `loggingSettings`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings]
        attr_accessor :logging_settings
      
        # 
        # Corresponds to the JSON property `speechSettings`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3AdvancedSettingsSpeechSettings]
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
      class GoogleCloudDialogflowCxV3Agent
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `advancedSettings`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3AdvancedSettings]
        attr_accessor :advanced_settings
      
        # 
        # Corresponds to the JSON property `answerFeedbackSettings`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings]
        attr_accessor :answer_feedback_settings
      
        # 
        # Corresponds to the JSON property `avatarUri`
        # @return [String]
        attr_accessor :avatar_uri
      
        # 
        # Corresponds to the JSON property `clientCertificateSettings`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3AgentClientCertificateSettings]
        attr_accessor :client_certificate_settings
      
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
        # Corresponds to the JSON property `enableMultiLanguageTraining`
        # @return [Boolean]
        attr_accessor :enable_multi_language_training
        alias_method :enable_multi_language_training?, :enable_multi_language_training
      
        # 
        # Corresponds to the JSON property `enableSpellCorrection`
        # @return [Boolean]
        attr_accessor :enable_spell_correction
        alias_method :enable_spell_correction?, :enable_spell_correction
      
        # 
        # Corresponds to the JSON property `enableStackdriverLogging`
        # @return [Boolean]
        attr_accessor :enable_stackdriver_logging
        alias_method :enable_stackdriver_logging?, :enable_stackdriver_logging
      
        # 
        # Corresponds to the JSON property `genAppBuilderSettings`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3AgentGenAppBuilderSettings]
        attr_accessor :gen_app_builder_settings
      
        # 
        # Corresponds to the JSON property `gitIntegrationSettings`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3AgentGitIntegrationSettings]
        attr_accessor :git_integration_settings
      
        # 
        # Corresponds to the JSON property `locked`
        # @return [Boolean]
        attr_accessor :locked
        alias_method :locked?, :locked
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `personalizationSettings`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3AgentPersonalizationSettings]
        attr_accessor :personalization_settings
      
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
        # Corresponds to the JSON property `securitySettings`
        # @return [String]
        attr_accessor :security_settings
      
        # 
        # Corresponds to the JSON property `speechToTextSettings`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SpeechToTextSettings]
        attr_accessor :speech_to_text_settings
      
        # 
        # Corresponds to the JSON property `startFlow`
        # @return [String]
        attr_accessor :start_flow
      
        # 
        # Corresponds to the JSON property `startPlaybook`
        # @return [String]
        attr_accessor :start_playbook
      
        # 
        # Corresponds to the JSON property `supportedLanguageCodes`
        # @return [Array<String>]
        attr_accessor :supported_language_codes
      
        # 
        # Corresponds to the JSON property `textToSpeechSettings`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TextToSpeechSettings]
        attr_accessor :text_to_speech_settings
      
        # 
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advanced_settings = args[:advanced_settings] if args.key?(:advanced_settings)
          @answer_feedback_settings = args[:answer_feedback_settings] if args.key?(:answer_feedback_settings)
          @avatar_uri = args[:avatar_uri] if args.key?(:avatar_uri)
          @client_certificate_settings = args[:client_certificate_settings] if args.key?(:client_certificate_settings)
          @default_language_code = args[:default_language_code] if args.key?(:default_language_code)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @enable_multi_language_training = args[:enable_multi_language_training] if args.key?(:enable_multi_language_training)
          @enable_spell_correction = args[:enable_spell_correction] if args.key?(:enable_spell_correction)
          @enable_stackdriver_logging = args[:enable_stackdriver_logging] if args.key?(:enable_stackdriver_logging)
          @gen_app_builder_settings = args[:gen_app_builder_settings] if args.key?(:gen_app_builder_settings)
          @git_integration_settings = args[:git_integration_settings] if args.key?(:git_integration_settings)
          @locked = args[:locked] if args.key?(:locked)
          @name = args[:name] if args.key?(:name)
          @personalization_settings = args[:personalization_settings] if args.key?(:personalization_settings)
          @satisfies_pzi = args[:satisfies_pzi] if args.key?(:satisfies_pzi)
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
          @security_settings = args[:security_settings] if args.key?(:security_settings)
          @speech_to_text_settings = args[:speech_to_text_settings] if args.key?(:speech_to_text_settings)
          @start_flow = args[:start_flow] if args.key?(:start_flow)
          @start_playbook = args[:start_playbook] if args.key?(:start_playbook)
          @supported_language_codes = args[:supported_language_codes] if args.key?(:supported_language_codes)
          @text_to_speech_settings = args[:text_to_speech_settings] if args.key?(:text_to_speech_settings)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `enableAnswerFeedback`
        # @return [Boolean]
        attr_accessor :enable_answer_feedback
        alias_method :enable_answer_feedback?, :enable_answer_feedback
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_answer_feedback = args[:enable_answer_feedback] if args.key?(:enable_answer_feedback)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3AgentClientCertificateSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `passphrase`
        # @return [String]
        attr_accessor :passphrase
      
        # 
        # Corresponds to the JSON property `privateKey`
        # @return [String]
        attr_accessor :private_key
      
        # 
        # Corresponds to the JSON property `sslCertificate`
        # @return [String]
        attr_accessor :ssl_certificate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @passphrase = args[:passphrase] if args.key?(:passphrase)
          @private_key = args[:private_key] if args.key?(:private_key)
          @ssl_certificate = args[:ssl_certificate] if args.key?(:ssl_certificate)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3AgentGenAppBuilderSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `engine`
        # @return [String]
        attr_accessor :engine
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @engine = args[:engine] if args.key?(:engine)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3AgentGitIntegrationSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `githubSettings`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettings]
        attr_accessor :github_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @github_settings = args[:github_settings] if args.key?(:github_settings)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `accessToken`
        # @return [String]
        attr_accessor :access_token
      
        # 
        # Corresponds to the JSON property `branches`
        # @return [Array<String>]
        attr_accessor :branches
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `repositoryUri`
        # @return [String]
        attr_accessor :repository_uri
      
        # 
        # Corresponds to the JSON property `trackingBranch`
        # @return [String]
        attr_accessor :tracking_branch
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_token = args[:access_token] if args.key?(:access_token)
          @branches = args[:branches] if args.key?(:branches)
          @display_name = args[:display_name] if args.key?(:display_name)
          @repository_uri = args[:repository_uri] if args.key?(:repository_uri)
          @tracking_branch = args[:tracking_branch] if args.key?(:tracking_branch)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3AgentPersonalizationSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `defaultEndUserMetadata`
        # @return [Hash<String,Object>]
        attr_accessor :default_end_user_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_end_user_metadata = args[:default_end_user_metadata] if args.key?(:default_end_user_metadata)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3AgentUtterance
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
      class GoogleCloudDialogflowCxV3AgentValidationResult
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `flowValidationResults`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FlowValidationResult>]
        attr_accessor :flow_validation_results
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @flow_validation_results = args[:flow_validation_results] if args.key?(:flow_validation_results)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3AnswerFeedback
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `customRating`
        # @return [String]
        attr_accessor :custom_rating
      
        # 
        # Corresponds to the JSON property `rating`
        # @return [String]
        attr_accessor :rating
      
        # 
        # Corresponds to the JSON property `ratingReason`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3AnswerFeedbackRatingReason]
        attr_accessor :rating_reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_rating = args[:custom_rating] if args.key?(:custom_rating)
          @rating = args[:rating] if args.key?(:rating)
          @rating_reason = args[:rating_reason] if args.key?(:rating_reason)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3AnswerFeedbackRatingReason
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `feedback`
        # @return [String]
        attr_accessor :feedback
      
        # 
        # Corresponds to the JSON property `reasonLabels`
        # @return [Array<String>]
        attr_accessor :reason_labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @feedback = args[:feedback] if args.key?(:feedback)
          @reason_labels = args[:reason_labels] if args.key?(:reason_labels)
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3InputAudioConfig]
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
      class GoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest
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
      class GoogleCloudDialogflowCxV3BatchRunTestCasesMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestError>]
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
      class GoogleCloudDialogflowCxV3BatchRunTestCasesRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `environment`
        # @return [String]
        attr_accessor :environment
      
        # 
        # Corresponds to the JSON property `testCases`
        # @return [Array<String>]
        attr_accessor :test_cases
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @environment = args[:environment] if args.key?(:environment)
          @test_cases = args[:test_cases] if args.key?(:test_cases)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3BatchRunTestCasesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCaseResult>]
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
      class GoogleCloudDialogflowCxV3BoostSpec
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conditionBoostSpecs`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpec>]
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
      class GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpec
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `boost`
        # @return [Float]
        attr_accessor :boost
      
        # 
        # Corresponds to the JSON property `boostControlSpec`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec]
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
      class GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `attributeType`
        # @return [String]
        attr_accessor :attribute_type
      
        # 
        # Corresponds to the JSON property `controlPoints`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpecControlPoint>]
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
      class GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpecControlPoint
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
      class GoogleCloudDialogflowCxV3BoostSpecs
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dataStores`
        # @return [Array<String>]
        attr_accessor :data_stores
      
        # 
        # Corresponds to the JSON property `spec`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3BoostSpec>]
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
      class GoogleCloudDialogflowCxV3CalculateCoverageResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `agent`
        # @return [String]
        attr_accessor :agent
      
        # 
        # Corresponds to the JSON property `intentCoverage`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3IntentCoverage]
        attr_accessor :intent_coverage
      
        # 
        # Corresponds to the JSON property `routeGroupCoverage`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroupCoverage]
        attr_accessor :route_group_coverage
      
        # 
        # Corresponds to the JSON property `transitionCoverage`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionCoverage]
        attr_accessor :transition_coverage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent = args[:agent] if args.key?(:agent)
          @intent_coverage = args[:intent_coverage] if args.key?(:intent_coverage)
          @route_group_coverage = args[:route_group_coverage] if args.key?(:route_group_coverage)
          @transition_coverage = args[:transition_coverage] if args.key?(:transition_coverage)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3Changelog
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
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
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # 
        # Corresponds to the JSON property `userEmail`
        # @return [String]
        attr_accessor :user_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @language_code = args[:language_code] if args.key?(:language_code)
          @name = args[:name] if args.key?(:name)
          @resource = args[:resource] if args.key?(:resource)
          @type = args[:type] if args.key?(:type)
          @user_email = args[:user_email] if args.key?(:user_email)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3CodeBlock
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3CompareVersionsRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # 
        # Corresponds to the JSON property `targetVersion`
        # @return [String]
        attr_accessor :target_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_code = args[:language_code] if args.key?(:language_code)
          @target_version = args[:target_version] if args.key?(:target_version)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3CompareVersionsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `baseVersionContentJson`
        # @return [String]
        attr_accessor :base_version_content_json
      
        # 
        # Corresponds to the JSON property `compareTime`
        # @return [String]
        attr_accessor :compare_time
      
        # 
        # Corresponds to the JSON property `targetVersionContentJson`
        # @return [String]
        attr_accessor :target_version_content_json
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base_version_content_json = args[:base_version_content_json] if args.key?(:base_version_content_json)
          @compare_time = args[:compare_time] if args.key?(:compare_time)
          @target_version_content_json = args[:target_version_content_json] if args.key?(:target_version_content_json)
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TurnSignals]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ConversationTurnUserInput]
        attr_accessor :user_input
      
        # 
        # Corresponds to the JSON property `virtualAgentOutput`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3QueryInput]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Page]
        attr_accessor :current_page
      
        # 
        # Corresponds to the JSON property `diagnosticInfo`
        # @return [Hash<String,Object>]
        attr_accessor :diagnostic_info
      
        # 
        # Corresponds to the JSON property `differences`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestRunDifference>]
        attr_accessor :differences
      
        # 
        # Corresponds to the JSON property `sessionParameters`
        # @return [Hash<String,Object>]
        attr_accessor :session_parameters
      
        # 
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DialogflowV3::GoogleRpcStatus]
        attr_accessor :status
      
        # 
        # Corresponds to the JSON property `textResponses`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessageText>]
        attr_accessor :text_responses
      
        # 
        # Corresponds to the JSON property `triggeredIntent`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Intent]
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
      class GoogleCloudDialogflowCxV3DataStoreConnectionSignals
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `answer`
        # @return [String]
        attr_accessor :answer
      
        # 
        # Corresponds to the JSON property `answerGenerationModelCallSignals`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DataStoreConnectionSignalsAnswerGenerationModelCallSignals]
        attr_accessor :answer_generation_model_call_signals
      
        # 
        # Corresponds to the JSON property `answerParts`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DataStoreConnectionSignalsAnswerPart>]
        attr_accessor :answer_parts
      
        # 
        # Corresponds to the JSON property `citedSnippets`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DataStoreConnectionSignalsCitedSnippet>]
        attr_accessor :cited_snippets
      
        # 
        # Corresponds to the JSON property `groundingSignals`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals]
        attr_accessor :grounding_signals
      
        # 
        # Corresponds to the JSON property `rewriterModelCallSignals`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DataStoreConnectionSignalsRewriterModelCallSignals]
        attr_accessor :rewriter_model_call_signals
      
        # 
        # Corresponds to the JSON property `rewrittenQuery`
        # @return [String]
        attr_accessor :rewritten_query
      
        # 
        # Corresponds to the JSON property `safetySignals`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals]
        attr_accessor :safety_signals
      
        # 
        # Corresponds to the JSON property `searchSnippets`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSearchSnippet>]
        attr_accessor :search_snippets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer = args[:answer] if args.key?(:answer)
          @answer_generation_model_call_signals = args[:answer_generation_model_call_signals] if args.key?(:answer_generation_model_call_signals)
          @answer_parts = args[:answer_parts] if args.key?(:answer_parts)
          @cited_snippets = args[:cited_snippets] if args.key?(:cited_snippets)
          @grounding_signals = args[:grounding_signals] if args.key?(:grounding_signals)
          @rewriter_model_call_signals = args[:rewriter_model_call_signals] if args.key?(:rewriter_model_call_signals)
          @rewritten_query = args[:rewritten_query] if args.key?(:rewritten_query)
          @safety_signals = args[:safety_signals] if args.key?(:safety_signals)
          @search_snippets = args[:search_snippets] if args.key?(:search_snippets)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3DataStoreConnectionSignalsAnswerGenerationModelCallSignals
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        # 
        # Corresponds to the JSON property `modelOutput`
        # @return [String]
        attr_accessor :model_output
      
        # 
        # Corresponds to the JSON property `renderedPrompt`
        # @return [String]
        attr_accessor :rendered_prompt
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @model = args[:model] if args.key?(:model)
          @model_output = args[:model_output] if args.key?(:model_output)
          @rendered_prompt = args[:rendered_prompt] if args.key?(:rendered_prompt)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3DataStoreConnectionSignalsAnswerPart
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `supportingIndices`
        # @return [Array<Fixnum>]
        attr_accessor :supporting_indices
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @supporting_indices = args[:supporting_indices] if args.key?(:supporting_indices)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3DataStoreConnectionSignalsCitedSnippet
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `searchSnippet`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSearchSnippet]
        attr_accessor :search_snippet
      
        # 
        # Corresponds to the JSON property `snippetIndex`
        # @return [Fixnum]
        attr_accessor :snippet_index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @search_snippet = args[:search_snippet] if args.key?(:search_snippet)
          @snippet_index = args[:snippet_index] if args.key?(:snippet_index)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `decision`
        # @return [String]
        attr_accessor :decision
      
        # 
        # Corresponds to the JSON property `score`
        # @return [String]
        attr_accessor :score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @decision = args[:decision] if args.key?(:decision)
          @score = args[:score] if args.key?(:score)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3DataStoreConnectionSignalsRewriterModelCallSignals
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        # 
        # Corresponds to the JSON property `modelOutput`
        # @return [String]
        attr_accessor :model_output
      
        # 
        # Corresponds to the JSON property `renderedPrompt`
        # @return [String]
        attr_accessor :rendered_prompt
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @model = args[:model] if args.key?(:model)
          @model_output = args[:model_output] if args.key?(:model_output)
          @rendered_prompt = args[:rendered_prompt] if args.key?(:rendered_prompt)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `bannedPhraseMatch`
        # @return [String]
        attr_accessor :banned_phrase_match
      
        # 
        # Corresponds to the JSON property `decision`
        # @return [String]
        attr_accessor :decision
      
        # 
        # Corresponds to the JSON property `matchedBannedPhrase`
        # @return [String]
        attr_accessor :matched_banned_phrase
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @banned_phrase_match = args[:banned_phrase_match] if args.key?(:banned_phrase_match)
          @decision = args[:decision] if args.key?(:decision)
          @matched_banned_phrase = args[:matched_banned_phrase] if args.key?(:matched_banned_phrase)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSearchSnippet
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `documentTitle`
        # @return [String]
        attr_accessor :document_title
      
        # 
        # Corresponds to the JSON property `documentUri`
        # @return [String]
        attr_accessor :document_uri
      
        # 
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document_title = args[:document_title] if args.key?(:document_title)
          @document_uri = args[:document_uri] if args.key?(:document_uri)
          @metadata = args[:metadata] if args.key?(:metadata)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3DeployFlowMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `testErrors`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestError>]
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
      class GoogleCloudDialogflowCxV3DeployFlowRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `flowVersion`
        # @return [String]
        attr_accessor :flow_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @flow_version = args[:flow_version] if args.key?(:flow_version)
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Environment]
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
      class GoogleCloudDialogflowCxV3Deployment
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # 
        # Corresponds to the JSON property `flowVersion`
        # @return [String]
        attr_accessor :flow_version
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `result`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DeploymentResult]
        attr_accessor :result
      
        # 
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @flow_version = args[:flow_version] if args.key?(:flow_version)
          @name = args[:name] if args.key?(:name)
          @result = args[:result] if args.key?(:result)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3DeploymentResult
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `deploymentTestResults`
        # @return [Array<String>]
        attr_accessor :deployment_test_results
      
        # 
        # Corresponds to the JSON property `experiment`
        # @return [String]
        attr_accessor :experiment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deployment_test_results = args[:deployment_test_results] if args.key?(:deployment_test_results)
          @experiment = args[:experiment] if args.key?(:experiment)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3DetectIntentRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `outputAudioConfig`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3OutputAudioConfig]
        attr_accessor :output_audio_config
      
        # 
        # Corresponds to the JSON property `queryInput`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3QueryInput]
        attr_accessor :query_input
      
        # 
        # Corresponds to the JSON property `queryParams`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3QueryParameters]
        attr_accessor :query_params
      
        # 
        # Corresponds to the JSON property `responseView`
        # @return [String]
        attr_accessor :response_view
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @output_audio_config = args[:output_audio_config] if args.key?(:output_audio_config)
          @query_input = args[:query_input] if args.key?(:query_input)
          @query_params = args[:query_params] if args.key?(:query_params)
          @response_view = args[:response_view] if args.key?(:response_view)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3DetectIntentResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `allowCancellation`
        # @return [Boolean]
        attr_accessor :allow_cancellation
        alias_method :allow_cancellation?, :allow_cancellation
      
        # 
        # Corresponds to the JSON property `outputAudio`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :output_audio
      
        # 
        # Corresponds to the JSON property `outputAudioConfig`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3OutputAudioConfig]
        attr_accessor :output_audio_config
      
        # 
        # Corresponds to the JSON property `queryResult`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3QueryResult]
        attr_accessor :query_result
      
        # 
        # Corresponds to the JSON property `responseId`
        # @return [String]
        attr_accessor :response_id
      
        # 
        # Corresponds to the JSON property `responseType`
        # @return [String]
        attr_accessor :response_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_cancellation = args[:allow_cancellation] if args.key?(:allow_cancellation)
          @output_audio = args[:output_audio] if args.key?(:output_audio)
          @output_audio_config = args[:output_audio_config] if args.key?(:output_audio_config)
          @query_result = args[:query_result] if args.key?(:query_result)
          @response_id = args[:response_id] if args.key?(:response_id)
          @response_type = args[:response_type] if args.key?(:response_type)
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
      class GoogleCloudDialogflowCxV3EntityType
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EntityTypeEntity>]
        attr_accessor :entities
      
        # 
        # Corresponds to the JSON property `excludedPhrases`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase>]
        attr_accessor :excluded_phrases
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
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
          @auto_expansion_mode = args[:auto_expansion_mode] if args.key?(:auto_expansion_mode)
          @display_name = args[:display_name] if args.key?(:display_name)
          @enable_fuzzy_extraction = args[:enable_fuzzy_extraction] if args.key?(:enable_fuzzy_extraction)
          @entities = args[:entities] if args.key?(:entities)
          @excluded_phrases = args[:excluded_phrases] if args.key?(:excluded_phrases)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @redact = args[:redact] if args.key?(:redact)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3EntityTypeEntity
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
      class GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig]
        attr_accessor :test_cases_config
      
        # 
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # 
        # Corresponds to the JSON property `versionConfigs`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EnvironmentVersionConfig>]
        attr_accessor :version_configs
      
        # 
        # Corresponds to the JSON property `webhookConfig`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EnvironmentWebhookConfig]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Webhook>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Fulfillment]
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
      class GoogleCloudDialogflowCxV3Example
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `actions`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Action>]
        attr_accessor :actions
      
        # 
        # Corresponds to the JSON property `conversationState`
        # @return [String]
        attr_accessor :conversation_state
      
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
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `playbookInput`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3PlaybookInput]
        attr_accessor :playbook_input
      
        # 
        # Corresponds to the JSON property `playbookOutput`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3PlaybookOutput]
        attr_accessor :playbook_output
      
        # 
        # Corresponds to the JSON property `tokenCount`
        # @return [Fixnum]
        attr_accessor :token_count
      
        # 
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actions = args[:actions] if args.key?(:actions)
          @conversation_state = args[:conversation_state] if args.key?(:conversation_state)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @language_code = args[:language_code] if args.key?(:language_code)
          @name = args[:name] if args.key?(:name)
          @playbook_input = args[:playbook_input] if args.key?(:playbook_input)
          @playbook_output = args[:playbook_output] if args.key?(:playbook_output)
          @token_count = args[:token_count] if args.key?(:token_count)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3Experiment
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `definition`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ExperimentDefinition]
        attr_accessor :definition
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # 
        # Corresponds to the JSON property `experimentLength`
        # @return [String]
        attr_accessor :experiment_length
      
        # 
        # Corresponds to the JSON property `lastUpdateTime`
        # @return [String]
        attr_accessor :last_update_time
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `result`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ExperimentResult]
        attr_accessor :result
      
        # 
        # Corresponds to the JSON property `rolloutConfig`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3RolloutConfig]
        attr_accessor :rollout_config
      
        # 
        # Corresponds to the JSON property `rolloutFailureReason`
        # @return [String]
        attr_accessor :rollout_failure_reason
      
        # 
        # Corresponds to the JSON property `rolloutState`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3RolloutState]
        attr_accessor :rollout_state
      
        # 
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # 
        # Corresponds to the JSON property `variantsHistory`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3VariantsHistory>]
        attr_accessor :variants_history
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @definition = args[:definition] if args.key?(:definition)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @end_time = args[:end_time] if args.key?(:end_time)
          @experiment_length = args[:experiment_length] if args.key?(:experiment_length)
          @last_update_time = args[:last_update_time] if args.key?(:last_update_time)
          @name = args[:name] if args.key?(:name)
          @result = args[:result] if args.key?(:result)
          @rollout_config = args[:rollout_config] if args.key?(:rollout_config)
          @rollout_failure_reason = args[:rollout_failure_reason] if args.key?(:rollout_failure_reason)
          @rollout_state = args[:rollout_state] if args.key?(:rollout_state)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
          @variants_history = args[:variants_history] if args.key?(:variants_history)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ExperimentDefinition
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        # 
        # Corresponds to the JSON property `versionVariants`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3VersionVariants]
        attr_accessor :version_variants
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @version_variants = args[:version_variants] if args.key?(:version_variants)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ExperimentResult
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `lastUpdateTime`
        # @return [String]
        attr_accessor :last_update_time
      
        # 
        # Corresponds to the JSON property `versionMetrics`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics>]
        attr_accessor :version_metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last_update_time = args[:last_update_time] if args.key?(:last_update_time)
          @version_metrics = args[:version_metrics] if args.key?(:version_metrics)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `confidenceLevel`
        # @return [Float]
        attr_accessor :confidence_level
      
        # 
        # Corresponds to the JSON property `lowerBound`
        # @return [Float]
        attr_accessor :lower_bound
      
        # 
        # Corresponds to the JSON property `ratio`
        # @return [Float]
        attr_accessor :ratio
      
        # 
        # Corresponds to the JSON property `upperBound`
        # @return [Float]
        attr_accessor :upper_bound
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence_level = args[:confidence_level] if args.key?(:confidence_level)
          @lower_bound = args[:lower_bound] if args.key?(:lower_bound)
          @ratio = args[:ratio] if args.key?(:ratio)
          @upper_bound = args[:upper_bound] if args.key?(:upper_bound)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ExperimentResultMetric
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `confidenceInterval`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval]
        attr_accessor :confidence_interval
      
        # 
        # Corresponds to the JSON property `count`
        # @return [Float]
        attr_accessor :count
      
        # 
        # Corresponds to the JSON property `countType`
        # @return [String]
        attr_accessor :count_type
      
        # 
        # Corresponds to the JSON property `ratio`
        # @return [Float]
        attr_accessor :ratio
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence_interval = args[:confidence_interval] if args.key?(:confidence_interval)
          @count = args[:count] if args.key?(:count)
          @count_type = args[:count_type] if args.key?(:count_type)
          @ratio = args[:ratio] if args.key?(:ratio)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ExperimentResultMetric>]
        attr_accessor :metrics
      
        # 
        # Corresponds to the JSON property `sessionCount`
        # @return [Fixnum]
        attr_accessor :session_count
      
        # 
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metrics = args[:metrics] if args.key?(:metrics)
          @session_count = args[:session_count] if args.key?(:session_count)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ExportAgentRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `agentUri`
        # @return [String]
        attr_accessor :agent_uri
      
        # 
        # Corresponds to the JSON property `dataFormat`
        # @return [String]
        attr_accessor :data_format
      
        # 
        # Corresponds to the JSON property `environment`
        # @return [String]
        attr_accessor :environment
      
        # 
        # Corresponds to the JSON property `gitDestination`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ExportAgentRequestGitDestination]
        attr_accessor :git_destination
      
        # 
        # Corresponds to the JSON property `includeBigqueryExportSettings`
        # @return [Boolean]
        attr_accessor :include_bigquery_export_settings
        alias_method :include_bigquery_export_settings?, :include_bigquery_export_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_uri = args[:agent_uri] if args.key?(:agent_uri)
          @data_format = args[:data_format] if args.key?(:data_format)
          @environment = args[:environment] if args.key?(:environment)
          @git_destination = args[:git_destination] if args.key?(:git_destination)
          @include_bigquery_export_settings = args[:include_bigquery_export_settings] if args.key?(:include_bigquery_export_settings)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ExportAgentRequestGitDestination
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `commitMessage`
        # @return [String]
        attr_accessor :commit_message
      
        # 
        # Corresponds to the JSON property `trackingBranch`
        # @return [String]
        attr_accessor :tracking_branch
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @commit_message = args[:commit_message] if args.key?(:commit_message)
          @tracking_branch = args[:tracking_branch] if args.key?(:tracking_branch)
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
      class GoogleCloudDialogflowCxV3ExportEntityTypesRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dataFormat`
        # @return [String]
        attr_accessor :data_format
      
        # 
        # Corresponds to the JSON property `entityTypes`
        # @return [Array<String>]
        attr_accessor :entity_types
      
        # 
        # Corresponds to the JSON property `entityTypesContentInline`
        # @return [Boolean]
        attr_accessor :entity_types_content_inline
        alias_method :entity_types_content_inline?, :entity_types_content_inline
      
        # 
        # Corresponds to the JSON property `entityTypesUri`
        # @return [String]
        attr_accessor :entity_types_uri
      
        # 
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_format = args[:data_format] if args.key?(:data_format)
          @entity_types = args[:entity_types] if args.key?(:entity_types)
          @entity_types_content_inline = args[:entity_types_content_inline] if args.key?(:entity_types_content_inline)
          @entity_types_uri = args[:entity_types_uri] if args.key?(:entity_types_uri)
          @language_code = args[:language_code] if args.key?(:language_code)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ExportEntityTypesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `entityTypesContent`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3InlineDestination]
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
      class GoogleCloudDialogflowCxV3ExportFlowRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `flowUri`
        # @return [String]
        attr_accessor :flow_uri
      
        # 
        # Corresponds to the JSON property `includeReferencedFlows`
        # @return [Boolean]
        attr_accessor :include_referenced_flows
        alias_method :include_referenced_flows?, :include_referenced_flows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @flow_uri = args[:flow_uri] if args.key?(:flow_uri)
          @include_referenced_flows = args[:include_referenced_flows] if args.key?(:include_referenced_flows)
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
      class GoogleCloudDialogflowCxV3ExportIntentsRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dataFormat`
        # @return [String]
        attr_accessor :data_format
      
        # 
        # Corresponds to the JSON property `intents`
        # @return [Array<String>]
        attr_accessor :intents
      
        # 
        # Corresponds to the JSON property `intentsContentInline`
        # @return [Boolean]
        attr_accessor :intents_content_inline
        alias_method :intents_content_inline?, :intents_content_inline
      
        # 
        # Corresponds to the JSON property `intentsUri`
        # @return [String]
        attr_accessor :intents_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_format = args[:data_format] if args.key?(:data_format)
          @intents = args[:intents] if args.key?(:intents)
          @intents_content_inline = args[:intents_content_inline] if args.key?(:intents_content_inline)
          @intents_uri = args[:intents_uri] if args.key?(:intents_uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ExportIntentsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `intentsContent`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3InlineDestination]
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
      class GoogleCloudDialogflowCxV3ExportPlaybookRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dataFormat`
        # @return [String]
        attr_accessor :data_format
      
        # 
        # Corresponds to the JSON property `playbookUri`
        # @return [String]
        attr_accessor :playbook_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_format = args[:data_format] if args.key?(:data_format)
          @playbook_uri = args[:playbook_uri] if args.key?(:playbook_uri)
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
      class GoogleCloudDialogflowCxV3ExportTestCasesRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dataFormat`
        # @return [String]
        attr_accessor :data_format
      
        # 
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # 
        # Corresponds to the JSON property `gcsUri`
        # @return [String]
        attr_accessor :gcs_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_format = args[:data_format] if args.key?(:data_format)
          @filter = args[:filter] if args.key?(:filter)
          @gcs_uri = args[:gcs_uri] if args.key?(:gcs_uri)
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
      class GoogleCloudDialogflowCxV3FilterSpecs
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
      class GoogleCloudDialogflowCxV3Flow
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `advancedSettings`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3AdvancedSettings]
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
        # Corresponds to the JSON property `eventHandlers`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EventHandler>]
        attr_accessor :event_handlers
      
        # 
        # Corresponds to the JSON property `inputParameterDefinitions`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ParameterDefinition>]
        attr_accessor :input_parameter_definitions
      
        # 
        # Corresponds to the JSON property `knowledgeConnectorSettings`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3KnowledgeConnectorSettings]
        attr_accessor :knowledge_connector_settings
      
        # 
        # Corresponds to the JSON property `locked`
        # @return [Boolean]
        attr_accessor :locked
        alias_method :locked?, :locked
      
        # 
        # Corresponds to the JSON property `multiLanguageSettings`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FlowMultiLanguageSettings]
        attr_accessor :multi_language_settings
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `nluSettings`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3NluSettings]
        attr_accessor :nlu_settings
      
        # 
        # Corresponds to the JSON property `outputParameterDefinitions`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ParameterDefinition>]
        attr_accessor :output_parameter_definitions
      
        # 
        # Corresponds to the JSON property `transitionRouteGroups`
        # @return [Array<String>]
        attr_accessor :transition_route_groups
      
        # 
        # Corresponds to the JSON property `transitionRoutes`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRoute>]
        attr_accessor :transition_routes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advanced_settings = args[:advanced_settings] if args.key?(:advanced_settings)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @event_handlers = args[:event_handlers] if args.key?(:event_handlers)
          @input_parameter_definitions = args[:input_parameter_definitions] if args.key?(:input_parameter_definitions)
          @knowledge_connector_settings = args[:knowledge_connector_settings] if args.key?(:knowledge_connector_settings)
          @locked = args[:locked] if args.key?(:locked)
          @multi_language_settings = args[:multi_language_settings] if args.key?(:multi_language_settings)
          @name = args[:name] if args.key?(:name)
          @nlu_settings = args[:nlu_settings] if args.key?(:nlu_settings)
          @output_parameter_definitions = args[:output_parameter_definitions] if args.key?(:output_parameter_definitions)
          @transition_route_groups = args[:transition_route_groups] if args.key?(:transition_route_groups)
          @transition_routes = args[:transition_routes] if args.key?(:transition_routes)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3FlowImportStrategy
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `globalImportStrategy`
        # @return [String]
        attr_accessor :global_import_strategy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @global_import_strategy = args[:global_import_strategy] if args.key?(:global_import_strategy)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3FlowInvocation
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `flow`
        # @return [String]
        attr_accessor :flow
      
        # 
        # Corresponds to the JSON property `flowState`
        # @return [String]
        attr_accessor :flow_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @flow = args[:flow] if args.key?(:flow)
          @flow_state = args[:flow_state] if args.key?(:flow_state)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3FlowMultiLanguageSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `enableMultiLanguageDetection`
        # @return [Boolean]
        attr_accessor :enable_multi_language_detection
        alias_method :enable_multi_language_detection?, :enable_multi_language_detection
      
        # 
        # Corresponds to the JSON property `supportedResponseLanguageCodes`
        # @return [Array<String>]
        attr_accessor :supported_response_language_codes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_multi_language_detection = args[:enable_multi_language_detection] if args.key?(:enable_multi_language_detection)
          @supported_response_language_codes = args[:supported_response_language_codes] if args.key?(:supported_response_language_codes)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3FlowTransition
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `flow`
        # @return [String]
        attr_accessor :flow
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @flow = args[:flow] if args.key?(:flow)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3FlowValidationResult
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # 
        # Corresponds to the JSON property `validationMessages`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ValidationMessage>]
        attr_accessor :validation_messages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
          @validation_messages = args[:validation_messages] if args.key?(:validation_messages)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3Form
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FormParameter>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3AdvancedSettings]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FormParameterFillBehavior]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Fulfillment]
        attr_accessor :initial_prompt_fulfillment
      
        # 
        # Corresponds to the JSON property `repromptEventHandlers`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EventHandler>]
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
      class GoogleCloudDialogflowCxV3FulfillIntentRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `match`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Match]
        attr_accessor :match
      
        # 
        # Corresponds to the JSON property `matchIntentRequest`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3MatchIntentRequest]
        attr_accessor :match_intent_request
      
        # 
        # Corresponds to the JSON property `outputAudioConfig`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3OutputAudioConfig]
        attr_accessor :output_audio_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @match = args[:match] if args.key?(:match)
          @match_intent_request = args[:match_intent_request] if args.key?(:match_intent_request)
          @output_audio_config = args[:output_audio_config] if args.key?(:output_audio_config)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3FulfillIntentResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `outputAudio`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :output_audio
      
        # 
        # Corresponds to the JSON property `outputAudioConfig`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3OutputAudioConfig]
        attr_accessor :output_audio_config
      
        # 
        # Corresponds to the JSON property `queryResult`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3QueryResult]
        attr_accessor :query_result
      
        # 
        # Corresponds to the JSON property `responseId`
        # @return [String]
        attr_accessor :response_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @output_audio = args[:output_audio] if args.key?(:output_audio)
          @output_audio_config = args[:output_audio_config] if args.key?(:output_audio_config)
          @query_result = args[:query_result] if args.key?(:query_result)
          @response_id = args[:response_id] if args.key?(:response_id)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3Fulfillment
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `advancedSettings`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3AdvancedSettings]
        attr_accessor :advanced_settings
      
        # 
        # Corresponds to the JSON property `conditionalCases`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FulfillmentConditionalCases>]
        attr_accessor :conditional_cases
      
        # 
        # Corresponds to the JSON property `enableGenerativeFallback`
        # @return [Boolean]
        attr_accessor :enable_generative_fallback
        alias_method :enable_generative_fallback?, :enable_generative_fallback
      
        # 
        # Corresponds to the JSON property `generators`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FulfillmentGeneratorSettings>]
        attr_accessor :generators
      
        # 
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessage>]
        attr_accessor :messages
      
        # 
        # Corresponds to the JSON property `returnPartialResponses`
        # @return [Boolean]
        attr_accessor :return_partial_responses
        alias_method :return_partial_responses?, :return_partial_responses
      
        # 
        # Corresponds to the JSON property `setParameterActions`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FulfillmentSetParameterAction>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FulfillmentConditionalCases]
        attr_accessor :additional_cases
      
        # 
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessage]
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
      class GoogleCloudDialogflowCxV3GenerativeSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `fallbackSettings`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettings]
        attr_accessor :fallback_settings
      
        # 
        # Corresponds to the JSON property `generativeSafetySettings`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SafetySettings]
        attr_accessor :generative_safety_settings
      
        # 
        # Corresponds to the JSON property `knowledgeConnectorSettings`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3GenerativeSettingsKnowledgeConnectorSettings]
        attr_accessor :knowledge_connector_settings
      
        # 
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # 
        # Corresponds to the JSON property `llmModelSettings`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3LlmModelSettings]
        attr_accessor :llm_model_settings
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fallback_settings = args[:fallback_settings] if args.key?(:fallback_settings)
          @generative_safety_settings = args[:generative_safety_settings] if args.key?(:generative_safety_settings)
          @knowledge_connector_settings = args[:knowledge_connector_settings] if args.key?(:knowledge_connector_settings)
          @language_code = args[:language_code] if args.key?(:language_code)
          @llm_model_settings = args[:llm_model_settings] if args.key?(:llm_model_settings)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `promptTemplates`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettingsPromptTemplate>]
        attr_accessor :prompt_templates
      
        # 
        # Corresponds to the JSON property `selectedPrompt`
        # @return [String]
        attr_accessor :selected_prompt
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @prompt_templates = args[:prompt_templates] if args.key?(:prompt_templates)
          @selected_prompt = args[:selected_prompt] if args.key?(:selected_prompt)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettingsPromptTemplate
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `frozen`
        # @return [Boolean]
        attr_accessor :frozen
        alias_method :frozen?, :frozen
      
        # 
        # Corresponds to the JSON property `promptText`
        # @return [String]
        attr_accessor :prompt_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @frozen = args[:frozen] if args.key?(:frozen)
          @prompt_text = args[:prompt_text] if args.key?(:prompt_text)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3GenerativeSettingsKnowledgeConnectorSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `agent`
        # @return [String]
        attr_accessor :agent
      
        # 
        # Corresponds to the JSON property `agentIdentity`
        # @return [String]
        attr_accessor :agent_identity
      
        # 
        # Corresponds to the JSON property `agentScope`
        # @return [String]
        attr_accessor :agent_scope
      
        # 
        # Corresponds to the JSON property `business`
        # @return [String]
        attr_accessor :business
      
        # 
        # Corresponds to the JSON property `businessDescription`
        # @return [String]
        attr_accessor :business_description
      
        # 
        # Corresponds to the JSON property `disableDataStoreFallback`
        # @return [Boolean]
        attr_accessor :disable_data_store_fallback
        alias_method :disable_data_store_fallback?, :disable_data_store_fallback
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent = args[:agent] if args.key?(:agent)
          @agent_identity = args[:agent_identity] if args.key?(:agent_identity)
          @agent_scope = args[:agent_scope] if args.key?(:agent_scope)
          @business = args[:business] if args.key?(:business)
          @business_description = args[:business_description] if args.key?(:business_description)
          @disable_data_store_fallback = args[:disable_data_store_fallback] if args.key?(:disable_data_store_fallback)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3Generator
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `llmModelSettings`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3LlmModelSettings]
        attr_accessor :llm_model_settings
      
        # 
        # Corresponds to the JSON property `modelParameter`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3GeneratorModelParameter]
        attr_accessor :model_parameter
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `placeholders`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3GeneratorPlaceholder>]
        attr_accessor :placeholders
      
        # 
        # Corresponds to the JSON property `promptText`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Phrase]
        attr_accessor :prompt_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @llm_model_settings = args[:llm_model_settings] if args.key?(:llm_model_settings)
          @model_parameter = args[:model_parameter] if args.key?(:model_parameter)
          @name = args[:name] if args.key?(:name)
          @placeholders = args[:placeholders] if args.key?(:placeholders)
          @prompt_text = args[:prompt_text] if args.key?(:prompt_text)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3GeneratorModelParameter
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `maxDecodeSteps`
        # @return [Fixnum]
        attr_accessor :max_decode_steps
      
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
          @max_decode_steps = args[:max_decode_steps] if args.key?(:max_decode_steps)
          @temperature = args[:temperature] if args.key?(:temperature)
          @top_k = args[:top_k] if args.key?(:top_k)
          @top_p = args[:top_p] if args.key?(:top_p)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3GeneratorPlaceholder
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3Handler
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `eventHandler`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3HandlerEventHandler]
        attr_accessor :event_handler
      
        # 
        # Corresponds to the JSON property `lifecycleHandler`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3HandlerLifecycleHandler]
        attr_accessor :lifecycle_handler
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_handler = args[:event_handler] if args.key?(:event_handler)
          @lifecycle_handler = args[:lifecycle_handler] if args.key?(:lifecycle_handler)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3HandlerEventHandler
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        # 
        # Corresponds to the JSON property `event`
        # @return [String]
        attr_accessor :event
      
        # 
        # Corresponds to the JSON property `fulfillment`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Fulfillment]
        attr_accessor :fulfillment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @event = args[:event] if args.key?(:event)
          @fulfillment = args[:fulfillment] if args.key?(:fulfillment)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3HandlerLifecycleHandler
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        # 
        # Corresponds to the JSON property `fulfillment`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Fulfillment]
        attr_accessor :fulfillment
      
        # 
        # Corresponds to the JSON property `lifecycleStage`
        # @return [String]
        attr_accessor :lifecycle_stage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @fulfillment = args[:fulfillment] if args.key?(:fulfillment)
          @lifecycle_stage = args[:lifecycle_stage] if args.key?(:lifecycle_stage)
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
      class GoogleCloudDialogflowCxV3ImportEntityTypesRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `entityTypesContent`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3InlineSource]
        attr_accessor :entity_types_content
      
        # 
        # Corresponds to the JSON property `entityTypesUri`
        # @return [String]
        attr_accessor :entity_types_uri
      
        # 
        # Corresponds to the JSON property `mergeOption`
        # @return [String]
        attr_accessor :merge_option
      
        # 
        # Corresponds to the JSON property `targetEntityType`
        # @return [String]
        attr_accessor :target_entity_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity_types_content = args[:entity_types_content] if args.key?(:entity_types_content)
          @entity_types_uri = args[:entity_types_uri] if args.key?(:entity_types_uri)
          @merge_option = args[:merge_option] if args.key?(:merge_option)
          @target_entity_type = args[:target_entity_type] if args.key?(:target_entity_type)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ImportEntityTypesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conflictingResources`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ImportEntityTypesResponseConflictingResources]
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
      class GoogleCloudDialogflowCxV3ImportFlowRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `flowContent`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :flow_content
      
        # 
        # Corresponds to the JSON property `flowImportStrategy`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FlowImportStrategy]
        attr_accessor :flow_import_strategy
      
        # 
        # Corresponds to the JSON property `flowUri`
        # @return [String]
        attr_accessor :flow_uri
      
        # 
        # Corresponds to the JSON property `importOption`
        # @return [String]
        attr_accessor :import_option
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @flow_content = args[:flow_content] if args.key?(:flow_content)
          @flow_import_strategy = args[:flow_import_strategy] if args.key?(:flow_import_strategy)
          @flow_uri = args[:flow_uri] if args.key?(:flow_uri)
          @import_option = args[:import_option] if args.key?(:import_option)
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
      class GoogleCloudDialogflowCxV3ImportIntentsRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `intentsContent`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3InlineSource]
        attr_accessor :intents_content
      
        # 
        # Corresponds to the JSON property `intentsUri`
        # @return [String]
        attr_accessor :intents_uri
      
        # 
        # Corresponds to the JSON property `mergeOption`
        # @return [String]
        attr_accessor :merge_option
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @intents_content = args[:intents_content] if args.key?(:intents_content)
          @intents_uri = args[:intents_uri] if args.key?(:intents_uri)
          @merge_option = args[:merge_option] if args.key?(:merge_option)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ImportIntentsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conflictingResources`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ImportIntentsResponseConflictingResources]
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
      class GoogleCloudDialogflowCxV3ImportPlaybookRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `importStrategy`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3PlaybookImportStrategy]
        attr_accessor :import_strategy
      
        # 
        # Corresponds to the JSON property `playbookContent`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :playbook_content
      
        # 
        # Corresponds to the JSON property `playbookUri`
        # @return [String]
        attr_accessor :playbook_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @import_strategy = args[:import_strategy] if args.key?(:import_strategy)
          @playbook_content = args[:playbook_content] if args.key?(:playbook_content)
          @playbook_uri = args[:playbook_uri] if args.key?(:playbook_uri)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ImportTestCasesMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCaseError>]
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
      class GoogleCloudDialogflowCxV3ImportTestCasesRequest
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
      class GoogleCloudDialogflowCxV3InlineSchema
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `items`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TypeSchema]
        attr_accessor :items
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3InlineSource
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3BargeInConfig]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3IntentParameter>]
        attr_accessor :parameters
      
        # 
        # Corresponds to the JSON property `priority`
        # @return [Fixnum]
        attr_accessor :priority
      
        # 
        # Corresponds to the JSON property `trainingPhrases`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3IntentTrainingPhrase>]
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
      class GoogleCloudDialogflowCxV3IntentCoverage
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `coverageScore`
        # @return [Float]
        attr_accessor :coverage_score
      
        # 
        # Corresponds to the JSON property `intents`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3IntentCoverageIntent>]
        attr_accessor :intents
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @coverage_score = args[:coverage_score] if args.key?(:coverage_score)
          @intents = args[:intents] if args.key?(:intents)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3IntentCoverageIntent
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `covered`
        # @return [Boolean]
        attr_accessor :covered
        alias_method :covered?, :covered
      
        # 
        # Corresponds to the JSON property `intent`
        # @return [String]
        attr_accessor :intent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @covered = args[:covered] if args.key?(:covered)
          @intent = args[:intent] if args.key?(:intent)
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3IntentTrainingPhrasePart>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DataStoreConnection>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Fulfillment]
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
      class GoogleCloudDialogflowCxV3ListAgentsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `agents`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Agent>]
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
      class GoogleCloudDialogflowCxV3ListChangelogsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `changelogs`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Changelog>]
        attr_accessor :changelogs
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @changelogs = args[:changelogs] if args.key?(:changelogs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ListContinuousTestResultsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `continuousTestResults`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ContinuousTestResult>]
        attr_accessor :continuous_test_results
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @continuous_test_results = args[:continuous_test_results] if args.key?(:continuous_test_results)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ListDeploymentsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `deployments`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Deployment>]
        attr_accessor :deployments
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deployments = args[:deployments] if args.key?(:deployments)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ListEntityTypesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `entityTypes`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EntityType>]
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
      class GoogleCloudDialogflowCxV3ListEnvironmentsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `environments`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Environment>]
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
      class GoogleCloudDialogflowCxV3ListExamplesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `examples`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Example>]
        attr_accessor :examples
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @examples = args[:examples] if args.key?(:examples)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ListExperimentsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `experiments`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Experiment>]
        attr_accessor :experiments
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @experiments = args[:experiments] if args.key?(:experiments)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ListFlowsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `flows`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Flow>]
        attr_accessor :flows
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @flows = args[:flows] if args.key?(:flows)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ListGeneratorsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `generators`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Generator>]
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
      class GoogleCloudDialogflowCxV3ListIntentsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `intents`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Intent>]
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
      class GoogleCloudDialogflowCxV3ListPagesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `pages`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Page>]
        attr_accessor :pages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @pages = args[:pages] if args.key?(:pages)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ListPlaybookVersionsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `playbookVersions`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3PlaybookVersion>]
        attr_accessor :playbook_versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @playbook_versions = args[:playbook_versions] if args.key?(:playbook_versions)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ListPlaybooksResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `playbooks`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Playbook>]
        attr_accessor :playbooks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @playbooks = args[:playbooks] if args.key?(:playbooks)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ListSecuritySettingsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `securitySettings`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SecuritySettings>]
        attr_accessor :security_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @security_settings = args[:security_settings] if args.key?(:security_settings)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `sessionEntityTypes`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType>]
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
      class GoogleCloudDialogflowCxV3ListTestCaseResultsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `testCaseResults`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCaseResult>]
        attr_accessor :test_case_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @test_case_results = args[:test_case_results] if args.key?(:test_case_results)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ListTestCasesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `testCases`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCase>]
        attr_accessor :test_cases
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @test_cases = args[:test_cases] if args.key?(:test_cases)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ListToolVersionsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `toolVersions`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ToolVersion>]
        attr_accessor :tool_versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @tool_versions = args[:tool_versions] if args.key?(:tool_versions)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ListToolsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `tools`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Tool>]
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
      class GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `transitionRouteGroups`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroup>]
        attr_accessor :transition_route_groups
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @transition_route_groups = args[:transition_route_groups] if args.key?(:transition_route_groups)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ListVersionsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `versions`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Version>]
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
      class GoogleCloudDialogflowCxV3ListWebhooksResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `webhooks`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Webhook>]
        attr_accessor :webhooks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @webhooks = args[:webhooks] if args.key?(:webhooks)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3LlmModelSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        # 
        # Corresponds to the JSON property `promptText`
        # @return [String]
        attr_accessor :prompt_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @model = args[:model] if args.key?(:model)
          @prompt_text = args[:prompt_text] if args.key?(:prompt_text)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3LoadVersionRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `allowOverrideAgentResources`
        # @return [Boolean]
        attr_accessor :allow_override_agent_resources
        alias_method :allow_override_agent_resources?, :allow_override_agent_resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_override_agent_resources = args[:allow_override_agent_resources] if args.key?(:allow_override_agent_resources)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `environments`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Environment>]
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
      class GoogleCloudDialogflowCxV3Match
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # 
        # Corresponds to the JSON property `event`
        # @return [String]
        attr_accessor :event
      
        # 
        # Corresponds to the JSON property `intent`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Intent]
        attr_accessor :intent
      
        # 
        # Corresponds to the JSON property `matchType`
        # @return [String]
        attr_accessor :match_type
      
        # 
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Object>]
        attr_accessor :parameters
      
        # 
        # Corresponds to the JSON property `resolvedInput`
        # @return [String]
        attr_accessor :resolved_input
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @event = args[:event] if args.key?(:event)
          @intent = args[:intent] if args.key?(:intent)
          @match_type = args[:match_type] if args.key?(:match_type)
          @parameters = args[:parameters] if args.key?(:parameters)
          @resolved_input = args[:resolved_input] if args.key?(:resolved_input)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3MatchIntentRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `persistParameterChanges`
        # @return [Boolean]
        attr_accessor :persist_parameter_changes
        alias_method :persist_parameter_changes?, :persist_parameter_changes
      
        # 
        # Corresponds to the JSON property `queryInput`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3QueryInput]
        attr_accessor :query_input
      
        # 
        # Corresponds to the JSON property `queryParams`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3QueryParameters]
        attr_accessor :query_params
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @persist_parameter_changes = args[:persist_parameter_changes] if args.key?(:persist_parameter_changes)
          @query_input = args[:query_input] if args.key?(:query_input)
          @query_params = args[:query_params] if args.key?(:query_params)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3MatchIntentResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `currentPage`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Page]
        attr_accessor :current_page
      
        # 
        # Corresponds to the JSON property `matches`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Match>]
        attr_accessor :matches
      
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
          @current_page = args[:current_page] if args.key?(:current_page)
          @matches = args[:matches] if args.key?(:matches)
          @text = args[:text] if args.key?(:text)
          @transcript = args[:transcript] if args.key?(:transcript)
          @trigger_event = args[:trigger_event] if args.key?(:trigger_event)
          @trigger_intent = args[:trigger_intent] if args.key?(:trigger_intent)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3NluSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `classificationThreshold`
        # @return [Float]
        attr_accessor :classification_threshold
      
        # 
        # Corresponds to the JSON property `modelTrainingMode`
        # @return [String]
        attr_accessor :model_training_mode
      
        # 
        # Corresponds to the JSON property `modelType`
        # @return [String]
        attr_accessor :model_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @classification_threshold = args[:classification_threshold] if args.key?(:classification_threshold)
          @model_training_mode = args[:model_training_mode] if args.key?(:model_training_mode)
          @model_type = args[:model_type] if args.key?(:model_type)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3OutputAudioConfig
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SynthesizeSpeechConfig]
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
      class GoogleCloudDialogflowCxV3Page
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `advancedSettings`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3AdvancedSettings]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Fulfillment]
        attr_accessor :entry_fulfillment
      
        # 
        # Corresponds to the JSON property `eventHandlers`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EventHandler>]
        attr_accessor :event_handlers
      
        # 
        # Corresponds to the JSON property `form`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Form]
        attr_accessor :form
      
        # 
        # Corresponds to the JSON property `knowledgeConnectorSettings`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3KnowledgeConnectorSettings]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRoute>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3PageInfoFormInfo]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo>]
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
      class GoogleCloudDialogflowCxV3ParameterDefinition
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # 
        # Corresponds to the JSON property `typeSchema`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TypeSchema]
        attr_accessor :type_schema
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
          @type_schema = args[:type_schema] if args.key?(:type_schema)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3Phrase
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
      class GoogleCloudDialogflowCxV3Playbook
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `codeBlock`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3CodeBlock]
        attr_accessor :code_block
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `goal`
        # @return [String]
        attr_accessor :goal
      
        # 
        # Corresponds to the JSON property `handlers`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Handler>]
        attr_accessor :handlers
      
        # 
        # Corresponds to the JSON property `inlineActions`
        # @return [Array<String>]
        attr_accessor :inline_actions
      
        # 
        # Corresponds to the JSON property `inputParameterDefinitions`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ParameterDefinition>]
        attr_accessor :input_parameter_definitions
      
        # 
        # Corresponds to the JSON property `instruction`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3PlaybookInstruction]
        attr_accessor :instruction
      
        # 
        # Corresponds to the JSON property `llmModelSettings`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3LlmModelSettings]
        attr_accessor :llm_model_settings
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `outputParameterDefinitions`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ParameterDefinition>]
        attr_accessor :output_parameter_definitions
      
        # 
        # Corresponds to the JSON property `playbookType`
        # @return [String]
        attr_accessor :playbook_type
      
        # 
        # Corresponds to the JSON property `referencedFlows`
        # @return [Array<String>]
        attr_accessor :referenced_flows
      
        # 
        # Corresponds to the JSON property `referencedPlaybooks`
        # @return [Array<String>]
        attr_accessor :referenced_playbooks
      
        # 
        # Corresponds to the JSON property `referencedTools`
        # @return [Array<String>]
        attr_accessor :referenced_tools
      
        # 
        # Corresponds to the JSON property `tokenCount`
        # @return [Fixnum]
        attr_accessor :token_count
      
        # 
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code_block = args[:code_block] if args.key?(:code_block)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @goal = args[:goal] if args.key?(:goal)
          @handlers = args[:handlers] if args.key?(:handlers)
          @inline_actions = args[:inline_actions] if args.key?(:inline_actions)
          @input_parameter_definitions = args[:input_parameter_definitions] if args.key?(:input_parameter_definitions)
          @instruction = args[:instruction] if args.key?(:instruction)
          @llm_model_settings = args[:llm_model_settings] if args.key?(:llm_model_settings)
          @name = args[:name] if args.key?(:name)
          @output_parameter_definitions = args[:output_parameter_definitions] if args.key?(:output_parameter_definitions)
          @playbook_type = args[:playbook_type] if args.key?(:playbook_type)
          @referenced_flows = args[:referenced_flows] if args.key?(:referenced_flows)
          @referenced_playbooks = args[:referenced_playbooks] if args.key?(:referenced_playbooks)
          @referenced_tools = args[:referenced_tools] if args.key?(:referenced_tools)
          @token_count = args[:token_count] if args.key?(:token_count)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3PlaybookImportStrategy
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `mainPlaybookImportStrategy`
        # @return [String]
        attr_accessor :main_playbook_import_strategy
      
        # 
        # Corresponds to the JSON property `nestedResourceImportStrategy`
        # @return [String]
        attr_accessor :nested_resource_import_strategy
      
        # 
        # Corresponds to the JSON property `toolImportStrategy`
        # @return [String]
        attr_accessor :tool_import_strategy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @main_playbook_import_strategy = args[:main_playbook_import_strategy] if args.key?(:main_playbook_import_strategy)
          @nested_resource_import_strategy = args[:nested_resource_import_strategy] if args.key?(:nested_resource_import_strategy)
          @tool_import_strategy = args[:tool_import_strategy] if args.key?(:tool_import_strategy)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3PlaybookInput
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `precedingConversationSummary`
        # @return [String]
        attr_accessor :preceding_conversation_summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @preceding_conversation_summary = args[:preceding_conversation_summary] if args.key?(:preceding_conversation_summary)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3PlaybookInstruction
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `guidelines`
        # @return [String]
        attr_accessor :guidelines
      
        # 
        # Corresponds to the JSON property `steps`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3PlaybookStep>]
        attr_accessor :steps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @guidelines = args[:guidelines] if args.key?(:guidelines)
          @steps = args[:steps] if args.key?(:steps)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3PlaybookInvocation
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `playbook`
        # @return [String]
        attr_accessor :playbook
      
        # 
        # Corresponds to the JSON property `playbookInput`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3PlaybookInput]
        attr_accessor :playbook_input
      
        # 
        # Corresponds to the JSON property `playbookOutput`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3PlaybookOutput]
        attr_accessor :playbook_output
      
        # 
        # Corresponds to the JSON property `playbookState`
        # @return [String]
        attr_accessor :playbook_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @playbook = args[:playbook] if args.key?(:playbook)
          @playbook_input = args[:playbook_input] if args.key?(:playbook_input)
          @playbook_output = args[:playbook_output] if args.key?(:playbook_output)
          @playbook_state = args[:playbook_state] if args.key?(:playbook_state)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3PlaybookOutput
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `executionSummary`
        # @return [String]
        attr_accessor :execution_summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_summary = args[:execution_summary] if args.key?(:execution_summary)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3PlaybookStep
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `steps`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3PlaybookStep>]
        attr_accessor :steps
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @steps = args[:steps] if args.key?(:steps)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3PlaybookTransition
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `playbook`
        # @return [String]
        attr_accessor :playbook
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @playbook = args[:playbook] if args.key?(:playbook)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3PlaybookVersion
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `examples`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Example>]
        attr_accessor :examples
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `playbook`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Playbook]
        attr_accessor :playbook
      
        # 
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @examples = args[:examples] if args.key?(:examples)
          @name = args[:name] if args.key?(:name)
          @playbook = args[:playbook] if args.key?(:playbook)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3QueryInput
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `audio`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3AudioInput]
        attr_accessor :audio
      
        # 
        # Corresponds to the JSON property `dtmf`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DtmfInput]
        attr_accessor :dtmf
      
        # 
        # Corresponds to the JSON property `event`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EventInput]
        attr_accessor :event
      
        # 
        # Corresponds to the JSON property `intent`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3IntentInput]
        attr_accessor :intent
      
        # 
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # 
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TextInput]
        attr_accessor :text
      
        # 
        # Corresponds to the JSON property `toolCallResult`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ToolCallResult]
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
      class GoogleCloudDialogflowCxV3QueryParameters
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `analyzeQueryTextSentiment`
        # @return [Boolean]
        attr_accessor :analyze_query_text_sentiment
        alias_method :analyze_query_text_sentiment?, :analyze_query_text_sentiment
      
        # 
        # Corresponds to the JSON property `channel`
        # @return [String]
        attr_accessor :channel
      
        # 
        # Corresponds to the JSON property `currentPage`
        # @return [String]
        attr_accessor :current_page
      
        # 
        # Corresponds to the JSON property `currentPlaybook`
        # @return [String]
        attr_accessor :current_playbook
      
        # 
        # Corresponds to the JSON property `disableWebhook`
        # @return [Boolean]
        attr_accessor :disable_webhook
        alias_method :disable_webhook?, :disable_webhook
      
        # 
        # Corresponds to the JSON property `endUserMetadata`
        # @return [Hash<String,Object>]
        attr_accessor :end_user_metadata
      
        # 
        # Corresponds to the JSON property `flowVersions`
        # @return [Array<String>]
        attr_accessor :flow_versions
      
        # 
        # Corresponds to the JSON property `geoLocation`
        # @return [Google::Apis::DialogflowV3::GoogleTypeLatLng]
        attr_accessor :geo_location
      
        # 
        # Corresponds to the JSON property `llmModelSettings`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3LlmModelSettings]
        attr_accessor :llm_model_settings
      
        # 
        # Corresponds to the JSON property `parameterScope`
        # @return [String]
        attr_accessor :parameter_scope
      
        # 
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Object>]
        attr_accessor :parameters
      
        # 
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # 
        # Corresponds to the JSON property `populateDataStoreConnectionSignals`
        # @return [Boolean]
        attr_accessor :populate_data_store_connection_signals
        alias_method :populate_data_store_connection_signals?, :populate_data_store_connection_signals
      
        # 
        # Corresponds to the JSON property `searchConfig`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SearchConfig]
        attr_accessor :search_config
      
        # 
        # Corresponds to the JSON property `sessionEntityTypes`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType>]
        attr_accessor :session_entity_types
      
        # 
        # Corresponds to the JSON property `sessionTtl`
        # @return [String]
        attr_accessor :session_ttl
      
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
          @analyze_query_text_sentiment = args[:analyze_query_text_sentiment] if args.key?(:analyze_query_text_sentiment)
          @channel = args[:channel] if args.key?(:channel)
          @current_page = args[:current_page] if args.key?(:current_page)
          @current_playbook = args[:current_playbook] if args.key?(:current_playbook)
          @disable_webhook = args[:disable_webhook] if args.key?(:disable_webhook)
          @end_user_metadata = args[:end_user_metadata] if args.key?(:end_user_metadata)
          @flow_versions = args[:flow_versions] if args.key?(:flow_versions)
          @geo_location = args[:geo_location] if args.key?(:geo_location)
          @llm_model_settings = args[:llm_model_settings] if args.key?(:llm_model_settings)
          @parameter_scope = args[:parameter_scope] if args.key?(:parameter_scope)
          @parameters = args[:parameters] if args.key?(:parameters)
          @payload = args[:payload] if args.key?(:payload)
          @populate_data_store_connection_signals = args[:populate_data_store_connection_signals] if args.key?(:populate_data_store_connection_signals)
          @search_config = args[:search_config] if args.key?(:search_config)
          @session_entity_types = args[:session_entity_types] if args.key?(:session_entity_types)
          @session_ttl = args[:session_ttl] if args.key?(:session_ttl)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @webhook_headers = args[:webhook_headers] if args.key?(:webhook_headers)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3QueryResult
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `advancedSettings`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3AdvancedSettings]
        attr_accessor :advanced_settings
      
        # 
        # Corresponds to the JSON property `allowAnswerFeedback`
        # @return [Boolean]
        attr_accessor :allow_answer_feedback
        alias_method :allow_answer_feedback?, :allow_answer_feedback
      
        # 
        # Corresponds to the JSON property `currentFlow`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Flow]
        attr_accessor :current_flow
      
        # 
        # Corresponds to the JSON property `currentPage`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Page]
        attr_accessor :current_page
      
        # 
        # Corresponds to the JSON property `dataStoreConnectionSignals`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DataStoreConnectionSignals]
        attr_accessor :data_store_connection_signals
      
        # 
        # Corresponds to the JSON property `diagnosticInfo`
        # @return [Hash<String,Object>]
        attr_accessor :diagnostic_info
      
        # 
        # Corresponds to the JSON property `dtmf`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DtmfInput]
        attr_accessor :dtmf
      
        # 
        # Corresponds to the JSON property `intent`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Intent]
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
        # Corresponds to the JSON property `match`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Match]
        attr_accessor :match
      
        # 
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Object>]
        attr_accessor :parameters
      
        # 
        # Corresponds to the JSON property `responseMessages`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessage>]
        attr_accessor :response_messages
      
        # 
        # Corresponds to the JSON property `sentimentAnalysisResult`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SentimentAnalysisResult]
        attr_accessor :sentiment_analysis_result
      
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
      
        # 
        # Corresponds to the JSON property `webhookPayloads`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :webhook_payloads
      
        # 
        # Corresponds to the JSON property `webhookStatuses`
        # @return [Array<Google::Apis::DialogflowV3::GoogleRpcStatus>]
        attr_accessor :webhook_statuses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advanced_settings = args[:advanced_settings] if args.key?(:advanced_settings)
          @allow_answer_feedback = args[:allow_answer_feedback] if args.key?(:allow_answer_feedback)
          @current_flow = args[:current_flow] if args.key?(:current_flow)
          @current_page = args[:current_page] if args.key?(:current_page)
          @data_store_connection_signals = args[:data_store_connection_signals] if args.key?(:data_store_connection_signals)
          @diagnostic_info = args[:diagnostic_info] if args.key?(:diagnostic_info)
          @dtmf = args[:dtmf] if args.key?(:dtmf)
          @intent = args[:intent] if args.key?(:intent)
          @intent_detection_confidence = args[:intent_detection_confidence] if args.key?(:intent_detection_confidence)
          @language_code = args[:language_code] if args.key?(:language_code)
          @match = args[:match] if args.key?(:match)
          @parameters = args[:parameters] if args.key?(:parameters)
          @response_messages = args[:response_messages] if args.key?(:response_messages)
          @sentiment_analysis_result = args[:sentiment_analysis_result] if args.key?(:sentiment_analysis_result)
          @text = args[:text] if args.key?(:text)
          @transcript = args[:transcript] if args.key?(:transcript)
          @trigger_event = args[:trigger_event] if args.key?(:trigger_event)
          @trigger_intent = args[:trigger_intent] if args.key?(:trigger_intent)
          @webhook_payloads = args[:webhook_payloads] if args.key?(:webhook_payloads)
          @webhook_statuses = args[:webhook_statuses] if args.key?(:webhook_statuses)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ResourceName
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
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
          @name = args[:name] if args.key?(:name)
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess]
        attr_accessor :conversation_success
      
        # 
        # Corresponds to the JSON property `endInteraction`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessageEndInteraction]
        attr_accessor :end_interaction
      
        # 
        # Corresponds to the JSON property `knowledgeInfoCard`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessageKnowledgeInfoCard]
        attr_accessor :knowledge_info_card
      
        # 
        # Corresponds to the JSON property `liveAgentHandoff`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff]
        attr_accessor :live_agent_handoff
      
        # 
        # Corresponds to the JSON property `mixedAudio`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessageMixedAudio]
        attr_accessor :mixed_audio
      
        # 
        # Corresponds to the JSON property `outputAudioText`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText]
        attr_accessor :output_audio_text
      
        # 
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # 
        # Corresponds to the JSON property `playAudio`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessagePlayAudio]
        attr_accessor :play_audio
      
        # 
        # Corresponds to the JSON property `responseType`
        # @return [String]
        attr_accessor :response_type
      
        # 
        # Corresponds to the JSON property `telephonyTransferCall`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall]
        attr_accessor :telephony_transfer_call
      
        # 
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessageText]
        attr_accessor :text
      
        # 
        # Corresponds to the JSON property `toolCall`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ToolCall]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment>]
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
      class GoogleCloudDialogflowCxV3RestoreAgentRequest
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
        # Corresponds to the JSON property `gitSource`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3RestoreAgentRequestGitSource]
        attr_accessor :git_source
      
        # 
        # Corresponds to the JSON property `restoreOption`
        # @return [String]
        attr_accessor :restore_option
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_content = args[:agent_content] if args.key?(:agent_content)
          @agent_uri = args[:agent_uri] if args.key?(:agent_uri)
          @git_source = args[:git_source] if args.key?(:git_source)
          @restore_option = args[:restore_option] if args.key?(:restore_option)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3RestoreAgentRequestGitSource
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `trackingBranch`
        # @return [String]
        attr_accessor :tracking_branch
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tracking_branch = args[:tracking_branch] if args.key?(:tracking_branch)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3RestorePlaybookVersionRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3RestorePlaybookVersionResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `playbook`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Playbook]
        attr_accessor :playbook
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @playbook = args[:playbook] if args.key?(:playbook)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3RestoreToolVersionRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3RestoreToolVersionResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `tool`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Tool]
        attr_accessor :tool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tool = args[:tool] if args.key?(:tool)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3RolloutConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `failureCondition`
        # @return [String]
        attr_accessor :failure_condition
      
        # 
        # Corresponds to the JSON property `rolloutCondition`
        # @return [String]
        attr_accessor :rollout_condition
      
        # 
        # Corresponds to the JSON property `rolloutSteps`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3RolloutConfigRolloutStep>]
        attr_accessor :rollout_steps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failure_condition = args[:failure_condition] if args.key?(:failure_condition)
          @rollout_condition = args[:rollout_condition] if args.key?(:rollout_condition)
          @rollout_steps = args[:rollout_steps] if args.key?(:rollout_steps)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3RolloutConfigRolloutStep
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `minDuration`
        # @return [String]
        attr_accessor :min_duration
      
        # 
        # Corresponds to the JSON property `trafficPercent`
        # @return [Fixnum]
        attr_accessor :traffic_percent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @min_duration = args[:min_duration] if args.key?(:min_duration)
          @traffic_percent = args[:traffic_percent] if args.key?(:traffic_percent)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3RolloutState
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # 
        # Corresponds to the JSON property `step`
        # @return [String]
        attr_accessor :step
      
        # 
        # Corresponds to the JSON property `stepIndex`
        # @return [Fixnum]
        attr_accessor :step_index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @start_time = args[:start_time] if args.key?(:start_time)
          @step = args[:step] if args.key?(:step)
          @step_index = args[:step_index] if args.key?(:step_index)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3RunContinuousTestMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestError>]
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
      class GoogleCloudDialogflowCxV3RunContinuousTestRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3RunContinuousTestResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `continuousTestResult`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ContinuousTestResult]
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
      class GoogleCloudDialogflowCxV3RunTestCaseRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `environment`
        # @return [String]
        attr_accessor :environment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @environment = args[:environment] if args.key?(:environment)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3RunTestCaseResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `result`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCaseResult]
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
      class GoogleCloudDialogflowCxV3SafetySettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `bannedPhrases`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SafetySettingsPhrase>]
        attr_accessor :banned_phrases
      
        # 
        # Corresponds to the JSON property `defaultBannedPhraseMatchStrategy`
        # @return [String]
        attr_accessor :default_banned_phrase_match_strategy
      
        # 
        # Corresponds to the JSON property `defaultRaiSettings`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SafetySettingsRaiSettings]
        attr_accessor :default_rai_settings
      
        # 
        # Corresponds to the JSON property `promptSecuritySettings`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SafetySettingsPromptSecuritySettings]
        attr_accessor :prompt_security_settings
      
        # 
        # Corresponds to the JSON property `raiSettings`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SafetySettingsRaiSettings]
        attr_accessor :rai_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @banned_phrases = args[:banned_phrases] if args.key?(:banned_phrases)
          @default_banned_phrase_match_strategy = args[:default_banned_phrase_match_strategy] if args.key?(:default_banned_phrase_match_strategy)
          @default_rai_settings = args[:default_rai_settings] if args.key?(:default_rai_settings)
          @prompt_security_settings = args[:prompt_security_settings] if args.key?(:prompt_security_settings)
          @rai_settings = args[:rai_settings] if args.key?(:rai_settings)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3SafetySettingsPhrase
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
      class GoogleCloudDialogflowCxV3SafetySettingsPromptSecuritySettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `enablePromptSecurity`
        # @return [Boolean]
        attr_accessor :enable_prompt_security
        alias_method :enable_prompt_security?, :enable_prompt_security
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_prompt_security = args[:enable_prompt_security] if args.key?(:enable_prompt_security)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3SafetySettingsRaiSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `categoryFilters`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SafetySettingsRaiSettingsCategoryFilter>]
        attr_accessor :category_filters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category_filters = args[:category_filters] if args.key?(:category_filters)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3SafetySettingsRaiSettingsCategoryFilter
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # 
        # Corresponds to the JSON property `filterLevel`
        # @return [String]
        attr_accessor :filter_level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
          @filter_level = args[:filter_level] if args.key?(:filter_level)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3SearchConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `boostSpecs`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3BoostSpecs>]
        attr_accessor :boost_specs
      
        # 
        # Corresponds to the JSON property `filterSpecs`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FilterSpecs>]
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
      class GoogleCloudDialogflowCxV3SecuritySettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `audioExportSettings`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings]
        attr_accessor :audio_export_settings
      
        # 
        # Corresponds to the JSON property `deidentifyTemplate`
        # @return [String]
        attr_accessor :deidentify_template
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `insightsExportSettings`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings]
        attr_accessor :insights_export_settings
      
        # 
        # Corresponds to the JSON property `inspectTemplate`
        # @return [String]
        attr_accessor :inspect_template
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `purgeDataTypes`
        # @return [Array<String>]
        attr_accessor :purge_data_types
      
        # 
        # Corresponds to the JSON property `redactionScope`
        # @return [String]
        attr_accessor :redaction_scope
      
        # 
        # Corresponds to the JSON property `redactionStrategy`
        # @return [String]
        attr_accessor :redaction_strategy
      
        # 
        # Corresponds to the JSON property `retentionStrategy`
        # @return [String]
        attr_accessor :retention_strategy
      
        # 
        # Corresponds to the JSON property `retentionWindowDays`
        # @return [Fixnum]
        attr_accessor :retention_window_days
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_export_settings = args[:audio_export_settings] if args.key?(:audio_export_settings)
          @deidentify_template = args[:deidentify_template] if args.key?(:deidentify_template)
          @display_name = args[:display_name] if args.key?(:display_name)
          @insights_export_settings = args[:insights_export_settings] if args.key?(:insights_export_settings)
          @inspect_template = args[:inspect_template] if args.key?(:inspect_template)
          @name = args[:name] if args.key?(:name)
          @purge_data_types = args[:purge_data_types] if args.key?(:purge_data_types)
          @redaction_scope = args[:redaction_scope] if args.key?(:redaction_scope)
          @redaction_strategy = args[:redaction_strategy] if args.key?(:redaction_strategy)
          @retention_strategy = args[:retention_strategy] if args.key?(:retention_strategy)
          @retention_window_days = args[:retention_window_days] if args.key?(:retention_window_days)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `audioExportPattern`
        # @return [String]
        attr_accessor :audio_export_pattern
      
        # 
        # Corresponds to the JSON property `audioFormat`
        # @return [String]
        attr_accessor :audio_format
      
        # 
        # Corresponds to the JSON property `enableAudioRedaction`
        # @return [Boolean]
        attr_accessor :enable_audio_redaction
        alias_method :enable_audio_redaction?, :enable_audio_redaction
      
        # 
        # Corresponds to the JSON property `gcsBucket`
        # @return [String]
        attr_accessor :gcs_bucket
      
        # 
        # Corresponds to the JSON property `storeTtsAudio`
        # @return [Boolean]
        attr_accessor :store_tts_audio
        alias_method :store_tts_audio?, :store_tts_audio
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_export_pattern = args[:audio_export_pattern] if args.key?(:audio_export_pattern)
          @audio_format = args[:audio_format] if args.key?(:audio_format)
          @enable_audio_redaction = args[:enable_audio_redaction] if args.key?(:enable_audio_redaction)
          @gcs_bucket = args[:gcs_bucket] if args.key?(:gcs_bucket)
          @store_tts_audio = args[:store_tts_audio] if args.key?(:store_tts_audio)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `enableInsightsExport`
        # @return [Boolean]
        attr_accessor :enable_insights_export
        alias_method :enable_insights_export?, :enable_insights_export
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_insights_export = args[:enable_insights_export] if args.key?(:enable_insights_export)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3SentimentAnalysisResult
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
      class GoogleCloudDialogflowCxV3SessionEntityType
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EntityTypeEntity>]
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
      class GoogleCloudDialogflowCxV3SpeechToTextSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `enableSpeechAdaptation`
        # @return [Boolean]
        attr_accessor :enable_speech_adaptation
        alias_method :enable_speech_adaptation?, :enable_speech_adaptation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_speech_adaptation = args[:enable_speech_adaptation] if args.key?(:enable_speech_adaptation)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3StartExperimentRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3StopExperimentRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3SubmitAnswerFeedbackRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `answerFeedback`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3AnswerFeedback]
        attr_accessor :answer_feedback
      
        # 
        # Corresponds to the JSON property `responseId`
        # @return [String]
        attr_accessor :response_id
      
        # 
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_feedback = args[:answer_feedback] if args.key?(:answer_feedback)
          @response_id = args[:response_id] if args.key?(:response_id)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3SynthesizeSpeechConfig
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
        # Corresponds to the JSON property `speakingRate`
        # @return [Float]
        attr_accessor :speaking_rate
      
        # 
        # Corresponds to the JSON property `voice`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3VoiceSelectionParams]
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
          @speaking_rate = args[:speaking_rate] if args.key?(:speaking_rate)
          @voice = args[:voice] if args.key?(:voice)
          @volume_gain_db = args[:volume_gain_db] if args.key?(:volume_gain_db)
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCaseResult]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ConversationTurn>]
        attr_accessor :test_case_conversation_turns
      
        # 
        # Corresponds to the JSON property `testConfig`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestConfig]
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
        # @return [Google::Apis::DialogflowV3::GoogleRpcStatus]
        attr_accessor :status
      
        # 
        # Corresponds to the JSON property `testCase`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCase]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ConversationTurn>]
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
        # @return [Google::Apis::DialogflowV3::GoogleRpcStatus]
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
      class GoogleCloudDialogflowCxV3TextToSpeechSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `synthesizeSpeechConfigs`
        # @return [Hash<String,Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SynthesizeSpeechConfig>]
        attr_accessor :synthesize_speech_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @synthesize_speech_configs = args[:synthesize_speech_configs] if args.key?(:synthesize_speech_configs)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3Tool
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dataStoreSpec`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ToolDataStoreTool]
        attr_accessor :data_store_spec
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `functionSpec`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ToolFunctionTool]
        attr_accessor :function_spec
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `openApiSpec`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ToolOpenApiTool]
        attr_accessor :open_api_spec
      
        # 
        # Corresponds to the JSON property `toolType`
        # @return [String]
        attr_accessor :tool_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_store_spec = args[:data_store_spec] if args.key?(:data_store_spec)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @function_spec = args[:function_spec] if args.key?(:function_spec)
          @name = args[:name] if args.key?(:name)
          @open_api_spec = args[:open_api_spec] if args.key?(:open_api_spec)
          @tool_type = args[:tool_type] if args.key?(:tool_type)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ToolAuthentication
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `apiKeyConfig`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ToolAuthenticationApiKeyConfig]
        attr_accessor :api_key_config
      
        # 
        # Corresponds to the JSON property `bearerTokenConfig`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ToolAuthenticationBearerTokenConfig]
        attr_accessor :bearer_token_config
      
        # 
        # Corresponds to the JSON property `oauthConfig`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ToolAuthenticationOAuthConfig]
        attr_accessor :oauth_config
      
        # 
        # Corresponds to the JSON property `serviceAccountAuthConfig`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ToolAuthenticationServiceAccountAuthConfig]
        attr_accessor :service_account_auth_config
      
        # 
        # Corresponds to the JSON property `serviceAgentAuthConfig`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ToolAuthenticationServiceAgentAuthConfig]
        attr_accessor :service_agent_auth_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_key_config = args[:api_key_config] if args.key?(:api_key_config)
          @bearer_token_config = args[:bearer_token_config] if args.key?(:bearer_token_config)
          @oauth_config = args[:oauth_config] if args.key?(:oauth_config)
          @service_account_auth_config = args[:service_account_auth_config] if args.key?(:service_account_auth_config)
          @service_agent_auth_config = args[:service_agent_auth_config] if args.key?(:service_agent_auth_config)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ToolAuthenticationApiKeyConfig
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
      class GoogleCloudDialogflowCxV3ToolAuthenticationBearerTokenConfig
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
      class GoogleCloudDialogflowCxV3ToolAuthenticationOAuthConfig
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
      class GoogleCloudDialogflowCxV3ToolAuthenticationServiceAccountAuthConfig
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
      class GoogleCloudDialogflowCxV3ToolAuthenticationServiceAgentAuthConfig
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ToolCallResultError]
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
      class GoogleCloudDialogflowCxV3ToolDataStoreTool
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dataStoreConnections`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DataStoreConnection>]
        attr_accessor :data_store_connections
      
        # 
        # Corresponds to the JSON property `fallbackPrompt`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ToolDataStoreToolFallbackPrompt]
        attr_accessor :fallback_prompt
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_store_connections = args[:data_store_connections] if args.key?(:data_store_connections)
          @fallback_prompt = args[:fallback_prompt] if args.key?(:fallback_prompt)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ToolDataStoreToolFallbackPrompt
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ToolFunctionTool
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `inputSchema`
        # @return [Hash<String,Object>]
        attr_accessor :input_schema
      
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
          @output_schema = args[:output_schema] if args.key?(:output_schema)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ToolOpenApiTool
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `authentication`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ToolAuthentication]
        attr_accessor :authentication
      
        # 
        # Corresponds to the JSON property `serviceDirectoryConfig`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ToolServiceDirectoryConfig]
        attr_accessor :service_directory_config
      
        # 
        # Corresponds to the JSON property `textSchema`
        # @return [String]
        attr_accessor :text_schema
      
        # 
        # Corresponds to the JSON property `tlsConfig`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ToolTlsConfig]
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
      class GoogleCloudDialogflowCxV3ToolServiceDirectoryConfig
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
      class GoogleCloudDialogflowCxV3ToolTlsConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `caCerts`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ToolTlsConfigCaCert>]
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
      class GoogleCloudDialogflowCxV3ToolTlsConfigCaCert
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
      class GoogleCloudDialogflowCxV3ToolUse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `inputActionParameters`
        # @return [Hash<String,Object>]
        attr_accessor :input_action_parameters
      
        # 
        # Corresponds to the JSON property `outputActionParameters`
        # @return [Hash<String,Object>]
        attr_accessor :output_action_parameters
      
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
          @display_name = args[:display_name] if args.key?(:display_name)
          @input_action_parameters = args[:input_action_parameters] if args.key?(:input_action_parameters)
          @output_action_parameters = args[:output_action_parameters] if args.key?(:output_action_parameters)
          @tool = args[:tool] if args.key?(:tool)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3ToolVersion
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
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `tool`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Tool]
        attr_accessor :tool
      
        # 
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @tool = args[:tool] if args.key?(:tool)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3TrainFlowRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3TransitionCoverage
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `coverageScore`
        # @return [Float]
        attr_accessor :coverage_score
      
        # 
        # Corresponds to the JSON property `transitions`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionCoverageTransition>]
        attr_accessor :transitions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @coverage_score = args[:coverage_score] if args.key?(:coverage_score)
          @transitions = args[:transitions] if args.key?(:transitions)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3TransitionCoverageTransition
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `covered`
        # @return [Boolean]
        attr_accessor :covered
        alias_method :covered?, :covered
      
        # 
        # Corresponds to the JSON property `eventHandler`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EventHandler]
        attr_accessor :event_handler
      
        # 
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        # 
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode]
        attr_accessor :source
      
        # 
        # Corresponds to the JSON property `target`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode]
        attr_accessor :target
      
        # 
        # Corresponds to the JSON property `transitionRoute`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRoute]
        attr_accessor :transition_route
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @covered = args[:covered] if args.key?(:covered)
          @event_handler = args[:event_handler] if args.key?(:event_handler)
          @index = args[:index] if args.key?(:index)
          @source = args[:source] if args.key?(:source)
          @target = args[:target] if args.key?(:target)
          @transition_route = args[:transition_route] if args.key?(:transition_route)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `flow`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Flow]
        attr_accessor :flow
      
        # 
        # Corresponds to the JSON property `page`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Page]
        attr_accessor :page
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @flow = args[:flow] if args.key?(:flow)
          @page = args[:page] if args.key?(:page)
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Fulfillment]
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
      class GoogleCloudDialogflowCxV3TransitionRouteGroup
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `transitionRoutes`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRoute>]
        attr_accessor :transition_routes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @transition_routes = args[:transition_routes] if args.key?(:transition_routes)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3TransitionRouteGroupCoverage
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `coverageScore`
        # @return [Float]
        attr_accessor :coverage_score
      
        # 
        # Corresponds to the JSON property `coverages`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage>]
        attr_accessor :coverages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @coverage_score = args[:coverage_score] if args.key?(:coverage_score)
          @coverages = args[:coverages] if args.key?(:coverages)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `coverageScore`
        # @return [Float]
        attr_accessor :coverage_score
      
        # 
        # Corresponds to the JSON property `routeGroup`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroup]
        attr_accessor :route_group
      
        # 
        # Corresponds to the JSON property `transitions`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition>]
        attr_accessor :transitions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @coverage_score = args[:coverage_score] if args.key?(:coverage_score)
          @route_group = args[:route_group] if args.key?(:route_group)
          @transitions = args[:transitions] if args.key?(:transitions)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `covered`
        # @return [Boolean]
        attr_accessor :covered
        alias_method :covered?, :covered
      
        # 
        # Corresponds to the JSON property `transitionRoute`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRoute]
        attr_accessor :transition_route
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @covered = args[:covered] if args.key?(:covered)
          @transition_route = args[:transition_route] if args.key?(:transition_route)
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
      class GoogleCloudDialogflowCxV3TypeSchema
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `inlineSchema`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3InlineSchema]
        attr_accessor :inline_schema
      
        # 
        # Corresponds to the JSON property `schemaReference`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TypeSchemaSchemaReference]
        attr_accessor :schema_reference
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inline_schema = args[:inline_schema] if args.key?(:inline_schema)
          @schema_reference = args[:schema_reference] if args.key?(:schema_reference)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3TypeSchemaSchemaReference
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `schema`
        # @return [String]
        attr_accessor :schema
      
        # 
        # Corresponds to the JSON property `tool`
        # @return [String]
        attr_accessor :tool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @schema = args[:schema] if args.key?(:schema)
          @tool = args[:tool] if args.key?(:tool)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3UserUtterance
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
      class GoogleCloudDialogflowCxV3ValidateAgentRequest
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
      class GoogleCloudDialogflowCxV3ValidateFlowRequest
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
      class GoogleCloudDialogflowCxV3ValidationMessage
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `detail`
        # @return [String]
        attr_accessor :detail
      
        # 
        # Corresponds to the JSON property `resourceNames`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResourceName>]
        attr_accessor :resource_names
      
        # 
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        # 
        # Corresponds to the JSON property `resources`
        # @return [Array<String>]
        attr_accessor :resources
      
        # 
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detail = args[:detail] if args.key?(:detail)
          @resource_names = args[:resource_names] if args.key?(:resource_names)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
          @resources = args[:resources] if args.key?(:resources)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3VariantsHistory
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # 
        # Corresponds to the JSON property `versionVariants`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3VersionVariants]
        attr_accessor :version_variants
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @update_time = args[:update_time] if args.key?(:update_time)
          @version_variants = args[:version_variants] if args.key?(:version_variants)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3Version
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
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `nluSettings`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3NluSettings]
        attr_accessor :nlu_settings
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @nlu_settings = args[:nlu_settings] if args.key?(:nlu_settings)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3VersionVariants
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `variants`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3VersionVariantsVariant>]
        attr_accessor :variants
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @variants = args[:variants] if args.key?(:variants)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3VersionVariantsVariant
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `isControlGroup`
        # @return [Boolean]
        attr_accessor :is_control_group
        alias_method :is_control_group?, :is_control_group
      
        # 
        # Corresponds to the JSON property `trafficAllocation`
        # @return [Float]
        attr_accessor :traffic_allocation
      
        # 
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @is_control_group = args[:is_control_group] if args.key?(:is_control_group)
          @traffic_allocation = args[:traffic_allocation] if args.key?(:traffic_allocation)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # 
      class GoogleCloudDialogflowCxV3VoiceSelectionParams
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3WebhookGenericWebService]
        attr_accessor :generic_web_service
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `serviceDirectory`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3WebhookGenericWebServiceOAuthConfig]
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
        # @return [Hash<String,Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3WebhookGenericWebServiceSecretVersionHeaderValue>]
        attr_accessor :secret_versions_for_request_headers
      
        # 
        # Corresponds to the JSON property `serviceAccountAuthConfig`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3WebhookGenericWebServiceServiceAccountAuthConfig]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo]
        attr_accessor :fulfillment_info
      
        # 
        # Corresponds to the JSON property `intentInfo`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3WebhookRequestIntentInfo]
        attr_accessor :intent_info
      
        # 
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # 
        # Corresponds to the JSON property `languageInfo`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3LanguageInfo]
        attr_accessor :language_info
      
        # 
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessage>]
        attr_accessor :messages
      
        # 
        # Corresponds to the JSON property `pageInfo`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3PageInfo]
        attr_accessor :page_info
      
        # 
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # 
        # Corresponds to the JSON property `sentimentAnalysisResult`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult]
        attr_accessor :sentiment_analysis_result
      
        # 
        # Corresponds to the JSON property `sessionInfo`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionInfo]
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
        # @return [Hash<String,Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse]
        attr_accessor :fulfillment_response
      
        # 
        # Corresponds to the JSON property `pageInfo`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3PageInfo]
        attr_accessor :page_info
      
        # 
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # 
        # Corresponds to the JSON property `sessionInfo`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionInfo]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ResponseMessage>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3WebhookGenericWebService]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1GcsDestination]
        attr_accessor :audio_export_gcs_destination
      
        # 
        # Corresponds to the JSON property `dtmfSettings`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1AdvancedSettingsDtmfSettings]
        attr_accessor :dtmf_settings
      
        # 
        # Corresponds to the JSON property `loggingSettings`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettings]
        attr_accessor :logging_settings
      
        # 
        # Corresponds to the JSON property `speechSettings`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1InputAudioConfig]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TestError>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TestCaseResult>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TurnSignals]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput]
        attr_accessor :user_input
      
        # 
        # Corresponds to the JSON property `virtualAgentOutput`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1QueryInput]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1Page]
        attr_accessor :current_page
      
        # 
        # Corresponds to the JSON property `diagnosticInfo`
        # @return [Hash<String,Object>]
        attr_accessor :diagnostic_info
      
        # 
        # Corresponds to the JSON property `differences`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TestRunDifference>]
        attr_accessor :differences
      
        # 
        # Corresponds to the JSON property `sessionParameters`
        # @return [Hash<String,Object>]
        attr_accessor :session_parameters
      
        # 
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DialogflowV3::GoogleRpcStatus]
        attr_accessor :status
      
        # 
        # Corresponds to the JSON property `textResponses`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessageText>]
        attr_accessor :text_responses
      
        # 
        # Corresponds to the JSON property `triggeredIntent`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1Intent]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TestError>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1Environment]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig]
        attr_accessor :test_cases_config
      
        # 
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # 
        # Corresponds to the JSON property `versionConfigs`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig>]
        attr_accessor :version_configs
      
        # 
        # Corresponds to the JSON property `webhookConfig`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1Webhook>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1Fulfillment]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1InlineDestination]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1InlineDestination]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1FormParameter>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1AdvancedSettings]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1Fulfillment]
        attr_accessor :initial_prompt_fulfillment
      
        # 
        # Corresponds to the JSON property `repromptEventHandlers`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1EventHandler>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1AdvancedSettings]
        attr_accessor :advanced_settings
      
        # 
        # Corresponds to the JSON property `conditionalCases`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases>]
        attr_accessor :conditional_cases
      
        # 
        # Corresponds to the JSON property `enableGenerativeFallback`
        # @return [Boolean]
        attr_accessor :enable_generative_fallback
        alias_method :enable_generative_fallback?, :enable_generative_fallback
      
        # 
        # Corresponds to the JSON property `generators`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1FulfillmentGeneratorSettings>]
        attr_accessor :generators
      
        # 
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessage>]
        attr_accessor :messages
      
        # 
        # Corresponds to the JSON property `returnPartialResponses`
        # @return [Boolean]
        attr_accessor :return_partial_responses
        alias_method :return_partial_responses?, :return_partial_responses
      
        # 
        # Corresponds to the JSON property `setParameterActions`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases]
        attr_accessor :additional_cases
      
        # 
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessage]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ImportEntityTypesResponseConflictingResources]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ImportIntentsResponseConflictingResources]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TestCaseError>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1BargeInConfig]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1IntentParameter>]
        attr_accessor :parameters
      
        # 
        # Corresponds to the JSON property `priority`
        # @return [Fixnum]
        attr_accessor :priority
      
        # 
        # Corresponds to the JSON property `trainingPhrases`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1DataStoreConnection>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1Fulfillment]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1AdvancedSettings]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1Fulfillment]
        attr_accessor :entry_fulfillment
      
        # 
        # Corresponds to the JSON property `eventHandlers`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1EventHandler>]
        attr_accessor :event_handlers
      
        # 
        # Corresponds to the JSON property `form`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1Form]
        attr_accessor :form
      
        # 
        # Corresponds to the JSON property `knowledgeConnectorSettings`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TransitionRoute>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1PageInfoFormInfo]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1AudioInput]
        attr_accessor :audio
      
        # 
        # Corresponds to the JSON property `dtmf`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1DtmfInput]
        attr_accessor :dtmf
      
        # 
        # Corresponds to the JSON property `event`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1EventInput]
        attr_accessor :event
      
        # 
        # Corresponds to the JSON property `intent`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1IntentInput]
        attr_accessor :intent
      
        # 
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # 
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TextInput]
        attr_accessor :text
      
        # 
        # Corresponds to the JSON property `toolCallResult`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ToolCallResult]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess]
        attr_accessor :conversation_success
      
        # 
        # Corresponds to the JSON property `endInteraction`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction]
        attr_accessor :end_interaction
      
        # 
        # Corresponds to the JSON property `knowledgeInfoCard`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessageKnowledgeInfoCard]
        attr_accessor :knowledge_info_card
      
        # 
        # Corresponds to the JSON property `liveAgentHandoff`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff]
        attr_accessor :live_agent_handoff
      
        # 
        # Corresponds to the JSON property `mixedAudio`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio]
        attr_accessor :mixed_audio
      
        # 
        # Corresponds to the JSON property `outputAudioText`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText]
        attr_accessor :output_audio_text
      
        # 
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # 
        # Corresponds to the JSON property `playAudio`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio]
        attr_accessor :play_audio
      
        # 
        # Corresponds to the JSON property `telephonyTransferCall`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall]
        attr_accessor :telephony_transfer_call
      
        # 
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessageText]
        attr_accessor :text
      
        # 
        # Corresponds to the JSON property `toolCall`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ToolCall]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TestError>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ContinuousTestResult]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TestCaseResult]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TestCaseResult]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ConversationTurn>]
        attr_accessor :test_case_conversation_turns
      
        # 
        # Corresponds to the JSON property `testConfig`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TestConfig]
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
        # @return [Google::Apis::DialogflowV3::GoogleRpcStatus]
        attr_accessor :status
      
        # 
        # Corresponds to the JSON property `testCase`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1TestCase]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ConversationTurn>]
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
        # @return [Google::Apis::DialogflowV3::GoogleRpcStatus]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ToolCallResultError]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1Fulfillment]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1WebhookGenericWebService]
        attr_accessor :generic_web_service
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `serviceDirectory`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceOAuthConfig]
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
        # @return [Hash<String,Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceSecretVersionHeaderValue>]
        attr_accessor :secret_versions_for_request_headers
      
        # 
        # Corresponds to the JSON property `serviceAccountAuthConfig`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceServiceAccountAuthConfig]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo]
        attr_accessor :fulfillment_info
      
        # 
        # Corresponds to the JSON property `intentInfo`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo]
        attr_accessor :intent_info
      
        # 
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # 
        # Corresponds to the JSON property `languageInfo`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1LanguageInfo]
        attr_accessor :language_info
      
        # 
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessage>]
        attr_accessor :messages
      
        # 
        # Corresponds to the JSON property `pageInfo`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1PageInfo]
        attr_accessor :page_info
      
        # 
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # 
        # Corresponds to the JSON property `sentimentAnalysisResult`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult]
        attr_accessor :sentiment_analysis_result
      
        # 
        # Corresponds to the JSON property `sessionInfo`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1SessionInfo]
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
        # @return [Hash<String,Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse]
        attr_accessor :fulfillment_response
      
        # 
        # Corresponds to the JSON property `pageInfo`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1PageInfo]
        attr_accessor :page_info
      
        # 
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # 
        # Corresponds to the JSON property `sessionInfo`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1SessionInfo]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1ResponseMessage>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3beta1WebhookGenericWebService]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2AgentCoachingInstructionDuplicateCheckResult]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2AgentCoachingInstructionDuplicateCheckResultDuplicateSuggestion>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2AgentCoachingSuggestionAgentActionSuggestion>]
        attr_accessor :agent_action_suggestions
      
        # 
        # Corresponds to the JSON property `applicableInstructions`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2AgentCoachingInstruction>]
        attr_accessor :applicable_instructions
      
        # 
        # Corresponds to the JSON property `sampleResponses`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2AgentCoachingSuggestionSampleResponse>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2AgentCoachingSuggestionDuplicateCheckResult]
        attr_accessor :duplicate_check_result
      
        # 
        # Corresponds to the JSON property `sources`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2AgentCoachingSuggestionSources]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2AgentCoachingSuggestionDuplicateCheckResultDuplicateSuggestion>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2AgentCoachingSuggestionSources]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2AgentCoachingSuggestionDuplicateCheckResult]
        attr_accessor :duplicate_check_result
      
        # 
        # Corresponds to the JSON property `responseText`
        # @return [String]
        attr_accessor :response_text
      
        # 
        # Corresponds to the JSON property `sources`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2AgentCoachingSuggestionSources]
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
      class GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `entityTypes`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2EntityType>]
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
      class GoogleCloudDialogflowV2BatchUpdateIntentsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `intents`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2Intent>]
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
      class GoogleCloudDialogflowV2ConversationEvent
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conversation`
        # @return [String]
        attr_accessor :conversation
      
        # 
        # Corresponds to the JSON property `errorStatus`
        # @return [Google::Apis::DialogflowV3::GoogleRpcStatus]
        attr_accessor :error_status
      
        # 
        # Corresponds to the JSON property `newMessagePayload`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2Message]
        attr_accessor :new_message_payload
      
        # 
        # Corresponds to the JSON property `newRecognitionResultPayload`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2StreamingRecognitionResult]
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
      class GoogleCloudDialogflowV2ConversationModel
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `articleSuggestionModelMetadata`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2ArticleSuggestionModelMetadata]
        attr_accessor :article_suggestion_model_metadata
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `datasets`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2InputDataset>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2SmartReplyModelMetadata]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2EntityTypeEntity>]
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
      class GoogleCloudDialogflowV2ExportOperationMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `exportedGcsDestination`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2GcsDestination]
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
      class GoogleCloudDialogflowV2GenerateSuggestionsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `generatorSuggestionAnswers`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2GenerateSuggestionsResponseGeneratorSuggestionAnswer>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2GeneratorSuggestion]
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
      class GoogleCloudDialogflowV2GeneratorSuggestion
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `agentCoachingSuggestion`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2AgentCoachingSuggestion]
        attr_accessor :agent_coaching_suggestion
      
        # 
        # Corresponds to the JSON property `freeFormSuggestion`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2FreeFormSuggestion]
        attr_accessor :free_form_suggestion
      
        # 
        # Corresponds to the JSON property `summarySuggestion`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2SummarySuggestion]
        attr_accessor :summary_suggestion
      
        # 
        # Corresponds to the JSON property `toolCallInfo`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2GeneratorSuggestionToolCallInfo>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2ToolCall]
        attr_accessor :tool_call
      
        # 
        # Corresponds to the JSON property `toolCallResult`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2ToolCallResult]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2SuggestionResult>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleRpcStatus>]
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
      class GoogleCloudDialogflowV2ImportDocumentsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::DialogflowV3::GoogleRpcStatus>]
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
      class GoogleCloudDialogflowV2IngestedContextReferenceDebugInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `contextReferenceRetrieved`
        # @return [Boolean]
        attr_accessor :context_reference_retrieved
        alias_method :context_reference_retrieved?, :context_reference_retrieved
      
        # 
        # Corresponds to the JSON property `ingestedParametersDebugInfo`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IngestedContextReferenceDebugInfoIngestedParameterDebugInfo>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2InitializeEncryptionSpecRequest]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2EncryptionSpec]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentFollowupIntentInfo>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessage>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2Context>]
        attr_accessor :output_contexts
      
        # 
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentParameter>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentTrainingPhrase>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageBasicCard]
        attr_accessor :basic_card
      
        # 
        # Corresponds to the JSON property `browseCarouselCard`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard]
        attr_accessor :browse_carousel_card
      
        # 
        # Corresponds to the JSON property `card`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageCard]
        attr_accessor :card
      
        # 
        # Corresponds to the JSON property `carouselSelect`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageCarouselSelect]
        attr_accessor :carousel_select
      
        # 
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageImage]
        attr_accessor :image
      
        # 
        # Corresponds to the JSON property `linkOutSuggestion`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion]
        attr_accessor :link_out_suggestion
      
        # 
        # Corresponds to the JSON property `listSelect`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageListSelect]
        attr_accessor :list_select
      
        # 
        # Corresponds to the JSON property `mediaContent`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageMediaContent]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageQuickReplies]
        attr_accessor :quick_replies
      
        # 
        # Corresponds to the JSON property `simpleResponses`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageSimpleResponses]
        attr_accessor :simple_responses
      
        # 
        # Corresponds to the JSON property `suggestions`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageSuggestions]
        attr_accessor :suggestions
      
        # 
        # Corresponds to the JSON property `tableCard`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageTableCard]
        attr_accessor :table_card
      
        # 
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageText]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageBasicCardButton>]
        attr_accessor :buttons
      
        # 
        # Corresponds to the JSON property `formattedText`
        # @return [String]
        attr_accessor :formatted_text
      
        # 
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageImage]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageImage]
        attr_accessor :image
      
        # 
        # Corresponds to the JSON property `openUriAction`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageCardButton>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageCarouselSelectItem>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageImage]
        attr_accessor :image
      
        # 
        # Corresponds to the JSON property `info`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageSelectItemInfo]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageListSelectItem>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageImage]
        attr_accessor :image
      
        # 
        # Corresponds to the JSON property `info`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageSelectItemInfo]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageImage]
        attr_accessor :icon
      
        # 
        # Corresponds to the JSON property `largeImage`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageImage]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageSimpleResponse>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageSuggestion>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageBasicCardButton>]
        attr_accessor :buttons
      
        # 
        # Corresponds to the JSON property `columnProperties`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageColumnProperties>]
        attr_accessor :column_properties
      
        # 
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageImage]
        attr_accessor :image
      
        # 
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageTableCardRow>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessageTableCardCell>]
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
      class GoogleCloudDialogflowV2IntentTrainingPhrase
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `parts`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentTrainingPhrasePart>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2KnowledgeAssistDebugInfo]
        attr_accessor :knowledge_assist_debug_info
      
        # 
        # Corresponds to the JSON property `suggestedQuery`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2KnowledgeAssistAnswerSuggestedQuery]
        attr_accessor :suggested_query
      
        # 
        # Corresponds to the JSON property `suggestedQueryAnswer`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswer]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerFaqSource]
        attr_accessor :faq_source
      
        # 
        # Corresponds to the JSON property `generativeSource`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerGenerativeSource]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerGenerativeSourceSnippet>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IngestedContextReferenceDebugInfo]
        attr_accessor :ingested_context_reference_debug_info
      
        # 
        # Corresponds to the JSON property `knowledgeAssistBehavior`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2KnowledgeAssistDebugInfoKnowledgeAssistBehavior]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2ServiceLatency]
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
      class GoogleCloudDialogflowV2KnowledgeOperationMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `doneTime`
        # @return [String]
        attr_accessor :done_time
      
        # 
        # Corresponds to the JSON property `exportOperationMetadata`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2ExportOperationMetadata]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2MessageAnnotation]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2SentimentAnalysisResult]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2AnnotatedMessagePart>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessage>]
        attr_accessor :fulfillment_messages
      
        # 
        # Corresponds to the JSON property `fulfillmentText`
        # @return [String]
        attr_accessor :fulfillment_text
      
        # 
        # Corresponds to the JSON property `intent`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2Intent]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2Context>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2SentimentAnalysisResult]
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
      class GoogleCloudDialogflowV2SentimentAnalysisResult
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `queryTextSentiment`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2Sentiment]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2ServiceLatencyInternalServiceLatency>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2EntityTypeEntity>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2SpeechWordInfo>]
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
      class GoogleCloudDialogflowV2SuggestArticlesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `articleAnswers`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2ArticleAnswer>]
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
      class GoogleCloudDialogflowV2SuggestFaqAnswersResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `contextSize`
        # @return [Fixnum]
        attr_accessor :context_size
      
        # 
        # Corresponds to the JSON property `faqAnswers`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2FaqAnswer>]
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
      class GoogleCloudDialogflowV2SuggestKnowledgeAssistResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `contextSize`
        # @return [Fixnum]
        attr_accessor :context_size
      
        # 
        # Corresponds to the JSON property `knowledgeAssistAnswer`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2KnowledgeAssistAnswer]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2SmartReplyAnswer>]
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
      class GoogleCloudDialogflowV2SuggestionResult
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DialogflowV3::GoogleRpcStatus]
        attr_accessor :error
      
        # 
        # Corresponds to the JSON property `generateSuggestionsResponse`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2GenerateSuggestionsResponse]
        attr_accessor :generate_suggestions_response
      
        # 
        # Corresponds to the JSON property `suggestArticlesResponse`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2SuggestArticlesResponse]
        attr_accessor :suggest_articles_response
      
        # 
        # Corresponds to the JSON property `suggestFaqAnswersResponse`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2SuggestFaqAnswersResponse]
        attr_accessor :suggest_faq_answers_response
      
        # 
        # Corresponds to the JSON property `suggestKnowledgeAssistResponse`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2SuggestKnowledgeAssistResponse]
        attr_accessor :suggest_knowledge_assist_response
      
        # 
        # Corresponds to the JSON property `suggestSmartRepliesResponse`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2SuggestSmartRepliesResponse]
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
      class GoogleCloudDialogflowV2SummarySuggestion
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `summarySections`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2SummarySuggestionSummarySection>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2ToolCallResultError]
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
      class GoogleCloudDialogflowV2WebhookRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `originalDetectIntentRequest`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2OriginalDetectIntentRequest]
        attr_accessor :original_detect_intent_request
      
        # 
        # Corresponds to the JSON property `queryResult`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2QueryResult]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2EventInput]
        attr_accessor :followup_event_input
      
        # 
        # Corresponds to the JSON property `fulfillmentMessages`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2IntentMessage>]
        attr_accessor :fulfillment_messages
      
        # 
        # Corresponds to the JSON property `fulfillmentText`
        # @return [String]
        attr_accessor :fulfillment_text
      
        # 
        # Corresponds to the JSON property `outputContexts`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2Context>]
        attr_accessor :output_contexts
      
        # 
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # 
        # Corresponds to the JSON property `sessionEntityTypes`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2SessionEntityType>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1AgentCoachingInstructionDuplicateCheckResult]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1AgentCoachingInstructionDuplicateCheckResultDuplicateSuggestion>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1AgentCoachingSuggestionAgentActionSuggestion>]
        attr_accessor :agent_action_suggestions
      
        # 
        # Corresponds to the JSON property `applicableInstructions`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1AgentCoachingInstruction>]
        attr_accessor :applicable_instructions
      
        # 
        # Corresponds to the JSON property `sampleResponses`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1AgentCoachingSuggestionSampleResponse>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1AgentCoachingSuggestionDuplicateCheckResult]
        attr_accessor :duplicate_check_result
      
        # 
        # Corresponds to the JSON property `sources`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1AgentCoachingSuggestionSources]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1AgentCoachingSuggestionDuplicateCheckResultDuplicateSuggestion>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1AgentCoachingSuggestionSources]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1AgentCoachingSuggestionDuplicateCheckResult]
        attr_accessor :duplicate_check_result
      
        # 
        # Corresponds to the JSON property `responseText`
        # @return [String]
        attr_accessor :response_text
      
        # 
        # Corresponds to the JSON property `sources`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1AgentCoachingSuggestionSources]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1EntityType>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1Intent>]
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
        # @return [Google::Apis::DialogflowV3::GoogleRpcStatus]
        attr_accessor :error_status
      
        # 
        # Corresponds to the JSON property `newMessagePayload`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1Message]
        attr_accessor :new_message_payload
      
        # 
        # Corresponds to the JSON property `newRecognitionResultPayload`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1StreamingRecognitionResult]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentSuggestion]
        attr_accessor :intent_suggestion
      
        # 
        # Corresponds to the JSON property `queryResult`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1QueryResult]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1EntityTypeEntity>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1GcsDestination]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1GenerateSuggestionsResponseGeneratorSuggestionAnswer>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1GeneratorSuggestion]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1AgentCoachingSuggestion]
        attr_accessor :agent_coaching_suggestion
      
        # 
        # Corresponds to the JSON property `freeFormSuggestion`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1FreeFormSuggestion]
        attr_accessor :free_form_suggestion
      
        # 
        # Corresponds to the JSON property `summarySuggestion`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1SummarySuggestion]
        attr_accessor :summary_suggestion
      
        # 
        # Corresponds to the JSON property `toolCallInfo`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1GeneratorSuggestionToolCallInfo>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1ToolCall]
        attr_accessor :tool_call
      
        # 
        # Corresponds to the JSON property `toolCallResult`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1ToolCallResult]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1SuggestionResult>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleRpcStatus>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IngestedContextReferenceDebugInfoIngestedParameterDebugInfo>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1InitializeEncryptionSpecRequest]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1EncryptionSpec]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessage>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1Context>]
        attr_accessor :output_contexts
      
        # 
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentParameter>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentTrainingPhrase>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageBasicCard]
        attr_accessor :basic_card
      
        # 
        # Corresponds to the JSON property `browseCarouselCard`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard]
        attr_accessor :browse_carousel_card
      
        # 
        # Corresponds to the JSON property `card`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageCard]
        attr_accessor :card
      
        # 
        # Corresponds to the JSON property `carouselSelect`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect]
        attr_accessor :carousel_select
      
        # 
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageImage]
        attr_accessor :image
      
        # 
        # Corresponds to the JSON property `linkOutSuggestion`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion]
        attr_accessor :link_out_suggestion
      
        # 
        # Corresponds to the JSON property `listSelect`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageListSelect]
        attr_accessor :list_select
      
        # 
        # Corresponds to the JSON property `mediaContent`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageMediaContent]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageQuickReplies]
        attr_accessor :quick_replies
      
        # 
        # Corresponds to the JSON property `rbmCarouselRichCard`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard]
        attr_accessor :rbm_carousel_rich_card
      
        # 
        # Corresponds to the JSON property `rbmStandaloneRichCard`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard]
        attr_accessor :rbm_standalone_rich_card
      
        # 
        # Corresponds to the JSON property `rbmText`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmText]
        attr_accessor :rbm_text
      
        # 
        # Corresponds to the JSON property `simpleResponses`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses]
        attr_accessor :simple_responses
      
        # 
        # Corresponds to the JSON property `suggestions`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageSuggestions]
        attr_accessor :suggestions
      
        # 
        # Corresponds to the JSON property `tableCard`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageTableCard]
        attr_accessor :table_card
      
        # 
        # Corresponds to the JSON property `telephonyPlayAudio`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio]
        attr_accessor :telephony_play_audio
      
        # 
        # Corresponds to the JSON property `telephonySynthesizeSpeech`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech]
        attr_accessor :telephony_synthesize_speech
      
        # 
        # Corresponds to the JSON property `telephonyTransferCall`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall]
        attr_accessor :telephony_transfer_call
      
        # 
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageText]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>]
        attr_accessor :buttons
      
        # 
        # Corresponds to the JSON property `formattedText`
        # @return [String]
        attr_accessor :formatted_text
      
        # 
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageImage]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageImage]
        attr_accessor :image
      
        # 
        # Corresponds to the JSON property `openUriAction`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageCardButton>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageImage]
        attr_accessor :image
      
        # 
        # Corresponds to the JSON property `info`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageListSelectItem>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageImage]
        attr_accessor :image
      
        # 
        # Corresponds to the JSON property `info`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageImage]
        attr_accessor :icon
      
        # 
        # Corresponds to the JSON property `largeImage`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageImage]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia]
        attr_accessor :media
      
        # 
        # Corresponds to the JSON property `suggestions`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial]
        attr_accessor :dial
      
        # 
        # Corresponds to the JSON property `openUrl`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri]
        attr_accessor :open_url
      
        # 
        # Corresponds to the JSON property `postbackData`
        # @return [String]
        attr_accessor :postback_data
      
        # 
        # Corresponds to the JSON property `shareLocation`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction]
        attr_accessor :action
      
        # 
        # Corresponds to the JSON property `reply`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageSuggestion>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>]
        attr_accessor :buttons
      
        # 
        # Corresponds to the JSON property `columnProperties`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageColumnProperties>]
        attr_accessor :column_properties
      
        # 
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageImage]
        attr_accessor :image
      
        # 
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageTableCardRow>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessageTableCardCell>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1KnowledgeAssistDebugInfo]
        attr_accessor :knowledge_assist_debug_info
      
        # 
        # Corresponds to the JSON property `suggestedQuery`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerSuggestedQuery]
        attr_accessor :suggested_query
      
        # 
        # Corresponds to the JSON property `suggestedQueryAnswer`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswer]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswerFaqSource]
        attr_accessor :faq_source
      
        # 
        # Corresponds to the JSON property `generativeSource`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswerGenerativeSource]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswerGenerativeSourceSnippet>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IngestedContextReferenceDebugInfo]
        attr_accessor :ingested_context_reference_debug_info
      
        # 
        # Corresponds to the JSON property `knowledgeAssistBehavior`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1KnowledgeAssistDebugInfoKnowledgeAssistBehavior]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1ServiceLatency]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1ExportOperationMetadata]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1MessageAnnotation]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1ResponseMessage>]
        attr_accessor :response_messages
      
        # 
        # Corresponds to the JSON property `sendTime`
        # @return [String]
        attr_accessor :send_time
      
        # 
        # Corresponds to the JSON property `sentimentAnalysis`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1SentimentAnalysisResult]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1AnnotatedMessagePart>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessage>]
        attr_accessor :fulfillment_messages
      
        # 
        # Corresponds to the JSON property `fulfillmentText`
        # @return [String]
        attr_accessor :fulfillment_text
      
        # 
        # Corresponds to the JSON property `intent`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1Intent]
        attr_accessor :intent
      
        # 
        # Corresponds to the JSON property `intentDetectionConfidence`
        # @return [Float]
        attr_accessor :intent_detection_confidence
      
        # 
        # Corresponds to the JSON property `knowledgeAnswers`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1KnowledgeAnswers]
        attr_accessor :knowledge_answers
      
        # 
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # 
        # Corresponds to the JSON property `outputContexts`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1Context>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1SentimentAnalysisResult]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1ResponseMessageEndInteraction]
        attr_accessor :end_interaction
      
        # 
        # Corresponds to the JSON property `liveAgentHandoff`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1ResponseMessageLiveAgentHandoff]
        attr_accessor :live_agent_handoff
      
        # 
        # Corresponds to the JSON property `mixedAudio`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1ResponseMessageMixedAudio]
        attr_accessor :mixed_audio
      
        # 
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # 
        # Corresponds to the JSON property `telephonyTransferCall`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1ResponseMessageTelephonyTransferCall]
        attr_accessor :telephony_transfer_call
      
        # 
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1ResponseMessageText]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1ResponseMessageMixedAudioSegment>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1Sentiment]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1ServiceLatencyInternalServiceLatency>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1EntityTypeEntity>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1TelephonyDtmfEvents]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1SpeechWordInfo>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1ArticleAnswer>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1DialogflowAssistAnswer>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1FaqAnswer>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1KnowledgeAssistAnswer]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1SmartReplyAnswer>]
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
        # @return [Google::Apis::DialogflowV3::GoogleRpcStatus]
        attr_accessor :error
      
        # 
        # Corresponds to the JSON property `generateSuggestionsResponse`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1GenerateSuggestionsResponse]
        attr_accessor :generate_suggestions_response
      
        # 
        # Corresponds to the JSON property `suggestArticlesResponse`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1SuggestArticlesResponse]
        attr_accessor :suggest_articles_response
      
        # 
        # Corresponds to the JSON property `suggestDialogflowAssistsResponse`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1SuggestDialogflowAssistsResponse]
        attr_accessor :suggest_dialogflow_assists_response
      
        # 
        # Corresponds to the JSON property `suggestEntityExtractionResponse`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1SuggestDialogflowAssistsResponse]
        attr_accessor :suggest_entity_extraction_response
      
        # 
        # Corresponds to the JSON property `suggestFaqAnswersResponse`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse]
        attr_accessor :suggest_faq_answers_response
      
        # 
        # Corresponds to the JSON property `suggestKnowledgeAssistResponse`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1SuggestKnowledgeAssistResponse]
        attr_accessor :suggest_knowledge_assist_response
      
        # 
        # Corresponds to the JSON property `suggestSmartRepliesResponse`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1SummarySuggestionSummarySection>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1ToolCallResultError]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1QueryResult>]
        attr_accessor :alternative_query_results
      
        # 
        # Corresponds to the JSON property `originalDetectIntentRequest`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest]
        attr_accessor :original_detect_intent_request
      
        # 
        # Corresponds to the JSON property `queryResult`
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1QueryResult]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1EventInput]
        attr_accessor :followup_event_input
      
        # 
        # Corresponds to the JSON property `fulfillmentMessages`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1IntentMessage>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1Context>]
        attr_accessor :output_contexts
      
        # 
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # 
        # Corresponds to the JSON property `sessionEntityTypes`
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudDialogflowV2beta1SessionEntityType>]
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
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowV3alpha1TurnSignals]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleCloudLocationLocation>]
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
        # @return [Array<Google::Apis::DialogflowV3::GoogleLongrunningOperation>]
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
        # @return [Google::Apis::DialogflowV3::GoogleRpcStatus]
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
