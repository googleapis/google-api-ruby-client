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
      
      # Configuration of an Action for the tool to use. Note: This can be either an
      # Action or an Operation. See https://cloud.google.com/integration-connectors/
      # docs/entities-operation-action for details.
      class Action
        include Google::Apis::Core::Hashable
      
        # ID of a Connection action for the tool to use.
        # Corresponds to the JSON property `connectionActionId`
        # @return [String]
        attr_accessor :connection_action_id
      
        # Entity CRUD operation specification.
        # Corresponds to the JSON property `entityOperation`
        # @return [Google::Apis::CesV1::ActionEntityOperation]
        attr_accessor :entity_operation
      
        # Optional. Entity fields to use as inputs for the operation. If no fields are
        # specified, all fields of the Entity will be used.
        # Corresponds to the JSON property `inputFields`
        # @return [Array<String>]
        attr_accessor :input_fields
      
        # Optional. Entity fields to return from the operation. If no fields are
        # specified, all fields of the Entity will be returned.
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
      
      # Entity CRUD operation specification.
      class ActionEntityOperation
        include Google::Apis::Core::Hashable
      
        # Required. ID of the entity.
        # Corresponds to the JSON property `entityId`
        # @return [String]
        attr_accessor :entity_id
      
        # Required. Operation to perform on the entity.
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
      
      # An agent acts as the fundamental building block that provides instructions to
      # the Large Language Model (LLM) for executing specific tasks.
      class Agent
        include Google::Apis::Core::Hashable
      
        # Optional. The callbacks to execute after the agent is called. The provided
        # callbacks are executed sequentially in the exact order they are given in the
        # list. If a callback returns an overridden response, execution stops and any
        # remaining callbacks are skipped.
        # Corresponds to the JSON property `afterAgentCallbacks`
        # @return [Array<Google::Apis::CesV1::Callback>]
        attr_accessor :after_agent_callbacks
      
        # Optional. The callbacks to execute after the model is called. If there are
        # multiple calls to the model, the callback will be executed multiple times. The
        # provided callbacks are executed sequentially in the exact order they are given
        # in the list. If a callback returns an overridden response, execution stops and
        # any remaining callbacks are skipped.
        # Corresponds to the JSON property `afterModelCallbacks`
        # @return [Array<Google::Apis::CesV1::Callback>]
        attr_accessor :after_model_callbacks
      
        # Optional. The callbacks to execute after the tool is invoked. If there are
        # multiple tool invocations, the callback will be executed multiple times. The
        # provided callbacks are executed sequentially in the exact order they are given
        # in the list. If a callback returns an overridden response, execution stops and
        # any remaining callbacks are skipped.
        # Corresponds to the JSON property `afterToolCallbacks`
        # @return [Array<Google::Apis::CesV1::Callback>]
        attr_accessor :after_tool_callbacks
      
        # Optional. The callbacks to execute before the agent is called. The provided
        # callbacks are executed sequentially in the exact order they are given in the
        # list. If a callback returns an overridden response, execution stops and any
        # remaining callbacks are skipped.
        # Corresponds to the JSON property `beforeAgentCallbacks`
        # @return [Array<Google::Apis::CesV1::Callback>]
        attr_accessor :before_agent_callbacks
      
        # Optional. The callbacks to execute before the model is called. If there are
        # multiple calls to the model, the callback will be executed multiple times. The
        # provided callbacks are executed sequentially in the exact order they are given
        # in the list. If a callback returns an overridden response, execution stops and
        # any remaining callbacks are skipped.
        # Corresponds to the JSON property `beforeModelCallbacks`
        # @return [Array<Google::Apis::CesV1::Callback>]
        attr_accessor :before_model_callbacks
      
        # Optional. The callbacks to execute before the tool is invoked. If there are
        # multiple tool invocations, the callback will be executed multiple times. The
        # provided callbacks are executed sequentially in the exact order they are given
        # in the list. If a callback returns an overridden response, execution stops and
        # any remaining callbacks are skipped.
        # Corresponds to the JSON property `beforeToolCallbacks`
        # @return [Array<Google::Apis::CesV1::Callback>]
        attr_accessor :before_tool_callbacks
      
        # Optional. List of child agents in the agent tree. Format: `projects/`project`/
        # locations/`location`/apps/`app`/agents/`agent``
        # Corresponds to the JSON property `childAgents`
        # @return [Array<String>]
        attr_accessor :child_agents
      
        # Output only. Timestamp when the agent was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Human-readable description of the agent.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. Display name of the agent.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Etag used to ensure the object hasn't changed during a read-modify-write
        # operation. If the etag is empty, the update will overwrite any concurrent
        # changes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. If the agent is generated by the LLM assistant, this field
        # contains a descriptive summary of the generation.
        # Corresponds to the JSON property `generatedSummary`
        # @return [String]
        attr_accessor :generated_summary
      
        # Optional. List of guardrails for the agent. Format: `projects/`project`/
        # locations/`location`/apps/`app`/guardrails/`guardrail``
        # Corresponds to the JSON property `guardrails`
        # @return [Array<String>]
        attr_accessor :guardrails
      
        # Optional. Instructions for the LLM model to guide the agent's behavior.
        # Corresponds to the JSON property `instruction`
        # @return [String]
        attr_accessor :instruction
      
        # Default agent type. The agent uses instructions and callbacks specified in the
        # agent to perform the task using a large language model.
        # Corresponds to the JSON property `llmAgent`
        # @return [Google::Apis::CesV1::AgentLlmAgent]
        attr_accessor :llm_agent
      
        # Model settings contains various configurations for the LLM model.
        # Corresponds to the JSON property `modelSettings`
        # @return [Google::Apis::CesV1::ModelSettings]
        attr_accessor :model_settings
      
        # Identifier. The unique identifier of the agent. Format: `projects/`project`/
        # locations/`location`/apps/`app`/agents/`agent``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The agent which will transfer execution to a remote [Dialogflow CX](https://
        # docs.cloud.google.com/dialogflow/cx/docs/concept/agent) agent. The Dialogflow
        # agent will process subsequent user queries until the session ends or flow ends,
        # and the control is transferred back to the parent CES agent.
        # Corresponds to the JSON property `remoteDialogflowAgent`
        # @return [Google::Apis::CesV1::AgentRemoteDialogflowAgent]
        attr_accessor :remote_dialogflow_agent
      
        # Optional. List of available tools for the agent. Format: `projects/`project`/
        # locations/`location`/apps/`app`/tools/`tool``
        # Corresponds to the JSON property `tools`
        # @return [Array<String>]
        attr_accessor :tools
      
        # Optional. List of toolsets for the agent.
        # Corresponds to the JSON property `toolsets`
        # @return [Array<Google::Apis::CesV1::AgentAgentToolset>]
        attr_accessor :toolsets
      
        # Optional. Agent transfer rules. If multiple rules match, the first one in the
        # list will be used.
        # Corresponds to the JSON property `transferRules`
        # @return [Array<Google::Apis::CesV1::TransferRule>]
        attr_accessor :transfer_rules
      
        # Output only. Timestamp when the agent was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @after_agent_callbacks = args[:after_agent_callbacks] if args.key?(:after_agent_callbacks)
          @after_model_callbacks = args[:after_model_callbacks] if args.key?(:after_model_callbacks)
          @after_tool_callbacks = args[:after_tool_callbacks] if args.key?(:after_tool_callbacks)
          @before_agent_callbacks = args[:before_agent_callbacks] if args.key?(:before_agent_callbacks)
          @before_model_callbacks = args[:before_model_callbacks] if args.key?(:before_model_callbacks)
          @before_tool_callbacks = args[:before_tool_callbacks] if args.key?(:before_tool_callbacks)
          @child_agents = args[:child_agents] if args.key?(:child_agents)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @generated_summary = args[:generated_summary] if args.key?(:generated_summary)
          @guardrails = args[:guardrails] if args.key?(:guardrails)
          @instruction = args[:instruction] if args.key?(:instruction)
          @llm_agent = args[:llm_agent] if args.key?(:llm_agent)
          @model_settings = args[:model_settings] if args.key?(:model_settings)
          @name = args[:name] if args.key?(:name)
          @remote_dialogflow_agent = args[:remote_dialogflow_agent] if args.key?(:remote_dialogflow_agent)
          @tools = args[:tools] if args.key?(:tools)
          @toolsets = args[:toolsets] if args.key?(:toolsets)
          @transfer_rules = args[:transfer_rules] if args.key?(:transfer_rules)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A toolset with a selection of its tools.
      class AgentAgentToolset
        include Google::Apis::Core::Hashable
      
        # Optional. The tools IDs to filter the toolset.
        # Corresponds to the JSON property `toolIds`
        # @return [Array<String>]
        attr_accessor :tool_ids
      
        # Required. The resource name of the toolset. Format: `projects/`project`/
        # locations/`location`/apps/`app`/toolsets/`toolset``
        # Corresponds to the JSON property `toolset`
        # @return [String]
        attr_accessor :toolset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tool_ids = args[:tool_ids] if args.key?(:tool_ids)
          @toolset = args[:toolset] if args.key?(:toolset)
        end
      end
      
      # Default agent type. The agent uses instructions and callbacks specified in the
      # agent to perform the task using a large language model.
      class AgentLlmAgent
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The agent which will transfer execution to a remote [Dialogflow CX](https://
      # docs.cloud.google.com/dialogflow/cx/docs/concept/agent) agent. The Dialogflow
      # agent will process subsequent user queries until the session ends or flow ends,
      # and the control is transferred back to the parent CES agent.
      class AgentRemoteDialogflowAgent
        include Google::Apis::Core::Hashable
      
        # Required. The [Dialogflow](https://docs.cloud.google.com/dialogflow/cx/docs/
        # concept/agent) agent resource name. Format: `projects/`project`/locations/`
        # location`/agents/`agent``
        # Corresponds to the JSON property `agent`
        # @return [String]
        attr_accessor :agent
      
        # Optional. The environment ID of the Dialogflow agent to be used for the agent
        # execution. If not specified, the draft environment will be used.
        # Corresponds to the JSON property `environmentId`
        # @return [String]
        attr_accessor :environment_id
      
        # Optional. The flow ID of the flow in the Dialogflow agent.
        # Corresponds to the JSON property `flowId`
        # @return [String]
        attr_accessor :flow_id
      
        # Optional. The mapping of the app variables names to the Dialogflow session
        # parameters names to be sent to the Dialogflow agent as input.
        # Corresponds to the JSON property `inputVariableMapping`
        # @return [Hash<String,String>]
        attr_accessor :input_variable_mapping
      
        # Optional. The mapping of the Dialogflow session parameters names to the app
        # variables names to be sent back to the CES agent after the Dialogflow agent
        # execution ends.
        # Corresponds to the JSON property `outputVariableMapping`
        # @return [Hash<String,String>]
        attr_accessor :output_variable_mapping
      
        # Optional. Indicates whether to respect the message-level interruption settings
        # configured in the Dialogflow agent. * If false: all response messages from the
        # Dialogflow agent follow the app-level barge-in settings. * If true: only
        # response messages with [`allow_playback_interruption`](https://docs.cloud.
        # google.com/dialogflow/cx/docs/reference/rpc/google.cloud.dialogflow.cx.v3#text)
        # set to true will be interruptable, all other messages follow the app-level
        # barge-in settings.
        # Corresponds to the JSON property `respectResponseInterruptionSettings`
        # @return [Boolean]
        attr_accessor :respect_response_interruption_settings
        alias_method :respect_response_interruption_settings?, :respect_response_interruption_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent = args[:agent] if args.key?(:agent)
          @environment_id = args[:environment_id] if args.key?(:environment_id)
          @flow_id = args[:flow_id] if args.key?(:flow_id)
          @input_variable_mapping = args[:input_variable_mapping] if args.key?(:input_variable_mapping)
          @output_variable_mapping = args[:output_variable_mapping] if args.key?(:output_variable_mapping)
          @respect_response_interruption_settings = args[:respect_response_interruption_settings] if args.key?(:respect_response_interruption_settings)
        end
      end
      
      # Represents an event indicating the transfer of a conversation to a different
      # agent.
      class AgentTransfer
        include Google::Apis::Core::Hashable
      
        # Output only. Display name of the agent.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. The agent to which the conversation is being transferred. The agent
        # will handle the conversation from this point forward. Format: `projects/`
        # project`/locations/`location`/apps/`app`/agents/`agent``
        # Corresponds to the JSON property `targetAgent`
        # @return [String]
        attr_accessor :target_agent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @target_agent = args[:target_agent] if args.key?(:target_agent)
        end
      end
      
      # Configuration for the ambient sound to be played with the synthesized agent
      # response, to enhance the naturalness of the conversation.
      class AmbientSoundConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Ambient noise as a mono-channel, 16kHz WAV file stored in [Cloud
        # Storage](https://cloud.google.com/storage). Note: Please make sure the CES
        # service agent `service-@gcp-sa-ces.iam.gserviceaccount.com` has `storage.
        # objects.get` permission to the Cloud Storage object.
        # Corresponds to the JSON property `gcsUri`
        # @return [String]
        attr_accessor :gcs_uri
      
        # Optional. Deprecated: `prebuilt_ambient_noise` is deprecated in favor of `
        # prebuilt_ambient_sound`.
        # Corresponds to the JSON property `prebuiltAmbientNoise`
        # @return [String]
        attr_accessor :prebuilt_ambient_noise
      
        # Optional. Name of the prebuilt ambient sound. Valid values are: - "coffee_shop"
        # - "keyboard" - "keypad" - "hum" - "office_1" - "office_2" - "office_3" - "
        # room_1" - "room_2" - "room_3" - "room_4" - "room_5" - "air_conditioner"
        # Corresponds to the JSON property `prebuiltAmbientSound`
        # @return [String]
        attr_accessor :prebuilt_ambient_sound
      
        # Optional. Volume gain (in dB) of the normal native volume supported by ambient
        # noise, in the range [-96.0, 16.0]. If unset, or set to a value of 0.0 (dB),
        # will play at normal native signal amplitude. A value of -6.0 (dB) will play at
        # approximately half the amplitude of the normal native signal amplitude. A
        # value of +6.0 (dB) will play at approximately twice the amplitude of the
        # normal native signal amplitude. We strongly recommend not to exceed +10 (dB)
        # as there's usually no effective increase in loudness for any value greater
        # than that.
        # Corresponds to the JSON property `volumeGainDb`
        # @return [Float]
        attr_accessor :volume_gain_db
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_uri = args[:gcs_uri] if args.key?(:gcs_uri)
          @prebuilt_ambient_noise = args[:prebuilt_ambient_noise] if args.key?(:prebuilt_ambient_noise)
          @prebuilt_ambient_sound = args[:prebuilt_ambient_sound] if args.key?(:prebuilt_ambient_sound)
          @volume_gain_db = args[:volume_gain_db] if args.key?(:volume_gain_db)
        end
      end
      
      # Authentication information required for API calls.
      class ApiAuthentication
        include Google::Apis::Core::Hashable
      
        # Configurations for authentication with API key.
        # Corresponds to the JSON property `apiKeyConfig`
        # @return [Google::Apis::CesV1::ApiKeyConfig]
        attr_accessor :api_key_config
      
        # Configurations for authentication with a bearer token.
        # Corresponds to the JSON property `bearerTokenConfig`
        # @return [Google::Apis::CesV1::BearerTokenConfig]
        attr_accessor :bearer_token_config
      
        # Configurations for authentication with OAuth.
        # Corresponds to the JSON property `oauthConfig`
        # @return [Google::Apis::CesV1::OAuthConfig]
        attr_accessor :oauth_config
      
        # Configurations for authentication using a custom service account.
        # Corresponds to the JSON property `serviceAccountAuthConfig`
        # @return [Google::Apis::CesV1::ServiceAccountAuthConfig]
        attr_accessor :service_account_auth_config
      
        # Configurations for authentication with [ID token](https://cloud.google.com/
        # docs/authentication/token-types#id) generated from service agent.
        # Corresponds to the JSON property `serviceAgentIdTokenAuthConfig`
        # @return [Google::Apis::CesV1::ServiceAgentIdTokenAuthConfig]
        attr_accessor :service_agent_id_token_auth_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_key_config = args[:api_key_config] if args.key?(:api_key_config)
          @bearer_token_config = args[:bearer_token_config] if args.key?(:bearer_token_config)
          @oauth_config = args[:oauth_config] if args.key?(:oauth_config)
          @service_account_auth_config = args[:service_account_auth_config] if args.key?(:service_account_auth_config)
          @service_agent_id_token_auth_config = args[:service_agent_id_token_auth_config] if args.key?(:service_agent_id_token_auth_config)
        end
      end
      
      # Configurations for authentication with API key.
      class ApiKeyConfig
        include Google::Apis::Core::Hashable
      
        # Required. The name of the SecretManager secret version resource storing the
        # API key. Format: `projects/`project`/secrets/`secret`/versions/`version`` Note:
        # You should grant `roles/secretmanager.secretAccessor` role to the CES service
        # agent `service-@gcp-sa-ces.iam.gserviceaccount.com`.
        # Corresponds to the JSON property `apiKeySecretVersion`
        # @return [String]
        attr_accessor :api_key_secret_version
      
        # Required. The parameter name or the header name of the API key. E.g., If the
        # API request is "https://example.com/act?X-Api-Key=", "X-Api-Key" would be the
        # parameter name.
        # Corresponds to the JSON property `keyName`
        # @return [String]
        attr_accessor :key_name
      
        # Required. Key location in the request.
        # Corresponds to the JSON property `requestLocation`
        # @return [String]
        attr_accessor :request_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_key_secret_version = args[:api_key_secret_version] if args.key?(:api_key_secret_version)
          @key_name = args[:key_name] if args.key?(:key_name)
          @request_location = args[:request_location] if args.key?(:request_location)
        end
      end
      
      # An app serves as a top-level container for a group of agents, including the
      # root agent and its sub-agents, along with their associated configurations.
      # These agents work together to achieve specific goals within the app's context.
      class App
        include Google::Apis::Core::Hashable
      
        # Configuration for how the input and output audio should be processed and
        # delivered.
        # Corresponds to the JSON property `audioProcessingConfig`
        # @return [Google::Apis::CesV1::AudioProcessingConfig]
        attr_accessor :audio_processing_config
      
        # Settings for custom client certificates.
        # Corresponds to the JSON property `clientCertificateSettings`
        # @return [Google::Apis::CesV1::ClientCertificateSettings]
        attr_accessor :client_certificate_settings
      
        # Output only. Timestamp when the app was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Data store related settings for the app.
        # Corresponds to the JSON property `dataStoreSettings`
        # @return [Google::Apis::CesV1::DataStoreSettings]
        attr_accessor :data_store_settings
      
        # A ChannelProfile configures the agent's behavior for a specific communication
        # channel, such as web UI or telephony.
        # Corresponds to the JSON property `defaultChannelProfile`
        # @return [Google::Apis::CesV1::ChannelProfile]
        attr_accessor :default_channel_profile
      
        # Output only. Number of deployments in the app.
        # Corresponds to the JSON property `deploymentCount`
        # @return [Fixnum]
        attr_accessor :deployment_count
      
        # Optional. Human-readable description of the app.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. Display name of the app.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Etag used to ensure the object hasn't changed during a read-
        # modify-write operation. If the etag is empty, the update will overwrite any
        # concurrent changes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Threshold settings for metrics in an Evaluation.
        # Corresponds to the JSON property `evaluationMetricsThresholds`
        # @return [Google::Apis::CesV1::EvaluationMetricsThresholds]
        attr_accessor :evaluation_metrics_thresholds
      
        # Optional. Instructions for all the agents in the app. You can use this
        # instruction to set up a stable identity or personality across all the agents.
        # Corresponds to the JSON property `globalInstruction`
        # @return [String]
        attr_accessor :global_instruction
      
        # Optional. List of guardrails for the app. Format: `projects/`project`/
        # locations/`location`/apps/`app`/guardrails/`guardrail``
        # Corresponds to the JSON property `guardrails`
        # @return [Array<String>]
        attr_accessor :guardrails
      
        # Language settings of the app.
        # Corresponds to the JSON property `languageSettings`
        # @return [Google::Apis::CesV1::LanguageSettings]
        attr_accessor :language_settings
      
        # Optional. Indicates whether the app is locked for changes. If the app is
        # locked, modifications to the app resources will be rejected.
        # Corresponds to the JSON property `locked`
        # @return [Boolean]
        attr_accessor :locked
        alias_method :locked?, :locked
      
        # Settings to describe the logging behaviors for the app.
        # Corresponds to the JSON property `loggingSettings`
        # @return [Google::Apis::CesV1::LoggingSettings]
        attr_accessor :logging_settings
      
        # Optional. Metadata about the app. This field can be used to store additional
        # information relevant to the app's details or intended usages.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # Model settings contains various configurations for the LLM model.
        # Corresponds to the JSON property `modelSettings`
        # @return [Google::Apis::CesV1::ModelSettings]
        attr_accessor :model_settings
      
        # Identifier. The unique identifier of the app. Format: `projects/`project`/
        # locations/`location`/apps/`app``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Whether the app is pinned in the app list.
        # Corresponds to the JSON property `pinned`
        # @return [Boolean]
        attr_accessor :pinned
        alias_method :pinned?, :pinned
      
        # Output only. The declarations of predefined variables for the app.
        # Corresponds to the JSON property `predefinedVariableDeclarations`
        # @return [Array<Google::Apis::CesV1::AppVariableDeclaration>]
        attr_accessor :predefined_variable_declarations
      
        # Optional. The root agent is the entry point of the app. Format: `projects/`
        # project`/locations/`location`/apps/`app`/agents/`agent``
        # Corresponds to the JSON property `rootAgent`
        # @return [String]
        attr_accessor :root_agent
      
        # TimeZone settings of the app.
        # Corresponds to the JSON property `timeZoneSettings`
        # @return [Google::Apis::CesV1::TimeZoneSettings]
        attr_accessor :time_zone_settings
      
        # Optional. The tool execution mode for the app. If not provided, will default
        # to PARALLEL.
        # Corresponds to the JSON property `toolExecutionMode`
        # @return [String]
        attr_accessor :tool_execution_mode
      
        # Output only. Timestamp when the app was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Optional. The declarations of the variables.
        # Corresponds to the JSON property `variableDeclarations`
        # @return [Array<Google::Apis::CesV1::AppVariableDeclaration>]
        attr_accessor :variable_declarations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_processing_config = args[:audio_processing_config] if args.key?(:audio_processing_config)
          @client_certificate_settings = args[:client_certificate_settings] if args.key?(:client_certificate_settings)
          @create_time = args[:create_time] if args.key?(:create_time)
          @data_store_settings = args[:data_store_settings] if args.key?(:data_store_settings)
          @default_channel_profile = args[:default_channel_profile] if args.key?(:default_channel_profile)
          @deployment_count = args[:deployment_count] if args.key?(:deployment_count)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @evaluation_metrics_thresholds = args[:evaluation_metrics_thresholds] if args.key?(:evaluation_metrics_thresholds)
          @global_instruction = args[:global_instruction] if args.key?(:global_instruction)
          @guardrails = args[:guardrails] if args.key?(:guardrails)
          @language_settings = args[:language_settings] if args.key?(:language_settings)
          @locked = args[:locked] if args.key?(:locked)
          @logging_settings = args[:logging_settings] if args.key?(:logging_settings)
          @metadata = args[:metadata] if args.key?(:metadata)
          @model_settings = args[:model_settings] if args.key?(:model_settings)
          @name = args[:name] if args.key?(:name)
          @pinned = args[:pinned] if args.key?(:pinned)
          @predefined_variable_declarations = args[:predefined_variable_declarations] if args.key?(:predefined_variable_declarations)
          @root_agent = args[:root_agent] if args.key?(:root_agent)
          @time_zone_settings = args[:time_zone_settings] if args.key?(:time_zone_settings)
          @tool_execution_mode = args[:tool_execution_mode] if args.key?(:tool_execution_mode)
          @update_time = args[:update_time] if args.key?(:update_time)
          @variable_declarations = args[:variable_declarations] if args.key?(:variable_declarations)
        end
      end
      
      # A snapshot of the app.
      class AppSnapshot
        include Google::Apis::Core::Hashable
      
        # Optional. List of agents in the app.
        # Corresponds to the JSON property `agents`
        # @return [Array<Google::Apis::CesV1::Agent>]
        attr_accessor :agents
      
        # An app serves as a top-level container for a group of agents, including the
        # root agent and its sub-agents, along with their associated configurations.
        # These agents work together to achieve specific goals within the app's context.
        # Corresponds to the JSON property `app`
        # @return [Google::Apis::CesV1::App]
        attr_accessor :app
      
        # Optional. List of examples in the app.
        # Corresponds to the JSON property `examples`
        # @return [Array<Google::Apis::CesV1::Example>]
        attr_accessor :examples
      
        # Optional. List of guardrails in the app.
        # Corresponds to the JSON property `guardrails`
        # @return [Array<Google::Apis::CesV1::Guardrail>]
        attr_accessor :guardrails
      
        # Optional. List of tools in the app.
        # Corresponds to the JSON property `tools`
        # @return [Array<Google::Apis::CesV1::Tool>]
        attr_accessor :tools
      
        # Optional. List of toolsets in the app.
        # Corresponds to the JSON property `toolsets`
        # @return [Array<Google::Apis::CesV1::Toolset>]
        attr_accessor :toolsets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agents = args[:agents] if args.key?(:agents)
          @app = args[:app] if args.key?(:app)
          @examples = args[:examples] if args.key?(:examples)
          @guardrails = args[:guardrails] if args.key?(:guardrails)
          @tools = args[:tools] if args.key?(:tools)
          @toolsets = args[:toolsets] if args.key?(:toolsets)
        end
      end
      
      # Defines the structure and metadata for a variable.
      class AppVariableDeclaration
        include Google::Apis::Core::Hashable
      
        # Required. The description of the variable.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The name of the variable. The name must start with a letter or
        # underscore and contain only letters, numbers, or underscores.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Represents a select subset of an OpenAPI 3.0 schema object.
        # Corresponds to the JSON property `schema`
        # @return [Google::Apis::CesV1::Schema]
        attr_accessor :schema
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @schema = args[:schema] if args.key?(:schema)
        end
      end
      
      # In Customer Engagement Suite (CES), an app version is a snapshot of the app at
      # a specific point in time. It is immutable and cannot be modified once created.
      class AppVersion
        include Google::Apis::Core::Hashable
      
        # Output only. Timestamp when the app version was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Email of the user who created the app version.
        # Corresponds to the JSON property `creator`
        # @return [String]
        attr_accessor :creator
      
        # Optional. The description of the app version.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. The display name of the app version.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Etag used to ensure the object hasn't changed during a read-
        # modify-write operation. If the etag is empty, the update will overwrite any
        # concurrent changes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Identifier. The unique identifier of the app version. Format: `projects/`
        # project`/locations/`location`/apps/`app`/versions/`version``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A snapshot of the app.
        # Corresponds to the JSON property `snapshot`
        # @return [Google::Apis::CesV1::AppSnapshot]
        attr_accessor :snapshot
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @creator = args[:creator] if args.key?(:creator)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @name = args[:name] if args.key?(:name)
          @snapshot = args[:snapshot] if args.key?(:snapshot)
        end
      end
      
      # Configuration for how the input and output audio should be processed and
      # delivered.
      class AudioProcessingConfig
        include Google::Apis::Core::Hashable
      
        # Configuration for the ambient sound to be played with the synthesized agent
        # response, to enhance the naturalness of the conversation.
        # Corresponds to the JSON property `ambientSoundConfig`
        # @return [Google::Apis::CesV1::AmbientSoundConfig]
        attr_accessor :ambient_sound_config
      
        # Configuration for how the user barge-in activities should be handled.
        # Corresponds to the JSON property `bargeInConfig`
        # @return [Google::Apis::CesV1::BargeInConfig]
        attr_accessor :barge_in_config
      
        # Optional. The duration of user inactivity (no speech or interaction) before
        # the agent prompts the user for reengagement. If not set, the agent will not
        # prompt the user for reengagement.
        # Corresponds to the JSON property `inactivityTimeout`
        # @return [String]
        attr_accessor :inactivity_timeout
      
        # Optional. Configuration of how the agent response should be synthesized,
        # mapping from the language code to SynthesizeSpeechConfig. If the configuration
        # for the specified language code is not found, the configuration for the root
        # language code will be used. For example, if the map contains "en-us" and "en",
        # and the specified language code is "en-gb", then "en" configuration will be
        # used. Note: Language code is case-insensitive.
        # Corresponds to the JSON property `synthesizeSpeechConfigs`
        # @return [Hash<String,Google::Apis::CesV1::SynthesizeSpeechConfig>]
        attr_accessor :synthesize_speech_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ambient_sound_config = args[:ambient_sound_config] if args.key?(:ambient_sound_config)
          @barge_in_config = args[:barge_in_config] if args.key?(:barge_in_config)
          @inactivity_timeout = args[:inactivity_timeout] if args.key?(:inactivity_timeout)
          @synthesize_speech_configs = args[:synthesize_speech_configs] if args.key?(:synthesize_speech_configs)
        end
      end
      
      # Configuration for how the audio interactions should be recorded.
      class AudioRecordingConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The [Cloud Storage](https://cloud.google.com/storage) bucket to
        # store the session audio recordings. The URI must start with "gs://". Please
        # choose a bucket location that meets your data residency requirements. Note: If
        # the Cloud Storage bucket is in a different project from the app, you should
        # grant `storage.objects.create` permission to the CES service agent `service-@
        # gcp-sa-ces.iam.gserviceaccount.com`.
        # Corresponds to the JSON property `gcsBucket`
        # @return [String]
        attr_accessor :gcs_bucket
      
        # Optional. The Cloud Storage path prefix for audio recordings. This prefix can
        # include the following placeholders, which will be dynamically substituted at
        # serving time: - $project: project ID - $location: app location - $app: app ID -
        # $date: session date in YYYY-MM-DD format - $session: session ID If the path
        # prefix is not specified, the default prefix `$project/$location/$app/$date/$
        # session/` will be used.
        # Corresponds to the JSON property `gcsPathPrefix`
        # @return [String]
        attr_accessor :gcs_path_prefix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_bucket = args[:gcs_bucket] if args.key?(:gcs_bucket)
          @gcs_path_prefix = args[:gcs_path_prefix] if args.key?(:gcs_path_prefix)
        end
      end
      
      # Configuration for how the user barge-in activities should be handled.
      class BargeInConfig
        include Google::Apis::Core::Hashable
      
        # Optional. If enabled, the agent will adapt its next response based on the
        # assumption that the user hasn't heard the full preceding agent message. This
        # should not be used in scenarios where agent responses are displayed visually.
        # Corresponds to the JSON property `bargeInAwareness`
        # @return [Boolean]
        attr_accessor :barge_in_awareness
        alias_method :barge_in_awareness?, :barge_in_awareness
      
        # Optional. Disables user barge-in while the agent is speaking. If true, user
        # input during agent response playback will be ignored. Deprecated: `
        # disable_barge_in` is deprecated in favor of `disable_barge_in_control` in
        # ChannelProfile.
        # Corresponds to the JSON property `disableBargeIn`
        # @return [Boolean]
        attr_accessor :disable_barge_in
        alias_method :disable_barge_in?, :disable_barge_in
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @barge_in_awareness = args[:barge_in_awareness] if args.key?(:barge_in_awareness)
          @disable_barge_in = args[:disable_barge_in] if args.key?(:disable_barge_in)
        end
      end
      
      # Request message for AgentService.BatchDeleteConversations.
      class BatchDeleteConversationsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The resource names of the conversations to delete.
        # Corresponds to the JSON property `conversations`
        # @return [Array<String>]
        attr_accessor :conversations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversations = args[:conversations] if args.key?(:conversations)
        end
      end
      
      # Configurations for authentication with a bearer token.
      class BearerTokenConfig
        include Google::Apis::Core::Hashable
      
        # Required. The bearer token. Must be in the format `$context.variables.`.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @token = args[:token] if args.key?(:token)
        end
      end
      
      # Settings to describe the BigQuery export behaviors for the app.
      class BigQueryExportSettings
        include Google::Apis::Core::Hashable
      
        # Optional. The BigQuery dataset to export the data to.
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        # Optional. Indicates whether the BigQuery export is enabled.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Optional. The project ID of the BigQuery dataset to export the data to. Note:
        # If the BigQuery dataset is in a different project from the app, you should
        # grant `roles/bigquery.admin` role to the CES service agent `service-@gcp-sa-
        # ces.iam.gserviceaccount.com`.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset = args[:dataset] if args.key?(:dataset)
          @enabled = args[:enabled] if args.key?(:enabled)
          @project = args[:project] if args.key?(:project)
        end
      end
      
      # Represents a blob input or output in the conversation.
      class Blob
        include Google::Apis::Core::Hashable
      
        # Required. Raw bytes of the blob.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # Required. The IANA standard MIME type of the source data.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
        end
      end
      
      # A callback defines the custom logic to be executed at various stages of agent
      # interaction.
      class Callback
        include Google::Apis::Core::Hashable
      
        # Optional. Human-readable description of the callback.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Whether the callback is disabled. Disabled callbacks are ignored by
        # the agent.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # Required. The python code to execute for the callback.
        # Corresponds to the JSON property `pythonCode`
        # @return [String]
        attr_accessor :python_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @disabled = args[:disabled] if args.key?(:disabled)
          @python_code = args[:python_code] if args.key?(:python_code)
        end
      end
      
      # The request message for Operations.CancelOperation.
      class CancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Changelogs represent a change made to the app or to an resource within the app.
      class Changelog
        include Google::Apis::Core::Hashable
      
        # Output only. The action that was performed on the resource.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # Output only. Email address of the change author.
        # Corresponds to the JSON property `author`
        # @return [String]
        attr_accessor :author
      
        # Output only. The time when the change was made.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The dependent resources that were changed.
        # Corresponds to the JSON property `dependentResources`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :dependent_resources
      
        # Output only. Description of the change. which typically captures the changed
        # fields in the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. Display name of the change. It typically should be the display
        # name of the resource that was changed.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Identifier. The unique identifier of the changelog. Format: `projects/`project`
        # /locations/`location`/apps/`app`/changelogs/`changelog``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The new resource after the change.
        # Corresponds to the JSON property `newResource`
        # @return [Hash<String,Object>]
        attr_accessor :new_resource
      
        # Output only. The original resource before the change.
        # Corresponds to the JSON property `originalResource`
        # @return [Hash<String,Object>]
        attr_accessor :original_resource
      
        # Output only. The resource that was changed.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # Output only. The type of the resource that was changed.
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        # Output only. The monotonically increasing sequence number of the changelog.
        # Corresponds to the JSON property `sequenceNumber`
        # @return [Fixnum]
        attr_accessor :sequence_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @author = args[:author] if args.key?(:author)
          @create_time = args[:create_time] if args.key?(:create_time)
          @dependent_resources = args[:dependent_resources] if args.key?(:dependent_resources)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @new_resource = args[:new_resource] if args.key?(:new_resource)
          @original_resource = args[:original_resource] if args.key?(:original_resource)
          @resource = args[:resource] if args.key?(:resource)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
          @sequence_number = args[:sequence_number] if args.key?(:sequence_number)
        end
      end
      
      # A ChannelProfile configures the agent's behavior for a specific communication
      # channel, such as web UI or telephony.
      class ChannelProfile
        include Google::Apis::Core::Hashable
      
        # Optional. The type of the channel profile.
        # Corresponds to the JSON property `channelType`
        # @return [String]
        attr_accessor :channel_type
      
        # Optional. Whether to disable user barge-in control in the conversation. - **
        # true**: User interruptions are disabled while the agent is speaking. - **false*
        # *: The agent retains automatic control over when the user can interrupt.
        # Corresponds to the JSON property `disableBargeInControl`
        # @return [Boolean]
        attr_accessor :disable_barge_in_control
        alias_method :disable_barge_in_control?, :disable_barge_in_control
      
        # Optional. Whether to disable DTMF (dual-tone multi-frequency).
        # Corresponds to the JSON property `disableDtmf`
        # @return [Boolean]
        attr_accessor :disable_dtmf
        alias_method :disable_dtmf?, :disable_dtmf
      
        # Optional. The noise suppression level of the channel profile. Available values
        # are "low", "moderate", "high", "very_high".
        # Corresponds to the JSON property `noiseSuppressionLevel`
        # @return [String]
        attr_accessor :noise_suppression_level
      
        # Represents the persona property of a channel.
        # Corresponds to the JSON property `personaProperty`
        # @return [Google::Apis::CesV1::ChannelProfilePersonaProperty]
        attr_accessor :persona_property
      
        # Optional. The unique identifier of the channel profile.
        # Corresponds to the JSON property `profileId`
        # @return [String]
        attr_accessor :profile_id
      
        # Message for configuration for the web widget.
        # Corresponds to the JSON property `webWidgetConfig`
        # @return [Google::Apis::CesV1::ChannelProfileWebWidgetConfig]
        attr_accessor :web_widget_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel_type = args[:channel_type] if args.key?(:channel_type)
          @disable_barge_in_control = args[:disable_barge_in_control] if args.key?(:disable_barge_in_control)
          @disable_dtmf = args[:disable_dtmf] if args.key?(:disable_dtmf)
          @noise_suppression_level = args[:noise_suppression_level] if args.key?(:noise_suppression_level)
          @persona_property = args[:persona_property] if args.key?(:persona_property)
          @profile_id = args[:profile_id] if args.key?(:profile_id)
          @web_widget_config = args[:web_widget_config] if args.key?(:web_widget_config)
        end
      end
      
      # Represents the persona property of a channel.
      class ChannelProfilePersonaProperty
        include Google::Apis::Core::Hashable
      
        # Optional. The persona of the channel.
        # Corresponds to the JSON property `persona`
        # @return [String]
        attr_accessor :persona
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @persona = args[:persona] if args.key?(:persona)
        end
      end
      
      # Message for configuration for the web widget.
      class ChannelProfileWebWidgetConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The modality of the web widget.
        # Corresponds to the JSON property `modality`
        # @return [String]
        attr_accessor :modality
      
        # Security settings for the web widget.
        # Corresponds to the JSON property `securitySettings`
        # @return [Google::Apis::CesV1::ChannelProfileWebWidgetConfigSecuritySettings]
        attr_accessor :security_settings
      
        # Optional. The theme of the web widget.
        # Corresponds to the JSON property `theme`
        # @return [String]
        attr_accessor :theme
      
        # Optional. The title of the web widget.
        # Corresponds to the JSON property `webWidgetTitle`
        # @return [String]
        attr_accessor :web_widget_title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @modality = args[:modality] if args.key?(:modality)
          @security_settings = args[:security_settings] if args.key?(:security_settings)
          @theme = args[:theme] if args.key?(:theme)
          @web_widget_title = args[:web_widget_title] if args.key?(:web_widget_title)
        end
      end
      
      # Security settings for the web widget.
      class ChannelProfileWebWidgetConfigSecuritySettings
        include Google::Apis::Core::Hashable
      
        # Optional. The origins that are allowed to host the web widget. An origin is
        # defined by RFC 6454. If empty, all origins are allowed. A maximum of 100
        # origins is allowed. Example: "https://example.com"
        # Corresponds to the JSON property `allowedOrigins`
        # @return [Array<String>]
        attr_accessor :allowed_origins
      
        # Optional. Indicates whether origin check for the web widget is enabled. If `
        # true`, the web widget will check the origin of the website that loads the web
        # widget and only allow it to be loaded in the same origin or any of the allowed
        # origins.
        # Corresponds to the JSON property `enableOriginCheck`
        # @return [Boolean]
        attr_accessor :enable_origin_check
        alias_method :enable_origin_check?, :enable_origin_check
      
        # Optional. Indicates whether public access to the web widget is enabled. If `
        # true`, the web widget will be publicly accessible. If `false`, the web widget
        # must be integrated with your own authentication and authorization system to
        # return valid credentials for accessing the CES agent.
        # Corresponds to the JSON property `enablePublicAccess`
        # @return [Boolean]
        attr_accessor :enable_public_access
        alias_method :enable_public_access?, :enable_public_access
      
        # Optional. Indicates whether reCAPTCHA verification for the web widget is
        # enabled.
        # Corresponds to the JSON property `enableRecaptcha`
        # @return [Boolean]
        attr_accessor :enable_recaptcha
        alias_method :enable_recaptcha?, :enable_recaptcha
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_origins = args[:allowed_origins] if args.key?(:allowed_origins)
          @enable_origin_check = args[:enable_origin_check] if args.key?(:enable_origin_check)
          @enable_public_access = args[:enable_public_access] if args.key?(:enable_public_access)
          @enable_recaptcha = args[:enable_recaptcha] if args.key?(:enable_recaptcha)
        end
      end
      
      # A chunk of content within a message.
      class Chunk
        include Google::Apis::Core::Hashable
      
        # Represents an event indicating the transfer of a conversation to a different
        # agent.
        # Corresponds to the JSON property `agentTransfer`
        # @return [Google::Apis::CesV1::AgentTransfer]
        attr_accessor :agent_transfer
      
        # A struct represents default variables at the start of the conversation, keyed
        # by variable names.
        # Corresponds to the JSON property `defaultVariables`
        # @return [Hash<String,Object>]
        attr_accessor :default_variables
      
        # Represents an image input or output in the conversation.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::CesV1::Image]
        attr_accessor :image
      
        # Optional. Custom payload data.
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # Optional. Text data.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # Request for the client or the agent to execute the specified tool.
        # Corresponds to the JSON property `toolCall`
        # @return [Google::Apis::CesV1::ToolCall]
        attr_accessor :tool_call
      
        # The execution result of a specific tool from the client or the agent.
        # Corresponds to the JSON property `toolResponse`
        # @return [Google::Apis::CesV1::ToolResponse]
        attr_accessor :tool_response
      
        # Optional. Transcript associated with the audio.
        # Corresponds to the JSON property `transcript`
        # @return [String]
        attr_accessor :transcript
      
        # A struct represents variables that were updated in the conversation, keyed by
        # variable names.
        # Corresponds to the JSON property `updatedVariables`
        # @return [Hash<String,Object>]
        attr_accessor :updated_variables
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_transfer = args[:agent_transfer] if args.key?(:agent_transfer)
          @default_variables = args[:default_variables] if args.key?(:default_variables)
          @image = args[:image] if args.key?(:image)
          @payload = args[:payload] if args.key?(:payload)
          @text = args[:text] if args.key?(:text)
          @tool_call = args[:tool_call] if args.key?(:tool_call)
          @tool_response = args[:tool_response] if args.key?(:tool_response)
          @transcript = args[:transcript] if args.key?(:transcript)
          @updated_variables = args[:updated_variables] if args.key?(:updated_variables)
        end
      end
      
      # Citations associated with the agent response.
      class Citations
        include Google::Apis::Core::Hashable
      
        # List of cited pieces of information.
        # Corresponds to the JSON property `citedChunks`
        # @return [Array<Google::Apis::CesV1::CitationsCitedChunk>]
        attr_accessor :cited_chunks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cited_chunks = args[:cited_chunks] if args.key?(:cited_chunks)
        end
      end
      
      # Piece of cited information.
      class CitationsCitedChunk
        include Google::Apis::Core::Hashable
      
        # Text used for citaiton.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # Title of the cited document.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # URI used for citation.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
          @title = args[:title] if args.key?(:title)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Settings for custom client certificates.
      class ClientCertificateSettings
        include Google::Apis::Core::Hashable
      
        # Optional. The name of the SecretManager secret version resource storing the
        # passphrase to decrypt the private key. Should be left unset if the private key
        # is not encrypted. Format: `projects/`project`/secrets/`secret`/versions/`
        # version``
        # Corresponds to the JSON property `passphrase`
        # @return [String]
        attr_accessor :passphrase
      
        # Required. The name of the SecretManager secret version resource storing the
        # private key encoded in PEM format. Format: `projects/`project`/secrets/`secret`
        # /versions/`version``
        # Corresponds to the JSON property `privateKey`
        # @return [String]
        attr_accessor :private_key
      
        # Required. The TLS certificate encoded in PEM format. This string must include
        # the begin header and end footer lines.
        # Corresponds to the JSON property `tlsCertificate`
        # @return [String]
        attr_accessor :tls_certificate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @passphrase = args[:passphrase] if args.key?(:passphrase)
          @private_key = args[:private_key] if args.key?(:private_key)
          @tls_certificate = args[:tls_certificate] if args.key?(:tls_certificate)
        end
      end
      
      # Represents a client-side function that the agent can invoke. When the tool is
      # chosen by the agent, control is handed off to the client. The client is
      # responsible for executing the function and returning the result as a
      # ToolResponse to continue the interaction with the agent.
      class ClientFunction
        include Google::Apis::Core::Hashable
      
        # Optional. The function description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The function name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Represents a select subset of an OpenAPI 3.0 schema object.
        # Corresponds to the JSON property `parameters`
        # @return [Google::Apis::CesV1::Schema]
        attr_accessor :parameters
      
        # Represents a select subset of an OpenAPI 3.0 schema object.
        # Corresponds to the JSON property `response`
        # @return [Google::Apis::CesV1::Schema]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @parameters = args[:parameters] if args.key?(:parameters)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # Settings to describe the Cloud Logging behaviors for the app.
      class CloudLoggingSettings
        include Google::Apis::Core::Hashable
      
        # Optional. Whether to enable Cloud Logging for the sessions.
        # Corresponds to the JSON property `enableCloudLogging`
        # @return [Boolean]
        attr_accessor :enable_cloud_logging
        alias_method :enable_cloud_logging?, :enable_cloud_logging
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_cloud_logging = args[:enable_cloud_logging] if args.key?(:enable_cloud_logging)
        end
      end
      
      # A code block to be executed instead of a real tool call.
      class CodeBlock
        include Google::Apis::Core::Hashable
      
        # Required. Python code which will be invoked in tool fake mode. Expected Python
        # function signature - To catch all tool calls: def fake_tool_call(tool: Tool,
        # input: dict[str, Any], callback_context: CallbackContext) -> Optional[dict[str,
        # Any]]: To catch a specific tool call: def fake_`tool_id`(tool: Tool, input:
        # dict[str, Any], callback_context: CallbackContext) -> Optional[dict[str, Any]]:
        # If the function returns None, the real tool will be invoked instead.
        # Corresponds to the JSON property `pythonCode`
        # @return [String]
        attr_accessor :python_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @python_code = args[:python_code] if args.key?(:python_code)
        end
      end
      
      # A ConnectorTool allows connections to different integrations. See: https://
      # cloud.google.com/integration-connectors/docs/overview.
      class ConnectorTool
        include Google::Apis::Core::Hashable
      
        # Configuration of an Action for the tool to use. Note: This can be either an
        # Action or an Operation. See https://cloud.google.com/integration-connectors/
        # docs/entities-operation-action for details.
        # Corresponds to the JSON property `action`
        # @return [Google::Apis::CesV1::Action]
        attr_accessor :action
      
        # End-user authentication configuration used for Connection calls. The field
        # values must be the names of context variables in the format `$context.
        # variables.`.
        # Corresponds to the JSON property `authConfig`
        # @return [Google::Apis::CesV1::EndUserAuthConfig]
        attr_accessor :auth_config
      
        # Required. The full resource name of the referenced Integration Connectors
        # Connection. Format: `projects/`project`/locations/`location`/connections/`
        # connection``
        # Corresponds to the JSON property `connection`
        # @return [String]
        attr_accessor :connection
      
        # Optional. The description of the tool that can be used by the Agent to decide
        # whether to call this ConnectorTool.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. The name of the tool that can be used by the Agent to decide whether
        # to call this ConnectorTool.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @auth_config = args[:auth_config] if args.key?(:auth_config)
          @connection = args[:connection] if args.key?(:connection)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A toolset that generates tools from an Integration Connectors Connection.
      class ConnectorToolset
        include Google::Apis::Core::Hashable
      
        # End-user authentication configuration used for Connection calls. The field
        # values must be the names of context variables in the format `$context.
        # variables.`.
        # Corresponds to the JSON property `authConfig`
        # @return [Google::Apis::CesV1::EndUserAuthConfig]
        attr_accessor :auth_config
      
        # Required. The full resource name of the referenced Integration Connectors
        # Connection. Format: `projects/`project`/locations/`location`/connections/`
        # connection``
        # Corresponds to the JSON property `connection`
        # @return [String]
        attr_accessor :connection
      
        # Required. The list of connector actions/entity operations to generate tools
        # for.
        # Corresponds to the JSON property `connectorActions`
        # @return [Array<Google::Apis::CesV1::Action>]
        attr_accessor :connector_actions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auth_config = args[:auth_config] if args.key?(:auth_config)
          @connection = args[:connection] if args.key?(:connection)
          @connector_actions = args[:connector_actions] if args.key?(:connector_actions)
        end
      end
      
      # A conversation represents an interaction between an end user and the CES app.
      class Conversation
        include Google::Apis::Core::Hashable
      
        # Output only. The version of the app used for processing the conversation.
        # Format: `projects/`project`/locations/`location`/apps/`app`/versions/`version``
        # Corresponds to the JSON property `appVersion`
        # @return [String]
        attr_accessor :app_version
      
        # DEPRECATED. Please use input_types instead.
        # Corresponds to the JSON property `channelType`
        # @return [String]
        attr_accessor :channel_type
      
        # Output only. The deployment of the app used for processing the conversation.
        # Format: `projects/`project`/locations/`location`/apps/`app`/deployments/`
        # deployment``
        # Corresponds to the JSON property `deployment`
        # @return [String]
        attr_accessor :deployment
      
        # Output only. Timestamp when the conversation was completed.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. The agent that initially handles the conversation. If not
        # specified, the conversation is handled by the root agent. Format: `projects/`
        # project`/locations/`location`/apps/`app`/agents/`agent``
        # Corresponds to the JSON property `entryAgent`
        # @return [String]
        attr_accessor :entry_agent
      
        # Output only. The input types of the conversation.
        # Corresponds to the JSON property `inputTypes`
        # @return [Array<String>]
        attr_accessor :input_types
      
        # Output only. The language code of the conversation.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Deprecated. Use turns instead.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::CesV1::Message>]
        attr_accessor :messages
      
        # Identifier. The unique identifier of the conversation. Format: `projects/`
        # project`/locations/`location`/apps/`app`/conversations/`conversation``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Indicate the source of the conversation.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # Output only. Timestamp when the conversation was created.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Output only. The number of turns in the conversation.
        # Corresponds to the JSON property `turnCount`
        # @return [Fixnum]
        attr_accessor :turn_count
      
        # Required. The turns in the conversation.
        # Corresponds to the JSON property `turns`
        # @return [Array<Google::Apis::CesV1::ConversationTurn>]
        attr_accessor :turns
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_version = args[:app_version] if args.key?(:app_version)
          @channel_type = args[:channel_type] if args.key?(:channel_type)
          @deployment = args[:deployment] if args.key?(:deployment)
          @end_time = args[:end_time] if args.key?(:end_time)
          @entry_agent = args[:entry_agent] if args.key?(:entry_agent)
          @input_types = args[:input_types] if args.key?(:input_types)
          @language_code = args[:language_code] if args.key?(:language_code)
          @messages = args[:messages] if args.key?(:messages)
          @name = args[:name] if args.key?(:name)
          @source = args[:source] if args.key?(:source)
          @start_time = args[:start_time] if args.key?(:start_time)
          @turn_count = args[:turn_count] if args.key?(:turn_count)
          @turns = args[:turns] if args.key?(:turns)
        end
      end
      
      # Settings to describe the conversation logging behaviors for the app.
      class ConversationLoggingSettings
        include Google::Apis::Core::Hashable
      
        # Optional. Whether to disable conversation logging for the sessions.
        # Corresponds to the JSON property `disableConversationLogging`
        # @return [Boolean]
        attr_accessor :disable_conversation_logging
        alias_method :disable_conversation_logging?, :disable_conversation_logging
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disable_conversation_logging = args[:disable_conversation_logging] if args.key?(:disable_conversation_logging)
        end
      end
      
      # All information about a single turn in the conversation.
      class ConversationTurn
        include Google::Apis::Core::Hashable
      
        # Optional. List of messages in the conversation turn, including user input,
        # agent responses and intermediate events during the processing.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::CesV1::Message>]
        attr_accessor :messages
      
        # A span is a unit of work or a single operation during the request processing.
        # Corresponds to the JSON property `rootSpan`
        # @return [Google::Apis::CesV1::Span]
        attr_accessor :root_span
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @messages = args[:messages] if args.key?(:messages)
          @root_span = args[:root_span] if args.key?(:root_span)
        end
      end
      
      # A DataStore resource in Vertex AI Search.
      class DataStore
        include Google::Apis::Core::Hashable
      
        # The connector config for the data store connection.
        # Corresponds to the JSON property `connectorConfig`
        # @return [Google::Apis::CesV1::DataStoreConnectorConfig]
        attr_accessor :connector_config
      
        # Output only. Timestamp when the data store was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The display name of the data store.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The document processing mode for the data store connection. Only
        # set for PUBLIC_WEB and UNSTRUCTURED data stores.
        # Corresponds to the JSON property `documentProcessingMode`
        # @return [String]
        attr_accessor :document_processing_mode
      
        # Required. Full resource name of the DataStore. Format: `projects/`project`/
        # locations/`location`/collections/`collection`/dataStores/`dataStore``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The type of the data store. This field is readonly and populated
        # by the server.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connector_config = args[:connector_config] if args.key?(:connector_config)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @document_processing_mode = args[:document_processing_mode] if args.key?(:document_processing_mode)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The connector config for the data store connection.
      class DataStoreConnectorConfig
        include Google::Apis::Core::Hashable
      
        # Resource name of the collection the data store belongs to.
        # Corresponds to the JSON property `collection`
        # @return [String]
        attr_accessor :collection
      
        # Display name of the collection the data store belongs to.
        # Corresponds to the JSON property `collectionDisplayName`
        # @return [String]
        attr_accessor :collection_display_name
      
        # The name of the data source. Example: `salesforce`, `jira`, `confluence`, `
        # bigquery`.
        # Corresponds to the JSON property `dataSource`
        # @return [String]
        attr_accessor :data_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collection = args[:collection] if args.key?(:collection)
          @collection_display_name = args[:collection_display_name] if args.key?(:collection_display_name)
          @data_source = args[:data_source] if args.key?(:data_source)
        end
      end
      
      # Data store related settings for the app.
      class DataStoreSettings
        include Google::Apis::Core::Hashable
      
        # Output only. The engines for the app.
        # Corresponds to the JSON property `engines`
        # @return [Array<Google::Apis::CesV1::DataStoreSettingsEngine>]
        attr_accessor :engines
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @engines = args[:engines] if args.key?(:engines)
        end
      end
      
      # An engine to which the data stores are connected. See Vertex AI Search: https:/
      # /cloud.google.com/generative-ai-app-builder/docs/enterprise-search-
      # introduction.
      class DataStoreSettingsEngine
        include Google::Apis::Core::Hashable
      
        # Output only. The resource name of the engine. Format: `projects/`project`/
        # locations/`location`/collections/`collection`/engines/`engine``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The type of the engine.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Tool to retrieve from Vertex AI Search datastore or engine for grounding.
      # Accepts either a datastore or an engine, but not both. See Vertex AI Search:
      # https://cloud.google.com/generative-ai-app-builder/docs/enterprise-search-
      # introduction.
      class DataStoreTool
        include Google::Apis::Core::Hashable
      
        # Optional. Boost specification to boost certain documents.
        # Corresponds to the JSON property `boostSpecs`
        # @return [Array<Google::Apis::CesV1::DataStoreToolBoostSpecs>]
        attr_accessor :boost_specs
      
        # Configuration for searching within a specific DataStore.
        # Corresponds to the JSON property `dataStoreSource`
        # @return [Google::Apis::CesV1::DataStoreToolDataStoreSource]
        attr_accessor :data_store_source
      
        # Optional. The tool description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Configuration for searching within an Engine, potentially targeting specific
        # DataStores.
        # Corresponds to the JSON property `engineSource`
        # @return [Google::Apis::CesV1::DataStoreToolEngineSource]
        attr_accessor :engine_source
      
        # Optional. The filter parameter behavior.
        # Corresponds to the JSON property `filterParameterBehavior`
        # @return [String]
        attr_accessor :filter_parameter_behavior
      
        # Optional. The modality configs for the data store.
        # Corresponds to the JSON property `modalityConfigs`
        # @return [Array<Google::Apis::CesV1::DataStoreToolModalityConfig>]
        attr_accessor :modality_configs
      
        # Required. The data store tool name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boost_specs = args[:boost_specs] if args.key?(:boost_specs)
          @data_store_source = args[:data_store_source] if args.key?(:data_store_source)
          @description = args[:description] if args.key?(:description)
          @engine_source = args[:engine_source] if args.key?(:engine_source)
          @filter_parameter_behavior = args[:filter_parameter_behavior] if args.key?(:filter_parameter_behavior)
          @modality_configs = args[:modality_configs] if args.key?(:modality_configs)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Boost specification to boost certain documents.
      class DataStoreToolBoostSpec
        include Google::Apis::Core::Hashable
      
        # Required. A list of boosting specifications.
        # Corresponds to the JSON property `conditionBoostSpecs`
        # @return [Array<Google::Apis::CesV1::DataStoreToolBoostSpecConditionBoostSpec>]
        attr_accessor :condition_boost_specs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition_boost_specs = args[:condition_boost_specs] if args.key?(:condition_boost_specs)
        end
      end
      
      # Boost specification for a condition.
      class DataStoreToolBoostSpecConditionBoostSpec
        include Google::Apis::Core::Hashable
      
        # Optional. Strength of the boost, which should be in [-1, 1]. Negative boost
        # means demotion. Default is 0.0. Setting to 1.0 gives the suggestions a big
        # promotion. However, it does not necessarily mean that the top result will be a
        # boosted suggestion. Setting to -1.0 gives the suggestions a big demotion.
        # However, other suggestions that are relevant might still be shown. Setting to
        # 0.0 means no boost applied. The boosting condition is ignored.
        # Corresponds to the JSON property `boost`
        # @return [Float]
        attr_accessor :boost
      
        # Specification for custom ranking based on customer specified attribute value.
        # It provides more controls for customized ranking than the simple (condition,
        # boost) combination above.
        # Corresponds to the JSON property `boostControlSpec`
        # @return [Google::Apis::CesV1::DataStoreToolBoostSpecConditionBoostSpecBoostControlSpec]
        attr_accessor :boost_control_spec
      
        # Required. An expression which specifies a boost condition. The syntax is the
        # same as filter expression syntax. Currently, the only supported condition is a
        # list of BCP-47 lang codes. Example: To boost suggestions in languages en or fr:
        # (lang_code: ANY("en", "fr"))
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
      
      # Specification for custom ranking based on customer specified attribute value.
      # It provides more controls for customized ranking than the simple (condition,
      # boost) combination above.
      class DataStoreToolBoostSpecConditionBoostSpecBoostControlSpec
        include Google::Apis::Core::Hashable
      
        # Optional. The attribute type to be used to determine the boost amount. The
        # attribute value can be derived from the field value of the specified
        # field_name. In the case of numerical it is straightforward i.e.
        # attribute_value = numerical_field_value. In the case of freshness however,
        # attribute_value = (time.now() - datetime_field_value).
        # Corresponds to the JSON property `attributeType`
        # @return [String]
        attr_accessor :attribute_type
      
        # Optional. The control points used to define the curve. The monotonic function (
        # defined through the interpolation_type above) passes through the control
        # points listed here.
        # Corresponds to the JSON property `controlPoints`
        # @return [Array<Google::Apis::CesV1::DataStoreToolBoostSpecConditionBoostSpecBoostControlSpecControlPoint>]
        attr_accessor :control_points
      
        # Optional. The name of the field whose value will be used to determine the
        # boost amount.
        # Corresponds to the JSON property `fieldName`
        # @return [String]
        attr_accessor :field_name
      
        # Optional. The interpolation type to be applied to connect the control points
        # listed below.
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
      
      # The control points used to define the curve. The curve defined through these
      # control points can only be monotonically increasing or decreasing(constant
      # values are acceptable).
      class DataStoreToolBoostSpecConditionBoostSpecBoostControlSpecControlPoint
        include Google::Apis::Core::Hashable
      
        # Optional. Can be one of: 1. The numerical field value. 2. The duration spec
        # for freshness: The value must be formatted as an XSD `dayTimeDuration` value (
        # a restricted subset of an ISO 8601 duration value). The pattern for this is: `
        # nDnM]`.
        # Corresponds to the JSON property `attributeValue`
        # @return [String]
        attr_accessor :attribute_value
      
        # Optional. The value between -1 to 1 by which to boost the score if the
        # attribute_value evaluates to the value specified above.
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
      
      # Boost specifications to boost certain documents. For more information, please
      # refer to https://cloud.google.com/generative-ai-app-builder/docs/boosting.
      class DataStoreToolBoostSpecs
        include Google::Apis::Core::Hashable
      
        # Required. The Data Store where the boosting configuration is applied. Full
        # resource name of DataStore, such as projects/`project`/locations/`location`/
        # collections/`collection`/dataStores/`dataStore`.
        # Corresponds to the JSON property `dataStores`
        # @return [Array<String>]
        attr_accessor :data_stores
      
        # Required. A list of boosting specifications.
        # Corresponds to the JSON property `spec`
        # @return [Array<Google::Apis::CesV1::DataStoreToolBoostSpec>]
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
      
      # Configuration for searching within a specific DataStore.
      class DataStoreToolDataStoreSource
        include Google::Apis::Core::Hashable
      
        # A DataStore resource in Vertex AI Search.
        # Corresponds to the JSON property `dataStore`
        # @return [Google::Apis::CesV1::DataStore]
        attr_accessor :data_store
      
        # Optional. Filter specification for the DataStore. See: https://cloud.google.
        # com/generative-ai-app-builder/docs/filter-search-metadata
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_store = args[:data_store] if args.key?(:data_store)
          @filter = args[:filter] if args.key?(:filter)
        end
      end
      
      # Configuration for searching within an Engine, potentially targeting specific
      # DataStores.
      class DataStoreToolEngineSource
        include Google::Apis::Core::Hashable
      
        # Optional. Use to target specific DataStores within the Engine. If empty, the
        # search applies to all DataStores associated with the Engine.
        # Corresponds to the JSON property `dataStoreSources`
        # @return [Array<Google::Apis::CesV1::DataStoreToolDataStoreSource>]
        attr_accessor :data_store_sources
      
        # Required. Full resource name of the Engine. Format: `projects/`project`/
        # locations/`location`/collections/`collection`/engines/`engine``
        # Corresponds to the JSON property `engine`
        # @return [String]
        attr_accessor :engine
      
        # Optional. A filter applied to the search across the Engine. Not relevant and
        # not used if 'data_store_sources' is provided. See: https://cloud.google.com/
        # generative-ai-app-builder/docs/filter-search-metadata
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_store_sources = args[:data_store_sources] if args.key?(:data_store_sources)
          @engine = args[:engine] if args.key?(:engine)
          @filter = args[:filter] if args.key?(:filter)
        end
      end
      
      # Grounding configuration.
      class DataStoreToolGroundingConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Whether grounding is disabled.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # Optional. The groundedness threshold of the answer based on the retrieved
        # sources. The value has a configurable range of [1, 5]. The level is used to
        # threshold the groundedness of the answer, meaning that all responses with a
        # groundedness score below the threshold will fall back to returning relevant
        # snippets only. For example, a level of 3 means that the groundedness score
        # must be 3 or higher for the response to be returned.
        # Corresponds to the JSON property `groundingLevel`
        # @return [Float]
        attr_accessor :grounding_level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disabled = args[:disabled] if args.key?(:disabled)
          @grounding_level = args[:grounding_level] if args.key?(:grounding_level)
        end
      end
      
      # If specified, will apply the given configuration for the specified modality.
      class DataStoreToolModalityConfig
        include Google::Apis::Core::Hashable
      
        # Grounding configuration.
        # Corresponds to the JSON property `groundingConfig`
        # @return [Google::Apis::CesV1::DataStoreToolGroundingConfig]
        attr_accessor :grounding_config
      
        # Required. The modality type.
        # Corresponds to the JSON property `modalityType`
        # @return [String]
        attr_accessor :modality_type
      
        # Rewriter configuration.
        # Corresponds to the JSON property `rewriterConfig`
        # @return [Google::Apis::CesV1::DataStoreToolRewriterConfig]
        attr_accessor :rewriter_config
      
        # Summarization configuration.
        # Corresponds to the JSON property `summarizationConfig`
        # @return [Google::Apis::CesV1::DataStoreToolSummarizationConfig]
        attr_accessor :summarization_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @grounding_config = args[:grounding_config] if args.key?(:grounding_config)
          @modality_type = args[:modality_type] if args.key?(:modality_type)
          @rewriter_config = args[:rewriter_config] if args.key?(:rewriter_config)
          @summarization_config = args[:summarization_config] if args.key?(:summarization_config)
        end
      end
      
      # Rewriter configuration.
      class DataStoreToolRewriterConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Whether the rewriter is disabled.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # Model settings contains various configurations for the LLM model.
        # Corresponds to the JSON property `modelSettings`
        # @return [Google::Apis::CesV1::ModelSettings]
        attr_accessor :model_settings
      
        # Optional. The prompt definition. If not set, default prompt will be used.
        # Corresponds to the JSON property `prompt`
        # @return [String]
        attr_accessor :prompt
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disabled = args[:disabled] if args.key?(:disabled)
          @model_settings = args[:model_settings] if args.key?(:model_settings)
          @prompt = args[:prompt] if args.key?(:prompt)
        end
      end
      
      # Summarization configuration.
      class DataStoreToolSummarizationConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Whether summarization is disabled.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # Model settings contains various configurations for the LLM model.
        # Corresponds to the JSON property `modelSettings`
        # @return [Google::Apis::CesV1::ModelSettings]
        attr_accessor :model_settings
      
        # Optional. The prompt definition. If not set, default prompt will be used.
        # Corresponds to the JSON property `prompt`
        # @return [String]
        attr_accessor :prompt
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disabled = args[:disabled] if args.key?(:disabled)
          @model_settings = args[:model_settings] if args.key?(:model_settings)
          @prompt = args[:prompt] if args.key?(:prompt)
        end
      end
      
      # A deployment represents an immutable, queryable version of the app. It is used
      # to deploy an app version with a specific channel profile.
      class Deployment
        include Google::Apis::Core::Hashable
      
        # Required. The resource name of the app version to deploy. Format: projects/`
        # project`/locations/`location`/apps/`app`/versions/`version`
        # Corresponds to the JSON property `appVersion`
        # @return [String]
        attr_accessor :app_version
      
        # A ChannelProfile configures the agent's behavior for a specific communication
        # channel, such as web UI or telephony.
        # Corresponds to the JSON property `channelProfile`
        # @return [Google::Apis::CesV1::ChannelProfile]
        attr_accessor :channel_profile
      
        # Output only. Timestamp when this deployment was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. Display name of the deployment.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Etag used to ensure the object hasn't changed during a read-
        # modify-write operation. If the etag is empty, the update will overwrite any
        # concurrent changes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Identifier. The resource name of the deployment. Format: projects/`project`/
        # locations/`location`/apps/`app`/deployments/`deployment`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Timestamp when this deployment was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_version = args[:app_version] if args.key?(:app_version)
          @channel_profile = args[:channel_profile] if args.key?(:channel_profile)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Indicates the session has terminated, due to either successful completion (e.g.
      # user says "Good bye!" ) or an agent escalation. The agent will not process
      # any further inputs after session is terminated and the client should half-
      # close and disconnect after receiving all remaining responses from the agent.
      class EndSession
        include Google::Apis::Core::Hashable
      
        # Optional. Provides additional information about the end session signal, such
        # as the reason for ending the session.
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
      
      # End-user authentication configuration used for Connection calls. The field
      # values must be the names of context variables in the format `$context.
      # variables.`.
      class EndUserAuthConfig
        include Google::Apis::Core::Hashable
      
        # Oauth 2.0 Authorization Code authentication configuration.
        # Corresponds to the JSON property `oauth2AuthCodeConfig`
        # @return [Google::Apis::CesV1::EndUserAuthConfigOauth2AuthCodeConfig]
        attr_accessor :oauth2_auth_code_config
      
        # JWT Profile Oauth 2.0 Authorization Grant authentication configuration.
        # Corresponds to the JSON property `oauth2JwtBearerConfig`
        # @return [Google::Apis::CesV1::EndUserAuthConfigOauth2JwtBearerConfig]
        attr_accessor :oauth2_jwt_bearer_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @oauth2_auth_code_config = args[:oauth2_auth_code_config] if args.key?(:oauth2_auth_code_config)
          @oauth2_jwt_bearer_config = args[:oauth2_jwt_bearer_config] if args.key?(:oauth2_jwt_bearer_config)
        end
      end
      
      # Oauth 2.0 Authorization Code authentication configuration.
      class EndUserAuthConfigOauth2AuthCodeConfig
        include Google::Apis::Core::Hashable
      
        # Required. Oauth token parameter name to pass through. Must be in the format `$
        # context.variables.`.
        # Corresponds to the JSON property `oauthToken`
        # @return [String]
        attr_accessor :oauth_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @oauth_token = args[:oauth_token] if args.key?(:oauth_token)
        end
      end
      
      # JWT Profile Oauth 2.0 Authorization Grant authentication configuration.
      class EndUserAuthConfigOauth2JwtBearerConfig
        include Google::Apis::Core::Hashable
      
        # Required. Client parameter name to pass through. Must be in the format `$
        # context.variables.`.
        # Corresponds to the JSON property `clientKey`
        # @return [String]
        attr_accessor :client_key
      
        # Required. Issuer parameter name to pass through. Must be in the format `$
        # context.variables.`.
        # Corresponds to the JSON property `issuer`
        # @return [String]
        attr_accessor :issuer
      
        # Required. Subject parameter name to pass through. Must be in the format `$
        # context.variables.`.
        # Corresponds to the JSON property `subject`
        # @return [String]
        attr_accessor :subject
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_key = args[:client_key] if args.key?(:client_key)
          @issuer = args[:issuer] if args.key?(:issuer)
          @subject = args[:subject] if args.key?(:subject)
        end
      end
      
      # Threshold settings for metrics in an Evaluation.
      class EvaluationMetricsThresholds
        include Google::Apis::Core::Hashable
      
        # Settings for golden evaluations.
        # Corresponds to the JSON property `goldenEvaluationMetricsThresholds`
        # @return [Google::Apis::CesV1::EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds]
        attr_accessor :golden_evaluation_metrics_thresholds
      
        # Optional. The hallucination metric behavior for golden evaluations.
        # Corresponds to the JSON property `goldenHallucinationMetricBehavior`
        # @return [String]
        attr_accessor :golden_hallucination_metric_behavior
      
        # Optional. Deprecated: Use `golden_hallucination_metric_behavior` instead. The
        # hallucination metric behavior is currently used for golden evaluations.
        # Corresponds to the JSON property `hallucinationMetricBehavior`
        # @return [String]
        attr_accessor :hallucination_metric_behavior
      
        # Optional. The hallucination metric behavior for scenario evaluations.
        # Corresponds to the JSON property `scenarioHallucinationMetricBehavior`
        # @return [String]
        attr_accessor :scenario_hallucination_metric_behavior
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @golden_evaluation_metrics_thresholds = args[:golden_evaluation_metrics_thresholds] if args.key?(:golden_evaluation_metrics_thresholds)
          @golden_hallucination_metric_behavior = args[:golden_hallucination_metric_behavior] if args.key?(:golden_hallucination_metric_behavior)
          @hallucination_metric_behavior = args[:hallucination_metric_behavior] if args.key?(:hallucination_metric_behavior)
          @scenario_hallucination_metric_behavior = args[:scenario_hallucination_metric_behavior] if args.key?(:scenario_hallucination_metric_behavior)
        end
      end
      
      # Settings for golden evaluations.
      class EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds
        include Google::Apis::Core::Hashable
      
        # Expectation level metrics thresholds.
        # Corresponds to the JSON property `expectationLevelMetricsThresholds`
        # @return [Google::Apis::CesV1::EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds]
        attr_accessor :expectation_level_metrics_thresholds
      
        # Turn level metrics thresholds.
        # Corresponds to the JSON property `turnLevelMetricsThresholds`
        # @return [Google::Apis::CesV1::EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds]
        attr_accessor :turn_level_metrics_thresholds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expectation_level_metrics_thresholds = args[:expectation_level_metrics_thresholds] if args.key?(:expectation_level_metrics_thresholds)
          @turn_level_metrics_thresholds = args[:turn_level_metrics_thresholds] if args.key?(:turn_level_metrics_thresholds)
        end
      end
      
      # Expectation level metrics thresholds.
      class EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds
        include Google::Apis::Core::Hashable
      
        # Optional. The success threshold for individual tool invocation parameter
        # correctness. Must be a float between 0 and 1. Default is 1.0.
        # Corresponds to the JSON property `toolInvocationParameterCorrectnessThreshold`
        # @return [Float]
        attr_accessor :tool_invocation_parameter_correctness_threshold
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tool_invocation_parameter_correctness_threshold = args[:tool_invocation_parameter_correctness_threshold] if args.key?(:tool_invocation_parameter_correctness_threshold)
        end
      end
      
      # Turn level metrics thresholds.
      class EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds
        include Google::Apis::Core::Hashable
      
        # Optional. The success threshold for overall tool invocation correctness. Must
        # be a float between 0 and 1. Default is 1.0.
        # Corresponds to the JSON property `overallToolInvocationCorrectnessThreshold`
        # @return [Float]
        attr_accessor :overall_tool_invocation_correctness_threshold
      
        # Optional. The semantic similarity channel to use for evaluation.
        # Corresponds to the JSON property `semanticSimilarityChannel`
        # @return [String]
        attr_accessor :semantic_similarity_channel
      
        # Optional. The success threshold for semantic similarity. Must be an integer
        # between 0 and 4. Default is >= 3.
        # Corresponds to the JSON property `semanticSimilaritySuccessThreshold`
        # @return [Fixnum]
        attr_accessor :semantic_similarity_success_threshold
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @overall_tool_invocation_correctness_threshold = args[:overall_tool_invocation_correctness_threshold] if args.key?(:overall_tool_invocation_correctness_threshold)
          @semantic_similarity_channel = args[:semantic_similarity_channel] if args.key?(:semantic_similarity_channel)
          @semantic_similarity_success_threshold = args[:semantic_similarity_success_threshold] if args.key?(:semantic_similarity_success_threshold)
        end
      end
      
      # Event input.
      class Event
        include Google::Apis::Core::Hashable
      
        # Required. The name of the event.
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
      
      # An example represents a sample conversation between the user and the agent(s).
      class Example
        include Google::Apis::Core::Hashable
      
        # Output only. Timestamp when the example was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Human-readable description of the example.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. Display name of the example.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. The agent that initially handles the conversation. If not specified,
        # the example represents a conversation that is handled by the root agent.
        # Format: `projects/`project`/locations/`location`/apps/`app`/agents/`agent``
        # Corresponds to the JSON property `entryAgent`
        # @return [String]
        attr_accessor :entry_agent
      
        # Etag used to ensure the object hasn't changed during a read-modify-write
        # operation. If the etag is empty, the update will overwrite any concurrent
        # changes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. The example may become invalid if referencing resources are
        # deleted. Invalid examples will not be used as few-shot examples.
        # Corresponds to the JSON property `invalid`
        # @return [Boolean]
        attr_accessor :invalid
        alias_method :invalid?, :invalid
      
        # Optional. The collection of messages that make up the conversation.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::CesV1::Message>]
        attr_accessor :messages
      
        # Identifier. The unique identifier of the example. Format: `projects/`project`/
        # locations/`location`/apps/`app`/examples/`example``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Timestamp when the example was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @entry_agent = args[:entry_agent] if args.key?(:entry_agent)
          @etag = args[:etag] if args.key?(:etag)
          @invalid = args[:invalid] if args.key?(:invalid)
          @messages = args[:messages] if args.key?(:messages)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Request message for ToolService.ExecuteTool.
      class ExecuteToolRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The input parameters and values for the tool in JSON object format.
        # Corresponds to the JSON property `args`
        # @return [Hash<String,Object>]
        attr_accessor :args
      
        # Optional. The name of the tool to execute. Format: projects/`project`/
        # locations/`location`/apps/`app`/tools/`tool`
        # Corresponds to the JSON property `tool`
        # @return [String]
        attr_accessor :tool
      
        # A tool that is created from a toolset.
        # Corresponds to the JSON property `toolsetTool`
        # @return [Google::Apis::CesV1::ToolsetTool]
        attr_accessor :toolset_tool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @args = args[:args] if args.key?(:args)
          @tool = args[:tool] if args.key?(:tool)
          @toolset_tool = args[:toolset_tool] if args.key?(:toolset_tool)
        end
      end
      
      # Response message for ToolService.ExecuteTool.
      class ExecuteToolResponse
        include Google::Apis::Core::Hashable
      
        # Required. The tool execution result in JSON object format. Use "output" key to
        # specify tool response and "error" key to specify error details (if any). If "
        # output" and "error" keys are not specified, then whole "response" is treated
        # as tool execution result.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        # The name of the tool that got executed. Format: `projects/`project`/locations/`
        # location`/apps/`app`/tools/`tool``
        # Corresponds to the JSON property `tool`
        # @return [String]
        attr_accessor :tool
      
        # A tool that is created from a toolset.
        # Corresponds to the JSON property `toolsetTool`
        # @return [Google::Apis::CesV1::ToolsetTool]
        attr_accessor :toolset_tool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @response = args[:response] if args.key?(:response)
          @tool = args[:tool] if args.key?(:tool)
          @toolset_tool = args[:toolset_tool] if args.key?(:toolset_tool)
        end
      end
      
      # Request message for AgentService.ExportApp.
      class ExportAppRequest
        include Google::Apis::Core::Hashable
      
        # Required. The format to export the app in.
        # Corresponds to the JSON property `exportFormat`
        # @return [String]
        attr_accessor :export_format
      
        # Optional. The [Google Cloud Storage](https://cloud.google.com/storage/docs/)
        # URI to which to export the app. The format of this URI must be `gs:///`. The
        # exported app archive will be written directly to the specified GCS object.
        # Corresponds to the JSON property `gcsUri`
        # @return [String]
        attr_accessor :gcs_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @export_format = args[:export_format] if args.key?(:export_format)
          @gcs_uri = args[:gcs_uri] if args.key?(:gcs_uri)
        end
      end
      
      # Response message for AgentService.ExportApp.
      class ExportAppResponse
        include Google::Apis::Core::Hashable
      
        # App folder compressed as a zip file.
        # Corresponds to the JSON property `appContent`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :app_content
      
        # The [Google Cloud Storage](https://cloud.google.com/storage/docs/) URI to
        # which the app was exported.
        # Corresponds to the JSON property `appUri`
        # @return [String]
        attr_accessor :app_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_content = args[:app_content] if args.key?(:app_content)
          @app_uri = args[:app_uri] if args.key?(:app_uri)
        end
      end
      
      # Expression condition based on session state.
      class ExpressionCondition
        include Google::Apis::Core::Hashable
      
        # Required. The string representation of cloud.api.Expression condition.
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expression = args[:expression] if args.key?(:expression)
        end
      end
      
      # The file search tool allows the agent to search across the files uploaded by
      # the app/agent developer. It has presets to give relatively good quality search
      # over the uploaded files and summarization of the retrieved results.
      class FileSearchTool
        include Google::Apis::Core::Hashable
      
        # Optional. The type of the corpus. Default is FULLY_MANAGED.
        # Corresponds to the JSON property `corpusType`
        # @return [String]
        attr_accessor :corpus_type
      
        # Optional. The tool description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. The corpus where files are stored. Format: projects/`project`/
        # locations/`location`/ragCorpora/`rag_corpus`
        # Corresponds to the JSON property `fileCorpus`
        # @return [String]
        attr_accessor :file_corpus
      
        # Required. The tool name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @corpus_type = args[:corpus_type] if args.key?(:corpus_type)
          @description = args[:description] if args.key?(:description)
          @file_corpus = args[:file_corpus] if args.key?(:file_corpus)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Request message for WidgetService.GenerateChatToken.
      class GenerateChatTokenRequest
        include Google::Apis::Core::Hashable
      
        # Required. The deployment of the app to use for the session. Format: projects/`
        # project`/locations/`location`/apps/`app`/deployments/`deployment`
        # Corresponds to the JSON property `deployment`
        # @return [String]
        attr_accessor :deployment
      
        # Optional. The reCAPTCHA token generated by the client-side chat widget.
        # Corresponds to the JSON property `recaptchaToken`
        # @return [String]
        attr_accessor :recaptcha_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deployment = args[:deployment] if args.key?(:deployment)
          @recaptcha_token = args[:recaptcha_token] if args.key?(:recaptcha_token)
        end
      end
      
      # Response message for WidgetService.GenerateChatToken.
      class GenerateChatTokenResponse
        include Google::Apis::Core::Hashable
      
        # The session scoped token for chat widget to authenticate with Session APIs.
        # Corresponds to the JSON property `chatToken`
        # @return [String]
        attr_accessor :chat_token
      
        # The time at which the chat token expires.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chat_token = args[:chat_token] if args.key?(:chat_token)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
        end
      end
      
      # Search suggestions from Google Search Tool.
      class GoogleSearchSuggestions
        include Google::Apis::Core::Hashable
      
        # Compliant HTML and CSS styling for search suggestions. The provided HTML and
        # CSS automatically adapts to your device settings, displaying in either light
        # or dark mode indicated by `@media(prefers-color-scheme)`.
        # Corresponds to the JSON property `htmls`
        # @return [Array<String>]
        attr_accessor :htmls
      
        # List of queries used to perform the google search along with the search result
        # URIs forming the search suggestions.
        # Corresponds to the JSON property `webSearchQueries`
        # @return [Array<Google::Apis::CesV1::WebSearchQuery>]
        attr_accessor :web_search_queries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @htmls = args[:htmls] if args.key?(:htmls)
          @web_search_queries = args[:web_search_queries] if args.key?(:web_search_queries)
        end
      end
      
      # Represents a tool to perform Google web searches for grounding. See https://
      # cloud.google.com/customer-engagement-ai/conversational-agents/ps/tool#google-
      # search.
      class GoogleSearchTool
        include Google::Apis::Core::Hashable
      
        # Optional. Content will be fetched directly from these URLs for context and
        # grounding. Example: "https://example.com/path.html". A maximum of 20 URLs are
        # allowed.
        # Corresponds to the JSON property `contextUrls`
        # @return [Array<String>]
        attr_accessor :context_urls
      
        # Optional. Description of the tool's purpose.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. List of domains to be excluded from the search results. Example: "
        # example.com". A maximum of 2000 domains can be excluded.
        # Corresponds to the JSON property `excludeDomains`
        # @return [Array<String>]
        attr_accessor :exclude_domains
      
        # Required. The name of the tool.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Specifies domains to restrict search results to. Example: "example.
        # com", "another.site". A maximum of 20 domains can be specified.
        # Corresponds to the JSON property `preferredDomains`
        # @return [Array<String>]
        attr_accessor :preferred_domains
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context_urls = args[:context_urls] if args.key?(:context_urls)
          @description = args[:description] if args.key?(:description)
          @exclude_domains = args[:exclude_domains] if args.key?(:exclude_domains)
          @name = args[:name] if args.key?(:name)
          @preferred_domains = args[:preferred_domains] if args.key?(:preferred_domains)
        end
      end
      
      # Guardrail contains a list of checks and balances to keep the agents safe and
      # secure.
      class Guardrail
        include Google::Apis::Core::Hashable
      
        # Action that is taken when a certain precondition is met.
        # Corresponds to the JSON property `action`
        # @return [Google::Apis::CesV1::TriggerAction]
        attr_accessor :action
      
        # Guardrail that blocks the conversation based on the code callbacks provided.
        # Corresponds to the JSON property `codeCallback`
        # @return [Google::Apis::CesV1::GuardrailCodeCallback]
        attr_accessor :code_callback
      
        # Guardrail that bans certain content from being used in the conversation.
        # Corresponds to the JSON property `contentFilter`
        # @return [Google::Apis::CesV1::GuardrailContentFilter]
        attr_accessor :content_filter
      
        # Output only. Timestamp when the guardrail was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Description of the guardrail.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. Display name of the guardrail.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. Whether the guardrail is enabled.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Etag used to ensure the object hasn't changed during a read-modify-write
        # operation. If the etag is empty, the update will overwrite any concurrent
        # changes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Guardrail that blocks the conversation if the LLM response is considered
        # violating the policy based on the LLM classification.
        # Corresponds to the JSON property `llmPolicy`
        # @return [Google::Apis::CesV1::GuardrailLlmPolicy]
        attr_accessor :llm_policy
      
        # Guardrail that blocks the conversation if the input is considered unsafe based
        # on the LLM classification.
        # Corresponds to the JSON property `llmPromptSecurity`
        # @return [Google::Apis::CesV1::GuardrailLlmPromptSecurity]
        attr_accessor :llm_prompt_security
      
        # Model safety settings overrides. When this is set, it will override the
        # default settings and trigger the guardrail if the response is considered
        # unsafe.
        # Corresponds to the JSON property `modelSafety`
        # @return [Google::Apis::CesV1::GuardrailModelSafety]
        attr_accessor :model_safety
      
        # Identifier. The unique identifier of the guardrail. Format: `projects/`project`
        # /locations/`location`/apps/`app`/guardrails/`guardrail``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Timestamp when the guardrail was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @code_callback = args[:code_callback] if args.key?(:code_callback)
          @content_filter = args[:content_filter] if args.key?(:content_filter)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @enabled = args[:enabled] if args.key?(:enabled)
          @etag = args[:etag] if args.key?(:etag)
          @llm_policy = args[:llm_policy] if args.key?(:llm_policy)
          @llm_prompt_security = args[:llm_prompt_security] if args.key?(:llm_prompt_security)
          @model_safety = args[:model_safety] if args.key?(:model_safety)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Guardrail that blocks the conversation based on the code callbacks provided.
      class GuardrailCodeCallback
        include Google::Apis::Core::Hashable
      
        # A callback defines the custom logic to be executed at various stages of agent
        # interaction.
        # Corresponds to the JSON property `afterAgentCallback`
        # @return [Google::Apis::CesV1::Callback]
        attr_accessor :after_agent_callback
      
        # A callback defines the custom logic to be executed at various stages of agent
        # interaction.
        # Corresponds to the JSON property `afterModelCallback`
        # @return [Google::Apis::CesV1::Callback]
        attr_accessor :after_model_callback
      
        # A callback defines the custom logic to be executed at various stages of agent
        # interaction.
        # Corresponds to the JSON property `beforeAgentCallback`
        # @return [Google::Apis::CesV1::Callback]
        attr_accessor :before_agent_callback
      
        # A callback defines the custom logic to be executed at various stages of agent
        # interaction.
        # Corresponds to the JSON property `beforeModelCallback`
        # @return [Google::Apis::CesV1::Callback]
        attr_accessor :before_model_callback
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @after_agent_callback = args[:after_agent_callback] if args.key?(:after_agent_callback)
          @after_model_callback = args[:after_model_callback] if args.key?(:after_model_callback)
          @before_agent_callback = args[:before_agent_callback] if args.key?(:before_agent_callback)
          @before_model_callback = args[:before_model_callback] if args.key?(:before_model_callback)
        end
      end
      
      # Guardrail that bans certain content from being used in the conversation.
      class GuardrailContentFilter
        include Google::Apis::Core::Hashable
      
        # Optional. List of banned phrases. Applies to both user inputs and agent
        # responses.
        # Corresponds to the JSON property `bannedContents`
        # @return [Array<String>]
        attr_accessor :banned_contents
      
        # Optional. List of banned phrases. Applies only to agent responses.
        # Corresponds to the JSON property `bannedContentsInAgentResponse`
        # @return [Array<String>]
        attr_accessor :banned_contents_in_agent_response
      
        # Optional. List of banned phrases. Applies only to user inputs.
        # Corresponds to the JSON property `bannedContentsInUserInput`
        # @return [Array<String>]
        attr_accessor :banned_contents_in_user_input
      
        # Optional. If true, diacritics are ignored during matching.
        # Corresponds to the JSON property `disregardDiacritics`
        # @return [Boolean]
        attr_accessor :disregard_diacritics
        alias_method :disregard_diacritics?, :disregard_diacritics
      
        # Required. Match type for the content filter.
        # Corresponds to the JSON property `matchType`
        # @return [String]
        attr_accessor :match_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @banned_contents = args[:banned_contents] if args.key?(:banned_contents)
          @banned_contents_in_agent_response = args[:banned_contents_in_agent_response] if args.key?(:banned_contents_in_agent_response)
          @banned_contents_in_user_input = args[:banned_contents_in_user_input] if args.key?(:banned_contents_in_user_input)
          @disregard_diacritics = args[:disregard_diacritics] if args.key?(:disregard_diacritics)
          @match_type = args[:match_type] if args.key?(:match_type)
        end
      end
      
      # Guardrail that blocks the conversation if the LLM response is considered
      # violating the policy based on the LLM classification.
      class GuardrailLlmPolicy
        include Google::Apis::Core::Hashable
      
        # Optional. By default, the LLM policy check is bypassed for short utterances.
        # Enabling this setting applies the policy check to all utterances, including
        # those that would normally be skipped.
        # Corresponds to the JSON property `allowShortUtterance`
        # @return [Boolean]
        attr_accessor :allow_short_utterance
        alias_method :allow_short_utterance?, :allow_short_utterance
      
        # Optional. If an error occurs during the policy check, fail open and do not
        # trigger the guardrail.
        # Corresponds to the JSON property `failOpen`
        # @return [Boolean]
        attr_accessor :fail_open
        alias_method :fail_open?, :fail_open
      
        # Optional. When checking this policy, consider the last 'n' messages in the
        # conversation. When not set a default value of 10 will be used.
        # Corresponds to the JSON property `maxConversationMessages`
        # @return [Fixnum]
        attr_accessor :max_conversation_messages
      
        # Model settings contains various configurations for the LLM model.
        # Corresponds to the JSON property `modelSettings`
        # @return [Google::Apis::CesV1::ModelSettings]
        attr_accessor :model_settings
      
        # Required. Defines when to apply the policy check during the conversation. If
        # set to `POLICY_SCOPE_UNSPECIFIED`, the policy will be applied to the user
        # input. When applying the policy to the agent response, additional latency will
        # be introduced before the agent can respond.
        # Corresponds to the JSON property `policyScope`
        # @return [String]
        attr_accessor :policy_scope
      
        # Required. Policy prompt.
        # Corresponds to the JSON property `prompt`
        # @return [String]
        attr_accessor :prompt
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_short_utterance = args[:allow_short_utterance] if args.key?(:allow_short_utterance)
          @fail_open = args[:fail_open] if args.key?(:fail_open)
          @max_conversation_messages = args[:max_conversation_messages] if args.key?(:max_conversation_messages)
          @model_settings = args[:model_settings] if args.key?(:model_settings)
          @policy_scope = args[:policy_scope] if args.key?(:policy_scope)
          @prompt = args[:prompt] if args.key?(:prompt)
        end
      end
      
      # Guardrail that blocks the conversation if the input is considered unsafe based
      # on the LLM classification.
      class GuardrailLlmPromptSecurity
        include Google::Apis::Core::Hashable
      
        # Guardrail that blocks the conversation if the LLM response is considered
        # violating the policy based on the LLM classification.
        # Corresponds to the JSON property `customPolicy`
        # @return [Google::Apis::CesV1::GuardrailLlmPolicy]
        attr_accessor :custom_policy
      
        # Configuration for default system security settings.
        # Corresponds to the JSON property `defaultSettings`
        # @return [Google::Apis::CesV1::GuardrailLlmPromptSecurityDefaultSecuritySettings]
        attr_accessor :default_settings
      
        # Optional. Determines the behavior when the guardrail encounters an LLM error. -
        # If true: the guardrail is bypassed. - If false (default): the guardrail
        # triggers/blocks. Note: If a custom policy is provided, this field is ignored
        # in favor of the policy's 'fail_open' configuration.
        # Corresponds to the JSON property `failOpen`
        # @return [Boolean]
        attr_accessor :fail_open
        alias_method :fail_open?, :fail_open
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_policy = args[:custom_policy] if args.key?(:custom_policy)
          @default_settings = args[:default_settings] if args.key?(:default_settings)
          @fail_open = args[:fail_open] if args.key?(:fail_open)
        end
      end
      
      # Configuration for default system security settings.
      class GuardrailLlmPromptSecurityDefaultSecuritySettings
        include Google::Apis::Core::Hashable
      
        # Output only. The default prompt template used by the system. This field is for
        # display purposes to show the user what prompt the system uses by default. It
        # is OUTPUT_ONLY.
        # Corresponds to the JSON property `defaultPromptTemplate`
        # @return [String]
        attr_accessor :default_prompt_template
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_prompt_template = args[:default_prompt_template] if args.key?(:default_prompt_template)
        end
      end
      
      # Model safety settings overrides. When this is set, it will override the
      # default settings and trigger the guardrail if the response is considered
      # unsafe.
      class GuardrailModelSafety
        include Google::Apis::Core::Hashable
      
        # Required. List of safety settings.
        # Corresponds to the JSON property `safetySettings`
        # @return [Array<Google::Apis::CesV1::GuardrailModelSafetySafetySetting>]
        attr_accessor :safety_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @safety_settings = args[:safety_settings] if args.key?(:safety_settings)
        end
      end
      
      # Safety setting.
      class GuardrailModelSafetySafetySetting
        include Google::Apis::Core::Hashable
      
        # Required. The harm category.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # Required. The harm block threshold.
        # Corresponds to the JSON property `threshold`
        # @return [String]
        attr_accessor :threshold
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
          @threshold = args[:threshold] if args.key?(:threshold)
        end
      end
      
      # Represents an image input or output in the conversation.
      class Image
        include Google::Apis::Core::Hashable
      
        # Required. Raw bytes of the image.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # Required. The IANA standard MIME type of the source data. Supported image
        # types includes: * image/png * image/jpeg * image/webp
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
        end
      end
      
      # Request message for AgentService.ImportApp.
      class ImportAppRequest
        include Google::Apis::Core::Hashable
      
        # Raw bytes representing the compressed zip file with the app folder structure.
        # Corresponds to the JSON property `appContent`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :app_content
      
        # Optional. The ID to use for the imported app. * If not specified, a unique ID
        # will be automatically assigned for the app. * Otherwise, the imported app will
        # use this ID as the final component of its resource name. If an app with the
        # same ID already exists at the specified location in the project, the content
        # of the existing app will be replaced.
        # Corresponds to the JSON property `appId`
        # @return [String]
        attr_accessor :app_id
      
        # Optional. The display name of the app to import. * If the app is created on
        # import, and the display name is specified, the imported app will use this
        # display name. If a conflict is detected with an existing app, a timestamp will
        # be appended to the display name to make it unique. * If the app is a reimport,
        # this field should not be set. Providing a display name during reimport will
        # result in an INVALID_ARGUMENT error.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The [Google Cloud Storage](https://cloud.google.com/storage/docs/) URI from
        # which to import app. The format of this URI must be `gs:///`.
        # Corresponds to the JSON property `gcsUri`
        # @return [String]
        attr_accessor :gcs_uri
      
        # Configuration options for the app import process. These options control how
        # the import behaves, particularly when conflicts arise with existing app data.
        # Corresponds to the JSON property `importOptions`
        # @return [Google::Apis::CesV1::ImportAppRequestImportOptions]
        attr_accessor :import_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_content = args[:app_content] if args.key?(:app_content)
          @app_id = args[:app_id] if args.key?(:app_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @gcs_uri = args[:gcs_uri] if args.key?(:gcs_uri)
          @import_options = args[:import_options] if args.key?(:import_options)
        end
      end
      
      # Configuration options for the app import process. These options control how
      # the import behaves, particularly when conflicts arise with existing app data.
      class ImportAppRequestImportOptions
        include Google::Apis::Core::Hashable
      
        # Optional. The strategy to use when resolving conflicts during import.
        # Corresponds to the JSON property `conflictResolutionStrategy`
        # @return [String]
        attr_accessor :conflict_resolution_strategy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conflict_resolution_strategy = args[:conflict_resolution_strategy] if args.key?(:conflict_resolution_strategy)
        end
      end
      
      # Response message for AgentService.ImportApp.
      class ImportAppResponse
        include Google::Apis::Core::Hashable
      
        # The resource name of the app that was imported.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Warning messages generated during the import process. If errors occur for
        # specific resources, they will not be included in the imported app and the
        # error will be mentioned here.
        # Corresponds to the JSON property `warnings`
        # @return [Array<String>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
      end
      
      # InputAudioConfig configures how the CES agent should interpret the incoming
      # audio data.
      class InputAudioConfig
        include Google::Apis::Core::Hashable
      
        # Required. The encoding of the input audio data.
        # Corresponds to the JSON property `audioEncoding`
        # @return [String]
        attr_accessor :audio_encoding
      
        # Optional. Whether to enable noise suppression on the input audio. Available
        # values are "low", "moderate", "high", "very_high".
        # Corresponds to the JSON property `noiseSuppressionLevel`
        # @return [String]
        attr_accessor :noise_suppression_level
      
        # Required. The sample rate (in Hertz) of the input audio data.
        # Corresponds to the JSON property `sampleRateHertz`
        # @return [Fixnum]
        attr_accessor :sample_rate_hertz
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_encoding = args[:audio_encoding] if args.key?(:audio_encoding)
          @noise_suppression_level = args[:noise_suppression_level] if args.key?(:noise_suppression_level)
          @sample_rate_hertz = args[:sample_rate_hertz] if args.key?(:sample_rate_hertz)
        end
      end
      
      # Language settings of the app.
      class LanguageSettings
        include Google::Apis::Core::Hashable
      
        # Optional. The default language code of the app.
        # Corresponds to the JSON property `defaultLanguageCode`
        # @return [String]
        attr_accessor :default_language_code
      
        # Optional. Enables multilingual support. If true, agents in the app will use
        # pre-built instructions to improve handling of multilingual input.
        # Corresponds to the JSON property `enableMultilingualSupport`
        # @return [Boolean]
        attr_accessor :enable_multilingual_support
        alias_method :enable_multilingual_support?, :enable_multilingual_support
      
        # Optional. The action to perform when an agent receives input in an unsupported
        # language. This can be a predefined action or a custom tool call. Valid values
        # are: - A tool's full resource name, which triggers a specific tool execution. -
        # A predefined system action, such as "escalate" or "exit", which triggers an
        # EndSession signal with corresponding metadata to terminate the conversation.
        # Corresponds to the JSON property `fallbackAction`
        # @return [String]
        attr_accessor :fallback_action
      
        # Optional. List of languages codes supported by the app, in addition to the `
        # default_language_code`.
        # Corresponds to the JSON property `supportedLanguageCodes`
        # @return [Array<String>]
        attr_accessor :supported_language_codes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_language_code = args[:default_language_code] if args.key?(:default_language_code)
          @enable_multilingual_support = args[:enable_multilingual_support] if args.key?(:enable_multilingual_support)
          @fallback_action = args[:fallback_action] if args.key?(:fallback_action)
          @supported_language_codes = args[:supported_language_codes] if args.key?(:supported_language_codes)
        end
      end
      
      # Response message for AgentService.ListAgents.
      class ListAgentsResponse
        include Google::Apis::Core::Hashable
      
        # The list of agents.
        # Corresponds to the JSON property `agents`
        # @return [Array<Google::Apis::CesV1::Agent>]
        attr_accessor :agents
      
        # A token that can be sent as ListAgentsRequest.page_token to retrieve the next
        # page. Absence of this field indicates there are no subsequent pages.
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
      
      # Response message for AgentService.ListAppVersions.
      class ListAppVersionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of app versions.
        # Corresponds to the JSON property `appVersions`
        # @return [Array<Google::Apis::CesV1::AppVersion>]
        attr_accessor :app_versions
      
        # A token that can be sent as ListAppVersionsRequest.page_token to retrieve the
        # next page. Absence of this field indicates there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_versions = args[:app_versions] if args.key?(:app_versions)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for AgentService.ListApps.
      class ListAppsResponse
        include Google::Apis::Core::Hashable
      
        # The list of apps.
        # Corresponds to the JSON property `apps`
        # @return [Array<Google::Apis::CesV1::App>]
        attr_accessor :apps
      
        # A token that can be sent as ListAppsRequest.page_token to retrieve the next
        # page. Absence of this field indicates there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Unordered list. Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apps = args[:apps] if args.key?(:apps)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for AgentService.ListChangelogs.
      class ListChangelogsResponse
        include Google::Apis::Core::Hashable
      
        # The list of changelogs.
        # Corresponds to the JSON property `changelogs`
        # @return [Array<Google::Apis::CesV1::Changelog>]
        attr_accessor :changelogs
      
        # A token that can be sent as ListChangelogsRequest.page_token to retrieve the
        # next page. Absence of this field indicates there are no subsequent pages.
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
      
      # Response message for AgentService.ListConversations.
      class ListConversationsResponse
        include Google::Apis::Core::Hashable
      
        # The list of conversations.
        # Corresponds to the JSON property `conversations`
        # @return [Array<Google::Apis::CesV1::Conversation>]
        attr_accessor :conversations
      
        # A token that can be sent as ListConversationsRequest.page_token to retrieve
        # the next page. Absence of this field indicates there are no subsequent pages.
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
      
      # Response message for AgentService.ListDeployments.
      class ListDeploymentsResponse
        include Google::Apis::Core::Hashable
      
        # The list of deployments.
        # Corresponds to the JSON property `deployments`
        # @return [Array<Google::Apis::CesV1::Deployment>]
        attr_accessor :deployments
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
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
      
      # Response message for AgentService.ListExamples.
      class ListExamplesResponse
        include Google::Apis::Core::Hashable
      
        # The list of examples.
        # Corresponds to the JSON property `examples`
        # @return [Array<Google::Apis::CesV1::Example>]
        attr_accessor :examples
      
        # A token that can be sent as ListExamplesRequest.page_token to retrieve the
        # next page. Absence of this field indicates there are no subsequent pages.
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
      
      # Response message for AgentService.ListGuardrails.
      class ListGuardrailsResponse
        include Google::Apis::Core::Hashable
      
        # The list of guardrails.
        # Corresponds to the JSON property `guardrails`
        # @return [Array<Google::Apis::CesV1::Guardrail>]
        attr_accessor :guardrails
      
        # A token that can be sent as ListGuardrailsRequest.page_token to retrieve the
        # next page. Absence of this field indicates there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @guardrails = args[:guardrails] if args.key?(:guardrails)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::CesV1::Location>]
        attr_accessor :locations
      
        # The standard List next-page token.
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
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::CesV1::Operation>]
        attr_accessor :operations
      
        # Unordered list. Unreachable resources. Populated when the request sets `
        # ListOperationsRequest.return_partial_success` and reads across collections.
        # For example, when attempting to list all resources across all supported
        # locations.
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
      
      # Response message for AgentService.ListTools.
      class ListToolsResponse
        include Google::Apis::Core::Hashable
      
        # A token that can be sent as ListToolsRequest.page_token to retrieve the next
        # page. Absence of this field indicates there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of tools.
        # Corresponds to the JSON property `tools`
        # @return [Array<Google::Apis::CesV1::Tool>]
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
      
      # Response message for AgentService.ListToolsets.
      class ListToolsetsResponse
        include Google::Apis::Core::Hashable
      
        # A token that can be sent as ListToolsetsRequest.page_token to retrieve the
        # next page. Absence of this field indicates there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of toolsets.
        # Corresponds to the JSON property `toolsets`
        # @return [Array<Google::Apis::CesV1::Toolset>]
        attr_accessor :toolsets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @toolsets = args[:toolsets] if args.key?(:toolsets)
        end
      end
      
      # A resource that represents a Google Cloud location.
      class Location
        include Google::Apis::Core::Hashable
      
        # The friendly name for this location, typically a nearby city name. For example,
        # "Tokyo".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Cross-service attributes for the location. For example `"cloud.googleapis.com/
        # region": "us-east1"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The canonical id for this location. For example: `"us-east1"`.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Service-specific metadata. For example the available capacity at the given
        # location.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Resource name for the location, which may vary between implementations. For
        # example: `"projects/example-project/locations/us-east1"`
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
      
      # Settings to describe the logging behaviors for the app.
      class LoggingSettings
        include Google::Apis::Core::Hashable
      
        # Configuration for how the audio interactions should be recorded.
        # Corresponds to the JSON property `audioRecordingConfig`
        # @return [Google::Apis::CesV1::AudioRecordingConfig]
        attr_accessor :audio_recording_config
      
        # Settings to describe the BigQuery export behaviors for the app.
        # Corresponds to the JSON property `bigqueryExportSettings`
        # @return [Google::Apis::CesV1::BigQueryExportSettings]
        attr_accessor :bigquery_export_settings
      
        # Settings to describe the Cloud Logging behaviors for the app.
        # Corresponds to the JSON property `cloudLoggingSettings`
        # @return [Google::Apis::CesV1::CloudLoggingSettings]
        attr_accessor :cloud_logging_settings
      
        # Settings to describe the conversation logging behaviors for the app.
        # Corresponds to the JSON property `conversationLoggingSettings`
        # @return [Google::Apis::CesV1::ConversationLoggingSettings]
        attr_accessor :conversation_logging_settings
      
        # Configuration for how the audio interactions should be recorded.
        # Corresponds to the JSON property `evaluationAudioRecordingConfig`
        # @return [Google::Apis::CesV1::AudioRecordingConfig]
        attr_accessor :evaluation_audio_recording_config
      
        # Settings to describe the conversation data collection behaviors for LLM
        # analysis metrics pipeline.
        # Corresponds to the JSON property `metricAnalysisSettings`
        # @return [Google::Apis::CesV1::MetricAnalysisSettings]
        attr_accessor :metric_analysis_settings
      
        # Configuration to instruct how sensitive data should be handled.
        # Corresponds to the JSON property `redactionConfig`
        # @return [Google::Apis::CesV1::RedactionConfig]
        attr_accessor :redaction_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_recording_config = args[:audio_recording_config] if args.key?(:audio_recording_config)
          @bigquery_export_settings = args[:bigquery_export_settings] if args.key?(:bigquery_export_settings)
          @cloud_logging_settings = args[:cloud_logging_settings] if args.key?(:cloud_logging_settings)
          @conversation_logging_settings = args[:conversation_logging_settings] if args.key?(:conversation_logging_settings)
          @evaluation_audio_recording_config = args[:evaluation_audio_recording_config] if args.key?(:evaluation_audio_recording_config)
          @metric_analysis_settings = args[:metric_analysis_settings] if args.key?(:metric_analysis_settings)
          @redaction_config = args[:redaction_config] if args.key?(:redaction_config)
        end
      end
      
      # An MCP tool. See https://modelcontextprotocol.io/specification/2025-06-18/
      # server/tools for more details.
      class McpTool
        include Google::Apis::Core::Hashable
      
        # Authentication information required for API calls.
        # Corresponds to the JSON property `apiAuthentication`
        # @return [Google::Apis::CesV1::ApiAuthentication]
        attr_accessor :api_authentication
      
        # Optional. The description of the MCP tool.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Represents a select subset of an OpenAPI 3.0 schema object.
        # Corresponds to the JSON property `inputSchema`
        # @return [Google::Apis::CesV1::Schema]
        attr_accessor :input_schema
      
        # Required. The name of the MCP tool.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Represents a select subset of an OpenAPI 3.0 schema object.
        # Corresponds to the JSON property `outputSchema`
        # @return [Google::Apis::CesV1::Schema]
        attr_accessor :output_schema
      
        # Required. The server address of the MCP server, e.g., "https://example.com/mcp/
        # ". If the server is built with the MCP SDK, the url should be suffixed with "/
        # mcp/". Only Streamable HTTP transport based servers are supported. This is the
        # same as the server_address in the McpToolset. See https://modelcontextprotocol.
        # io/specification/2025-03-26/basic/transports#streamable-http for more details.
        # Corresponds to the JSON property `serverAddress`
        # @return [String]
        attr_accessor :server_address
      
        # Configuration for tools using Service Directory.
        # Corresponds to the JSON property `serviceDirectoryConfig`
        # @return [Google::Apis::CesV1::ServiceDirectoryConfig]
        attr_accessor :service_directory_config
      
        # The TLS configuration.
        # Corresponds to the JSON property `tlsConfig`
        # @return [Google::Apis::CesV1::TlsConfig]
        attr_accessor :tls_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_authentication = args[:api_authentication] if args.key?(:api_authentication)
          @description = args[:description] if args.key?(:description)
          @input_schema = args[:input_schema] if args.key?(:input_schema)
          @name = args[:name] if args.key?(:name)
          @output_schema = args[:output_schema] if args.key?(:output_schema)
          @server_address = args[:server_address] if args.key?(:server_address)
          @service_directory_config = args[:service_directory_config] if args.key?(:service_directory_config)
          @tls_config = args[:tls_config] if args.key?(:tls_config)
        end
      end
      
      # A toolset that contains a list of tools that are offered by the MCP server.
      class McpToolset
        include Google::Apis::Core::Hashable
      
        # Authentication information required for API calls.
        # Corresponds to the JSON property `apiAuthentication`
        # @return [Google::Apis::CesV1::ApiAuthentication]
        attr_accessor :api_authentication
      
        # Required. The address of the MCP server, for example, "https://example.com/mcp/
        # ". If the server is built with the MCP SDK, the url should be suffixed with "/
        # mcp/". Only Streamable HTTP transport based servers are supported. See https://
        # modelcontextprotocol.io/specification/2025-03-26/basic/transports#streamable-
        # http for more details.
        # Corresponds to the JSON property `serverAddress`
        # @return [String]
        attr_accessor :server_address
      
        # Configuration for tools using Service Directory.
        # Corresponds to the JSON property `serviceDirectoryConfig`
        # @return [Google::Apis::CesV1::ServiceDirectoryConfig]
        attr_accessor :service_directory_config
      
        # The TLS configuration.
        # Corresponds to the JSON property `tlsConfig`
        # @return [Google::Apis::CesV1::TlsConfig]
        attr_accessor :tls_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_authentication = args[:api_authentication] if args.key?(:api_authentication)
          @server_address = args[:server_address] if args.key?(:server_address)
          @service_directory_config = args[:service_directory_config] if args.key?(:service_directory_config)
          @tls_config = args[:tls_config] if args.key?(:tls_config)
        end
      end
      
      # A message within a conversation.
      class Message
        include Google::Apis::Core::Hashable
      
        # Optional. Content of the message as a series of chunks.
        # Corresponds to the JSON property `chunks`
        # @return [Array<Google::Apis::CesV1::Chunk>]
        attr_accessor :chunks
      
        # Optional. Timestamp when the message was sent or received. Should not be used
        # if the message is part of an example.
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # Optional. The role within the conversation, e.g., user, agent.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chunks = args[:chunks] if args.key?(:chunks)
          @event_time = args[:event_time] if args.key?(:event_time)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # Settings to describe the conversation data collection behaviors for LLM
      # analysis metrics pipeline.
      class MetricAnalysisSettings
        include Google::Apis::Core::Hashable
      
        # Optional. Whether to collect conversation data for llm analysis metrics. If
        # true, conversation data will not be collected for llm analysis metrics;
        # otherwise, conversation data will be collected.
        # Corresponds to the JSON property `llmMetricsOptedOut`
        # @return [Boolean]
        attr_accessor :llm_metrics_opted_out
        alias_method :llm_metrics_opted_out?, :llm_metrics_opted_out
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @llm_metrics_opted_out = args[:llm_metrics_opted_out] if args.key?(:llm_metrics_opted_out)
        end
      end
      
      # Model settings contains various configurations for the LLM model.
      class ModelSettings
        include Google::Apis::Core::Hashable
      
        # Optional. The LLM model that the agent should use. If not set, the agent will
        # inherit the model from its parent agent.
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        # Optional. If set, this temperature will be used for the LLM model. Temperature
        # controls the randomness of the model's responses. Lower temperatures produce
        # responses that are more predictable. Higher temperatures produce responses
        # that are more creative.
        # Corresponds to the JSON property `temperature`
        # @return [Float]
        attr_accessor :temperature
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @model = args[:model] if args.key?(:model)
          @temperature = args[:temperature] if args.key?(:temperature)
        end
      end
      
      # Configurations for authentication with OAuth.
      class OAuthConfig
        include Google::Apis::Core::Hashable
      
        # Required. The client ID from the OAuth provider.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # Required. The name of the SecretManager secret version resource storing the
        # client secret. Format: `projects/`project`/secrets/`secret`/versions/`version``
        # Note: You should grant `roles/secretmanager.secretAccessor` role to the CES
        # service agent `service-@gcp-sa-ces.iam.gserviceaccount.com`.
        # Corresponds to the JSON property `clientSecretVersion`
        # @return [String]
        attr_accessor :client_secret_version
      
        # Required. OAuth grant types.
        # Corresponds to the JSON property `oauthGrantType`
        # @return [String]
        attr_accessor :oauth_grant_type
      
        # Optional. The OAuth scopes to grant.
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        # Required. The token endpoint in the OAuth provider to exchange for an access
        # token.
        # Corresponds to the JSON property `tokenEndpoint`
        # @return [String]
        attr_accessor :token_endpoint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_id = args[:client_id] if args.key?(:client_id)
          @client_secret_version = args[:client_secret_version] if args.key?(:client_secret_version)
          @oauth_grant_type = args[:oauth_grant_type] if args.key?(:oauth_grant_type)
          @scopes = args[:scopes] if args.key?(:scopes)
          @token_endpoint = args[:token_endpoint] if args.key?(:token_endpoint)
        end
      end
      
      # Represents an Omnichannel resource.
      class Omnichannel
        include Google::Apis::Core::Hashable
      
        # Output only. Timestamp when the omnichannel resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Human-readable description of the omnichannel resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. Display name of the omnichannel resource.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Etag used to ensure the object hasn't changed during a read-
        # modify-write operation.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # OmnichannelIntegrationConfig contains all App integration configs.
        # Corresponds to the JSON property `integrationConfig`
        # @return [Google::Apis::CesV1::OmnichannelIntegrationConfig]
        attr_accessor :integration_config
      
        # Identifier. The unique identifier of the omnichannel resource. Format: `
        # projects/`project`/locations/`location`/omnichannels/`omnichannel``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Timestamp when the omnichannel resource was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @integration_config = args[:integration_config] if args.key?(:integration_config)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # OmnichannelIntegrationConfig contains all App integration configs.
      class OmnichannelIntegrationConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Various of configuration for handling App events.
        # Corresponds to the JSON property `channelConfigs`
        # @return [Hash<String,Google::Apis::CesV1::OmnichannelIntegrationConfigChannelConfig>]
        attr_accessor :channel_configs
      
        # Optional. The key of routing_configs is a key of `app_configs`, value is a `
        # RoutingConfig`, which contains subscriber's key.
        # Corresponds to the JSON property `routingConfigs`
        # @return [Hash<String,Google::Apis::CesV1::OmnichannelIntegrationConfigRoutingConfig>]
        attr_accessor :routing_configs
      
        # Optional. Various of subscribers configs.
        # Corresponds to the JSON property `subscriberConfigs`
        # @return [Hash<String,Google::Apis::CesV1::OmnichannelIntegrationConfigSubscriberConfig>]
        attr_accessor :subscriber_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel_configs = args[:channel_configs] if args.key?(:channel_configs)
          @routing_configs = args[:routing_configs] if args.key?(:routing_configs)
          @subscriber_configs = args[:subscriber_configs] if args.key?(:subscriber_configs)
        end
      end
      
      # Configs for CES app.
      class OmnichannelIntegrationConfigCesAppConfig
        include Google::Apis::Core::Hashable
      
        # The unique identifier of the CES app. Format: `projects/`project`/locations/`
        # location`/apps/`app``
        # Corresponds to the JSON property `app`
        # @return [String]
        attr_accessor :app
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app = args[:app] if args.key?(:app)
        end
      end
      
      # ChannelConfig contains config for various of app integration.
      class OmnichannelIntegrationConfigChannelConfig
        include Google::Apis::Core::Hashable
      
        # How Omnichannel should receive/reply events from WhatsApp.
        # Corresponds to the JSON property `whatsappConfig`
        # @return [Google::Apis::CesV1::OmnichannelIntegrationConfigWhatsappConfig]
        attr_accessor :whatsapp_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @whatsapp_config = args[:whatsapp_config] if args.key?(:whatsapp_config)
        end
      end
      
      # Routing config specify how/who to route app events to a subscriber.
      class OmnichannelIntegrationConfigRoutingConfig
        include Google::Apis::Core::Hashable
      
        # The key of the subscriber.
        # Corresponds to the JSON property `subscriberKey`
        # @return [String]
        attr_accessor :subscriber_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @subscriber_key = args[:subscriber_key] if args.key?(:subscriber_key)
        end
      end
      
      # Configs of subscribers.
      class OmnichannelIntegrationConfigSubscriberConfig
        include Google::Apis::Core::Hashable
      
        # Configs for CES app.
        # Corresponds to the JSON property `cesAppConfig`
        # @return [Google::Apis::CesV1::OmnichannelIntegrationConfigCesAppConfig]
        attr_accessor :ces_app_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ces_app_config = args[:ces_app_config] if args.key?(:ces_app_config)
        end
      end
      
      # How Omnichannel should receive/reply events from WhatsApp.
      class OmnichannelIntegrationConfigWhatsappConfig
        include Google::Apis::Core::Hashable
      
        # The Meta Business Portfolio (MBP) ID. https://www.facebook.com/business/help/
        # 1710077379203657
        # Corresponds to the JSON property `metaBusinessPortfolioId`
        # @return [String]
        attr_accessor :meta_business_portfolio_id
      
        # The phone number used for sending/receiving messages.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # The Phone Number ID associated with the WhatsApp Business Account.
        # Corresponds to the JSON property `phoneNumberId`
        # @return [String]
        attr_accessor :phone_number_id
      
        # The verify token configured in the Meta App Dashboard for webhook verification.
        # Corresponds to the JSON property `webhookVerifyToken`
        # @return [String]
        attr_accessor :webhook_verify_token
      
        # The customer's WhatsApp Business Account (WABA) ID.
        # Corresponds to the JSON property `whatsappBusinessAccountId`
        # @return [String]
        attr_accessor :whatsapp_business_account_id
      
        # The access token for authenticating API calls to the WhatsApp Cloud API. https:
        # //developers.facebook.com/docs/whatsapp/business-management-api/get-started/#
        # business-integration-system-user-access-tokens
        # Corresponds to the JSON property `whatsappBusinessToken`
        # @return [String]
        attr_accessor :whatsapp_business_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @meta_business_portfolio_id = args[:meta_business_portfolio_id] if args.key?(:meta_business_portfolio_id)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @phone_number_id = args[:phone_number_id] if args.key?(:phone_number_id)
          @webhook_verify_token = args[:webhook_verify_token] if args.key?(:webhook_verify_token)
          @whatsapp_business_account_id = args[:whatsapp_business_account_id] if args.key?(:whatsapp_business_account_id)
          @whatsapp_business_token = args[:whatsapp_business_token] if args.key?(:whatsapp_business_token)
        end
      end
      
      # Represents the metadata of the long-running operation.
      class OmnichannelOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation.
        # Corresponds to the JSON property `requestedCancellation`
        # @return [Boolean]
        attr_accessor :requested_cancellation
        alias_method :requested_cancellation?, :requested_cancellation
      
        # Output only. Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
          @status_message = args[:status_message] if args.key?(:status_message)
        end
      end
      
      # A remote API tool defined by an OpenAPI schema.
      class OpenApiTool
        include Google::Apis::Core::Hashable
      
        # Authentication information required for API calls.
        # Corresponds to the JSON property `apiAuthentication`
        # @return [Google::Apis::CesV1::ApiAuthentication]
        attr_accessor :api_authentication
      
        # Optional. The description of the tool. If not provided, the description of the
        # tool will be derived from the OpenAPI schema, from `operation.description` or `
        # operation.summary`.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. If true, the agent will ignore unknown fields in the API response.
        # Corresponds to the JSON property `ignoreUnknownFields`
        # @return [Boolean]
        attr_accessor :ignore_unknown_fields
        alias_method :ignore_unknown_fields?, :ignore_unknown_fields
      
        # Optional. The name of the tool. If not provided, the name of the tool will be
        # derived from the OpenAPI schema, from `operation.operationId`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The OpenAPI schema in JSON or YAML format.
        # Corresponds to the JSON property `openApiSchema`
        # @return [String]
        attr_accessor :open_api_schema
      
        # Configuration for tools using Service Directory.
        # Corresponds to the JSON property `serviceDirectoryConfig`
        # @return [Google::Apis::CesV1::ServiceDirectoryConfig]
        attr_accessor :service_directory_config
      
        # The TLS configuration.
        # Corresponds to the JSON property `tlsConfig`
        # @return [Google::Apis::CesV1::TlsConfig]
        attr_accessor :tls_config
      
        # Optional. The server URL of the Open API schema. This field is only set in
        # tools in the environment dependencies during the export process if the schema
        # contains a server url. During the import process, if this url is present in
        # the environment dependencies and the schema has the $env_var placeholder, it
        # will replace the placeholder in the schema.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_authentication = args[:api_authentication] if args.key?(:api_authentication)
          @description = args[:description] if args.key?(:description)
          @ignore_unknown_fields = args[:ignore_unknown_fields] if args.key?(:ignore_unknown_fields)
          @name = args[:name] if args.key?(:name)
          @open_api_schema = args[:open_api_schema] if args.key?(:open_api_schema)
          @service_directory_config = args[:service_directory_config] if args.key?(:service_directory_config)
          @tls_config = args[:tls_config] if args.key?(:tls_config)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # A toolset that contains a list of tools that are defined by an OpenAPI schema.
      class OpenApiToolset
        include Google::Apis::Core::Hashable
      
        # Authentication information required for API calls.
        # Corresponds to the JSON property `apiAuthentication`
        # @return [Google::Apis::CesV1::ApiAuthentication]
        attr_accessor :api_authentication
      
        # Optional. If true, the agent will ignore unknown fields in the API response
        # for all operations defined in the OpenAPI schema.
        # Corresponds to the JSON property `ignoreUnknownFields`
        # @return [Boolean]
        attr_accessor :ignore_unknown_fields
        alias_method :ignore_unknown_fields?, :ignore_unknown_fields
      
        # Required. The OpenAPI schema of the toolset.
        # Corresponds to the JSON property `openApiSchema`
        # @return [String]
        attr_accessor :open_api_schema
      
        # Configuration for tools using Service Directory.
        # Corresponds to the JSON property `serviceDirectoryConfig`
        # @return [Google::Apis::CesV1::ServiceDirectoryConfig]
        attr_accessor :service_directory_config
      
        # The TLS configuration.
        # Corresponds to the JSON property `tlsConfig`
        # @return [Google::Apis::CesV1::TlsConfig]
        attr_accessor :tls_config
      
        # Optional. The server URL of the Open API schema. This field is only set in
        # toolsets in the environment dependencies during the export process if the
        # schema contains a server url. During the import process, if this url is
        # present in the environment dependencies and the schema has the $env_var
        # placeholder, it will replace the placeholder in the schema.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_authentication = args[:api_authentication] if args.key?(:api_authentication)
          @ignore_unknown_fields = args[:ignore_unknown_fields] if args.key?(:ignore_unknown_fields)
          @open_api_schema = args[:open_api_schema] if args.key?(:open_api_schema)
          @service_directory_config = args[:service_directory_config] if args.key?(:service_directory_config)
          @tls_config = args[:tls_config] if args.key?(:tls_config)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::CesV1::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as `Delete`, the response is `google.protobuf.
        # Empty`. If the original method is standard `Get`/`Create`/`Update`, the
        # response should be the resource. For other methods, the response should have
        # the type `XxxResponse`, where `Xxx` is the original method name. For example,
        # if the original method name is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
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
      
      # Represents the metadata of the long-running operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have been cancelled successfully have google.
        # longrunning.Operation.error value with a google.rpc.Status.code of `1`,
        # corresponding to `Code.CANCELLED`.
        # Corresponds to the JSON property `requestedCancellation`
        # @return [Boolean]
        attr_accessor :requested_cancellation
        alias_method :requested_cancellation?, :requested_cancellation
      
        # Output only. Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
          @status_message = args[:status_message] if args.key?(:status_message)
        end
      end
      
      # OutputAudioConfig configures how the CES agent should synthesize outgoing
      # audio responses.
      class OutputAudioConfig
        include Google::Apis::Core::Hashable
      
        # Required. The encoding of the output audio data.
        # Corresponds to the JSON property `audioEncoding`
        # @return [String]
        attr_accessor :audio_encoding
      
        # Required. The sample rate (in Hertz) of the output audio data.
        # Corresponds to the JSON property `sampleRateHertz`
        # @return [Fixnum]
        attr_accessor :sample_rate_hertz
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_encoding = args[:audio_encoding] if args.key?(:audio_encoding)
          @sample_rate_hertz = args[:sample_rate_hertz] if args.key?(:sample_rate_hertz)
        end
      end
      
      # Python code block to evaluate the condition.
      class PythonCodeCondition
        include Google::Apis::Core::Hashable
      
        # Required. The python code to execute.
        # Corresponds to the JSON property `pythonCode`
        # @return [String]
        attr_accessor :python_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @python_code = args[:python_code] if args.key?(:python_code)
        end
      end
      
      # A Python function tool.
      class PythonFunction
        include Google::Apis::Core::Hashable
      
        # Output only. The description of the Python function, parsed from the python
        # code's docstring.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. The name of the Python function to execute. Must match a Python
        # function name defined in the python code. Case sensitive. If the name is not
        # provided, the first function defined in the python code will be used.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The Python code to execute for the tool.
        # Corresponds to the JSON property `pythonCode`
        # @return [String]
        attr_accessor :python_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @python_code = args[:python_code] if args.key?(:python_code)
        end
      end
      
      # Configuration to instruct how sensitive data should be handled.
      class RedactionConfig
        include Google::Apis::Core::Hashable
      
        # Optional. [DLP](https://cloud.google.com/dlp/docs) deidentify template name to
        # instruct on how to de-identify content. Format: `projects/`project`/locations/`
        # location`/deidentifyTemplates/`deidentify_template``
        # Corresponds to the JSON property `deidentifyTemplate`
        # @return [String]
        attr_accessor :deidentify_template
      
        # Optional. If true, redaction will be applied in various logging scenarios,
        # including conversation history, Cloud Logging and audio recording.
        # Corresponds to the JSON property `enableRedaction`
        # @return [Boolean]
        attr_accessor :enable_redaction
        alias_method :enable_redaction?, :enable_redaction
      
        # Optional. [DLP](https://cloud.google.com/dlp/docs) inspect template name to
        # configure detection of sensitive data types. Format: `projects/`project`/
        # locations/`location`/inspectTemplates/`inspect_template``
        # Corresponds to the JSON property `inspectTemplate`
        # @return [String]
        attr_accessor :inspect_template
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deidentify_template = args[:deidentify_template] if args.key?(:deidentify_template)
          @enable_redaction = args[:enable_redaction] if args.key?(:enable_redaction)
          @inspect_template = args[:inspect_template] if args.key?(:inspect_template)
        end
      end
      
      # Request message for AgentService.RestoreAppVersion
      class RestoreAppVersionRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for ToolService.RetrieveToolSchema.
      class RetrieveToolSchemaRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The name of the tool to retrieve the schema for. Format: projects/`
        # project`/locations/`location`/apps/`app`/tools/`tool`
        # Corresponds to the JSON property `tool`
        # @return [String]
        attr_accessor :tool
      
        # A tool that is created from a toolset.
        # Corresponds to the JSON property `toolsetTool`
        # @return [Google::Apis::CesV1::ToolsetTool]
        attr_accessor :toolset_tool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tool = args[:tool] if args.key?(:tool)
          @toolset_tool = args[:toolset_tool] if args.key?(:toolset_tool)
        end
      end
      
      # Response message for ToolService.RetrieveToolSchema.
      class RetrieveToolSchemaResponse
        include Google::Apis::Core::Hashable
      
        # Represents a select subset of an OpenAPI 3.0 schema object.
        # Corresponds to the JSON property `inputSchema`
        # @return [Google::Apis::CesV1::Schema]
        attr_accessor :input_schema
      
        # Represents a select subset of an OpenAPI 3.0 schema object.
        # Corresponds to the JSON property `outputSchema`
        # @return [Google::Apis::CesV1::Schema]
        attr_accessor :output_schema
      
        # The name of the tool that the schema is for. Format: `projects/`project`/
        # locations/`location`/apps/`app`/tools/`tool``
        # Corresponds to the JSON property `tool`
        # @return [String]
        attr_accessor :tool
      
        # A tool that is created from a toolset.
        # Corresponds to the JSON property `toolsetTool`
        # @return [Google::Apis::CesV1::ToolsetTool]
        attr_accessor :toolset_tool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input_schema = args[:input_schema] if args.key?(:input_schema)
          @output_schema = args[:output_schema] if args.key?(:output_schema)
          @tool = args[:tool] if args.key?(:tool)
          @toolset_tool = args[:toolset_tool] if args.key?(:toolset_tool)
        end
      end
      
      # Request message for ToolService.RetrieveTools.
      class RetrieveToolsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The identifiers of the tools to retrieve from the toolset. If empty,
        # all tools in the toolset will be returned.
        # Corresponds to the JSON property `toolIds`
        # @return [Array<String>]
        attr_accessor :tool_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tool_ids = args[:tool_ids] if args.key?(:tool_ids)
        end
      end
      
      # Response message for ToolService.RetrieveTools.
      class RetrieveToolsResponse
        include Google::Apis::Core::Hashable
      
        # Required. The list of tools that are included in the specified toolset.
        # Corresponds to the JSON property `tools`
        # @return [Array<Google::Apis::CesV1::Tool>]
        attr_accessor :tools
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tools = args[:tools] if args.key?(:tools)
        end
      end
      
      # Request message for SessionService.RunSession.
      class RunSessionRequest
        include Google::Apis::Core::Hashable
      
        # The configuration for the session.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::CesV1::SessionConfig]
        attr_accessor :config
      
        # Required. Inputs for the session.
        # Corresponds to the JSON property `inputs`
        # @return [Array<Google::Apis::CesV1::SessionInput>]
        attr_accessor :inputs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config = args[:config] if args.key?(:config)
          @inputs = args[:inputs] if args.key?(:inputs)
        end
      end
      
      # Response message for SessionService.RunSession.
      class RunSessionResponse
        include Google::Apis::Core::Hashable
      
        # Outputs for the session.
        # Corresponds to the JSON property `outputs`
        # @return [Array<Google::Apis::CesV1::SessionOutput>]
        attr_accessor :outputs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @outputs = args[:outputs] if args.key?(:outputs)
        end
      end
      
      # Represents a select subset of an OpenAPI 3.0 schema object.
      class Schema
        include Google::Apis::Core::Hashable
      
        # Represents a select subset of an OpenAPI 3.0 schema object.
        # Corresponds to the JSON property `additionalProperties`
        # @return [Google::Apis::CesV1::Schema]
        attr_accessor :additional_properties
      
        # Optional. The value should be validated against any (one or more) of the
        # subschemas in the list.
        # Corresponds to the JSON property `anyOf`
        # @return [Array<Google::Apis::CesV1::Schema>]
        attr_accessor :any_of
      
        # Optional. Default value of the data.
        # Corresponds to the JSON property `default`
        # @return [Object]
        attr_accessor :default
      
        # Optional. A map of definitions for use by `ref`. Only allowed at the root of
        # the schema.
        # Corresponds to the JSON property `defs`
        # @return [Hash<String,Google::Apis::CesV1::Schema>]
        attr_accessor :defs
      
        # Optional. The description of the data.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Possible values of the element of primitive type with enum format.
        # Examples: 1. We can define direction as : `type:STRING, format:enum, enum:["
        # EAST", NORTH", "SOUTH", "WEST"]` 2. We can define apartment number as : `type:
        # INTEGER, format:enum, enum:["101", "201", "301"]`
        # Corresponds to the JSON property `enum`
        # @return [Array<String>]
        attr_accessor :enum
      
        # Represents a select subset of an OpenAPI 3.0 schema object.
        # Corresponds to the JSON property `items`
        # @return [Google::Apis::CesV1::Schema]
        attr_accessor :items
      
        # Optional. Maximum number of the elements for Type.ARRAY.
        # Corresponds to the JSON property `maxItems`
        # @return [Fixnum]
        attr_accessor :max_items
      
        # Optional. Maximum value for Type.INTEGER and Type.NUMBER.
        # Corresponds to the JSON property `maximum`
        # @return [Float]
        attr_accessor :maximum
      
        # Optional. Minimum number of the elements for Type.ARRAY.
        # Corresponds to the JSON property `minItems`
        # @return [Fixnum]
        attr_accessor :min_items
      
        # Optional. Minimum value for Type.INTEGER and Type.NUMBER.
        # Corresponds to the JSON property `minimum`
        # @return [Float]
        attr_accessor :minimum
      
        # Optional. Indicates if the value may be null.
        # Corresponds to the JSON property `nullable`
        # @return [Boolean]
        attr_accessor :nullable
        alias_method :nullable?, :nullable
      
        # Optional. Schemas of initial elements of Type.ARRAY.
        # Corresponds to the JSON property `prefixItems`
        # @return [Array<Google::Apis::CesV1::Schema>]
        attr_accessor :prefix_items
      
        # Optional. Properties of Type.OBJECT.
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,Google::Apis::CesV1::Schema>]
        attr_accessor :properties
      
        # Optional. Allows indirect references between schema nodes. The value should be
        # a valid reference to a child of the root `defs`. For example, the following
        # schema defines a reference to a schema node named "Pet": type: object
        # properties: pet: ref: #/defs/Pet defs: Pet: type: object properties: name:
        # type: string The value of the "pet" property is a reference to the schema node
        # named "Pet". See details in https://json-schema.org/understanding-json-schema/
        # structuring.
        # Corresponds to the JSON property `ref`
        # @return [String]
        attr_accessor :ref
      
        # Optional. Required properties of Type.OBJECT.
        # Corresponds to the JSON property `required`
        # @return [Array<String>]
        attr_accessor :required
      
        # Optional. The title of the schema.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Required. The type of the data.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Optional. Indicate the items in the array must be unique. Only applies to TYPE.
        # ARRAY.
        # Corresponds to the JSON property `uniqueItems`
        # @return [Boolean]
        attr_accessor :unique_items
        alias_method :unique_items?, :unique_items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_properties = args[:additional_properties] if args.key?(:additional_properties)
          @any_of = args[:any_of] if args.key?(:any_of)
          @default = args[:default] if args.key?(:default)
          @defs = args[:defs] if args.key?(:defs)
          @description = args[:description] if args.key?(:description)
          @enum = args[:enum] if args.key?(:enum)
          @items = args[:items] if args.key?(:items)
          @max_items = args[:max_items] if args.key?(:max_items)
          @maximum = args[:maximum] if args.key?(:maximum)
          @min_items = args[:min_items] if args.key?(:min_items)
          @minimum = args[:minimum] if args.key?(:minimum)
          @nullable = args[:nullable] if args.key?(:nullable)
          @prefix_items = args[:prefix_items] if args.key?(:prefix_items)
          @properties = args[:properties] if args.key?(:properties)
          @ref = args[:ref] if args.key?(:ref)
          @required = args[:required] if args.key?(:required)
          @title = args[:title] if args.key?(:title)
          @type = args[:type] if args.key?(:type)
          @unique_items = args[:unique_items] if args.key?(:unique_items)
        end
      end
      
      # Configurations for authentication using a custom service account.
      class ServiceAccountAuthConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The OAuth scopes to grant. If not specified, the default scope `
        # https://www.googleapis.com/auth/cloud-platform` is used.
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        # Required. The email address of the service account used for authentication.
        # CES uses this service account to exchange an access token and the access token
        # is then sent in the `Authorization` header of the request. The service account
        # must have the `roles/iam.serviceAccountTokenCreator` role granted to the CES
        # service agent `service-@gcp-sa-ces.iam.gserviceaccount.com`.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @scopes = args[:scopes] if args.key?(:scopes)
          @service_account = args[:service_account] if args.key?(:service_account)
        end
      end
      
      # Configurations for authentication with [ID token](https://cloud.google.com/
      # docs/authentication/token-types#id) generated from service agent.
      class ServiceAgentIdTokenAuthConfig
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Configuration for tools using Service Directory.
      class ServiceDirectoryConfig
        include Google::Apis::Core::Hashable
      
        # Required. The name of [Service Directory](https://cloud.google.com/service-
        # directory) service. Format: `projects/`project`/locations/`location`/
        # namespaces/`namespace`/services/`service``. Location of the service directory
        # must be the same as the location of the app.
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
      
      # The configuration for the session.
      class SessionConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The deployment of the app to use for the session. Format: `projects/`
        # project`/locations/`location`/apps/`app`/deployments/`deployment``
        # Corresponds to the JSON property `deployment`
        # @return [String]
        attr_accessor :deployment
      
        # Optional. The entry agent to handle the session. If not specified, the session
        # will be handled by the root agent of the app. Format: `projects/`project`/
        # locations/`location`/agents/`agent``
        # Corresponds to the JSON property `entryAgent`
        # @return [String]
        attr_accessor :entry_agent
      
        # Optional. The historical context of the session, including user inputs, agent
        # responses, and other messages. Typically, CES agent would manage session
        # automatically so client doesn't need to explicitly populate this field.
        # However, client can optionally override the historical contexts to force the
        # session start from certain state.
        # Corresponds to the JSON property `historicalContexts`
        # @return [Array<Google::Apis::CesV1::Message>]
        attr_accessor :historical_contexts
      
        # InputAudioConfig configures how the CES agent should interpret the incoming
        # audio data.
        # Corresponds to the JSON property `inputAudioConfig`
        # @return [Google::Apis::CesV1::InputAudioConfig]
        attr_accessor :input_audio_config
      
        # OutputAudioConfig configures how the CES agent should synthesize outgoing
        # audio responses.
        # Corresponds to the JSON property `outputAudioConfig`
        # @return [Google::Apis::CesV1::OutputAudioConfig]
        attr_accessor :output_audio_config
      
        # [QueryParameters](https://cloud.google.com/dialogflow/cx/docs/reference/rpc/
        # google.cloud.dialogflow.cx.v3#queryparameters) to send to the remote [
        # Dialogflow](https://cloud.google.com/dialogflow/cx/docs/concept/console-
        # conversational-agents) agent when the session control is transferred to the
        # remote agent.
        # Corresponds to the JSON property `remoteDialogflowQueryParameters`
        # @return [Google::Apis::CesV1::SessionConfigRemoteDialogflowQueryParameters]
        attr_accessor :remote_dialogflow_query_parameters
      
        # Optional. The time zone of the user. If provided, the agent will use the time
        # zone for date and time related variables. Otherwise, the agent will use the
        # time zone specified in the App.time_zone_settings. The format is the IANA Time
        # Zone Database time zone, e.g. "America/Los_Angeles".
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deployment = args[:deployment] if args.key?(:deployment)
          @entry_agent = args[:entry_agent] if args.key?(:entry_agent)
          @historical_contexts = args[:historical_contexts] if args.key?(:historical_contexts)
          @input_audio_config = args[:input_audio_config] if args.key?(:input_audio_config)
          @output_audio_config = args[:output_audio_config] if args.key?(:output_audio_config)
          @remote_dialogflow_query_parameters = args[:remote_dialogflow_query_parameters] if args.key?(:remote_dialogflow_query_parameters)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # [QueryParameters](https://cloud.google.com/dialogflow/cx/docs/reference/rpc/
      # google.cloud.dialogflow.cx.v3#queryparameters) to send to the remote [
      # Dialogflow](https://cloud.google.com/dialogflow/cx/docs/concept/console-
      # conversational-agents) agent when the session control is transferred to the
      # remote agent.
      class SessionConfigRemoteDialogflowQueryParameters
        include Google::Apis::Core::Hashable
      
        # Optional. The end user metadata to be sent in [QueryParameters](https://cloud.
        # google.com/dialogflow/cx/docs/reference/rpc/google.cloud.dialogflow.cx.v3#
        # queryparameters).
        # Corresponds to the JSON property `endUserMetadata`
        # @return [Hash<String,Object>]
        attr_accessor :end_user_metadata
      
        # Optional. The payload to be sent in [QueryParameters](https://cloud.google.com/
        # dialogflow/cx/docs/reference/rpc/google.cloud.dialogflow.cx.v3#queryparameters)
        # .
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # Optional. The HTTP headers to be sent as webhook_headers in [QueryParameters](
        # https://cloud.google.com/dialogflow/cx/docs/reference/rpc/google.cloud.
        # dialogflow.cx.v3#queryparameters).
        # Corresponds to the JSON property `webhookHeaders`
        # @return [Hash<String,String>]
        attr_accessor :webhook_headers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_user_metadata = args[:end_user_metadata] if args.key?(:end_user_metadata)
          @payload = args[:payload] if args.key?(:payload)
          @webhook_headers = args[:webhook_headers] if args.key?(:webhook_headers)
        end
      end
      
      # Input for the session.
      class SessionInput
        include Google::Apis::Core::Hashable
      
        # Optional. Audio data from the end user.
        # Corresponds to the JSON property `audio`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :audio
      
        # Represents a blob input or output in the conversation.
        # Corresponds to the JSON property `blob`
        # @return [Google::Apis::CesV1::Blob]
        attr_accessor :blob
      
        # Optional. DTMF digits from the end user.
        # Corresponds to the JSON property `dtmf`
        # @return [String]
        attr_accessor :dtmf
      
        # Event input.
        # Corresponds to the JSON property `event`
        # @return [Google::Apis::CesV1::Event]
        attr_accessor :event
      
        # Represents an image input or output in the conversation.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::CesV1::Image]
        attr_accessor :image
      
        # Optional. Text data from the end user.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # Execution results for the requested tool calls from the client.
        # Corresponds to the JSON property `toolResponses`
        # @return [Google::Apis::CesV1::ToolResponses]
        attr_accessor :tool_responses
      
        # Optional. Contextual variables for the session, keyed by name. Only variables
        # declared in the app will be used by the CES agent. Unrecognized variables will
        # still be sent to the Dialogflow agent as additional session parameters.
        # Corresponds to the JSON property `variables`
        # @return [Hash<String,Object>]
        attr_accessor :variables
      
        # Optional. A flag to indicate if the current message is a fragment of a larger
        # input in the bidi streaming session. When `true`, the agent will defer
        # processing until a subsequent message with `will_continue` set to `false` is
        # received. Note: This flag has no effect on audio and DTMF inputs, which are
        # always processed in real-time.
        # Corresponds to the JSON property `willContinue`
        # @return [Boolean]
        attr_accessor :will_continue
        alias_method :will_continue?, :will_continue
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio = args[:audio] if args.key?(:audio)
          @blob = args[:blob] if args.key?(:blob)
          @dtmf = args[:dtmf] if args.key?(:dtmf)
          @event = args[:event] if args.key?(:event)
          @image = args[:image] if args.key?(:image)
          @text = args[:text] if args.key?(:text)
          @tool_responses = args[:tool_responses] if args.key?(:tool_responses)
          @variables = args[:variables] if args.key?(:variables)
          @will_continue = args[:will_continue] if args.key?(:will_continue)
        end
      end
      
      # Output for the session.
      class SessionOutput
        include Google::Apis::Core::Hashable
      
        # Output audio from the CES agent.
        # Corresponds to the JSON property `audio`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :audio
      
        # Citations associated with the agent response.
        # Corresponds to the JSON property `citations`
        # @return [Google::Apis::CesV1::Citations]
        attr_accessor :citations
      
        # Contains execution details during the processing.
        # Corresponds to the JSON property `diagnosticInfo`
        # @return [Google::Apis::CesV1::SessionOutputDiagnosticInfo]
        attr_accessor :diagnostic_info
      
        # Indicates the session has terminated, due to either successful completion (e.g.
        # user says "Good bye!" ) or an agent escalation. The agent will not process
        # any further inputs after session is terminated and the client should half-
        # close and disconnect after receiving all remaining responses from the agent.
        # Corresponds to the JSON property `endSession`
        # @return [Google::Apis::CesV1::EndSession]
        attr_accessor :end_session
      
        # Search suggestions from Google Search Tool.
        # Corresponds to the JSON property `googleSearchSuggestions`
        # @return [Google::Apis::CesV1::GoogleSearchSuggestions]
        attr_accessor :google_search_suggestions
      
        # Custom payload with structured output from the CES agent.
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # Output text from the CES agent.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # Request for the client to execute the tools and return the execution results
        # before continuing the session.
        # Corresponds to the JSON property `toolCalls`
        # @return [Google::Apis::CesV1::ToolCalls]
        attr_accessor :tool_calls
      
        # If true, the CES agent has detected the end of the current conversation turn
        # and will provide no further output for this turn.
        # Corresponds to the JSON property `turnCompleted`
        # @return [Boolean]
        attr_accessor :turn_completed
        alias_method :turn_completed?, :turn_completed
      
        # Indicates the sequential order of conversation turn to which this output
        # belongs to, starting from 1.
        # Corresponds to the JSON property `turnIndex`
        # @return [Fixnum]
        attr_accessor :turn_index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio = args[:audio] if args.key?(:audio)
          @citations = args[:citations] if args.key?(:citations)
          @diagnostic_info = args[:diagnostic_info] if args.key?(:diagnostic_info)
          @end_session = args[:end_session] if args.key?(:end_session)
          @google_search_suggestions = args[:google_search_suggestions] if args.key?(:google_search_suggestions)
          @payload = args[:payload] if args.key?(:payload)
          @text = args[:text] if args.key?(:text)
          @tool_calls = args[:tool_calls] if args.key?(:tool_calls)
          @turn_completed = args[:turn_completed] if args.key?(:turn_completed)
          @turn_index = args[:turn_index] if args.key?(:turn_index)
        end
      end
      
      # Contains execution details during the processing.
      class SessionOutputDiagnosticInfo
        include Google::Apis::Core::Hashable
      
        # List of the messages that happened during the processing.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::CesV1::Message>]
        attr_accessor :messages
      
        # A span is a unit of work or a single operation during the request processing.
        # Corresponds to the JSON property `rootSpan`
        # @return [Google::Apis::CesV1::Span]
        attr_accessor :root_span
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @messages = args[:messages] if args.key?(:messages)
          @root_span = args[:root_span] if args.key?(:root_span)
        end
      end
      
      # A span is a unit of work or a single operation during the request processing.
      class Span
        include Google::Apis::Core::Hashable
      
        # Output only. Key-value attributes associated with the span.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,Object>]
        attr_accessor :attributes
      
        # Output only. The child spans that are nested under this span.
        # Corresponds to the JSON property `childSpans`
        # @return [Array<Google::Apis::CesV1::Span>]
        attr_accessor :child_spans
      
        # Output only. The duration of the span.
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # Output only. The end time of the span.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. The name of the span.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The start time of the span.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @child_spans = args[:child_spans] if args.key?(:child_spans)
          @duration = args[:duration] if args.key?(:duration)
          @end_time = args[:end_time] if args.key?(:end_time)
          @name = args[:name] if args.key?(:name)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
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
      
      # Configuration for how the agent response should be synthesized.
      class SynthesizeSpeechConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The speaking rate/speed in the range [0.25, 2.0]. 1.0 is the normal
        # native speed supported by the specific voice. 2.0 is twice as fast, and 0.5 is
        # half as fast. Values outside of the range [0.25, 2.0] will return an error.
        # Corresponds to the JSON property `speakingRate`
        # @return [Float]
        attr_accessor :speaking_rate
      
        # Optional. The name of the voice. If not set, the service will choose a voice
        # based on the other parameters such as language_code. For the list of available
        # voices, please refer to [Supported voices and languages](https://cloud.google.
        # com/text-to-speech/docs/voices) from Cloud Text-to-Speech.
        # Corresponds to the JSON property `voice`
        # @return [String]
        attr_accessor :voice
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @speaking_rate = args[:speaking_rate] if args.key?(:speaking_rate)
          @voice = args[:voice] if args.key?(:voice)
        end
      end
      
      # Pre-defined system tool.
      class SystemTool
        include Google::Apis::Core::Hashable
      
        # Output only. The description of the system tool.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The name of the system tool.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # TimeZone settings of the app.
      class TimeZoneSettings
        include Google::Apis::Core::Hashable
      
        # Optional. The time zone of the app from the [time zone database](https://www.
        # iana.org/time-zones), e.g., America/Los_Angeles, Europe/Paris.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # The TLS configuration.
      class TlsConfig
        include Google::Apis::Core::Hashable
      
        # Required. Specifies a list of allowed custom CA certificates for HTTPS
        # verification.
        # Corresponds to the JSON property `caCerts`
        # @return [Array<Google::Apis::CesV1::TlsConfigCaCert>]
        attr_accessor :ca_certs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ca_certs = args[:ca_certs] if args.key?(:ca_certs)
        end
      end
      
      # The CA certificate.
      class TlsConfigCaCert
        include Google::Apis::Core::Hashable
      
        # Required. The allowed custom CA certificates (in DER format) for HTTPS
        # verification. This overrides the default SSL trust store. If this is empty or
        # unspecified, CES will use Google's default trust store to verify certificates.
        # N.B. Make sure the HTTPS server certificates are signed with "subject alt name"
        # . For instance a certificate can be self-signed using the following command,
        # openssl x509 -req -days 200 -in example.com.csr \ -signkey example.com.key \ -
        # out example.com.crt \ -extfile <(printf "\nsubjectAltName='DNS:www.example.com'
        # ")
        # Corresponds to the JSON property `cert`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :cert
      
        # Required. The name of the allowed custom CA certificates. This can be used to
        # disambiguate the custom CA certificates.
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
      
      # A tool represents an action that the CES agent can take to achieve certain
      # goals.
      class Tool
        include Google::Apis::Core::Hashable
      
        # Represents a client-side function that the agent can invoke. When the tool is
        # chosen by the agent, control is handed off to the client. The client is
        # responsible for executing the function and returning the result as a
        # ToolResponse to continue the interaction with the agent.
        # Corresponds to the JSON property `clientFunction`
        # @return [Google::Apis::CesV1::ClientFunction]
        attr_accessor :client_function
      
        # A ConnectorTool allows connections to different integrations. See: https://
        # cloud.google.com/integration-connectors/docs/overview.
        # Corresponds to the JSON property `connectorTool`
        # @return [Google::Apis::CesV1::ConnectorTool]
        attr_accessor :connector_tool
      
        # Output only. Timestamp when the tool was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Tool to retrieve from Vertex AI Search datastore or engine for grounding.
        # Accepts either a datastore or an engine, but not both. See Vertex AI Search:
        # https://cloud.google.com/generative-ai-app-builder/docs/enterprise-search-
        # introduction.
        # Corresponds to the JSON property `dataStoreTool`
        # @return [Google::Apis::CesV1::DataStoreTool]
        attr_accessor :data_store_tool
      
        # Output only. The display name of the tool, derived based on the tool's type.
        # For example, display name of a ClientFunction is derived from its `name`
        # property.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Etag used to ensure the object hasn't changed during a read-modify-write
        # operation. If the etag is empty, the update will overwrite any concurrent
        # changes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. The execution type of the tool.
        # Corresponds to the JSON property `executionType`
        # @return [String]
        attr_accessor :execution_type
      
        # The file search tool allows the agent to search across the files uploaded by
        # the app/agent developer. It has presets to give relatively good quality search
        # over the uploaded files and summarization of the retrieved results.
        # Corresponds to the JSON property `fileSearchTool`
        # @return [Google::Apis::CesV1::FileSearchTool]
        attr_accessor :file_search_tool
      
        # Output only. If the tool is generated by the LLM assistant, this field
        # contains a descriptive summary of the generation.
        # Corresponds to the JSON property `generatedSummary`
        # @return [String]
        attr_accessor :generated_summary
      
        # Represents a tool to perform Google web searches for grounding. See https://
        # cloud.google.com/customer-engagement-ai/conversational-agents/ps/tool#google-
        # search.
        # Corresponds to the JSON property `googleSearchTool`
        # @return [Google::Apis::CesV1::GoogleSearchTool]
        attr_accessor :google_search_tool
      
        # An MCP tool. See https://modelcontextprotocol.io/specification/2025-06-18/
        # server/tools for more details.
        # Corresponds to the JSON property `mcpTool`
        # @return [Google::Apis::CesV1::McpTool]
        attr_accessor :mcp_tool
      
        # Identifier. The unique identifier of the tool. Format: - `projects/`project`/
        # locations/`location`/apps/`app`/tools/`tool`` for ## standalone tools. `
        # projects/`project`/locations/`location`/apps/`app`/toolsets/`toolset`/tools/`
        # tool`` for tools retrieved from a toolset. These tools are dynamic and output-
        # only, they cannot be referenced directly where a tool is expected.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A remote API tool defined by an OpenAPI schema.
        # Corresponds to the JSON property `openApiTool`
        # @return [Google::Apis::CesV1::OpenApiTool]
        attr_accessor :open_api_tool
      
        # A Python function tool.
        # Corresponds to the JSON property `pythonFunction`
        # @return [Google::Apis::CesV1::PythonFunction]
        attr_accessor :python_function
      
        # Pre-defined system tool.
        # Corresponds to the JSON property `systemTool`
        # @return [Google::Apis::CesV1::SystemTool]
        attr_accessor :system_tool
      
        # Configuration for tool behavior in fake mode.
        # Corresponds to the JSON property `toolFakeConfig`
        # @return [Google::Apis::CesV1::ToolFakeConfig]
        attr_accessor :tool_fake_config
      
        # Output only. Timestamp when the tool was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Represents a widget tool that the agent can invoke. When the tool is chosen by
        # the agent, agent will return the widget to the client. The client is
        # responsible for processing the widget and generating the next user query to
        # continue the interaction with the agent.
        # Corresponds to the JSON property `widgetTool`
        # @return [Google::Apis::CesV1::WidgetTool]
        attr_accessor :widget_tool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_function = args[:client_function] if args.key?(:client_function)
          @connector_tool = args[:connector_tool] if args.key?(:connector_tool)
          @create_time = args[:create_time] if args.key?(:create_time)
          @data_store_tool = args[:data_store_tool] if args.key?(:data_store_tool)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @execution_type = args[:execution_type] if args.key?(:execution_type)
          @file_search_tool = args[:file_search_tool] if args.key?(:file_search_tool)
          @generated_summary = args[:generated_summary] if args.key?(:generated_summary)
          @google_search_tool = args[:google_search_tool] if args.key?(:google_search_tool)
          @mcp_tool = args[:mcp_tool] if args.key?(:mcp_tool)
          @name = args[:name] if args.key?(:name)
          @open_api_tool = args[:open_api_tool] if args.key?(:open_api_tool)
          @python_function = args[:python_function] if args.key?(:python_function)
          @system_tool = args[:system_tool] if args.key?(:system_tool)
          @tool_fake_config = args[:tool_fake_config] if args.key?(:tool_fake_config)
          @update_time = args[:update_time] if args.key?(:update_time)
          @widget_tool = args[:widget_tool] if args.key?(:widget_tool)
        end
      end
      
      # Request for the client or the agent to execute the specified tool.
      class ToolCall
        include Google::Apis::Core::Hashable
      
        # Optional. The input parameters and values for the tool in JSON object format.
        # Corresponds to the JSON property `args`
        # @return [Hash<String,Object>]
        attr_accessor :args
      
        # Output only. Display name of the tool.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. The unique identifier of the tool call. If populated, the client
        # should return the execution result with the matching ID in ToolResponse.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. The name of the tool to execute. Format: `projects/`project`/
        # locations/`location`/apps/`app`/tools/`tool``
        # Corresponds to the JSON property `tool`
        # @return [String]
        attr_accessor :tool
      
        # A tool that is created from a toolset.
        # Corresponds to the JSON property `toolsetTool`
        # @return [Google::Apis::CesV1::ToolsetTool]
        attr_accessor :toolset_tool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @args = args[:args] if args.key?(:args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @id = args[:id] if args.key?(:id)
          @tool = args[:tool] if args.key?(:tool)
          @toolset_tool = args[:toolset_tool] if args.key?(:toolset_tool)
        end
      end
      
      # Request for the client to execute the tools and return the execution results
      # before continuing the session.
      class ToolCalls
        include Google::Apis::Core::Hashable
      
        # Optional. The list of tool calls to execute.
        # Corresponds to the JSON property `toolCalls`
        # @return [Array<Google::Apis::CesV1::ToolCall>]
        attr_accessor :tool_calls
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tool_calls = args[:tool_calls] if args.key?(:tool_calls)
        end
      end
      
      # Configuration for tool behavior in fake mode.
      class ToolFakeConfig
        include Google::Apis::Core::Hashable
      
        # A code block to be executed instead of a real tool call.
        # Corresponds to the JSON property `codeBlock`
        # @return [Google::Apis::CesV1::CodeBlock]
        attr_accessor :code_block
      
        # Optional. Whether the tool is using fake mode.
        # Corresponds to the JSON property `enableFakeMode`
        # @return [Boolean]
        attr_accessor :enable_fake_mode
        alias_method :enable_fake_mode?, :enable_fake_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code_block = args[:code_block] if args.key?(:code_block)
          @enable_fake_mode = args[:enable_fake_mode] if args.key?(:enable_fake_mode)
        end
      end
      
      # The execution result of a specific tool from the client or the agent.
      class ToolResponse
        include Google::Apis::Core::Hashable
      
        # Output only. Display name of the tool.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. The matching ID of the tool call the response is for.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Required. The tool execution result in JSON object format. Use "output" key to
        # specify tool response and "error" key to specify error details (if any). If "
        # output" and "error" keys are not specified, then whole "response" is treated
        # as tool execution result.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        # Optional. The name of the tool to execute. Format: `projects/`project`/
        # locations/`location`/apps/`app`/tools/`tool``
        # Corresponds to the JSON property `tool`
        # @return [String]
        attr_accessor :tool
      
        # A tool that is created from a toolset.
        # Corresponds to the JSON property `toolsetTool`
        # @return [Google::Apis::CesV1::ToolsetTool]
        attr_accessor :toolset_tool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @id = args[:id] if args.key?(:id)
          @response = args[:response] if args.key?(:response)
          @tool = args[:tool] if args.key?(:tool)
          @toolset_tool = args[:toolset_tool] if args.key?(:toolset_tool)
        end
      end
      
      # Execution results for the requested tool calls from the client.
      class ToolResponses
        include Google::Apis::Core::Hashable
      
        # Optional. The list of tool execution results.
        # Corresponds to the JSON property `toolResponses`
        # @return [Array<Google::Apis::CesV1::ToolResponse>]
        attr_accessor :tool_responses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tool_responses = args[:tool_responses] if args.key?(:tool_responses)
        end
      end
      
      # A toolset represents a group of dynamically managed tools that can be used by
      # the agent.
      class Toolset
        include Google::Apis::Core::Hashable
      
        # A toolset that generates tools from an Integration Connectors Connection.
        # Corresponds to the JSON property `connectorToolset`
        # @return [Google::Apis::CesV1::ConnectorToolset]
        attr_accessor :connector_toolset
      
        # Output only. Timestamp when the toolset was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. The description of the toolset.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. The display name of the toolset. Must be unique within the same app.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # ETag used to ensure the object hasn't changed during a read-modify-write
        # operation. If the etag is empty, the update will overwrite any concurrent
        # changes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. The execution type of the tools in the toolset.
        # Corresponds to the JSON property `executionType`
        # @return [String]
        attr_accessor :execution_type
      
        # A toolset that contains a list of tools that are offered by the MCP server.
        # Corresponds to the JSON property `mcpToolset`
        # @return [Google::Apis::CesV1::McpToolset]
        attr_accessor :mcp_toolset
      
        # Identifier. The unique identifier of the toolset. Format: `projects/`project`/
        # locations/`location`/apps/`app`/toolsets/`toolset``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A toolset that contains a list of tools that are defined by an OpenAPI schema.
        # Corresponds to the JSON property `openApiToolset`
        # @return [Google::Apis::CesV1::OpenApiToolset]
        attr_accessor :open_api_toolset
      
        # Configuration for tool behavior in fake mode.
        # Corresponds to the JSON property `toolFakeConfig`
        # @return [Google::Apis::CesV1::ToolFakeConfig]
        attr_accessor :tool_fake_config
      
        # Output only. Timestamp when the toolset was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connector_toolset = args[:connector_toolset] if args.key?(:connector_toolset)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @execution_type = args[:execution_type] if args.key?(:execution_type)
          @mcp_toolset = args[:mcp_toolset] if args.key?(:mcp_toolset)
          @name = args[:name] if args.key?(:name)
          @open_api_toolset = args[:open_api_toolset] if args.key?(:open_api_toolset)
          @tool_fake_config = args[:tool_fake_config] if args.key?(:tool_fake_config)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A tool that is created from a toolset.
      class ToolsetTool
        include Google::Apis::Core::Hashable
      
        # Optional. The tool ID to filter the tools to retrieve the schema for.
        # Corresponds to the JSON property `toolId`
        # @return [String]
        attr_accessor :tool_id
      
        # Required. The resource name of the Toolset from which this tool is derived.
        # Format: `projects/`project`/locations/`location`/apps/`app`/toolsets/`toolset``
        # Corresponds to the JSON property `toolset`
        # @return [String]
        attr_accessor :toolset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tool_id = args[:tool_id] if args.key?(:tool_id)
          @toolset = args[:toolset] if args.key?(:toolset)
        end
      end
      
      # Rule for transferring to a specific agent.
      class TransferRule
        include Google::Apis::Core::Hashable
      
        # Required. The resource name of the child agent the rule applies to. Format: `
        # projects/`project`/locations/`location`/apps/`app`/agents/`agent``
        # Corresponds to the JSON property `childAgent`
        # @return [String]
        attr_accessor :child_agent
      
        # Deterministic transfer rule. When the condition evaluates to true, the
        # transfer occurs.
        # Corresponds to the JSON property `deterministicTransfer`
        # @return [Google::Apis::CesV1::TransferRuleDeterministicTransfer]
        attr_accessor :deterministic_transfer
      
        # Required. The direction of the transfer.
        # Corresponds to the JSON property `direction`
        # @return [String]
        attr_accessor :direction
      
        # A rule that prevents the planner from transferring to the target agent.
        # Corresponds to the JSON property `disablePlannerTransfer`
        # @return [Google::Apis::CesV1::TransferRuleDisablePlannerTransfer]
        attr_accessor :disable_planner_transfer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @child_agent = args[:child_agent] if args.key?(:child_agent)
          @deterministic_transfer = args[:deterministic_transfer] if args.key?(:deterministic_transfer)
          @direction = args[:direction] if args.key?(:direction)
          @disable_planner_transfer = args[:disable_planner_transfer] if args.key?(:disable_planner_transfer)
        end
      end
      
      # Deterministic transfer rule. When the condition evaluates to true, the
      # transfer occurs.
      class TransferRuleDeterministicTransfer
        include Google::Apis::Core::Hashable
      
        # Expression condition based on session state.
        # Corresponds to the JSON property `expressionCondition`
        # @return [Google::Apis::CesV1::ExpressionCondition]
        attr_accessor :expression_condition
      
        # Python code block to evaluate the condition.
        # Corresponds to the JSON property `pythonCodeCondition`
        # @return [Google::Apis::CesV1::PythonCodeCondition]
        attr_accessor :python_code_condition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expression_condition = args[:expression_condition] if args.key?(:expression_condition)
          @python_code_condition = args[:python_code_condition] if args.key?(:python_code_condition)
        end
      end
      
      # A rule that prevents the planner from transferring to the target agent.
      class TransferRuleDisablePlannerTransfer
        include Google::Apis::Core::Hashable
      
        # Expression condition based on session state.
        # Corresponds to the JSON property `expressionCondition`
        # @return [Google::Apis::CesV1::ExpressionCondition]
        attr_accessor :expression_condition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expression_condition = args[:expression_condition] if args.key?(:expression_condition)
        end
      end
      
      # Action that is taken when a certain precondition is met.
      class TriggerAction
        include Google::Apis::Core::Hashable
      
        # The agent will immediately respond with a generative answer.
        # Corresponds to the JSON property `generativeAnswer`
        # @return [Google::Apis::CesV1::TriggerActionGenerativeAnswer]
        attr_accessor :generative_answer
      
        # The agent will immediately respond with a preconfigured response.
        # Corresponds to the JSON property `respondImmediately`
        # @return [Google::Apis::CesV1::TriggerActionRespondImmediately]
        attr_accessor :respond_immediately
      
        # The agent will transfer the conversation to a different agent.
        # Corresponds to the JSON property `transferAgent`
        # @return [Google::Apis::CesV1::TriggerActionTransferAgent]
        attr_accessor :transfer_agent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @generative_answer = args[:generative_answer] if args.key?(:generative_answer)
          @respond_immediately = args[:respond_immediately] if args.key?(:respond_immediately)
          @transfer_agent = args[:transfer_agent] if args.key?(:transfer_agent)
        end
      end
      
      # The agent will immediately respond with a generative answer.
      class TriggerActionGenerativeAnswer
        include Google::Apis::Core::Hashable
      
        # Required. The prompt to use for the generative answer.
        # Corresponds to the JSON property `prompt`
        # @return [String]
        attr_accessor :prompt
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @prompt = args[:prompt] if args.key?(:prompt)
        end
      end
      
      # The agent will immediately respond with a preconfigured response.
      class TriggerActionRespondImmediately
        include Google::Apis::Core::Hashable
      
        # Required. The canned responses for the agent to choose from. The response is
        # chosen randomly.
        # Corresponds to the JSON property `responses`
        # @return [Array<Google::Apis::CesV1::TriggerActionResponse>]
        attr_accessor :responses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @responses = args[:responses] if args.key?(:responses)
        end
      end
      
      # Represents a response from the agent.
      class TriggerActionResponse
        include Google::Apis::Core::Hashable
      
        # Optional. Whether the response is disabled. Disabled responses are not used by
        # the agent.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # Required. Text for the agent to respond with.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disabled = args[:disabled] if args.key?(:disabled)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # The agent will transfer the conversation to a different agent.
      class TriggerActionTransferAgent
        include Google::Apis::Core::Hashable
      
        # Required. The name of the agent to transfer the conversation to. The agent
        # must be in the same app as the current agent. Format: `projects/`project`/
        # locations/`location`/apps/`app`/agents/`agent``
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
      
      # Represents a single web search query and its associated search uri.
      class WebSearchQuery
        include Google::Apis::Core::Hashable
      
        # The search query text.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # The URI to the Google Search results page for the query.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @query = args[:query] if args.key?(:query)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Represents a widget tool that the agent can invoke. When the tool is chosen by
      # the agent, agent will return the widget to the client. The client is
      # responsible for processing the widget and generating the next user query to
      # continue the interaction with the agent.
      class WidgetTool
        include Google::Apis::Core::Hashable
      
        # Optional. The description of the widget tool.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The display name of the widget tool.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Represents a select subset of an OpenAPI 3.0 schema object.
        # Corresponds to the JSON property `parameters`
        # @return [Google::Apis::CesV1::Schema]
        attr_accessor :parameters
      
        # Optional. The type of the widget tool. If not specified, the default type will
        # be CUSTOMIZED.
        # Corresponds to the JSON property `widgetType`
        # @return [String]
        attr_accessor :widget_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @parameters = args[:parameters] if args.key?(:parameters)
          @widget_type = args[:widget_type] if args.key?(:widget_type)
        end
      end
    end
  end
end
